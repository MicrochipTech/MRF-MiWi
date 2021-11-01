// DOM-IGNORE-BEGIN
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
// DOM-IGNORE-END

#include <xc.h>
#include "drv_spi.h"
#include "system_config.h"
#include "system.h"
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

/* DWF add */
void SPI1_Initialize (void)
{
    // FRMERR disabled; 
    SPI1STAT = 0x0;
    // SPI1BRG 0; 
    SPI1BRG = 0x0;
    // AUDMONO disabled; AUDEN disabled; SPITUREN disabled; FRMERREN disabled; IGNROV disabled; SPISGNEXT disabled; SPIROVEN disabled; AUDMOD disabled; IGNTUR disabled; 
    SPI1CON2 = 0x0;
    // MCLKSEL PBCLK; DISSDO disabled; SRXISEL Last Word is Read; CKP Idle:Low, Active:High; FRMEN disabled; FRMSYPW One-Clock; SSEN disabled; FRMCNT 1; MSSEN disabled; MSTEN Master; MODE16 disabled; FRMPOL disabled; SMP Middle; SIDL disabled; FRMSYNC disabled; CKE Active to Idle; MODE32 disabled; SPIFE Frame Sync pulse precedes; STXISEL Complete; DISSDI disabled; ON enabled; ENHBUF enabled; 
    SPI1CON = 0x00018120;
}

/* DWF add end*/

/*
 NOTE: This driver supports 8-bit SPI mode only.
 */

// error checks
#if !defined(DRV_SPI_CONFIG_CHANNEL_1_ENABLE) && \
    !defined(DRV_SPI_CONFIG_CHANNEL_2_ENABLE) && \
    !defined(DRV_SPI_CONFIG_CHANNEL_3_ENABLE) && \
    !defined(DRV_SPI_CONFIG_CHANNEL_4_ENABLE)
    #warning "No SPI Channel defined! Please define in system_config.h or system.h"
#endif

/**
  DRV_SPIx_CONFIG_DUMMY_DATA

  @Summary
    Dummy data to be sent.

  @Description
    Dummy data to be sent, when no input buffer is specified in the buffer APIs.
 */
#ifndef DRV_SPI1_CONFIG_DUMMY_DATA
    #define DRV_SPI1_CONFIG_DUMMY_DATA 0xFF
#endif
#ifndef DRV_SPI2_CONFIG_DUMMY_DATA
    #define DRV_SPI2_CONFIG_DUMMY_DATA 0xFF
#endif
#ifndef DRV_SPI3_CONFIG_DUMMY_DATA
    #define DRV_SPI3_CONFIG_DUMMY_DATA 0xFF
#endif
#ifndef DRV_SPI4_CONFIG_DUMMY_DATA
    #define DRV_SPI4_CONFIG_DUMMY_DATA 0xFF
#endif

/**
  SPI_FIFO_FILL_LIMIT

  @Summary
    FIFO fill limit for data transmission.

  @Description
    The amount of data to be filled in the FIFO during transmission. The maximum limit allowed is 8.
 */
#define SPI_FIFO_FILL_LIMIT 16

//Check to make sure that the FIFO limit does not exceed the maximum allowed limit of 8
#if (SPI_FIFO_FILL_LIMIT > 16)

    #define SPI_FIFO_FILL_LIMIT 16

#endif


/* SPI SFR definitions. i represents the SPI
   channel number.
   valid i values are: 1, 2, 3, 4
*/
#define DRV_SPI_STAT(i)      SPI##i##STAT
#define DRV_SPI_STATbits(i)  SPI##i##STATbits
#define DRV_SPI_CON(i)      SPI##i##CON
#define DRV_SPI_CONbits(i)  SPI##i##CONbits
#define DRV_SPI_BRG(i)       SPI##i##BRG

static int spiMutex[4] = { 0, 0, 0, 0 };

#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
static uint8_t spi1DummyData = DRV_SPI1_CONFIG_DUMMY_DATA;
#endif

#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
static uint8_t spi2DummyData = DRV_SPI2_CONFIG_DUMMY_DATA;
#endif

#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
static uint8_t spi3DummyData = DRV_SPI3_CONFIG_DUMMY_DATA;
#endif

