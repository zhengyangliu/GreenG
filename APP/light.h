/*
 * light.h
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#ifndef APP_LIGHT_H_
#define APP_LIGHT_H_

#include "BSP.h"
#include "FreeRTOS.h"
#include "task.h"

void Light_Task_Init(uint16_t fre);
void Light_Task_Loop(void *pvParameters);

#endif /* APP_LIGHT_H_ */
