/*
 * console.h
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#ifndef DRIVERS_BSP_CONSOLE_H_
#define DRIVERS_BSP_CONSOLE_H_

#include "hardware.h"

extern DMA_HandleTypeDef hdma_usart1_rx;
extern UART_HandleTypeDef huart1;
#define Console_Buff_LEN 20


#define Console_RxState_Clear \
do{\
    Console_RX.Len = 0;\
    Console_RX.State = uncomplete;\
    HAL_UART_Receive_DMA(&huart1, Console_RX.Data + Console_RX.Len, Console_Buff_LEN);  \
}while(0)


typedef struct Console_Rx_Data
{
    uint8_t Len;
    enum Console_State
    {
        ready = 0, uncomplete = 1,
    } State;
    uint8_t Data[Console_Buff_LEN];
} Rx_Data;


void console_init(void);
void Console_IRQ(void);


extern Rx_Data Console_RX;


#endif /* DRIVERS_BSP_CONSOLE_H_ */
