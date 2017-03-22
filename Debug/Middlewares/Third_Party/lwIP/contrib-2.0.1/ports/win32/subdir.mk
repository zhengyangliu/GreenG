################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/pcapif.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/pcapif_helper.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/sio.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/sys_arch.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/test.c 

OBJS += \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/pcapif.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/pcapif_helper.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/sio.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/sys_arch.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/test.o 

C_DEPS += \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/pcapif.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/pcapif_helper.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/sio.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/sys_arch.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/test.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/%.o: ../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/win32/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g1 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I../Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/BSP -I../APP -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


