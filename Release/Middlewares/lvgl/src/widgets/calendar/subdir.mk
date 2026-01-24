################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar.c \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.c \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.c \
../Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.c 

OBJS += \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar.o \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.o \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o 

C_DEPS += \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar.d \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.d \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d \
./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/widgets/calendar/%.o Middlewares/lvgl/src/widgets/calendar/%.su Middlewares/lvgl/src/widgets/calendar/%.cyclo: ../Middlewares/lvgl/src/widgets/calendar/%.c Middlewares/lvgl/src/widgets/calendar/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares" -I"D:/proj_triv/work2/stm32h743zit6_TRI-main/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-calendar

clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-calendar:
	-$(RM) ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar.su ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_chinese.su ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_arrow.su ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.cyclo ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o ./Middlewares/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-widgets-2f-calendar

