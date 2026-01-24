################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_arc_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_bar_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_button_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_buttonmatrix_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_calendar_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_canvas_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_chart_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_checkbox_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_dropdown_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_event_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_image_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_keyboard_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_label_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_obj_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_roller_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_scale_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_slider_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_spangroup_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_table_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_tabview_parser.c \
../Middlewares/lvgl/src/others/xml/parsers/lv_xml_textarea_parser.c 

OBJS += \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_arc_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_bar_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_button_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_buttonmatrix_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_calendar_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_canvas_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_chart_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_checkbox_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_dropdown_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_event_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_image_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_keyboard_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_label_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_obj_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_roller_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_scale_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_slider_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_spangroup_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_table_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_tabview_parser.o \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_textarea_parser.o 

C_DEPS += \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_arc_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_bar_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_button_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_buttonmatrix_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_calendar_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_canvas_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_chart_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_checkbox_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_dropdown_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_event_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_image_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_keyboard_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_label_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_obj_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_roller_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_scale_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_slider_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_spangroup_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_table_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_tabview_parser.d \
./Middlewares/lvgl/src/others/xml/parsers/lv_xml_textarea_parser.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/others/xml/parsers/%.o Middlewares/lvgl/src/others/xml/parsers/%.su Middlewares/lvgl/src/others/xml/parsers/%.cyclo: ../Middlewares/lvgl/src/others/xml/parsers/%.c Middlewares/lvgl/src/others/xml/parsers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares" -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-xml-2f-parsers

clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-xml-2f-parsers:
	-$(RM) ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_arc_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_arc_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_arc_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_arc_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_bar_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_bar_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_bar_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_bar_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_button_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_button_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_button_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_button_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_buttonmatrix_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_buttonmatrix_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_buttonmatrix_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_buttonmatrix_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_calendar_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_calendar_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_calendar_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_calendar_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_canvas_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_canvas_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_canvas_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_canvas_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_chart_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_chart_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_chart_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_chart_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_checkbox_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_checkbox_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_checkbox_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_checkbox_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_dropdown_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_dropdown_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_dropdown_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_dropdown_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_event_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_event_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_event_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_event_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_image_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_image_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_image_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_image_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_keyboard_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_keyboard_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_keyboard_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_keyboard_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_label_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_label_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_label_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_label_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_obj_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_obj_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_obj_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_obj_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_roller_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_roller_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_roller_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_roller_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_scale_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_scale_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_scale_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_scale_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_slider_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_slider_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_slider_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_slider_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_spangroup_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_spangroup_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_spangroup_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_spangroup_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_table_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_table_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_table_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_table_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_tabview_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_tabview_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_tabview_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_tabview_parser.su ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_textarea_parser.cyclo ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_textarea_parser.d ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_textarea_parser.o ./Middlewares/lvgl/src/others/xml/parsers/lv_xml_textarea_parser.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-xml-2f-parsers

