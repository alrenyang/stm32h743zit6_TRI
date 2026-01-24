################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_path.c \
../Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.c 

OBJS += \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_path.o \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o 

C_DEPS += \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_path.d \
./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/draw/nxp/vglite/%.o Middlewares/lvgl/src/draw/nxp/vglite/%.su Middlewares/lvgl/src/draw/nxp/vglite/%.cyclo: ../Middlewares/lvgl/src/draw/nxp/vglite/%.c Middlewares/lvgl/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares" -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_buf.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_path.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_path.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_path.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_path.su ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.cyclo ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o ./Middlewares/lvgl/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

