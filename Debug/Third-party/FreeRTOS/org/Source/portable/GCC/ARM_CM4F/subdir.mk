################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/port.o: ../Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/port.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/port.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

