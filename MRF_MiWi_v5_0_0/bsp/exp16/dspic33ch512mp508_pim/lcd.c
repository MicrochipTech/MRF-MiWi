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
#include "lcd.h"
#include <stdint.h>

#ifndef FCY
    #ifdef SYSTEM_PERIPHERAL_CLOCK
        #define FCY SYSTEM_PERIPHERAL_CLOCK
    #else
        #error "FCY definition required for this module.  Please define."
    #endif
#endif

#include <libpic30.h>

/* Private Definitions ***********************************************/
#define LCD_FAST_INSTRUCTION_TIME_US    50
#define LCD_SLOW_INSTRUCTION_TIME_US    1600
#define LCD_STARTUP_TIME_MS             30
#define LCD_SIGNAL_TIMING_US            1

#define LCD_MAX_COLUMN      16

#define LCD_COMMAND_CLEAR_SCREEN        0x01
#define LCD_COMMAND_RETURN_HOME         0x02
#define LCD_COMMAND_ENTER_DATA_MODE     0x06
#define LCD_COMMAND_CURSOR_OFF          0x0C
#define LCD_COMMAND_CURSOR_ON           0x0F
#define LCD_COMMAND_MOVE_CURSOR_LEFT    0x10
#define LCD_COMMAND_MOVE_CURSOR_RIGHT   0x14
#define LCD_COMMAND_SET_MODE_4_BIT      0x28
#define LCD_COMMAND_SET_MODE_8_BIT      0x38
#define LCD_COMMAND_ROW_0_HOME          0x80
#define LCD_COMMAND_ROW_1_HOME          0xC0
#define LCD_START_UP_COMMAND_1          0x33    
#define LCD_START_UP_COMMAND_2          0x32    

#define LCD_DATA_LAT                   LATE
#define LCD_DATA_TRIS                  TRISE

#define LCD_RSSignal_Set()        LATEbits.LATE11 = 1 //set Register Select bit
#define LCD_RSSignal_Clear()      LATEbits.LATE11 = 0 //clear Register Select bit
#define LCD_RSSignal_Input()      TRISEbits.TRISE11 = 1 //set Register Select bit
#define LCD_RSSignal_Output()     TRISEbits.TRISE11 = 0 //clear Register Select bit

#define LCD_RWSignal_Set()        
#define LCD_RWSignal_Clear()      
#define LCD_RWSignal_Input()      
#define LCD_RWSignal_Output()     

#define LCD_EnableSignal_Set()    LATEbits.LATE10 = 1  //set Enable bit
#define LCD_EnableSignal_Clear()  LATEbits.LATE10 = 0  //clear Enable bit
#define LCD_EnableSignal_Input()  TRISEbits.TRISE10 = 1  //set Enable bit
#define LCD_EnableSignal_Output() TRISEbits.TRISE10 = 0  //clear Enable bit

/* Private Functions *************************************************/
static void LCD_CarriageReturn ( void ) ;
static void LCD_ShiftCursorLeft ( void ) ;
static void LCD_ShiftCursorRight ( void ) ;
static void LCD_ShiftCursorUp ( void ) ;
static void LCD_ShiftCursorDown ( void ) ;
static void LCD_SendData ( char ) ;
static void LCD_SendCommand ( unsigned int ) ;

/* Private variables ************************************************/
static uint8_t row ;
static uint8_t column ;
/*********************************************************************
 * Function: bool LCD_Initialize(void);
 *
 * Overview: Initializes the LCD screen.  Can take several hundred
 *           milliseconds.
 *
 * PreCondition: none
 *
 * Input: None
 *
 * Output: true if initialized, false otherwise
 *
 ********************************************************************/
bool LCD_Initialize ( void )
{
    //clear data bus
    LATE &= 0x00FF;
    //drive to output
    TRISE &= 0x00FF;

    // Control signal data pins
    LCD_RWSignal_Clear ( ) ; // LCD R/W signal
    LCD_RSSignal_Clear ( ) ; // LCD RS signal
    LCD_EnableSignal_Clear ( ) ;     // LCD E signal

    // Control signal pin direction
    LCD_RSSignal_Output ( )  ;
    LCD_RWSignal_Output ( )  ;
    LCD_EnableSignal_Output ( ) ;

    LCD_EnableSignal_Set ( )  ;
    
    __delay_ms(LCD_STARTUP_TIME_MS);

    
    LCD_SendCommand ( LCD_COMMAND_SET_MODE_4_BIT  ) ;
    LCD_SendCommand ( LCD_COMMAND_CURSOR_OFF  ) ;
    LCD_SendCommand ( LCD_COMMAND_ENTER_DATA_MODE ) ;

    LCD_ClearScreen ( ) ;

    return true ;
}
/*********************************************************************
 * Function: void LCD_PutString(char* inputString, uint16_t length);
 *
 * Overview: Puts a string on the LCD screen.  Unsupported characters will be
 *           discarded.  May block or throw away characters is LCD is not ready
 *           or buffer space is not available.  Will terminate when either a
 *           null terminator character (0x00) is reached or the length number
 *           of characters is printed, which ever comes first.
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: char* - string to print
 *        uint16_t - length of string to print
 *
 * Output: None
 *
 ********************************************************************/
