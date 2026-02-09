################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/drivers/glfw/lv_glfw_window.c \
../Middlewares/lvgl/src/drivers/glfw/lv_opengles_debug.c \
../Middlewares/lvgl/src/drivers/glfw/lv_opengles_driver.c \
../Middlewares/lvgl/src/drivers/glfw/lv_opengles_texture.c 

OBJS += \
./Middlewares/lvgl/src/drivers/glfw/lv_glfw_window.o \
./Middlewares/lvgl/src/drivers/glfw/lv_opengles_debug.o \
./Middlewares/lvgl/src/drivers/glfw/lv_opengles_driver.o \
./Middlewares/lvgl/src/drivers/glfw/lv_opengles_texture.o 

C_DEPS += \
./Middlewares/lvgl/src/drivers/glfw/lv_glfw_window.d \
./Middlewares/lvgl/src/drivers/glfw/lv_opengles_debug.d \
./Middlewares/lvgl/src/drivers/glfw/lv_opengles_driver.d \
./Middlewares/lvgl/src/drivers/glfw/lv_opengles_texture.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/drivers/glfw/%.o Middlewares/lvgl/src/drivers/glfw/%.su Middlewares/lvgl/src/drivers/glfw/%.cyclo: ../Middlewares/lvgl/src/drivers/glfw/%.c Middlewares/lvgl/src/drivers/glfw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-drivers-2f-glfw

clean-Middlewares-2f-lvgl-2f-src-2f-drivers-2f-glfw:
	-$(RM) ./Middlewares/lvgl/src/drivers/glfw/lv_glfw_window.cyclo ./Middlewares/lvgl/src/drivers/glfw/lv_glfw_window.d ./Middlewares/lvgl/src/drivers/glfw/lv_glfw_window.o ./Middlewares/lvgl/src/drivers/glfw/lv_glfw_window.su ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_debug.cyclo ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_debug.d ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_debug.o ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_debug.su ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_driver.cyclo ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_driver.d ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_driver.o ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_driver.su ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_texture.cyclo ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_texture.d ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_texture.o ./Middlewares/lvgl/src/drivers/glfw/lv_opengles_texture.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-drivers-2f-glfw

