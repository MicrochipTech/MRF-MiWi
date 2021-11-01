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

#include "adc.h"

#ifndef FCY
#define FCY 180000000
#endif

/*********************************************************************
* Function: ADC_ReadPercentage(ADC_CHANNEL channel);
*
* Overview: Reads the requested ADC channel and returns the percentage 
*            of that conversions result (0-100%).
*
* PreCondition: channel is configured via the ADCConfigure() function
*
* Input: ADC_CHANNEL channel - enumeration of the ADC channels
*        available in this demo.  They should be meaningful names and 
*        not the names of the ADC pins on the device (as the demo code 
*        may be ported to other boards).
*         i.e. ADC_ReadPercentage(ADC_CHANNEL_POTENTIOMETER);
*
* Output: uint8_t indicating the percentage of the result 0-100% or
*         0xFF for an error
*
********************************************************************/
uint8_t ADC_ReadPercentage( ADC_CHANNEL channel )
{
    uint8_t percent;

    switch(channel)
    {
        case ADC_CHANNEL_3:
            break;
        case ADC_CHANNEL_1:
            break;
        default:
            return 0xFF;
    }
    
    //A very crude percentage calculation
    percent = (ADC_Read10bit(channel) / 10);

    if(percent > 100)
    {
        percent = 100;
    }
    return percent;
}

/*********************************************************************
* Function: ADC_Read10bit(ADC_CHANNEL channel);
*
* Overview: Reads the requested ADC channel and returns the 10-bit
*           representation of this data.
*
* PreCondition: channel is configured via the ADCConfigure() function
*
* Input: ADC_CHANNEL channel - enumeration of the ADC channels
*        available in this demo.  They should be meaningful names and
*        not the names of the ADC pins on the device (as the demo code
*        may be ported to other boards).
*         i.e. - ADCReadPercentage(ADC_CHANNEL_POTENTIOMETER);
*
* Output: uint16_t the right adjusted 10-bit representation of the ADC
*         channel conversion or 0xFFFF for an error.
*
********************************************************************/
uint16_t ADC_Read10bit(ADC_CHANNEL channel)
{
    //The data should be available.  Return it now.
    return (ADC_Read12bit(channel))>>2;
}



/*********************************************************************
* Function: ADC_Read12bit(ADC_CHANNEL channel);
*
* Overview: Reads the requested ADC channel and returns the 12-bit
*           representation of this data.
*
* PreCondition: channel is configured via the ADCConfigure() function
*
* Input: ADC_CHANNEL channel - enumeration of the ADC channels
*        available in this demo.  They should be meaningful names and
*        not the names of the ADC pins on the device (as the demo code
*        may be ported to other boards).
*         i.e. - ADCReadPercentage(ADC_CHANNEL_POTENTIOMETER);
*
* Output: uint16_t - The 12-bit ADC channel conversion value, or 0xFFFF for an 
 *                   error.
*
********************************************************************/
uint16_t ADC_Read12bit(ADC_CHANNEL channel)
{
    //For devices using the new high speed multi-core SAR, like the dsPIC33CH128MP508
    volatile uint16_t* pResultRegister = (&ADCBUF0) + channel;
    
    uint16_t bitOfInterestMask;

    //Select the channel of interest
    ADCON3L = (ADCON3L & 0xFE00) | channel;
    //Generate a manual single channel trigger event to start the conversion
    ADCON3Lbits.CNVRTCH = 1;

    //Wait for the conversion to be complete and the result to be ready.
    if(channel < 16)
    {
        //Wait until the corresponding ANxxRDY bit asserts, indicating new data available.
        bitOfInterestMask = (0x0001 << channel);
        while((ADSTATL & bitOfInterestMask) == 0);            
    }
    else
    {
        //Wait until the corresponding ANxxRDY bit asserts, indicating new data available.
        bitOfInterestMask = (0x0001 << (channel - 16));
        while((ADSTATH & bitOfInterestMask) == 0);            
    }

    //The data should be available.  Return it now.
    return (*pResultRegister);
}




