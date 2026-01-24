################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/widgets/property/lv_animimage_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_dropdown_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_image_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_keyboard_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_label_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_obj_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_roller_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_slider_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_style_properties.c \
../Middlewares/lvgl/src/widgets/property/lv_textarea_properties.c 

OBJS += \
./Middlewares/lvgl/src/widgets/property/lv_animimage_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_dropdown_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_image_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_keyboard_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_label_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_obj_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_roller_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_slider_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_style_properties.o \
./Middlewares/lvgl/src/widgets/property/lv_textarea_properties.o 

C_DEPS += \
./Middlewares/lvgl/src/widgets/property/lv_animimage_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_dropdown_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_image_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_keyboard_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_label_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_obj_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_roller_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_slider_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_style_properties.d \
./Middlewares/lvgl/src/widgets/property/lv_textarea_properties.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/widgets/property/%.o Middlewares/lvgl/src/widgets/property/%.su Middlewares/lvgl/src/widgets/property/%.cyclo: ../Middlewares/lvgl/src/widgets/property/%.c Middlewares/lvgl/src/widgets/property/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares" -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-property

clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-property:
	-$(RM) ./Middlewares/lvgl/src/widgets/property/lv_animimage_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_animimage_properties.d ./Middlewares/lvgl/src/widgets/property/lv_animimage_properties.o ./Middlewares/lvgl/src/widgets/property/lv_animimage_properties.su ./Middlewares/lvgl/src/widgets/property/lv_dropdown_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_dropdown_properties.d ./Middlewares/lvgl/src/widgets/property/lv_dropdown_properties.o ./Middlewares/lvgl/src/widgets/property/lv_dropdown_properties.su ./Middlewares/lvgl/src/widgets/property/lv_image_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_image_properties.d ./Middlewares/lvgl/src/widgets/property/lv_image_properties.o ./Middlewares/lvgl/src/widgets/property/lv_image_properties.su ./Middlewares/lvgl/src/widgets/property/lv_keyboard_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_keyboard_properties.d ./Middlewares/lvgl/src/widgets/property/lv_keyboard_properties.o ./Middlewares/lvgl/src/widgets/property/lv_keyboard_properties.su ./Middlewares/lvgl/src/widgets/property/lv_label_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_label_properties.d ./Middlewares/lvgl/src/widgets/property/lv_label_properties.o ./Middlewares/lvgl/src/widgets/property/lv_label_properties.su ./Middlewares/lvgl/src/widgets/property/lv_obj_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_obj_properties.d ./Middlewares/lvgl/src/widgets/property/lv_obj_properties.o ./Middlewares/lvgl/src/widgets/property/lv_obj_properties.su ./Middlewares/lvgl/src/widgets/property/lv_roller_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_roller_properties.d ./Middlewares/lvgl/src/widgets/property/lv_roller_properties.o ./Middlewares/lvgl/src/widgets/property/lv_roller_properties.su ./Middlewares/lvgl/src/widgets/property/lv_slider_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_slider_properties.d ./Middlewares/lvgl/src/widgets/property/lv_slider_properties.o ./Middlewares/lvgl/src/widgets/property/lv_slider_properties.su ./Middlewares/lvgl/src/widgets/property/lv_style_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_style_properties.d ./Middlewares/lvgl/src/widgets/property/lv_style_properties.o ./Middlewares/lvgl/src/widgets/property/lv_style_properties.su ./Middlewares/lvgl/src/widgets/property/lv_textarea_properties.cyclo ./Middlewares/lvgl/src/widgets/property/lv_textarea_properties.d ./Middlewares/lvgl/src/widgets/property/lv_textarea_properties.o ./Middlewares/lvgl/src/widgets/property/lv_textarea_properties.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-property