void LCD_PutString ( char* inputString , uint16_t length )
{
    while (length--)
    {
        switch (*inputString)
        {
            case 0x00:
                return ;

            default:
                LCD_PutChar ( *inputString++ ) ;
                break ;
        }
    }
}
/*********************************************************************
 * Function: void LCD_PutChar(char);
 *
 * Overview: Puts a character on the LCD screen.  Unsupported characters will be
 *           discarded.  May block or throw away characters is LCD is not ready
 *           or buffer space is not available.
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: char - character to print
 *
 * Output: None
 *
 ********************************************************************/
void LCD_PutChar ( char inputCharacter )
{
    static char lastCharacter = 0;
        
    switch (inputCharacter)
    {
        case '\r':
            if(lastCharacter != '\n')
            {
                LCD_CarriageReturn ( ) ;
            }
            break ;

        case '\n': 
            if(lastCharacter != '\r')
            {
                LCD_CarriageReturn ( ) ;
            }
            
            if (row == 0)
            {
                LCD_ShiftCursorDown ( ) ;
            }
            else
            {
                LCD_ShiftCursorUp ( ) ;
            }
            break ;

        case '\b':
            LCD_ShiftCursorLeft ( ) ;
            LCD_PutChar ( ' ' ) ;
            LCD_ShiftCursorLeft ( ) ;
            break ;
            
        case '\f':
            LCD_ClearScreen();
            break;

        default:
            if (column == LCD_MAX_COLUMN)
            {
                column = 0 ;
                if (row == 0)
                {
                    LCD_SendCommand ( LCD_COMMAND_ROW_1_HOME ) ;
                    row = 1 ;
                }
                else
                {
                    LCD_SendCommand ( LCD_COMMAND_ROW_0_HOME ) ;
                    row = 0 ;
                }
            }
            
            LCD_SendData ( inputCharacter ) ;
            column++ ;
            break ;
    }
    
    lastCharacter = inputCharacter;
}
/*********************************************************************
 * Function: void LCD_ClearScreen(void);
 *
 * Overview: Clears the screen, if possible.
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: None
 *
 * Output: None
 *
 ********************************************************************/
void LCD_ClearScreen ( void )
{
    LCD_SendCommand ( LCD_COMMAND_CLEAR_SCREEN ) ;
    LCD_SendCommand ( LCD_COMMAND_RETURN_HOME ) ;

    row = 0 ;
    column = 0 ;
}


/*******************************************************************/
/*******************************************************************/
/* Private Functions ***********************************************/
/*******************************************************************/
/*******************************************************************/
/*********************************************************************
 * Function: static void LCD_CarriageReturn(void)
 *
 * Overview: Handles a carriage return
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: None
 *
 * Output: None
 *
 ********************************************************************/
static void LCD_CarriageReturn ( void )
{
    if (row == 0)
    {
        LCD_SendCommand ( LCD_COMMAND_ROW_0_HOME ) ;
    }
    else
    {
        LCD_SendCommand ( LCD_COMMAND_ROW_1_HOME ) ;
    }
    column = 0 ;
}
/*********************************************************************
 * Function: static void LCD_ShiftCursorLeft(void)
 *
 * Overview: Shifts cursor left one spot (wrapping if required)
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: None
 *
 * Output: None
 *
 ********************************************************************/
static void LCD_ShiftCursorLeft ( void )
{
    uint8_t i ;

    if (column == 0)
    {
        if (row == 0)
        {
            LCD_SendCommand ( LCD_COMMAND_ROW_1_HOME ) ;
            row = 1 ;
        }
        else
        {
            LCD_SendCommand ( LCD_COMMAND_ROW_0_HOME ) ;
            row = 0 ;
        }

        //Now shift to the end of the row
        for (i = 0 ; i < ( LCD_MAX_COLUMN - 1 ) ; i++)
        {
            LCD_ShiftCursorRight ( ) ;
        }
    }
    else
    {
        column-- ;
        LCD_SendCommand ( LCD_COMMAND_MOVE_CURSOR_LEFT ) ;
    }
}
/*********************************************************************
 * Function: static void LCD_ShiftCursorRight(void)
 *
 * Overview: Shifts cursor right one spot (wrapping if required)
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: None
 *
 * Output: None
 *
 ********************************************************************/
static void LCD_ShiftCursorRight ( void )
{
    LCD_SendCommand ( LCD_COMMAND_MOVE_CURSOR_RIGHT ) ;
    column++ ;

    if (column == LCD_MAX_COLUMN)
    {
        column = 0 ;
        if (row == 0)
        {
            LCD_SendCommand ( LCD_COMMAND_ROW_1_HOME ) ;
            row = 1 ;
        }
        else
        {
            LCD_SendCommand ( LCD_COMMAND_ROW_0_HOME ) ;
            row = 0 ;
        }
    }
}
/*********************************************************************
 * Function: static void LCD_ShiftCursorUp(void)
 *
 * Overview: Shifts cursor up one spot (wrapping if required)
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: None
 *
 * Output: None
 *
 ********************************************************************/
