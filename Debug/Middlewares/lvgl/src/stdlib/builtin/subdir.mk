################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/stdlib/builtin/lv_mem_core_builtin.c \
../Middlewares/lvgl/src/stdlib/builtin/lv_sprintf_builtin.c \
../Middlewares/lvgl/src/stdlib/builtin/lv_string_builtin.c \
../Middlewares/lvgl/src/stdlib/builtin/lv_tlsf.c 

OBJS += \
./Middlewares/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o \
./Middlewares/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o \
./Middlewares/lvgl/src/stdlib/builtin/lv_string_builtin.o \
./Middlewares/lvgl/src/stdlib/builtin/lv_tlsf.o 

C_DEPS += \
./Middlewares/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d \
./Middlewares/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d \
./Middlewares/lvgl/src/stdlib/builtin/lv_string_builtin.d \
./Middlewares/lvgl/src/stdlib/builtin/lv_tlsf.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/stdlib/builtin/%.o Middlewares/lvgl/src/stdlib/builtin/%.su Middlewares/lvgl/src/stdlib/builtin/%.cyclo: ../Middlewares/lvgl/src/stdlib/builtin/%.c Middlewares/lvgl/src/stdlib/builtin/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-stdlib-2f-builtin

clean-Middlewares-2f-lvgl-2f-src-2f-stdlib-2f-builtin:
	-$(RM) ./Middlewares/lvgl/src/stdlib/builtin/lv_mem_core_builtin.cyclo ./Middlewares/lvgl/src/stdlib/builtin/lv_mem_core_builtin.d ./Middlewares/lvgl/src/stdlib/builtin/lv_mem_core_builtin.o ./Middlewares/lvgl/src/stdlib/builtin/lv_mem_core_builtin.su ./Middlewares/lvgl/src/stdlib/builtin/lv_sprintf_builtin.cyclo ./Middlewares/lvgl/src/stdlib/builtin/lv_sprintf_builtin.d ./Middlewares/lvgl/src/stdlib/builtin/lv_sprintf_builtin.o ./Middlewares/lvgl/src/stdlib/builtin/lv_sprintf_builtin.su ./Middlewares/lvgl/src/stdlib/builtin/lv_string_builtin.cyclo ./Middlewares/lvgl/src/stdlib/builtin/lv_string_builtin.d ./Middlewares/lvgl/src/stdlib/builtin/lv_string_builtin.o ./Middlewares/lvgl/src/stdlib/builtin/lv_string_builtin.su ./Middlewares/lvgl/src/stdlib/builtin/lv_tlsf.cyclo ./Middlewares/lvgl/src/stdlib/builtin/lv_tlsf.d ./Middlewares/lvgl/src/stdlib/builtin/lv_tlsf.o ./Middlewares/lvgl/src/stdlib/builtin/lv_tlsf.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-stdlib-2f-builtin

