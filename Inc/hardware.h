/*
 * hardware.h
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#ifndef INC_HARDWARE_H_
#define INC_HARDWARE_H_

#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"

IWDG_HandleTypeDef hiwdg;
SPI_HandleTypeDef hspi2;
TIM_HandleTypeDef htim4;
UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;
UART_HandleTypeDef huart3;
DMA_HandleTypeDef hdma_usart1_rx;


void Hardware_Init(void);
void Error_Handler(void);
void Delay_Init(void);
void delay_us(uint32_t time);
void delay_ms(uint32_t time);

#endif /* INC_HARDWARE_H_ */