/*********************************************************************
* Function: uint16_t ADC_Read12bitAverage(ADC_CHANNEL channel, uint16_t numberOfSamplesInAverage)
*
* Overview: Repeatedly reads the requested ADC channel and returns a 12-bit
*           representation of the average value returned by the ADC over the
*           sample set.
*
* PreCondition: channel is configured via the ADCConfigure() function
*
* Input: ADC_CHANNEL channel - enumeration of the ADC channels
*        available in this demo.  They should be meaningful names and
*        not the names of the ADC pins on the device (as the demo code
*        may be ported to other boards).
*         i.e. - ADCReadPercentage(ADC_CHANNEL_POTENTIOMETER);
*        uint16_t numberOfSamplesInAverage - the number of samples to take when
*                 computing the average result.  The more the samples, the better
*                 the result quality, but the longer the operation will take.
*
* Output: uint16_t - The 12-bit average ADC channel conversion result value
*
********************************************************************/
uint16_t ADC_Read12bitAverage(ADC_CHANNEL channel, uint16_t numberOfSamplesInAverage)
{
    uint32_t resultAccumulator = 0;
    uint16_t i;
    
    //Collect a series of ADC result values and add them to an accumulator.
    for(i = 0; i < numberOfSamplesInAverage; i++)
    {
        resultAccumulator += ADC_Read12bit(channel);
    }
    
    if(i > 0)
    {
        //Divide the accumulator sum by the number of samples in the sum, to get the average result value.
        return ((resultAccumulator + (i >> 1)) / i);       //Note: + (i >> 1) is done to achieve a rounding effect, rather than simple truncation.
    }
    
    return 0;
}


/*********************************************************************
* Function: bool ADC_ChannelEnable(ADC_CHANNEL channel, ADC_CONFIGURATION configuration);
*
* Overview: Configures the ADC module to specified setting
*
* PreCondition: none
*
* Input: ADC_CHANNEL channel - the channel to enable
*        ADC_CONFIGURATION configuration - the mode in which to run the ADC
*
* Output: bool - true if successfully configured.  false otherwise.
*
********************************************************************/
bool ADC_ChannelEnable(ADC_CHANNEL channel)
{
    switch(channel)
    {
        case ADC_CHANNEL_3:
            ANSELAbits.ANSELA3  = 1 ;
            return true;
        
        case ADC_CHANNEL_1:
            ANSELAbits.ANSELA1 = 1 ;
            return true;

        default:
            return false;
    }
    
    return false;
}

/*********************************************************************
* Function: bool ADC_SetConfiguration(ADC_CONFIGURATION configuration)
*
* Overview: Configures the ADC module to specified setting
*
* PreCondition: none
*
* Input: ADC_CONFIGURATION configuration - the mode in which to run the ADC
*
* Output: bool - true if successfully configured.  false otherwise.
*
********************************************************************/
bool ADC_SetConfiguration(ADC_CONFIGURATION configuration)
{
    if(configuration == ADC_CONFIGURATION_DEFAULT)
    {
        ADCON1L = 0x0000;       //CVD off, ADC operates in idle mode.
        ADCON1H = 0x0060;       //Integer output formatting, 12-bit resolution
        //NOTE: ADC clock period should be >=14.28ns, based on dsPIC33CH128MP508 datasheet
        if(FCY > 30000000)
        {
            ADCON2L = 0x0003;       //TADCORE = TCORESRC / 6
        }
        else
        {
            ADCON2L = 0x0000;       //TADCORE = TCORESRC / 2
        }

        ADCON2H = 0x0030;       //Sample time (SAMC) = 32 * TADCORE
        ADCON3L = 0x0000;       //AVDD/AVSS as references
        ADCON3H = 0x0080;       //TCORESRC = FSYS = peripheral frequency = Fosc /2, Enable the "shared" ADC core, since it is the one we will use in this code
        ADCON5L = 0x0080;       //Power up the shared core
        ADCON5H = 0x0F00;       //32768 TCORESRC clocks for warm up time

        ADCON1Lbits.ADON = 1;   //Turn on the ADC module now.
        
        //Wait until the ADC "shared core" claims it is ready to go.
        while(ADCON5Lbits.SHRRDY == 0);
        return true;
    }
		
    return false;
}