/*
 * usart_cmd.h
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#ifndef APP_USART_CMD_H_
#define APP_USART_CMD_H_

#include "BSP.h"
#include "FreeRTOS.h"
#include "task.h"

#define TASK_NNUMBER ( 2 + 2 )

void Usart_Cmd_Task_Init(float fre);
void Usart_Cmd_Task_Loop(void *pvParameters);

#endif /* APP_USART_CMD_H_ */
