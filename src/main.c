/*
 * create 2 task 1.Manager task 2.Employee task
 * with manager task being higher priority.
 *
 * When manager task runs it should create a "Ticket Id" and post it to the queue and
 * signal the employee task to process the "Ticket Id"
 *
 * when the employee task runs it should read from the queue and the process the
 * "Ticked Id" posted by the manager task
 *
 * use binary semaphore to synchronize between manager and employee task
 */

#include "stm32f4xx.h"
#include "stdint.h"
#include "string.h"
#include "stdlib.h"
#include "stdio.h"
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
                                             

#define useCLK_SOURCE_HSE 	1

void prvSetupClock(void);
void prvSetupHardware(void);
void prvSetupUSART(void);
void prvSetupGPIO(void);


void printmsg(char *msg);
void readmsg(char *msg);


TaskHandle_t TaskHandler1 = NULL;
TaskHandle_t TaskHandler2 = NULL;

void Task1_handler(void *pvParams);
void Task2_handler(void *pvParams);


//semaphore Handle
xSemaphoreHandle xkey = NULL;
//queue handle
xQueueHandle xqueue = NULL;


BaseType_t xHigherPriorityTaskWoken = pdFALSE;


char usr_msg[100] = {0};
uint32_t countFromISR = 0;

int main(void)
{
	//Setting up the clock and the hardware
	prvSetupClock();
	prvSetupHardware();

	printmsg("counting semaphore usage between two tasks...\r\n");

	//creating Binary semaphores
	xkey = xSemaphoreCreateCounting(10, 0);
	//creating queue
//	xqueue = xQueueCreate(10, sizeof(char));


	if((xkey != NULL) && (xqueue != NULL))
	{

		//creating the tasks
		//Task 1
		xTaskCreate(Task1_handler, "Task1", 500, NULL, 1, &TaskHandler1);
		//Task 2
		xTaskCreate(Task2_handler, "Task2", 500, NULL, 1, &TaskHandler2);

		//starting the scheduler
		vTaskStartScheduler();

	}

	while(1);
	return 0;
}


/*
 * FreeRTOS Tasks
 */

//task 1 Handler functions
void Task1_handler(void *pvParams)
{
	uint32_t count = 0;
	while(1)
	{
		if(xSemaphoreTake(xkey, portMAX_DELAY))
		{
			sprintf(usr_msg,"semaphore taken %ld times\r\n",count++);
			printmsg(usr_msg);

		}

	}
	taskYIELD();

}
//task 2 Handler functions
void Task2_handler(void *pvParams)
{
	while(1)
	{
		printmsg("Hello from task 2\r\n");
		vTaskDelay(2000);
	}

		taskYIELD();
}


/*
 * MCUs private Hardware functions
 */
//Clock setup
void prvSetupClock(void)
{
	/* Reset the system clock to its default state
	   HSI = ON, HSE = OFF, PLL = OFF
	   System clock = 16MHz, CPU clock = 16MHz */
	RCC_DeInit();

	//we can use HSE instead of HSI by setting 1 to the useCLK_SOURCE_HSE macro
#if (useCLK_SOURCE_HSE == 1)

	//configure the HSE clock
	RCC_HSEConfig(RCC_HSE_Bypass);   //Bypass inorder to use the clock source from the STLink circuit
	while(RCC_WaitForHSEStartUp() != SUCCESS);
	/*If a failure is detected on the HSE oscillator clock,
	  this oscillator is automatically disabled*/
	RCC_ClockSecuritySystemCmd(ENABLE);
	//configuring system clock with HSE clock source
	RCC_SYSCLKConfig(RCC_SYSCLKSource_HSE);
	//configuring the AHB Clock (HCLK1)
	RCC_HCLKConfig(RCC_SYSCLK_Div1);
	//configuring the Low speed APB clock (PCLK1)
	RCC_PCLK1Config(RCC_HCLK_Div1);
	//configuring the High speed APB clock (PCLK2)
	RCC_PCLK2Config(RCC_HCLK_Div1);
	//Disable the HSI clock source
	RCC_HSICmd(DISABLE);

#endif

	//updating the system clock with new configuration
	SystemCoreClockUpdate();
}

