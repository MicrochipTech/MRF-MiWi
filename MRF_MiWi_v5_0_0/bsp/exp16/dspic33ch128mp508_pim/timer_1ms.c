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

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>

#include "timer_1ms.h"

/* Compiler checks and configuration *******************************/
#ifndef TIMER_MAX_1MS_CLIENTS
    #define TIMER_MAX_1MS_CLIENTS 10
#endif

/* Type Definitions ************************************************/
typedef struct
{
    TICK_HANDLER handle;
    uint32_t rate;
    uint32_t count;
} TICK_REQUEST;

/* Variables *******************************************************/
static TICK_REQUEST requests[TIMER_MAX_1MS_CLIENTS];
static bool configured = false;

/*********************************************************************
* Function: void TIMER_CancelTick(TICK_HANDLER handle)
*
* Overview: Cancels a tick request.
*
* PreCondition: None
*
* Input:  handle - the function that was handling the tick request
*
* Output: None
*
********************************************************************/
void TIMER_CancelTick(TICK_HANDLER handle)
{
    uint8_t i;

    for(i = 0; i < TIMER_MAX_1MS_CLIENTS; i++)
    {
        if(requests[i].handle == handle)
        {
            requests[i].handle = NULL;
        }
    }
}

/*********************************************************************
 * Function: bool TIMER_RequestTick(TICK_HANDLER handle, uint32_t rate)
 *
 * Overview: Requests to receive a periodic event.
 *
 * PreCondition: None
 *
 * Input:  handle - the function that will be called when the time event occurs
 *         rate - the number of ticks per event.
 *
 * Output: bool - true if successful, false if unsuccessful
 *
 ********************************************************************/
bool TIMER_RequestTick ( TICK_HANDLER handle , uint32_t rate )
{
    uint8_t i;
	
    if(configured == false)
    {
        return false;
    }

    for(i = 0; i < TIMER_MAX_1MS_CLIENTS; i++)
    {
        if(requests[i].handle == NULL)
        {
            requests[i].handle = handle;
            requests[i].rate = rate;
            requests[i].count = 0;

            return true;
        }
    }

    return false;
}

/*********************************************************************
 * Function: bool TIMER_SetConfiguration(TIMER_CONFIGURATIONS configuration)
 *
 * Overview: Initializes the timer.
 *
 * PreCondition: None
 *
 * Input:  None
 *
 * Output: bool - true if successful, false if unsuccessful
 *
 ********************************************************************/
bool TIMER_SetConfiguration ( TIMER_CONFIGURATIONS configuration )
{
    switch(configuration)
    {
        case TIMER_CONFIGURATION_1MS:
            //Disable timer interrupt vectoring before re-configuring it.
            T1CONbits.TON = 0;      
            _T1IE = 0;

            //Clear any registered timer callback function requests
            memset(requests, 0, sizeof(requests));
            
            //(Re-)Configure the timer for 1ms interrupt rate
            _T1IF = 0;
            _T1IP = 4;
            TMR1 = 0;
            PR1 = 999;
            T1CONbits.TECS = 0b11;  //FRC
            T1CONbits.TCS = 1;      //clock source based on TECS value
            T1CONbits.TSYNC = 1;    //synchronize
            T1CONbits.TCKPS = 0b01; //1:8
            T1CONbits.TON = 1;      //Timer on
            
            _T1IE = 1;

            configured = true;
            return true;

        case TIMER_CONFIGURATION_OFF:
            _T1IE = 0;
            configured = false;
            return true;
    }

    return false;
}

/****************************************************************************
  Function:
    void __attribute__((__interrupt__, auto_psv)) _T3Interrupt(void)

  Description:
    Timer ISR, used to update application state. If no transfers are pending
    new input request is scheduled.
  Precondition:
    None

  Parameters:
    None

  Return Values:
    None

  Remarks:
    None
  ***************************************************************************/
void __attribute__((__interrupt__, auto_psv)) _T1Interrupt( void )
{
    uint8_t i;

    for(i = 0; i < TIMER_MAX_1MS_CLIENTS; i++)
    {
        if(requests[i].handle != NULL)
        {
            requests[i].count++;
            
            if(requests[i].count == requests[i].rate)
            {
                requests[i].handle();
                requests[i].count = 0;
            }
        }
    }
    
    _T1IF = 0;
}
