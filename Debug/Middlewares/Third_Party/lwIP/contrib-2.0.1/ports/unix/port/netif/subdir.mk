################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/delif.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/fifo.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/list.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/pcapif.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/sio.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tapif.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tcpdump.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tunif.c \
../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/unixif.c 

OBJS += \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/delif.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/fifo.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/list.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/pcapif.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/sio.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tapif.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tcpdump.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tunif.o \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/unixif.o 

C_DEPS += \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/delif.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/fifo.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/list.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/pcapif.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/sio.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tapif.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tcpdump.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/tunif.d \
./Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/unixif.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/%.o: ../Middlewares/Third_Party/lwIP/contrib-2.0.1/ports/unix/port/netif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g1 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I../Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/BSP -I../APP -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


