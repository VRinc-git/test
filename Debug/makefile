################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include src/subdir.mk
-include Third-party/FreeRTOS/org/Source/portable/MemMang/subdir.mk
-include Third-party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/subdir.mk
-include Third-party/FreeRTOS/org/Source/subdir.mk
-include StdPeriph_Driver/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
STM32_FreeRTOS_Count_semaphore_queue.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
STM32_FreeRTOS_Count_semaphore_queue.list \

OBJCOPY_BIN += \
STM32_FreeRTOS_Count_semaphore_queue.bin \


# All Target
all: STM32_FreeRTOS_Count_semaphore_queue.elf secondary-outputs

# Tool invocations
STM32_FreeRTOS_Count_semaphore_queue.elf: $(OBJS) $(USER_OBJS) D:\Drive\pro\Embd\ C\workspace\Rtos\target\STM32_FreeRTOS_Count_semaphore_queue\STM32F446RETX_FLASH.ld
	arm-none-eabi-gcc -o "STM32_FreeRTOS_Count_semaphore_queue.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\Drive\pro\Embd C\workspace\Rtos\target\STM32_FreeRTOS_Count_semaphore_queue\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="STM32_FreeRTOS_Count_semaphore_queue.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

STM32_FreeRTOS_Count_semaphore_queue.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "STM32_FreeRTOS_Count_semaphore_queue.list"
	@echo 'Finished building: $@'
	@echo ' '

STM32_FreeRTOS_Count_semaphore_queue.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "STM32_FreeRTOS_Count_semaphore_queue.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
