################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/arc4.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/des.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/md4.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/md5.c \
../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/sha1.c 

OBJS += \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/arc4.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/des.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/md4.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/md5.o \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/sha1.o 

C_DEPS += \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/arc4.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/des.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/md4.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/md5.d \
./Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/%.o: ../Middlewares/Third_Party/lwIP/lwip-2.0.2/src/netif/ppp/polarssl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g1 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I../Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/BSP -I../APP -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


