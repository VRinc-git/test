################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/syscalls.c \
../src/system_stm32f4xx.c 

OBJS += \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/main.d \
./src/syscalls.d \
./src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/main.o: ../src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/syscalls.o: ../src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/system_stm32f4xx.o: ../src/system_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

