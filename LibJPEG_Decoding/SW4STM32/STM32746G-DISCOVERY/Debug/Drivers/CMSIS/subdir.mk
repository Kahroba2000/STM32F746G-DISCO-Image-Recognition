################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/system_stm32f7xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f7xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f7xx.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/system_stm32f7xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32f7xx.d ./Drivers/CMSIS/system_stm32f7xx.o ./Drivers/CMSIS/system_stm32f7xx.su

.PHONY: clean-Drivers-2f-CMSIS

