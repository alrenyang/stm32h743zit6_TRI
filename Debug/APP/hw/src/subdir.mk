################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/hw/src/cli.c \
../APP/hw/src/log.c \
../APP/hw/src/qbuffer.c \
../APP/hw/src/sdram.c \
../APP/hw/src/swtimer.c \
../APP/hw/src/uart.c \
../APP/hw/src/util.c 

OBJS += \
./APP/hw/src/cli.o \
./APP/hw/src/log.o \
./APP/hw/src/qbuffer.o \
./APP/hw/src/sdram.o \
./APP/hw/src/swtimer.o \
./APP/hw/src/uart.o \
./APP/hw/src/util.o 

C_DEPS += \
./APP/hw/src/cli.d \
./APP/hw/src/log.d \
./APP/hw/src/qbuffer.d \
./APP/hw/src/sdram.d \
./APP/hw/src/swtimer.d \
./APP/hw/src/uart.d \
./APP/hw/src/util.d 


# Each subdirectory must supply rules for building sources it contributes
APP/hw/src/%.o APP/hw/src/%.su APP/hw/src/%.cyclo: ../APP/hw/src/%.c APP/hw/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/APP" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/APP/hw/include" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/APP/hw/src" -I../Drivers/BSP/Components/lan8742 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-APP-2f-hw-2f-src

clean-APP-2f-hw-2f-src:
	-$(RM) ./APP/hw/src/cli.cyclo ./APP/hw/src/cli.d ./APP/hw/src/cli.o ./APP/hw/src/cli.su ./APP/hw/src/log.cyclo ./APP/hw/src/log.d ./APP/hw/src/log.o ./APP/hw/src/log.su ./APP/hw/src/qbuffer.cyclo ./APP/hw/src/qbuffer.d ./APP/hw/src/qbuffer.o ./APP/hw/src/qbuffer.su ./APP/hw/src/sdram.cyclo ./APP/hw/src/sdram.d ./APP/hw/src/sdram.o ./APP/hw/src/sdram.su ./APP/hw/src/swtimer.cyclo ./APP/hw/src/swtimer.d ./APP/hw/src/swtimer.o ./APP/hw/src/swtimer.su ./APP/hw/src/uart.cyclo ./APP/hw/src/uart.d ./APP/hw/src/uart.o ./APP/hw/src/uart.su ./APP/hw/src/util.cyclo ./APP/hw/src/util.d ./APP/hw/src/util.o ./APP/hw/src/util.su

.PHONY: clean-APP-2f-hw-2f-src

