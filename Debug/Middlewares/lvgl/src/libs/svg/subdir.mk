################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/libs/svg/lv_svg.c \
../Middlewares/lvgl/src/libs/svg/lv_svg_decoder.c \
../Middlewares/lvgl/src/libs/svg/lv_svg_parser.c \
../Middlewares/lvgl/src/libs/svg/lv_svg_render.c \
../Middlewares/lvgl/src/libs/svg/lv_svg_token.c 

OBJS += \
./Middlewares/lvgl/src/libs/svg/lv_svg.o \
./Middlewares/lvgl/src/libs/svg/lv_svg_decoder.o \
./Middlewares/lvgl/src/libs/svg/lv_svg_parser.o \
./Middlewares/lvgl/src/libs/svg/lv_svg_render.o \
./Middlewares/lvgl/src/libs/svg/lv_svg_token.o 

C_DEPS += \
./Middlewares/lvgl/src/libs/svg/lv_svg.d \
./Middlewares/lvgl/src/libs/svg/lv_svg_decoder.d \
./Middlewares/lvgl/src/libs/svg/lv_svg_parser.d \
./Middlewares/lvgl/src/libs/svg/lv_svg_render.d \
./Middlewares/lvgl/src/libs/svg/lv_svg_token.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/libs/svg/%.o Middlewares/lvgl/src/libs/svg/%.su Middlewares/lvgl/src/libs/svg/%.cyclo: ../Middlewares/lvgl/src/libs/svg/%.c Middlewares/lvgl/src/libs/svg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-svg

clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-svg:
	-$(RM) ./Middlewares/lvgl/src/libs/svg/lv_svg.cyclo ./Middlewares/lvgl/src/libs/svg/lv_svg.d ./Middlewares/lvgl/src/libs/svg/lv_svg.o ./Middlewares/lvgl/src/libs/svg/lv_svg.su ./Middlewares/lvgl/src/libs/svg/lv_svg_decoder.cyclo ./Middlewares/lvgl/src/libs/svg/lv_svg_decoder.d ./Middlewares/lvgl/src/libs/svg/lv_svg_decoder.o ./Middlewares/lvgl/src/libs/svg/lv_svg_decoder.su ./Middlewares/lvgl/src/libs/svg/lv_svg_parser.cyclo ./Middlewares/lvgl/src/libs/svg/lv_svg_parser.d ./Middlewares/lvgl/src/libs/svg/lv_svg_parser.o ./Middlewares/lvgl/src/libs/svg/lv_svg_parser.su ./Middlewares/lvgl/src/libs/svg/lv_svg_render.cyclo ./Middlewares/lvgl/src/libs/svg/lv_svg_render.d ./Middlewares/lvgl/src/libs/svg/lv_svg_render.o ./Middlewares/lvgl/src/libs/svg/lv_svg_render.su ./Middlewares/lvgl/src/libs/svg/lv_svg_token.cyclo ./Middlewares/lvgl/src/libs/svg/lv_svg_token.d ./Middlewares/lvgl/src/libs/svg/lv_svg_token.o ./Middlewares/lvgl/src/libs/svg/lv_svg_token.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-svg

