################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/decode.c \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/jdata_conf.c \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/main.c \
C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/stm32f7xx_it.c 

OBJS += \
./Application/User/decode.o \
./Application/User/jdata_conf.o \
./Application/User/main.o \
./Application/User/stm32f7xx_it.o 

C_DEPS += \
./Application/User/decode.d \
./Application/User/jdata_conf.d \
./Application/User/main.d \
./Application/User/stm32f7xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/decode.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/decode.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/jdata_conf.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/jdata_conf.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/main.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32f7xx_it.o: C:/TouchGFXProjects/STM32F746G-DISCO-Image-Recognition/STM32F746G-DISCO-Image-Recognition/LibJPEG_Decoding/Src/stm32f7xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCOVERY -c -I../../../Inc -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../Middlewares/Third_Party/LibJPEG/include -I../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-main -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/decode.d ./Application/User/decode.o ./Application/User/decode.su ./Application/User/jdata_conf.d ./Application/User/jdata_conf.o ./Application/User/jdata_conf.su ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32f7xx_it.d ./Application/User/stm32f7xx_it.o ./Application/User/stm32f7xx_it.su

.PHONY: clean-Application-2f-User

