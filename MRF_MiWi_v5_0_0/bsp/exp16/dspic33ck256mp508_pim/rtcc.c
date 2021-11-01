/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*******************************************************************************/

#include <xc.h>

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "timer_1ms.h"

#include "rtcc.h"
static uint8_t RTCC_DecToBCD (uint8_t value);
static uint8_t RTCC_BCDToDec (uint8_t value);
static volatile RTCC_DATETIME currentTime;
static bool tickEnabled = false;

void RTCC_BuildTimeGet(RTCC_DATETIME *dateTime)
{
    uint8_t weekday;
    uint8_t month;
    uint8_t y;
    uint8_t dateTable[] = {0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5};

    dateTime->second =  (((__TIME__[6]) & 0x0f) << 4) | ((__TIME__[7]) & 0x0f);
    dateTime->minute =  (((__TIME__[3]) & 0x0f) << 4) | ((__TIME__[4]) & 0x0f);
    dateTime->hour = (((__TIME__[0]) & 0x0f) << 4) | ((__TIME__[1]) & 0x0f);
    dateTime->day =  (((__DATE__[4]) & 0x0f) << 4) | ((__DATE__[5]) & 0x0f);
    dateTime->year = (((__DATE__[9]) & 0x0f) << 4) | ((__DATE__[10]) & 0x0f);

    //Set the month
    switch(__DATE__[0])
    {
        case 'J':
            //January, June, or July
            switch(__DATE__[1])
            {
                case 'a':
                    //January
                    month = 0x01;
                    break;
                case 'u':
                    switch(__DATE__[2])
                    {
                        case 'n':
                            //June
                            month = 0x06;
                            break;
                        case 'l':
                            //July
                            month = 0x07;
                            break;
                    }
                    break;
            }
            break;
        case 'F':
            month = 0x02;
            break;
        case 'M':
            //March,May
            switch(__DATE__[2])
            {
                case 'r':
                    //March
                    month = 0x03;
                    break;
                case 'y':
                    //May
                    month = 0x05;
                    break;
            }
            break;
        case 'A':
            //April, August
            switch(__DATE__[1])
            {
                case 'p':
                    //April
                    month = 0x04;
                    break;
                case 'u':
                    //August
                    month = 0x08;
                    break;
            }
            break;
        case 'S':
            month = 0x09;
            break;
        case 'O':
            month = 0x10;
            break;
        case 'N':
            month = 0x11;
            break;
        case 'D':
            month = 0x12;
            break;
    }

    dateTime->month = month;

    // Start with weekday = 6.  This value is valid for this algorithm for this century.
    weekday = 6;
    // y = year
    y = ((dateTime->year >> 4) * 10) + (dateTime->year & 0x0f);
    // Weekday = base day + year + x number of leap days
    weekday += y + (y / 4);
    // If the current year is a leap year but it's not March, subtract 1 from the date
    if (((y % 4) == 0) && (month < 3))
    {
        weekday -= 1;
    }
    // Add an offset based on the current month
    weekday += dateTable[RTCC_BCDToDec(month) - 1];
    // Add the current day in the month
    weekday += ((dateTime->day >> 4) * 10) + (dateTime->day & 0x0f);
    weekday = weekday % 7;

    dateTime->weekday = weekday;
    
    if (dateTime->bcdFormat)
    {
        dateTime->year = RTCC_DecToBCD (dateTime->year);
        dateTime->month = RTCC_DecToBCD (dateTime->month);
        dateTime->day = RTCC_DecToBCD (dateTime->day);
        dateTime->weekday = RTCC_DecToBCD (dateTime->weekday);
        dateTime->hour = RTCC_DecToBCD (dateTime->hour);
        dateTime->minute = RTCC_DecToBCD (dateTime->minute);
        dateTime->second = RTCC_DecToBCD (dateTime->second);
    }
}

static void RTCC_TickHandler(void)
{
    currentTime.second++;
    
    if(currentTime.second < 60)
    {
        return;
    }
    
    currentTime.second = 0;
    currentTime.minute++;

    if(currentTime.minute < 60)
    {
        return;
    }
    
    currentTime.minute = 0;
    currentTime.hour++;
    
    if(currentTime.hour < 24)
    {
        return;
    }
    
    currentTime.hour = 0;    
}

void RTCC_Initialize (RTCC_DATETIME * value)
{
    memcpy((void*)&currentTime, value, sizeof(RTCC_DATETIME));
    
    TIMER_CancelTick(RTCC_TickHandler);
    tickEnabled = TIMER_RequestTick(RTCC_TickHandler, 1000);
}

void RTCC_TimeGet (RTCC_DATETIME * value)
{
    RTCC_DATETIME capturedTime;
    
    if(tickEnabled == false)
    {
        tickEnabled = TIMER_RequestTick(RTCC_TickHandler, 1000);
    }
 
    do
    {
        memcpy((void*)value, (void*)&currentTime, sizeof(RTCC_DATETIME));
        memcpy((void*)&capturedTime, (void*)&currentTime, sizeof(RTCC_DATETIME));
    } while(memcmp(value, &capturedTime, sizeof(RTCC_DATETIME)) != 0);

    if (value->bcdFormat)
    {
        value->year = RTCC_DecToBCD (value->year);
        value->month = RTCC_DecToBCD (value->month);
        value->day = RTCC_DecToBCD (value->day);
        value->weekday = RTCC_DecToBCD (value->weekday);
        value->hour = RTCC_DecToBCD (value->hour);
        value->minute = RTCC_DecToBCD (value->minute);
        value->second = RTCC_DecToBCD (value->second);
    }
}

// Note : value must be < 100
static uint8_t RTCC_DecToBCD (uint8_t value)
{
    return (((value / 10)) << 4) | (value % 10);
}

static uint8_t RTCC_BCDToDec (uint8_t value)
{
    return ((value >> 4) * 10) + (value & 0x0F);
}

void inline __attribute__((deprecated)) BSP_RTCC_Initialize (BSP_RTCC_DATETIME * value)
{
    RTCC_Initialize(value);
}

void inline __attribute__((deprecated)) BSP_RTCC_TimeGet (BSP_RTCC_DATETIME * value)
{
    RTCC_TimeGet(value);
}