#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
static uint8_t spi4DummyData = DRV_SPI4_CONFIG_DUMMY_DATA;
#endif

/**
  SPIx Exchange Function

  @Summary
    Exchanges one byte of data from SPIx

  @Description
    This routine exchanges one byte of data from the SPIx.
    This is a blocking routine.

  @Preconditions
    The initialize routine must have been called for the specified
    SPI1 driver instance.

  @Returns
    Data read from SPIx

  @Param
    data         - Data to be written onto SPIx.

  @Example
    <code>
    uint16_t   myWriteBuffer[MY_BUFFER_SIZE];
    uint16_t   myReadBuffer[MY_BUFFER_SIZE];
    uint16_t writeData;
    uint16_t readData;
    SPI1_STATUS status;
    unsigned int    total;
    SPI1_Initialize;

    total = 0;
    do
    {
        total  = SPI1_ExchangeBuffer( &myWriteBuffer[total], MY_BUFFER_SIZE - total, &myWriteBuffer[total]);

        // Do something else...

    } while( total < MY_BUFFER_SIZE );

    readData = SPI1_Exchange( writeData);

    status = SPI1_StatusGet();

    </code>
*/
void SPI1_Exchange(void *pTransmitData, void *pReceiveData);
void SPI2_Exchange(void *pTransmitData, void *pReceiveData);
void SPI3_Exchange(void *pTransmitData, void *pReceiveData);
void SPI4_Exchange(void *pTransmitData, void *pReceiveData);

/**
  SPIx Exchange Buffer Function

  @Summary
    Exchanges data from a buffer of size specified by len from SPIx

  @Description
    This routine exchanges data from a buffer of size len from the SPIx.
    This is a blocking routine.

  @Preconditions
    The initialize routine must have been called for the specified
    SPIx driver instance.

  @Returns
    Number of bytes written/read.

  @Param
    pTransmitData - Location of buffer of data to be written onto SPIx.

  @Param
    len - Number of data to be read. 

  @Param
    pReceiveData - Location of buffer of data to be read from SPI1.

  @Example
    Refer to SPIx_Exchange() for an example

*/
uint16_t SPI1_ExchangeBuffer(void *pTransmitData, uint16_t len, void* pReceiveData);
uint16_t SPI2_ExchangeBuffer(void *pTransmitData, uint16_t len, void* pReceiveData);
uint16_t SPI3_ExchangeBuffer(void *pTransmitData, uint16_t len, void* pReceiveData);
uint16_t SPI4_ExchangeBuffer(void *pTransmitData, uint16_t len, void* pReceiveData);

/**
  SPIx Dummy Data Set Function

  @Summary:
    Sets the dummy data when calling exchange functions

  @Description:
    This function sets the dummy data used when performing a an SPI
    get call. When get is used, the exchange functions will still need
    to send data for proper SPI operation.

  @Precondition:
    The DRV_SPI_Initialize routine must have been called.

  @Returns:
    None.

  @Parameters:
    channel      - SPI instance through which the communication needs to happen

    dummyData    - Dummy data to be used.

  @Remarks:
    This is blocking routine.
*/
void SPI1_DummyDataSet(uint8_t dummyData);
void SPI2_DummyDataSet(uint8_t dummyData);
void SPI3_DummyDataSet(uint8_t dummyData);
void SPI4_DummyDataSet(uint8_t dummyData);

/*****************************************************************************
 * void DRV_SPI_Put(uint8_t channel, uint8_t data)
 *****************************************************************************/
