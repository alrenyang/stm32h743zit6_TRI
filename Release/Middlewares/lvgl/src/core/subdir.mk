################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/core/lv_group.c \
../Middlewares/lvgl/src/core/lv_obj.c \
../Middlewares/lvgl/src/core/lv_obj_class.c \
../Middlewares/lvgl/src/core/lv_obj_draw.c \
../Middlewares/lvgl/src/core/lv_obj_event.c \
../Middlewares/lvgl/src/core/lv_obj_id_builtin.c \
../Middlewares/lvgl/src/core/lv_obj_pos.c \
../Middlewares/lvgl/src/core/lv_obj_property.c \
../Middlewares/lvgl/src/core/lv_obj_scroll.c \
../Middlewares/lvgl/src/core/lv_obj_style.c \
../Middlewares/lvgl/src/core/lv_obj_style_gen.c \
../Middlewares/lvgl/src/core/lv_obj_tree.c \
../Middlewares/lvgl/src/core/lv_refr.c 

OBJS += \
./Middlewares/lvgl/src/core/lv_group.o \
./Middlewares/lvgl/src/core/lv_obj.o \
./Middlewares/lvgl/src/core/lv_obj_class.o \
./Middlewares/lvgl/src/core/lv_obj_draw.o \
./Middlewares/lvgl/src/core/lv_obj_event.o \
./Middlewares/lvgl/src/core/lv_obj_id_builtin.o \
./Middlewares/lvgl/src/core/lv_obj_pos.o \
./Middlewares/lvgl/src/core/lv_obj_property.o \
./Middlewares/lvgl/src/core/lv_obj_scroll.o \
./Middlewares/lvgl/src/core/lv_obj_style.o \
./Middlewares/lvgl/src/core/lv_obj_style_gen.o \
./Middlewares/lvgl/src/core/lv_obj_tree.o \
./Middlewares/lvgl/src/core/lv_refr.o 

C_DEPS += \
./Middlewares/lvgl/src/core/lv_group.d \
./Middlewares/lvgl/src/core/lv_obj.d \
./Middlewares/lvgl/src/core/lv_obj_class.d \
./Middlewares/lvgl/src/core/lv_obj_draw.d \
./Middlewares/lvgl/src/core/lv_obj_event.d \
./Middlewares/lvgl/src/core/lv_obj_id_builtin.d \
./Middlewares/lvgl/src/core/lv_obj_pos.d \
./Middlewares/lvgl/src/core/lv_obj_property.d \
./Middlewares/lvgl/src/core/lv_obj_scroll.d \
./Middlewares/lvgl/src/core/lv_obj_style.d \
./Middlewares/lvgl/src/core/lv_obj_style_gen.d \
./Middlewares/lvgl/src/core/lv_obj_tree.d \
./Middlewares/lvgl/src/core/lv_refr.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/core/%.o Middlewares/lvgl/src/core/%.su Middlewares/lvgl/src/core/%.cyclo: ../Middlewares/lvgl/src/core/%.c Middlewares/lvgl/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares" -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-core

clean-Middlewares-2f-lvgl-2f-src-2f-core:
	-$(RM) ./Middlewares/lvgl/src/core/lv_group.cyclo ./Middlewares/lvgl/src/core/lv_group.d ./Middlewares/lvgl/src/core/lv_group.o ./Middlewares/lvgl/src/core/lv_group.su ./Middlewares/lvgl/src/core/lv_obj.cyclo ./Middlewares/lvgl/src/core/lv_obj.d ./Middlewares/lvgl/src/core/lv_obj.o ./Middlewares/lvgl/src/core/lv_obj.su ./Middlewares/lvgl/src/core/lv_obj_class.cyclo ./Middlewares/lvgl/src/core/lv_obj_class.d ./Middlewares/lvgl/src/core/lv_obj_class.o ./Middlewares/lvgl/src/core/lv_obj_class.su ./Middlewares/lvgl/src/core/lv_obj_draw.cyclo ./Middlewares/lvgl/src/core/lv_obj_draw.d ./Middlewares/lvgl/src/core/lv_obj_draw.o ./Middlewares/lvgl/src/core/lv_obj_draw.su ./Middlewares/lvgl/src/core/lv_obj_event.cyclo ./Middlewares/lvgl/src/core/lv_obj_event.d ./Middlewares/lvgl/src/core/lv_obj_event.o ./Middlewares/lvgl/src/core/lv_obj_event.su ./Middlewares/lvgl/src/core/lv_obj_id_builtin.cyclo ./Middlewares/lvgl/src/core/lv_obj_id_builtin.d ./Middlewares/lvgl/src/core/lv_obj_id_builtin.o ./Middlewares/lvgl/src/core/lv_obj_id_builtin.su ./Middlewares/lvgl/src/core/lv_obj_pos.cyclo ./Middlewares/lvgl/src/core/lv_obj_pos.d ./Middlewares/lvgl/src/core/lv_obj_pos.o ./Middlewares/lvgl/src/core/lv_obj_pos.su ./Middlewares/lvgl/src/core/lv_obj_property.cyclo ./Middlewares/lvgl/src/core/lv_obj_property.d ./Middlewares/lvgl/src/core/lv_obj_property.o ./Middlewares/lvgl/src/core/lv_obj_property.su ./Middlewares/lvgl/src/core/lv_obj_scroll.cyclo ./Middlewares/lvgl/src/core/lv_obj_scroll.d ./Middlewares/lvgl/src/core/lv_obj_scroll.o ./Middlewares/lvgl/src/core/lv_obj_scroll.su ./Middlewares/lvgl/src/core/lv_obj_style.cyclo ./Middlewares/lvgl/src/core/lv_obj_style.d ./Middlewares/lvgl/src/core/lv_obj_style.o ./Middlewares/lvgl/src/core/lv_obj_style.su ./Middlewares/lvgl/src/core/lv_obj_style_gen.cyclo ./Middlewares/lvgl/src/core/lv_obj_style_gen.d ./Middlewares/lvgl/src/core/lv_obj_style_gen.o ./Middlewares/lvgl/src/core/lv_obj_style_gen.su ./Middlewares/lvgl/src/core/lv_obj_tree.cyclo ./Middlewares/lvgl/src/core/lv_obj_tree.d ./Middlewares/lvgl/src/core/lv_obj_tree.o ./Middlewares/lvgl/src/core/lv_obj_tree.su ./Middlewares/lvgl/src/core/lv_refr.cyclo ./Middlewares/lvgl/src/core/lv_refr.d ./Middlewares/lvgl/src/core/lv_refr.o ./Middlewares/lvgl/src/core/lv_refr.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-core

