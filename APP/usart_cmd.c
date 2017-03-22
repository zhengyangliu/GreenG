/*
 * usart_cmd.c
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#include "usart_cmd.h"
#include <string.h>

static void Error_command(void);
static void Normal_CMD(void);

float Usart_Cmd_Task_Fre = 0.0001;

void Usart_Cmd_Task_Init(float fre)
{
    Usart_Cmd_Task_Fre = fre;
    printf("Greenguarder>");
    fflush(stdout);
}

void Usart_Cmd_Task_Loop(void *pvParameters)
{
    for (;;)
    {
        if (Console_RX.State == ready)
        {
            if (Console_RX.Len == 0)
            {
                Console_RxState_Clear
                ;
            }
            else
                Normal_CMD();

            printf("Greenguarder>");
            fflush(stdout);
            Console_RxState_Clear
            ;
        }
        vTaskDelay(1000 / Usart_Cmd_Task_Fre / portTICK_RATE_MS);
    }
}

static void Error_command(void)
{
    printf("\"");
    fflush(stdout);
    HAL_UART_Transmit(&huart1, Console_RX.Data, Console_RX.Len, 100);
    printf("\"");
    fflush(stdout);
    printf("is not a Greenguarder command,please check you command\r\n\r\n");
}

static void Normal_CMD(void)
{
    if ((strncmp((char*) Console_RX.Data, "help", 4) == 0)
            || (strncmp((char*) Console_RX.Data, "?", 1) == 0))
    {
        printf("\r\nAvailable command:\r\n\r\n");
        printf("lstask:   list task table\r\n");
        printf("tasktime: list task time\r\n");
        printf("reboot:   fully reboot system\r\n");
        printf("\r\n");
    }

    else if (strncmp((char*) Console_RX.Data, "lstask", 6) == 0)
    {
        char ac[TASK_NNUMBER * 40] =
        { 0 };

        vTaskList(ac);
        printf("\r\n");
        printf("Name          State   Priority  Stack  Num \r\n");
        printf("*******************************************\r\n");
        HAL_UART_Transmit(&huart1, (uint8_t*) ac, TASK_NNUMBER * 40, 100);
        printf("\r\n");
    }

    else if (strncmp((char*) Console_RX.Data, "tasktime", 8) == 0)
    {
        char mu[TASK_NNUMBER * 40] =
        { 0 };
        ;

        vTaskGetRunTimeStats(mu);
        printf("\r\n");
        printf("Task            Abs Time        Time \r\n");
        printf("*************************************\r\n");
        HAL_UART_Transmit(&huart1, (uint8_t*) mu, TASK_NNUMBER * 40, 100);
        printf("\r\n");
    }

    else if (strncmp((char*) Console_RX.Data, "reboot", 6) == 0)
    {
        printf("system rebooting..\r\n");
        delay_ms(1000);
        printf("3..\r\n");
        delay_ms(1000);
        printf("2..\r\n");
        delay_ms(1000);
        printf("1..\r\n");
        delay_ms(1000);
        HAL_NVIC_SystemReset();
    }

    else
        Error_command();
}

