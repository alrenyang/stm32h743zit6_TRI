################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/libs/expat/xmlparse.c \
../Middlewares/lvgl/src/libs/expat/xmlrole.c \
../Middlewares/lvgl/src/libs/expat/xmltok.c \
../Middlewares/lvgl/src/libs/expat/xmltok_impl.c \
../Middlewares/lvgl/src/libs/expat/xmltok_ns.c 

OBJS += \
./Middlewares/lvgl/src/libs/expat/xmlparse.o \
./Middlewares/lvgl/src/libs/expat/xmlrole.o \
./Middlewares/lvgl/src/libs/expat/xmltok.o \
./Middlewares/lvgl/src/libs/expat/xmltok_impl.o \
./Middlewares/lvgl/src/libs/expat/xmltok_ns.o 

C_DEPS += \
./Middlewares/lvgl/src/libs/expat/xmlparse.d \
./Middlewares/lvgl/src/libs/expat/xmlrole.d \
./Middlewares/lvgl/src/libs/expat/xmltok.d \
./Middlewares/lvgl/src/libs/expat/xmltok_impl.d \
./Middlewares/lvgl/src/libs/expat/xmltok_ns.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/libs/expat/%.o Middlewares/lvgl/src/libs/expat/%.su Middlewares/lvgl/src/libs/expat/%.cyclo: ../Middlewares/lvgl/src/libs/expat/%.c Middlewares/lvgl/src/libs/expat/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-expat

clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-expat:
	-$(RM) ./Middlewares/lvgl/src/libs/expat/xmlparse.cyclo ./Middlewares/lvgl/src/libs/expat/xmlparse.d ./Middlewares/lvgl/src/libs/expat/xmlparse.o ./Middlewares/lvgl/src/libs/expat/xmlparse.su ./Middlewares/lvgl/src/libs/expat/xmlrole.cyclo ./Middlewares/lvgl/src/libs/expat/xmlrole.d ./Middlewares/lvgl/src/libs/expat/xmlrole.o ./Middlewares/lvgl/src/libs/expat/xmlrole.su ./Middlewares/lvgl/src/libs/expat/xmltok.cyclo ./Middlewares/lvgl/src/libs/expat/xmltok.d ./Middlewares/lvgl/src/libs/expat/xmltok.o ./Middlewares/lvgl/src/libs/expat/xmltok.su ./Middlewares/lvgl/src/libs/expat/xmltok_impl.cyclo ./Middlewares/lvgl/src/libs/expat/xmltok_impl.d ./Middlewares/lvgl/src/libs/expat/xmltok_impl.o ./Middlewares/lvgl/src/libs/expat/xmltok_impl.su ./Middlewares/lvgl/src/libs/expat/xmltok_ns.cyclo ./Middlewares/lvgl/src/libs/expat/xmltok_ns.d ./Middlewares/lvgl/src/libs/expat/xmltok_ns.o ./Middlewares/lvgl/src/libs/expat/xmltok_ns.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-expat

