################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ibus_lib/Src/ibus.c 

OBJS += \
./ibus_lib/Src/ibus.o 

C_DEPS += \
./ibus_lib/Src/ibus.d 


# Each subdirectory must supply rules for building sources it contributes
ibus_lib/Src/%.o ibus_lib/Src/%.su ibus_lib/Src/%.cyclo: ../ibus_lib/Src/%.c ibus_lib/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H757xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"C:/Users/bensa/STM32CubeIDE/workspace_1.10.1/ibus_read/CM7/ibus_lib/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ibus_lib-2f-Src

clean-ibus_lib-2f-Src:
	-$(RM) ./ibus_lib/Src/ibus.cyclo ./ibus_lib/Src/ibus.d ./ibus_lib/Src/ibus.o ./ibus_lib/Src/ibus.su

.PHONY: clean-ibus_lib-2f-Src