// Hardware setup
void prvSetupHardware(void)
{
	//USART
	prvSetupUSART();

	//GPIO
	prvSetupGPIO();
}

// USART setup
void prvSetupUSART(void)
{
	USART_InitTypeDef huart2;
	GPIO_InitTypeDef huart2_gpio;

	//Enabling the clock source
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);

	memset(&huart2_gpio,0,sizeof(huart2_gpio));
	//USART2_GPIO config
	huart2_gpio.GPIO_Mode = GPIO_Mode_AF;
	huart2_gpio.GPIO_PuPd = GPIO_PuPd_UP;
	huart2_gpio.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_3;
	GPIO_Init(GPIOA, &huart2_gpio);
	//setting up AF mode
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource2, GPIO_AF_USART2);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource3, GPIO_AF_USART2);

	memset(&huart2,0,sizeof(huart2));
	//USART2 config
	huart2.USART_BaudRate = 115200;
	huart2.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	huart2.USART_Parity = USART_Parity_No;
	huart2.USART_StopBits = USART_StopBits_1;
	huart2.USART_WordLength = USART_WordLength_8b;
	huart2.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_Init(USART2, &huart2);
	USART_Cmd(USART2, ENABLE);
}
// API for printing message over USART2
void printmsg(char *msg)
{
	for(uint32_t i = 0; i < strlen(msg); i++)
	{
		while(USART_GetFlagStatus(USART2, USART_FLAG_TXE) != SET);  //wait until the TX buffer gets empty
		USART_SendData(USART2, msg[i]);
	}
	while(USART_GetFlagStatus(USART2, USART_FLAG_TC) != SET);  //wait until the Transmission complete

}
//API for reading message over USART2
void readmsg(char *msg)
{
	uint8_t temp_buf;
	uint32_t i = 0;
	while(1)
	{
		while(USART_GetFlagStatus(USART2, USART_FLAG_RXNE) != SET);
		if(temp_buf == '\r')
		{
			break;
		}
		else
		{
			temp_buf = USART_ReceiveData(USART2);
			msg[i++] = temp_buf;
		}

	}
}

//GPIO
void prvSetupGPIO(void)
{

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);

	GPIO_InitTypeDef led_init, butn_init;

	led_init.GPIO_Mode = GPIO_Mode_OUT;
	led_init.GPIO_OType = GPIO_OType_PP;
	led_init.GPIO_PuPd = GPIO_PuPd_NOPULL;
	led_init.GPIO_Speed = GPIO_Low_Speed;
	led_init.GPIO_Pin = GPIO_Pin_5;
	GPIO_Init(GPIOA, &led_init);

	butn_init.GPIO_Mode = GPIO_Mode_IN;
	butn_init.GPIO_OType = GPIO_OType_PP;
	butn_init.GPIO_PuPd = GPIO_PuPd_NOPULL;
	butn_init.GPIO_Speed = GPIO_Low_Speed;
	butn_init.GPIO_Pin = GPIO_Pin_13;
	GPIO_Init(GPIOC, &butn_init);

	//setting up the exti for the interrupt
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource13);

	EXTI_InitTypeDef exti_init;
	exti_init.EXTI_Line = EXTI_Line13;
	exti_init.EXTI_Mode = EXTI_Mode_Interrupt;
	exti_init.EXTI_Trigger = EXTI_Trigger_Falling;
	exti_init.EXTI_LineCmd = ENABLE;
	EXTI_Init(&exti_init);

	//Nvic settings
	NVIC_SetPriority(EXTI15_10_IRQn, 5);
	NVIC_EnableIRQ(EXTI15_10_IRQn);

}


void EXTI15_10_IRQHandler(void)
{

	EXTI_ClearITPendingBit(EXTI_Line13);
	sprintf(usr_msg,"semaphore given %ld times\r\n",countFromISR++);
	printmsg(usr_msg);
	xSemaphoreGiveFromISR(xkey, &xHigherPriorityTaskWoken);

}
