/*
 * app.c
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#include "app.h"
#include "BSP.h"
#include "FreeRTOS.h"
#include "task.h"
#include "light.h"
#include "usart_cmd.h"

void static Init_Applications(void)
{
    BSP_Init();

    Light_Task_Init(1);
    Usart_Cmd_Task_Init(20);

}

void Start_Applications(void)
{
    Init_Applications();

    xTaskCreate(Light_Task_Loop, "Light", 512, NULL, 8, NULL);
    xTaskCreate(Usart_Cmd_Task_Loop, "Usart Command", 512, NULL, 5, NULL);
}


