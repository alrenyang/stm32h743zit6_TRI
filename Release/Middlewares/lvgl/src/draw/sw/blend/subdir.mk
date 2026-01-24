################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.c \
../Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.c 

OBJS += \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d \
./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/sw/blend/%.o Middlewares/lvgl/src/draw/sw/blend/%.su Middlewares/lvgl/src/draw/sw/blend/%.cyclo: ../Middlewares/lvgl/src/draw/sw/blend/%.c Middlewares/lvgl/src/draw/sw/blend/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares" -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend:
	-$(RM) ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888_premultiplied.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565_swapped.su ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.cyclo ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o ./Middlewares/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

