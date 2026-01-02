################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/others/test/lv_test_display.c \
../Middlewares/lvgl/src/others/test/lv_test_helpers.c \
../Middlewares/lvgl/src/others/test/lv_test_indev.c \
../Middlewares/lvgl/src/others/test/lv_test_indev_gesture.c \
../Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.c 

OBJS += \
./Middlewares/lvgl/src/others/test/lv_test_display.o \
./Middlewares/lvgl/src/others/test/lv_test_helpers.o \
./Middlewares/lvgl/src/others/test/lv_test_indev.o \
./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.o \
./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.o 

C_DEPS += \
./Middlewares/lvgl/src/others/test/lv_test_display.d \
./Middlewares/lvgl/src/others/test/lv_test_helpers.d \
./Middlewares/lvgl/src/others/test/lv_test_indev.d \
./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.d \
./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/others/test/%.o Middlewares/lvgl/src/others/test/%.su Middlewares/lvgl/src/others/test/%.cyclo: ../Middlewares/lvgl/src/others/test/%.c Middlewares/lvgl/src/others/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-test

clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-test:
	-$(RM) ./Middlewares/lvgl/src/others/test/lv_test_display.cyclo ./Middlewares/lvgl/src/others/test/lv_test_display.d ./Middlewares/lvgl/src/others/test/lv_test_display.o ./Middlewares/lvgl/src/others/test/lv_test_display.su ./Middlewares/lvgl/src/others/test/lv_test_helpers.cyclo ./Middlewares/lvgl/src/others/test/lv_test_helpers.d ./Middlewares/lvgl/src/others/test/lv_test_helpers.o ./Middlewares/lvgl/src/others/test/lv_test_helpers.su ./Middlewares/lvgl/src/others/test/lv_test_indev.cyclo ./Middlewares/lvgl/src/others/test/lv_test_indev.d ./Middlewares/lvgl/src/others/test/lv_test_indev.o ./Middlewares/lvgl/src/others/test/lv_test_indev.su ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.cyclo ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.d ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.o ./Middlewares/lvgl/src/others/test/lv_test_indev_gesture.su ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.cyclo ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.d ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.o ./Middlewares/lvgl/src/others/test/lv_test_screenshot_compare.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-others-2f-test

