/*
 * console.c
 *
 *  Created on: Mar 22, 2017
 *      Author: yangliu
 */

#include "console.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <sys/types.h>
#include <sys/stat.h>

Rx_Data Console_RX;
Rx_Data Console_Buffer;
uint16_t Len_tmp = 0;

void console_init(void);
int _write(int fd, char *ptr, int len);

void console_init(void)
{
    Console_RxState_Clear
    ;
    __HAL_UART_ENABLE_IT(&huart1, UART_IT_IDLE);   //使能串口1空闲中断
    HAL_UART_Receive_DMA(&huart1, Console_RX.Data, Console_Buff_LEN); //开启串口1 DMA
    printf("\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n");
    printf("Console Initialize                                [OK]\r\n");
}

void Console_IRQ(void)
{
    if ((__HAL_UART_GET_FLAG(&huart1, UART_FLAG_IDLE) != RESET))
    {
        __HAL_UART_CLEAR_IDLEFLAG(&huart1);  //清标志位
        HAL_UART_DMAStop(&huart1);   //DMA暂停

        uint16_t i = 0, tmp;

        Len_tmp = Console_Buff_LEN - hdma_usart1_rx.Instance->CNDTR;
        tmp = Console_RX.Len;
        Console_RX.Len += Len_tmp;

        for (; i < Len_tmp; i++)
        {
            if (Console_RX.Data[tmp + i] == 0x0d)  //如果输入为回车
            {
                Console_RX.Len -= 1;
                HAL_UART_Transmit(&huart1, (uint8_t*) "\r\n", 2, 20);
                Console_RX.State = ready;
                goto OUT;
            }
            else if (Console_RX.Data[tmp + i] == 0x08) //如果输入为退格,此处存在隐含bug，如果退格与数据连续输入会出错
            {

                if (Console_RX.Len > 1)
                {
                    Console_RX.Len -= 2;
                    HAL_UART_Transmit(&huart1, (uint8_t*) "\b \b", 3, 20);
                }
                else
                {
                    Console_RX.Len--;
                }
            }
            else if (Console_RX.Data[tmp + i] >= ' '
                    && Console_RX.Data[tmp + i] <= '~')  //如果输入普通字符
            {
                HAL_UART_Transmit(&huart1, &Console_RX.Data[tmp + i], 1, 20);
            }

            if (Console_RX.Len > (Console_Buff_LEN - 1))  //溢出处理
                Console_RX.Len = 0;  //接收数据错误,重新开始接收
        }
        HAL_UART_Receive_DMA(&huart1, Console_RX.Data + Console_RX.Len,
        Console_Buff_LEN);  //继续接收
        OUT: ;
    }
}

extern int _end;
caddr_t _sbrk(int incr)
{
    static unsigned char *heap = NULL;
    unsigned char *prev_heap;
    if (heap == NULL)
    {
        heap = (unsigned char *) &_end;
    }
    prev_heap = heap;
    heap += incr;
    return (caddr_t) prev_heap;
}
int link(char *old, char *new)
{
    return -1;
}
int _close(int file)
{
    return -1;
}
int _fstat(int file, struct stat *st)
{
    st->st_mode = S_IFCHR;
    return 0;
}
int _isatty(int file)
{
    return 1;
}
int _lseek(int file, int ptr, int dir)
{
    return 0;
}
int _read(int file, char *ptr, int len)
{
    return 0;
}
int _write(int file, char *ptr, int len)
{
    (void) file;

    HAL_UART_Transmit(&huart1, (uint8_t*) ptr, len, 1000);

    return len;
}
void abort(void)
{
    /* Abort called */
    while (1)
        ;
}
