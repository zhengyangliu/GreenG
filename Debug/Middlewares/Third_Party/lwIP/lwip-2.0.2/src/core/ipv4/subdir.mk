################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/autoip.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/dhcp.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/etharp.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/icmp.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/igmp.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4_addr.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4_frag.c 

OBJS += \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/autoip.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/dhcp.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/etharp.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/icmp.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/igmp.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4_addr.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/autoip.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/dhcp.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/etharp.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/icmp.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/igmp.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4_addr.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/%.o: ../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/core/ipv4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g1 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I../Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/BSP -I../APP -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