void DRV_SPI_Put(uint8_t channel, uint8_t data)
{
#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)      
        SPI1_Exchange(&data, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
        SPI2_Exchange(&data, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)
        SPI3_Exchange(&data, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
        SPI4_Exchange(&data, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
}

/*****************************************************************************
 * uint8_t DRV_SPI_Get (uint8_t channel)
 *****************************************************************************/
uint8_t DRV_SPI_Get (uint8_t channel)
{
    uint8_t ReceiveData;

#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)
        SPI1_Exchange(NULL, &ReceiveData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
        SPI2_Exchange(NULL, &ReceiveData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)
        SPI3_Exchange(NULL, &ReceiveData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
        SPI4_Exchange(NULL, &ReceiveData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE

    return ReceiveData;
}

/*****************************************************************************
 void DRV_SPI_PutBuffer( uint8_t channel,
                         uint8_t *pData,
                         uint16_t count)
 *****************************************************************************/
void DRV_SPI_PutBuffer( uint8_t channel,
                        uint8_t *pData,
                        uint16_t count)
{

#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)
        SPI1_ExchangeBuffer(pData, count, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
        SPI2_ExchangeBuffer(pData, count, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)       
        SPI3_ExchangeBuffer(pData, count, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
        SPI4_ExchangeBuffer(pData, count, NULL);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE

}

/*****************************************************************************
 void DRV_SPI_GetBuffer( uint8_t channel,
                         uint8_t *pData,
                         uint16_t count)
 *****************************************************************************/
void DRV_SPI_GetBuffer( uint8_t channel,
                        uint8_t *pData,
                        uint16_t count)
{
#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)
        SPI1_ExchangeBuffer(NULL, count, pData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
        SPI2_ExchangeBuffer(NULL, count, pData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)
        SPI3_ExchangeBuffer(NULL, count, pData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
        SPI4_ExchangeBuffer(NULL, count, pData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE

}

/*****************************************************************************
void SPI_DummyDataSet(
                        uint8_t channel,
                        uint8_t dummyData)
 *****************************************************************************/
void SPI_DummyDataSet(
                        uint8_t channel,
                        uint8_t dummyData)
{
#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)
        SPI1_DummyDataSet(dummyData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
        SPI2_DummyDataSet(dummyData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)
        SPI3_DummyDataSet(dummyData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
        SPI4_DummyDataSet(dummyData);
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE

}

/*****************************************************************************
 * void DRV_SPI_Initialize(const unsigned int channel, DRV_SPI_INIT_DATA *pData)
 *****************************************************************************/
void DRV_SPI_Initialize(DRV_SPI_INIT_DATA *pData)
{
#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE        
    if (pData->channel == 1)
    {        
        DRV_SPI_CON(1) = 0;
        
        DRV_SPI_CONbits(1).MSTEN = SPI_MST_MODE_ENABLE;

        // set to 8-bit mode
        DRV_SPI_CONbits(1).MODE16 = 0;
        DRV_SPI_CONbits(1).MODE32 = 0;

        DRV_SPI_CONbits(1).CKE = pData->cke;
        switch (pData->spibus_mode)
        {
            case SPI_BUS_MODE_0:
                //smp = 0, ckp = 0
                DRV_SPI_CONbits(1).CKP = 0;
                DRV_SPI_CONbits(1).SMP = 0;
                break;
            case SPI_BUS_MODE_1:
                //smp = 1, ckp = 0
                DRV_SPI_CONbits(1).CKP = 0;
                DRV_SPI_CONbits(1).SMP = 1;
                break;
            case SPI_BUS_MODE_2:
                //smp = 0, ckp = 1
                DRV_SPI_CONbits(1).CKP = 1;
                DRV_SPI_CONbits(1).SMP = 0;
                break;
            case SPI_BUS_MODE_3:
                //smp = 1, ckp = 1
                DRV_SPI_CONbits(1).CKP = 1;
                DRV_SPI_CONbits(1).SMP = 1;
                break;
            default:
                // should not happen
                break;
        }

#ifndef DRV_SPI_CONFIG_ENHANCED_BUFFER_DISABLE
        DRV_SPI_CONbits(1).ENHBUF = 1;
#else
        DRV_SPI_CONbits(1).ENHBUF = 0;
#endif
        DRV_SPI_BRG(1) = pData->brg;
        DRV_SPI_CONbits(1).MCLKSEL = pData->refo;
        DRV_SPI_CONbits(1).ON = SPI_MODULE_ENABLE;
        return;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (pData->channel == 2)
    {
        DRV_SPI_CON(2) = 0;
        
        DRV_SPI_CONbits(2).MSTEN = SPI_MST_MODE_ENABLE;

        // set to 8-bit mode
        DRV_SPI_CONbits(2).MODE16 = 0;
        DRV_SPI_CONbits(2).MODE32 = 0;

        DRV_SPI_CONbits(2).CKE = pData->cke;
        switch (pData->spibus_mode)
        {
            case SPI_BUS_MODE_0:
                //smp = 0, ckp = 0
                DRV_SPI_CONbits(2).CKP = 0;
                DRV_SPI_CONbits(2).SMP = 0;
                break;
            case SPI_BUS_MODE_1:
                //smp = 1, ckp = 0
                DRV_SPI_CONbits(2).CKP = 0;
                DRV_SPI_CONbits(2).SMP = 1;
                break;
            case SPI_BUS_MODE_2:
                //smp = 0, ckp = 1
                DRV_SPI_CONbits(2).CKP = 1;
                DRV_SPI_CONbits(2).SMP = 0;
                break;
            case SPI_BUS_MODE_3:
                //smp = 1, ckp = 1
                DRV_SPI_CONbits(2).CKP = 1;
                DRV_SPI_CONbits(2).SMP = 1;
                break;
            default:
                // should not happen
                break;
        }

#ifndef DRV_SPI_CONFIG_ENHANCED_BUFFER_DISABLE
        DRV_SPI_CONbits(2).ENHBUF = 1;
#else
        DRV_SPI_CONbits(2).ENHBUF = 0;
#endif
        DRV_SPI_BRG(1) = pData->brg;
        DRV_SPI_CONbits(2).MCLKSEL = pData->refo;
        DRV_SPI_CONbits(2).ON = SPI_MODULE_ENABLE;
        return;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (pData->channel == 3)
    {
        DRV_SPI_CON(3) = 0;
        
        DRV_SPI_CONbits(3).MSTEN = SPI_MST_MODE_ENABLE;

        // set to 8-bit mode
        DRV_SPI_CONbits(3).MODE16 = 0;
        DRV_SPI_CONbits(3).MODE32 = 0;

        DRV_SPI_CONbits(3).CKE = pData->cke;
        switch (pData->spibus_mode)
        {
            case SPI_BUS_MODE_0:
                //smp = 0, ckp = 0
                DRV_SPI_CONbits(3).CKP = 0;
                DRV_SPI_CONbits(3).SMP = 0;
                break;
            case SPI_BUS_MODE_1:
                //smp = 1, ckp = 0
                DRV_SPI_CONbits(3).CKP = 0;
                DRV_SPI_CONbits(3).SMP = 1;
                break;
            case SPI_BUS_MODE_2:
                //smp = 0, ckp = 1
                DRV_SPI_CONbits(3).CKP = 1;
                DRV_SPI_CONbits(3).SMP = 0;
                break;
            case SPI_BUS_MODE_3:
                //smp = 1, ckp = 1
                DRV_SPI_CONbits(3).CKP = 1;
                DRV_SPI_CONbits(3).SMP = 1;
                break;
            default:
                // should not happen
                break;
        }

#ifndef DRV_SPI_CONFIG_ENHANCED_BUFFER_DISABLE
        DRV_SPI_CONbits(3).ENHBUF = 1;
#else
        DRV_SPI_CONbits(3).ENHBUF = 0;
#endif
        DRV_SPI_BRG(1) = pData->brg;
        DRV_SPI_CONbits(3).MCLKSEL = pData->refo;
        DRV_SPI_CONbits(3).ON = SPI_MODULE_ENABLE;
        return;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (pData->channel == 4)
    {
        DRV_SPI_CON(4) = 0;
        
        DRV_SPI_CONbits(4).MSTEN = SPI_MST_MODE_ENABLE;

        // set to 8-bit mode
        DRV_SPI_CONbits(4).MODE16 = 0;
        DRV_SPI_CONbits(4).MODE32 = 0;

        DRV_SPI_CONbits(4).CKE = pData->cke;
        switch (pData->spibus_mode)
        {
            case SPI_BUS_MODE_0:
                //smp = 0, ckp = 0
                DRV_SPI_CONbits(4).CKP = 0;
                DRV_SPI_CONbits(4).SMP = 0;
                break;
            case SPI_BUS_MODE_1:
                //smp = 1, ckp = 0
                DRV_SPI_CONbits(4).CKP = 0;
                DRV_SPI_CONbits(4).SMP = 1;
                break;
            case SPI_BUS_MODE_2:
                //smp = 0, ckp = 1
                DRV_SPI_CONbits(4).CKP = 1;
                DRV_SPI_CONbits(4).SMP = 0;
                break;
            case SPI_BUS_MODE_3:
                //smp = 1, ckp = 1
                DRV_SPI_CONbits(4).CKP = 1;
                DRV_SPI_CONbits(4).SMP = 1;
                break;
            default:
                // should not happen
                break;
        }

#ifndef DRV_SPI_CONFIG_ENHANCED_BUFFER_DISABLE
        DRV_SPI_CONbits(4).ENHBUF = 1;
#else
        DRV_SPI_CONbits(4).ENHBUF = 0;
#endif
        DRV_SPI_BRG(1) = pData->brg;
        DRV_SPI_CONbits(4).MCLKSEL = pData->refo;
        DRV_SPI_CONbits(4).ON = SPI_MODULE_ENABLE;
        return;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
}

/*****************************************************************************
 * void DRV_SPI_Deinitialize(uint8_t channel)
 *****************************************************************************/
void DRV_SPI_Deinitialize (uint8_t channel)
{
#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)
    {
        DRV_SPI_CONbits(1).ON = SPI_MODULE_DISABLE;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
    {
        DRV_SPI_CONbits(2).ON = SPI_MODULE_DISABLE;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)
    {
        DRV_SPI_CONbits(3).ON = SPI_MODULE_DISABLE;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
    {
        DRV_SPI_CONbits(4).ON = SPI_MODULE_DISABLE;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
}

/* ********************************************************** */
/* SPI Channel 1 Functions                                    */
/* ********************************************************** */

#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
/*****************************************************************************
 void SPI1_Exchange(
                        void *pTransmitData,
                        void *pReceiveData )
 *****************************************************************************/
void SPI1_Exchange( void *pTransmitData, void *pReceiveData )
{
    uint8_t dummyRead = 0;
    uint8_t dummyWrite = spi1DummyData;

    if(pTransmitData == NULL)
    {
        pTransmitData = &dummyWrite;
    }

    if(pReceiveData == NULL)
    {
        pReceiveData = &dummyRead;
    }
    
    while( SPI1STATbits.SPITBF == true )
    { }

    // ----------------
    // sending data
    // ----------------
    SPI1BUF = *((uint8_t*)pTransmitData);

    while ( SPI1STATbits.SPIRBE == true)
    { }

    // ----------------
    // extracting data
    // ----------------
    *((uint8_t*)pReceiveData) = (uint8_t)(SPI1BUF);

    /* Make sure the last transfer completed before returning.  It is possible
       that the user will de-assert chip select on the next instruction and 
       could terminate a transfer that hasn't completed yet. */
    while ( SPI1STATbits.SPIBUSY == true)
    { }
}

/*****************************************************************************
 uint16_t SPI1_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
 *****************************************************************************/
uint16_t SPI1_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
{

    uint16_t dataSentCount = 0;
    uint16_t count = 0;
    uint8_t dummyDataReceived = 0;
    uint8_t dummyDataTransmit = (uint8_t)spi1DummyData;

    uint8_t fifoMultiplier = 1;

    uint8_t  *pSend, *pReceived;
    uint16_t addressIncrement;
    uint16_t receiveAddressIncrement, sendAddressIncrement;

    addressIncrement = 1;
    fifoMultiplier = 4;

    // set the pointers and increment delta
    // for transmit and receive operations
    if (pTransmitData == NULL)
    {
        sendAddressIncrement = 0;
        pSend = (uint8_t*)&dummyDataTransmit;
    }
    else
    {
        sendAddressIncrement = addressIncrement;
        pSend = (uint8_t*)pTransmitData;
    }

    if (pReceiveData == NULL)
    {
       receiveAddressIncrement = 0;
       pReceived = (uint8_t*)&dummyDataReceived;
    }
    else
    {
       receiveAddressIncrement = addressIncrement;
       pReceived = (uint8_t*)pReceiveData;
    }


    while( SPI1STATbits.SPITBF == true )
    { }

    while (dataSentCount < len)
    {
        if ((count < ((SPI_FIFO_FILL_LIMIT)*fifoMultiplier)))
        {
            SPI1BUF = *pSend;
            pSend += sendAddressIncrement;
            dataSentCount++;
            count++;
        }

        if (SPI1STATbits.SPIRBE == false)
        {
            *pReceived = SPI1BUF;
            pReceived += receiveAddressIncrement;
            count--;
        }

    }
    while (count)
    {
        if (SPI1STATbits.SPIRBE == false)
        {
            *pReceived = SPI1BUF;
            pReceived += receiveAddressIncrement;
            count--;
        }
    }

    return dataSentCount;
}

/*****************************************************************************
 void SPI1_DummyDataSet(uint8_t dummyData)
 *****************************************************************************/
void SPI1_DummyDataSet(uint8_t dummyData)
{
    spi1DummyData = dummyData;
}

#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE

/* ********************************************************** */
/* SPI Channel 2 Functions                                    */
/* ********************************************************** */
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE

/*****************************************************************************
 void SPI2_Exchange(
                        void *pTransmitData,
                        void *pReceiveData )
 *****************************************************************************/
void SPI2_Exchange( void *pTransmitData, void *pReceiveData )
{
    uint8_t dummyRead = 0;
    uint8_t dummyWrite = spi1DummyData;

    if(pTransmitData == NULL)
    {
        pTransmitData = &dummyWrite;
    }

    if(pReceiveData == NULL)
    {
        pReceiveData = &dummyRead;
    }
    
    while( SPI2STATbits.SPITBF == true )
    { }

    // ----------------
    // sending data
    // ----------------
    SPI2BUF = *((uint8_t*)pTransmitData);

    while ( SPI2STATbits.SPIRBE == true)
    { }

    // ----------------
    // extracting data
    // ----------------
    *((uint8_t*)pReceiveData) = (uint8_t)(SPI2BUF);

    /* Make sure the last transfer completed before returning.  It is possible
       that the user will de-assert chip select on the next instruction and 
       could terminate a transfer that hasn't completed yet. */
    while ( SPI2STATbits.SPIBUSY == true)
    { }
}

/*****************************************************************************
 uint16_t SPI2_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
 *****************************************************************************/
uint16_t SPI2_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
{

    uint16_t dataSentCount = 0;
    uint16_t count = 0;
    uint8_t dummyDataReceived = 0;
    uint8_t dummyDataTransmit = (uint8_t)spi2DummyData;

    uint8_t fifoMultiplier = 1;

    uint8_t  *pSend, *pReceived;
    uint16_t addressIncrement;
    uint16_t receiveAddressIncrement, sendAddressIncrement;

    addressIncrement = 1;
    fifoMultiplier = 4;

    // set the pointers and increment delta
    // for transmit and receive operations
    if (pTransmitData == NULL)
    {
        sendAddressIncrement = 0;
        pSend = (uint8_t*)&dummyDataTransmit;
    }
    else
    {
        sendAddressIncrement = addressIncrement;
        pSend = (uint8_t*)pTransmitData;
    }

    if (pReceiveData == NULL)
    {
       receiveAddressIncrement = 0;
       pReceived = (uint8_t*)&dummyDataReceived;
    }
    else
    {
       receiveAddressIncrement = addressIncrement;
       pReceived = (uint8_t*)pReceiveData;
    }


    while( SPI2STATbits.SPITBF == true )
    { }

    while (dataSentCount < len)
    {
        if ((count < ((SPI_FIFO_FILL_LIMIT)*fifoMultiplier)))
        {
            SPI2BUFL = *pSend;
            pSend += sendAddressIncrement;
            dataSentCount++;
            count++;
        }

        if (SPI2STATbits.SPIRBE == false)
        {
            *pReceived = SPI2BUFL;
            pReceived += receiveAddressIncrement;
            count--;
        }

    }
    while (count)
    {
        if (SPI2STATbits.SPIRBE == false)
        {
            *pReceived = SPI2BUFL;
            pReceived += receiveAddressIncrement;
            count--;
        }
    }

    return dataSentCount;
}

/*****************************************************************************
 void SPI2_DummyDataSet(uint8_t dummyData)
 *****************************************************************************/
void SPI2_DummyDataSet(uint8_t dummyData)
{
    spi2DummyData = dummyData;
}

#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE

/* ********************************************************** */
/* SPI Channel 3 Functions                                    */
/* ********************************************************** */

#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE

/*****************************************************************************
 void SPI3_Exchange(
                        void *pTransmitData,
                        void *pReceiveData )
 *****************************************************************************/
void SPI3_Exchange( void *pTransmitData, void *pReceiveData )
{
    uint8_t dummyRead = 0;
    uint8_t dummyWrite = spi1DummyData;

    if(pTransmitData == NULL)
    {
        pTransmitData = &dummyWrite;
    }

    if(pReceiveData == NULL)
    {
        pReceiveData = &dummyRead;
    }
    
    while( SPI3STATbits.SPITBF == true )
    { }

    // ----------------
    // sending data
    // ----------------
    SPI3BUF = *((uint8_t*)pTransmitData);

    while ( SPI3STATbits.SPIRBE == true)
    { }

    // ----------------
    // extracting data
    // ----------------
    *((uint8_t*)pReceiveData) = (uint8_t)(SPI3BUF);

    /* Make sure the last transfer completed before returning.  It is possible
       that the user will de-assert chip select on the next instruction and 
       could terminate a transfer that hasn't completed yet. */
    while ( SPI3STATbits.SPIBUSY == true)
    { }
}

/*****************************************************************************
 uint16_t SPI3_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
 *****************************************************************************/
uint16_t SPI3_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
{

    uint16_t dataSentCount = 0;
    uint16_t count = 0;
    uint8_t dummyDataReceived = 0;
    uint8_t dummyDataTransmit = (uint8_t)spi3DummyData;

    uint8_t fifoMultiplier = 1;

    uint8_t  *pSend, *pReceived;
    uint16_t addressIncrement;
    uint16_t receiveAddressIncrement, sendAddressIncrement;

    addressIncrement = 1;
    fifoMultiplier = 4;
    
    // set the pointers and increment delta
    // for transmit and receive operations
    if (pTransmitData == NULL)
    {
        sendAddressIncrement = 0;
        pSend = (uint8_t*)&dummyDataTransmit;
    }
    else
    {
        sendAddressIncrement = addressIncrement;
        pSend = (uint8_t*)pTransmitData;
    }

    if (pReceiveData == NULL)
    {
       receiveAddressIncrement = 0;
       pReceived = (uint8_t*)&dummyDataReceived;
    }
    else
    {
       receiveAddressIncrement = addressIncrement;
       pReceived = (uint8_t*)pReceiveData;
    }


    while( SPI3STATbits.SPITBF == true )
    { }

    while (dataSentCount < len)
    {
        if ((count < ((SPI_FIFO_FILL_LIMIT)*fifoMultiplier)))
        {
            SPI3BUFL = *pSend;
            pSend += sendAddressIncrement;
            dataSentCount++;
            count++;
        }

        if (SPI3STATbits.SPIRBE == false)
        {
            *pReceived = SPI3BUFL;
            pReceived += receiveAddressIncrement;
            count--;
        }

    }
    while (count)
    {
        if (SPI3STATbits.SPIRBE == false)
        {
            *pReceived = SPI3BUFL;
            pReceived += receiveAddressIncrement;
            count--;
        }
    }

    return dataSentCount;
}

/*****************************************************************************
 void SPI3_DummyDataSet(uint8_t dummyData)
 *****************************************************************************/
void SPI3_DummyDataSet(uint8_t dummyData)
{
    spi3DummyData = dummyData;
}

#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE

/* ********************************************************** */
/* SPI Channel 4 Functions                                    */
/* ********************************************************** */

#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE

/*****************************************************************************
 void SPI4_Exchange(
                        void *pTransmitData,
                        void *pReceiveData )
 *****************************************************************************/
void SPI4_Exchange( void *pTransmitData, void *pReceiveData )
{
    uint8_t dummyRead = 0;
    uint8_t dummyWrite = spi1DummyData;

    if(pTransmitData == NULL)
    {
        pTransmitData = &dummyWrite;
    }

    if(pReceiveData == NULL)
    {
        pReceiveData = &dummyRead;
    }
    
    while( SPI4STATbits.SPITBF == true )
    { }

    // ----------------
    // sending data
    // ----------------
    SPI4BUF = *((uint8_t*)pTransmitData);

    while ( SPI4STATbits.SPIRBE == true)
    { }

    // ----------------
    // extracting data
    // ----------------
    *((uint8_t*)pReceiveData) = (uint8_t)(SPI4BUF);

    /* Make sure the last transfer completed before returning.  It is possible
       that the user will de-assert chip select on the next instruction and 
       could terminate a transfer that hasn't completed yet. */
    while ( SPI4STATbits.SPIBUSY == true)
    { }
}

/*****************************************************************************
 uint16_t SPI4_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
 *****************************************************************************/
uint16_t SPI4_ExchangeBuffer(
                        void *pTransmitData,
                        uint16_t len,
                        void *pReceiveData)
{

    uint16_t dataSentCount = 0;
    uint16_t count = 0;
    uint8_t dummyDataReceived = 0;
    uint8_t dummyDataTransmit = (uint8_t)spi4DummyData;

    uint8_t fifoMultiplier = 1;

    uint8_t  *pSend, *pReceived;
    uint16_t addressIncrement;
    uint16_t receiveAddressIncrement, sendAddressIncrement;

    addressIncrement = 1;
    fifoMultiplier = 4;
    
    // set the pointers and increment delta
    // for transmit and receive operations
    if (pTransmitData == NULL)
    {
        sendAddressIncrement = 0;
        pSend = (uint8_t*)&dummyDataTransmit;
    }
    else
    {
        sendAddressIncrement = addressIncrement;
        pSend = (uint8_t*)pTransmitData;
    }

    if (pReceiveData == NULL)
    {
       receiveAddressIncrement = 0;
       pReceived = (uint8_t*)&dummyDataReceived;
    }
    else
    {
       receiveAddressIncrement = addressIncrement;
       pReceived = (uint8_t*)pReceiveData;
    }


    while( SPI4STATbits.SPITBF == true )
    { }

    while (dataSentCount < len)
    {
        if ((count < ((SPI_FIFO_FILL_LIMIT)*fifoMultiplier)))
        {
            SPI4BUFL = *pSend;
            pSend += sendAddressIncrement;
            dataSentCount++;
            count++;
        }

        if (SPI4STATbits.SPIRBE == false)
        {
            *pReceived = SPI4BUFL;
            pReceived += receiveAddressIncrement;
            count--;
        }

    }
    while (count)
    {
        if (SPI4STATbits.SPIRBE == false)
        {
            *pReceived = SPI4BUFL;
            pReceived += receiveAddressIncrement;
            count--;
        }
    }


    return dataSentCount;
}

/*****************************************************************************
 void SPI4_DummyDataSet(uint8_t dummyData)
 *****************************************************************************/
void SPI4_DummyDataSet(uint8_t dummyData)
{
    spi4DummyData = dummyData;
}

#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE

/*****************************************************************************
 * int SPILock(unsigned int channel)
 *****************************************************************************/
int DRV_SPI_Lock(uint8_t channel)
{
#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)
    {
        if(!spiMutex[0])
        {
            spiMutex[0] = 1;
            return 1;
        }

        return 0;
    }
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
    {
        if(!spiMutex[1])
        {
            spiMutex[1] = 1;
            return 1;
        }

        return 0;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)
    {
        if(!spiMutex[2])
        {
            spiMutex[2] = 1;
            return 1;
        }

        return 0;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
    {
        if(!spiMutex[3])
        {
            spiMutex[3] = 1;
            return 1;
        }

        return 0;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    return -1;
}

/*****************************************************************************
 * void SPIUnLock(unsigned int channel)
 *****************************************************************************/
void DRV_SPI_Unlock(uint8_t channel)
{
#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
    if (channel == 1)
    {
        spiMutex[0] = 0;
    }
#endif //#ifdef DRV_SPI_CONFIG_CHANNEL_1_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
    if (channel == 2)
    {
        spiMutex[1] = 0;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_2_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
    if (channel == 3)
    {
        spiMutex[2] = 0;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_3_ENABLE
#ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
    if (channel == 4)
    {
        spiMutex[3] = 0;
    }
#endif // #ifdef DRV_SPI_CONFIG_CHANNEL_4_ENABLE
}



/**
 End of File
*/
