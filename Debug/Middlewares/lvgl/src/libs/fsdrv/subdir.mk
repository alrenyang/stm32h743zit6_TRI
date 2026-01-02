################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_uefi.c \
../Middlewares/lvgl/src/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_uefi.o \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_uefi.d \
./Middlewares/lvgl/src/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/libs/fsdrv/%.o Middlewares/lvgl/src/libs/fsdrv/%.su Middlewares/lvgl/src/libs/fsdrv/%.cyclo: ../Middlewares/lvgl/src/libs/fsdrv/%.c Middlewares/lvgl/src/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-fsdrv

clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-fsdrv:
	-$(RM) ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_cbfs.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_cbfs.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_cbfs.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_cbfs.su ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_fatfs.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_fatfs.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_fatfs.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_fatfs.su ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_littlefs.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_littlefs.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_littlefs.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_littlefs.su ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_memfs.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_memfs.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_memfs.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_memfs.su ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_posix.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_posix.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_posix.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_posix.su ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_stdio.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_stdio.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_stdio.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_stdio.su ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_uefi.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_uefi.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_uefi.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_uefi.su ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_win32.cyclo ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_win32.d ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_win32.o ./Middlewares/lvgl/src/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-fsdrv