static void LCD_ShiftCursorUp ( void )
{
    uint8_t i ;

    for (i = 0 ; i < LCD_MAX_COLUMN ; i++)
    {
        LCD_ShiftCursorLeft ( ) ;
    }
}
/*********************************************************************
 * Function: static void LCD_ShiftCursorDown(void)
 *
 * Overview: Shifts cursor down one spot (wrapping if required)
 *
 * PreCondition: already initialized via LCD_Initialize()
 *
 * Input: None
 *
 * Output: None
 *
 ********************************************************************/
static void LCD_ShiftCursorDown ( void )
{
    uint8_t i ;

    for (i = 0 ; i < LCD_MAX_COLUMN ; i++)
    {
        LCD_ShiftCursorRight ( ) ;
    }
}

/*********************************************************************
 * Function: void LCD_CursorEnable(bool enable)
 *
 * Overview: Enables/disables the cursor
 *
 * PreCondition: None
 *
 * Input: bool - specifies if the cursor should be on or off
 *
 * Output: None
 *
 ********************************************************************/
void LCD_CursorEnable ( bool enable )
{
    if (enable == true)
    {
        LCD_SendCommand ( LCD_COMMAND_CURSOR_ON ) ;
    }
    else
    {
        LCD_SendCommand ( LCD_COMMAND_CURSOR_OFF ) ;
    }
}

/*********************************************************************
 * Function: static void LCD_SendData(char data)
 *
 * Overview: Sends data to LCD
 *
 * PreCondition: None
 *
 * Input: char - contains the data to be sent to the LCD
 *
 * Output: None
 *
 ********************************************************************/
static void LCD_SendData ( char data )
{
    //Split data into nibbles 
    int data_shift = data << 8;
    int upper_nibble = data_shift & 0xF000;
    int lower_nibble = data_shift & 0x0F00;
    lower_nibble = lower_nibble <<4;
    
    LCD_RWSignal_Clear ( ) ;
    LCD_RSSignal_Set ( ) ;
    LATE &= 0x0FFF ;
    LATE |= upper_nibble ;
    __delay_us(LCD_SIGNAL_TIMING_US);
    LCD_EnableSignal_Set ( ) ;
    __delay_us(LCD_SIGNAL_TIMING_US);
    
    LCD_EnableSignal_Clear ( ) ;
    LATE &= 0x0FFF ;
    LATE |= lower_nibble ;
    __delay_us(LCD_SIGNAL_TIMING_US);
    LCD_EnableSignal_Set ( ) ;
    __delay_us(LCD_SIGNAL_TIMING_US);
    LCD_EnableSignal_Clear ( ) ;
    LCD_RSSignal_Clear ( ) ;
    __delay_us(LCD_FAST_INSTRUCTION_TIME_US);
}
/*********************************************************************
 * Function: static void LCD_SendCommand(char data)
 *
 * Overview: Sends command to LCD
 *
 * PreCondition: None
 *
 * Input: char - contains the command to be sent to the LCD
 *        unsigned int - has the specific delay for the command
 *
 * Output: None
 *
 ********************************************************************/
static void LCD_SendCommand ( unsigned int command )
{
    int cmd_shift = command << 8;
    int upper_nibble = cmd_shift & 0xF000;
    int lower_nibble = cmd_shift & 0x0F00;
    lower_nibble = lower_nibble <<4;
    
    LCD_RWSignal_Clear ( ) ;
    LCD_RSSignal_Clear ( ) ;
    LATE &= 0x0FFF ;
    LATE |= upper_nibble ;
    
    LCD_EnableSignal_Set ( ) ;
    __delay_us(LCD_SIGNAL_TIMING_US);
    LCD_EnableSignal_Clear ( ) ;
    
    LCD_RWSignal_Clear ( ) ;
    LCD_RSSignal_Clear ( ) ;
    LATE &= 0x0FFF ;
    LATE |= lower_nibble ;
   
    LCD_EnableSignal_Set ( ) ;
    __delay_us(LCD_SIGNAL_TIMING_US);
    LCD_EnableSignal_Clear ( ) ;  
    
    switch(command)
    {
        case LCD_COMMAND_MOVE_CURSOR_LEFT:
        case LCD_COMMAND_MOVE_CURSOR_RIGHT:
        case LCD_COMMAND_SET_MODE_8_BIT:
		case LCD_COMMAND_SET_MODE_4_BIT:
        case LCD_COMMAND_CURSOR_OFF:
            __delay_us(LCD_FAST_INSTRUCTION_TIME_US);
            break;
            
        case LCD_COMMAND_ENTER_DATA_MODE:
        case LCD_COMMAND_CLEAR_SCREEN:
        case LCD_COMMAND_RETURN_HOME:
        case LCD_COMMAND_CURSOR_ON:
        case LCD_COMMAND_ROW_0_HOME:
        case LCD_COMMAND_ROW_1_HOME:
        default:
            __delay_us(LCD_SLOW_INSTRUCTION_TIME_US);
            break;
    }
    
}

