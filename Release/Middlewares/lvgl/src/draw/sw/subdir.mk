################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_border.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_fill.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_grad.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_triangle.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_utils.c \
../Middlewares/lvgl/src/draw/sw/lv_draw_sw_vector.c 

OBJS += \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_border.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_fill.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_grad.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_triangle.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_utils.o \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_vector.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_border.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_fill.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_grad.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_triangle.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_utils.d \
./Middlewares/lvgl/src/draw/sw/lv_draw_sw_vector.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/sw/%.o Middlewares/lvgl/src/draw/sw/%.su Middlewares/lvgl/src/draw/sw/%.cyclo: ../Middlewares/lvgl/src/draw/sw/%.c Middlewares/lvgl/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares" -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_arc.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_border.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_border.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_border.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_border.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_box_shadow.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_box_shadow.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_fill.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_fill.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_fill.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_fill.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_grad.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_grad.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_grad.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_grad.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_img.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_letter.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_line.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask_rect.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_mask_rect.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_transform.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_triangle.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_triangle.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_triangle.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_triangle.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_utils.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_utils.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_utils.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_utils.su ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_vector.cyclo ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_vector.d ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_vector.o ./Middlewares/lvgl/src/draw/sw/lv_draw_sw_vector.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-sw

