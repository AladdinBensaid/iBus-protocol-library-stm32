################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ibus/Src/ibus.c 

OBJS += \
./ibus/Src/ibus.o 

C_DEPS += \
./ibus/Src/ibus.d 


# Each subdirectory must supply rules for building sources it contributes
ibus/Src/%.o ibus/Src/%.su ibus/Src/%.cyclo: ../ibus/Src/%.c ibus/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H757xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I"C:/Users/bensa/STM32CubeIDE/workspace_1.10.1/ibus_read/CM7/ibus/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ibus-2f-Src

clean-ibus-2f-Src:
	-$(RM) ./ibus/Src/ibus.cyclo ./ibus/Src/ibus.d ./ibus/Src/ibus.o ./ibus/Src/ibus.su

.PHONY: clean-ibus-2f-Src

