/********************************************************************
 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the "Company") for its PIC(R) Microcontroller is intended and
 supplied to you, the Company's customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 
 This software was designed and released without modern security 
 practices in mind and has known potential security vulnerabilities. 
 Users of this codebase are advised to use this in 
 non-security-critical applications, and are responsible for ensuring 
 that it is used appropriately. This software is neither supported 
 nor maintained by Microchip.

 *******************************************************************/

#ifndef _SPI_H_
#define _SPI_H_

#include <stdint.h>

/************************ FUNCTION PROTOTYPES **********************/
void SPIPut(uint8_t v);
uint8_t SPIGet(void);

void SPIPut2(uint8_t v);
uint8_t SPIGet2(void);

/************************ MACROS ***********************************/
#define SPIInit()   SSPIF = 1

#endif

