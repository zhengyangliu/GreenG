################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_iwdg.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_uart.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_iwdg.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.o \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_uart.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_iwdg.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi_ex.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.d \
./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/Src/%.o: ../Drivers/STM32F1xx_HAL_Driver/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g1 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F103xB -I../Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/BSP -I../APP -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


