################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-party/FreeRTOS/org/Source/croutine.c \
../Third-party/FreeRTOS/org/Source/event_groups.c \
../Third-party/FreeRTOS/org/Source/list.c \
../Third-party/FreeRTOS/org/Source/queue.c \
../Third-party/FreeRTOS/org/Source/stream_buffer.c \
../Third-party/FreeRTOS/org/Source/tasks.c \
../Third-party/FreeRTOS/org/Source/timers.c 

OBJS += \
./Third-party/FreeRTOS/org/Source/croutine.o \
./Third-party/FreeRTOS/org/Source/event_groups.o \
./Third-party/FreeRTOS/org/Source/list.o \
./Third-party/FreeRTOS/org/Source/queue.o \
./Third-party/FreeRTOS/org/Source/stream_buffer.o \
./Third-party/FreeRTOS/org/Source/tasks.o \
./Third-party/FreeRTOS/org/Source/timers.o 

C_DEPS += \
./Third-party/FreeRTOS/org/Source/croutine.d \
./Third-party/FreeRTOS/org/Source/event_groups.d \
./Third-party/FreeRTOS/org/Source/list.d \
./Third-party/FreeRTOS/org/Source/queue.d \
./Third-party/FreeRTOS/org/Source/stream_buffer.d \
./Third-party/FreeRTOS/org/Source/tasks.d \
./Third-party/FreeRTOS/org/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Third-party/FreeRTOS/org/Source/croutine.o: ../Third-party/FreeRTOS/org/Source/croutine.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/croutine.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-party/FreeRTOS/org/Source/event_groups.o: ../Third-party/FreeRTOS/org/Source/event_groups.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/event_groups.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-party/FreeRTOS/org/Source/list.o: ../Third-party/FreeRTOS/org/Source/list.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/list.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-party/FreeRTOS/org/Source/queue.o: ../Third-party/FreeRTOS/org/Source/queue.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/queue.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-party/FreeRTOS/org/Source/stream_buffer.o: ../Third-party/FreeRTOS/org/Source/stream_buffer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/stream_buffer.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-party/FreeRTOS/org/Source/tasks.o: ../Third-party/FreeRTOS/org/Source/tasks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/tasks.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-party/FreeRTOS/org/Source/timers.o: ../Third-party/FreeRTOS/org/Source/timers.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -DSTM32F4 -DSTM32F446RETx -DDEBUG -DNUCLEO_F446RE -c -I../Inc -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/config" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/Third-party/FreeRTOS/org/Source/include" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/core" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/CMSIS/device" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/inc" -I"D:/Drive/pro/Embd C/workspace/Rtos/target/STM32_FreeRTOS_Count_semaphore_queue/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-party/FreeRTOS/org/Source/timers.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

