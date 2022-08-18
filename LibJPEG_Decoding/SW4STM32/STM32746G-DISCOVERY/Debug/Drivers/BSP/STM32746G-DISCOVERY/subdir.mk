################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.c \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_lcd.c \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.c \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.c 

OBJS += \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery.o \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_lcd.o \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sd.o \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sdram.o 

C_DEPS += \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery.d \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_lcd.d \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sd.d \
./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sdram.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.c Drivers/BSP/STM32746G-DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_lcd.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_lcd.c Drivers/BSP/STM32746G-DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sd.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.c Drivers/BSP/STM32746G-DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sdram.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.c Drivers/BSP/STM32746G-DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32746G-2d-DISCOVERY

clean-Drivers-2f-BSP-2f-STM32746G-2d-DISCOVERY:
	-$(RM) ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery.d ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery.o ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery.su ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_lcd.d ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_lcd.o ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_lcd.su ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sd.d ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sd.o ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sd.su ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sdram.d ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sdram.o ./Drivers/BSP/STM32746G-DISCOVERY/stm32746g_discovery_sdram.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32746G-2d-DISCOVERY

