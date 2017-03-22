################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/def.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/dns.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/inet_chksum.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/init.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ip.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/mem.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/memp.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/netif.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/pbuf.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/raw.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/stats.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/sys.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp_in.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp_out.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/timeouts.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/udp.c 

OBJS += \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/def.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/dns.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/inet_chksum.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/init.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ip.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/mem.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/memp.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/netif.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/pbuf.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/raw.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/stats.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/sys.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp_in.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp_out.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/timeouts.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/udp.o 

C_DEPS += \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/def.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/dns.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/inet_chksum.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/init.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ip.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/mem.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/memp.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/netif.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/pbuf.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/raw.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/stats.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/sys.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp_in.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/tcp_out.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/timeouts.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/%.o: ../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g1 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I../Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/BSP -I../APP -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


