################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.c \
../Middlewares/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.c 

OBJS += \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o \
./Middlewares/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d \
./Middlewares/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/nema_gfx/%.o Middlewares/lvgl/src/draw/nema_gfx/%.su Middlewares/lvgl/src/draw/nema_gfx/%.cyclo: ../Middlewares/lvgl/src/draw/nema_gfx/%.c Middlewares/lvgl/src/draw/nema_gfx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nema_gfx:
	-$(RM) ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_arc.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_border.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_fill.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_img.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_label.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_layer.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_line.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_draw_nema_gfx_utils.su ./Middlewares/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.cyclo ./Middlewares/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.d ./Middlewares/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.o ./Middlewares/lvgl/src/draw/nema_gfx/lv_nema_gfx_path.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nema_gfx

