################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lvgl/src/libs/freetype/lv_freetype.c \
../Middlewares/lvgl/src/libs/freetype/lv_freetype_glyph.c \
../Middlewares/lvgl/src/libs/freetype/lv_freetype_image.c \
../Middlewares/lvgl/src/libs/freetype/lv_freetype_outline.c \
../Middlewares/lvgl/src/libs/freetype/lv_ftsystem.c 

OBJS += \
./Middlewares/lvgl/src/libs/freetype/lv_freetype.o \
./Middlewares/lvgl/src/libs/freetype/lv_freetype_glyph.o \
./Middlewares/lvgl/src/libs/freetype/lv_freetype_image.o \
./Middlewares/lvgl/src/libs/freetype/lv_freetype_outline.o \
./Middlewares/lvgl/src/libs/freetype/lv_ftsystem.o 

C_DEPS += \
./Middlewares/lvgl/src/libs/freetype/lv_freetype.d \
./Middlewares/lvgl/src/libs/freetype/lv_freetype_glyph.d \
./Middlewares/lvgl/src/libs/freetype/lv_freetype_image.d \
./Middlewares/lvgl/src/libs/freetype/lv_freetype_outline.d \
./Middlewares/lvgl/src/libs/freetype/lv_ftsystem.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lvgl/src/libs/freetype/%.o Middlewares/lvgl/src/libs/freetype/%.su Middlewares/lvgl/src/libs/freetype/%.cyclo: ../Middlewares/lvgl/src/libs/freetype/%.c Middlewares/lvgl/src/libs/freetype/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Drivers/CMSIS/Include -I../Drivers/BSP/Components/lan8742 -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares" -I"/Users/alrenm3/work/Ihill/UB100/firmware/STM32H743ZIT6/Middlewares/lvgl" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-freetype

clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-freetype:
	-$(RM) ./Middlewares/lvgl/src/libs/freetype/lv_freetype.cyclo ./Middlewares/lvgl/src/libs/freetype/lv_freetype.d ./Middlewares/lvgl/src/libs/freetype/lv_freetype.o ./Middlewares/lvgl/src/libs/freetype/lv_freetype.su ./Middlewares/lvgl/src/libs/freetype/lv_freetype_glyph.cyclo ./Middlewares/lvgl/src/libs/freetype/lv_freetype_glyph.d ./Middlewares/lvgl/src/libs/freetype/lv_freetype_glyph.o ./Middlewares/lvgl/src/libs/freetype/lv_freetype_glyph.su ./Middlewares/lvgl/src/libs/freetype/lv_freetype_image.cyclo ./Middlewares/lvgl/src/libs/freetype/lv_freetype_image.d ./Middlewares/lvgl/src/libs/freetype/lv_freetype_image.o ./Middlewares/lvgl/src/libs/freetype/lv_freetype_image.su ./Middlewares/lvgl/src/libs/freetype/lv_freetype_outline.cyclo ./Middlewares/lvgl/src/libs/freetype/lv_freetype_outline.d ./Middlewares/lvgl/src/libs/freetype/lv_freetype_outline.o ./Middlewares/lvgl/src/libs/freetype/lv_freetype_outline.su ./Middlewares/lvgl/src/libs/freetype/lv_ftsystem.cyclo ./Middlewares/lvgl/src/libs/freetype/lv_ftsystem.d ./Middlewares/lvgl/src/libs/freetype/lv_ftsystem.o ./Middlewares/lvgl/src/libs/freetype/lv_ftsystem.su

.PHONY: clean-Middlewares-2f-lvgl-2f-src-2f-libs-2f-freetype

