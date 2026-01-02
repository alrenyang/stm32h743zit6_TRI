################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/freertos.c \
../Core/Src/key_input.c \
../Core/Src/lcd.c \
../Core/Src/lcd_fonts.c \
../Core/Src/lv_port_disp.c \
../Core/Src/lv_port_indev.c \
../Core/Src/main.c \
../Core/Src/stm32h7xx_hal_msp.c \
../Core/Src/stm32h7xx_hal_timebase_tim.c \
../Core/Src/stm32h7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32h7xx.c \
../Core/Src/tcp_ip.c \
../Core/Src/tri_vision_logo_480x272_rgb565.c \
../Core/Src/widgets.c \
../Core/Src/widgets_style.c 

OBJS += \
./Core/Src/freertos.o \
./Core/Src/key_input.o \
./Core/Src/lcd.o \
./Core/Src/lcd_fonts.o \
./Core/Src/lv_port_disp.o \
./Core/Src/lv_port_indev.o \
./Core/Src/main.o \
./Core/Src/stm32h7xx_hal_msp.o \
./Core/Src/stm32h7xx_hal_timebase_tim.o \
./Core/Src/stm32h7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32h7xx.o \
./Core/Src/tcp_ip.o \
./Core/Src/tri_vision_logo_480x272_rgb565.o \
./Core/Src/widgets.o \
./Core/Src/widgets_style.o 

C_DEPS += \
./Core/Src/freertos.d \
./Core/Src/key_input.d \
./Core/Src/lcd.d \
./Core/Src/lcd_fonts.d \
./Core/Src/lv_port_disp.d \
./Core/Src/lv_port_indev.d \
./Core/Src/main.d \
./Core/Src/stm32h7xx_hal_msp.d \
./Core/Src/stm32h7xx_hal_timebase_tim.d \
./Core/Src/stm32h7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32h7xx.d \
./Core/Src/tcp_ip.d \
./Core/Src/tri_vision_logo_480x272_rgb565.d \
./Core/Src/widgets.d \
./Core/Src/widgets_style.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/freertos.cyclo ./Core/Src/freertos.d ./Core/Src/freertos.o ./Core/Src/freertos.su ./Core/Src/key_input.cyclo ./Core/Src/key_input.d ./Core/Src/key_input.o ./Core/Src/key_input.su ./Core/Src/lcd.cyclo ./Core/Src/lcd.d ./Core/Src/lcd.o ./Core/Src/lcd.su ./Core/Src/lcd_fonts.cyclo ./Core/Src/lcd_fonts.d ./Core/Src/lcd_fonts.o ./Core/Src/lcd_fonts.su ./Core/Src/lv_port_disp.cyclo ./Core/Src/lv_port_disp.d ./Core/Src/lv_port_disp.o ./Core/Src/lv_port_disp.su ./Core/Src/lv_port_indev.cyclo ./Core/Src/lv_port_indev.d ./Core/Src/lv_port_indev.o ./Core/Src/lv_port_indev.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/stm32h7xx_hal_msp.cyclo ./Core/Src/stm32h7xx_hal_msp.d ./Core/Src/stm32h7xx_hal_msp.o ./Core/Src/stm32h7xx_hal_msp.su ./Core/Src/stm32h7xx_hal_timebase_tim.cyclo ./Core/Src/stm32h7xx_hal_timebase_tim.d ./Core/Src/stm32h7xx_hal_timebase_tim.o ./Core/Src/stm32h7xx_hal_timebase_tim.su ./Core/Src/stm32h7xx_it.cyclo ./Core/Src/stm32h7xx_it.d ./Core/Src/stm32h7xx_it.o ./Core/Src/stm32h7xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32h7xx.cyclo ./Core/Src/system_stm32h7xx.d ./Core/Src/system_stm32h7xx.o ./Core/Src/system_stm32h7xx.su ./Core/Src/tcp_ip.cyclo ./Core/Src/tcp_ip.d ./Core/Src/tcp_ip.o ./Core/Src/tcp_ip.su ./Core/Src/tri_vision_logo_480x272_rgb565.cyclo ./Core/Src/tri_vision_logo_480x272_rgb565.d ./Core/Src/tri_vision_logo_480x272_rgb565.o ./Core/Src/tri_vision_logo_480x272_rgb565.su ./Core/Src/widgets.cyclo ./Core/Src/widgets.d ./Core/Src/widgets.o ./Core/Src/widgets.su ./Core/Src/widgets_style.cyclo ./Core/Src/widgets_style.d ./Core/Src/widgets_style.o ./Core/Src/widgets_style.su

.PHONY: clean-Core-2f-Src

