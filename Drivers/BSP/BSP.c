/*
 * BSP.c
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#include "BSP.h"

uint8_t mac[6] =
{ 11, 22, 33, 44, 55, 66 };

void BSP_Init(void)
{
    console_init();

    HAL_GPIO_WritePin(LED_RED_GPIO_Port, LED_RED_Pin, GPIO_PIN_SET);
    while (ENC28J60_Init(mac))
    {
        HAL_GPIO_WritePin(LED_RED_GPIO_Port, LED_RED_Pin, GPIO_PIN_SET);  //如红灯常亮，则初始化失败
        delay_ms(1000);
        printf("error: tapdev init error!\r\n");
    };

    printf("info: tapdev init ok..\r\n");
    delay_ms(500);
    HAL_GPIO_WritePin(LED_RED_GPIO_Port, LED_RED_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LED_BLUE_GPIO_Port, LED_BLUE_Pin, GPIO_PIN_SET);
}
