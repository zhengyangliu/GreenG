/*
 * light.c
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#include "light.h"

uint16_t Light_task_frequency = 0.01;

void Light_Task_Init(uint16_t fre)
{
    delay_ms(10);
    Light_task_frequency = fre;
    printf("Light Task Initialize                             [OK]\r\n");
}

void Light_Task_Loop(void *pvParameters)
{
    uint8_t flag = 0;

    for (;;)
    {
        if (flag)
            HAL_GPIO_WritePin(LED_BLUE_GPIO_Port, LED_BLUE_Pin, GPIO_PIN_SET);
        else
            HAL_GPIO_WritePin(LED_BLUE_GPIO_Port, LED_BLUE_Pin, GPIO_PIN_RESET);
        flag = ~flag;

        vTaskDelay(1000 / Light_task_frequency / portTICK_RATE_MS);
    }
}
