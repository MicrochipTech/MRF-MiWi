# MRF-MiWi

<img src="resources/media/IoT-Made-Easy-Logo.png" width=100>
"Wireless Made Easy!" - Microchip MiWi P2P and Star Stack Opened for MRF24J40 and MRF89XA transceiver running on MPLAB X IDE

Devices: | MRF24J40 | MRF89XA <br /> Supported Host MCU: | PIC18F46J50 | PIC18F4620 | PIC18F87J11 | PIC24FJ128GA010 | PIC16F1947


## ⚠ Disclaimer
<p><span style="color:red"><b>
Subject to your compliance with these terms, you may use Microchip software and any derivatives exclusively with Microchip products. It is your responsibility to comply with third party license terms applicable to your use of third party software (including open source software) that may accompany Microchip software.<br>
THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.<br>
IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
</span></p></b>

## Important considerations

<b>THE SOFTWARE ARE PROVIDED "AS IS" AND GIVE A PATH FOR SELF-SUPPORT AND SELF-MAINTENANCE.

This repository contains unsupported example code intended to help accelerate client product development. It is not validated for production nor audited for security best-practices. Note that while this repository is unsupported, Microchip welcome community contributions, and all pull-requests will be considered for inclusion into the repository.
</b>

## *This is what you Must know about MRF MiWi!!!*

<b>MRF-MiWi is not compatible with [MiWi protocol](https://www.microchip.com/en-us/products/wireless-connectivity/sub-ghz/miwi-protocol) supporting SAMR21 and SAMR30 SoC devices.

  MRF MiWi supports only MRF24J40 and MRF89XA tranceiver IC based devices. MRF MiWi supports PIC16F1947, PIC18F46J50, PIC18F4620, PIC18F87J11 and PIC24FJ128GA010 as host MCUs.
</b>

## Resources

- [Microchip MPLAB X IED IDE](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-x-ide)
- [8-Bit Wireless Development Kit User's guide](resources/media/8-Bit%20Wireless%20Development%20Kit%20User's%20guide.pdf)
- [MRF24J40MA module device page](https://www.microchip.com/en-us/product/MRF24J40MA)
- [MRF24J40 Related materials](resources/media/MRF24J40)
- [MRF89XAM8A module device page](https://www.microchip.com/en-us/product/MRF89XAM8A)
- [MRF89XAM9A module device page](https://www.microchip.com/en-us/product/MRF89XAM9A)
- [MRF89XA Related materials](resources/media/MRF89XA)
- [MPLAB® Development Ecosystem Downloads Archive](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-ecosystem-downloads-archive) This is for XC8 compiler v.1.45 download required for MRF MiWi PIC18 device branch code build

## A la carte

1. [Overview](#step1)
1. [Hardware Platforms](#step2)
1. [Software Requirements](#step3)
1. [Software Environment Setup](#step4)
   1. [Must Read to resolve XC8 compiler build issues](#step4a)
   1. [Location of MakeFiles in LWMESH Folder Structure](#step4b)
   1. [Create a project from Makefile in Microchip Studio 7](#step4c)
1. [Sample Applications](#step5)
   1. [Energy Detection Application](#step5a)
   1. [Peer2Peer Application](#step5b)
   1. [Tester Application](#step5c)
   1. [WSN Demo Application](#step5d)


## Introduction<a name="step1"></a>

### Protocol Overview
The MiWi P2P protocol stack modifies the IEEE 802.15.4 specification MAC layer by adding commands that simplify the handshaking process. It simplifies link disconnection and channel hopping by providing supplementary MAC commands. However, application-specific decisions, such as when to perform an energy scan or when to jump channels, are not defined in the protocol. The implementation is left to the application developers to do in application layer.
### Protocol Features
The MiWi P2P Wireless Protocol has the following features:
* Supports Microchip PICand and PIC24 platforms through Microchip XC8, and XC16 compilers, respectively
* Supports MRF24J40 (IEEE 802.15.4 compliant radio transceiver) and MRF89XA (proprietary radio transceiver) through Microchip Application Libraries
* Functions as a state machine (not RTOS-dependent)
* Supports a sleeping device at the end as a communication node
* Enables Energy Detect (ED) scanning to operate on the least-noisy channel
* Provides active scan for detecting new and existing connections
* Supports frequency agility (channel hopping)
### Protocol Considerations
The MiWi P2P protocol is a variation of IEEE 802.15.4 and supports both peer-to-peer (P2P) and star topologies. It has no routing mechanism, hence the wireless communication coverage is defined by the radio range. The Guaranteed Time Slot (GTS) and Beacon networks by option are not supported, hence both the sides of the communication cannot simultaneously go to Sleep mode. If the application requires wireless networking and routing instead of P2P and Star type communication, MiWi Mesh is a suitable communication platform for proprietary standards. For interoperability type of requirements with wireless devices or nodes of other vendors, ZigBee® protocol based on IEEE802.15.4 will a good option.


## Hardware Platforms<a name="step2"></a>

| Supported MCU families | Supported Transceivers | Supported boards |
| --- | --- | --- |
| <b>PIC18F87J11</b> |MRF24J40 | PICDEM™ PIC18 Explorer Demonstration Board |
|  | MRF89XA | PICDEM™ PIC18 Explorer Demonstration Board |
| <b>PIC24FJ128GA010</b> | MRF24J40 | Explorer 16 Development Board |
|  | MRF89XA | Explorer 16 Development Board |
| <b>PIC18F46J50</b> | MRF24J40 | 8-Bit Wireless Development Kit |
|  | MRF89XA | 8-Bit Wireless Development Kit |
|  | MRF24J40 | MiWi™ Demo Kit |
|  | MRF89XA | MiWi™ Demo Kit |
| <b>PIC18F4620</b> |MRF24J40 | PICDEM™ Z Demonstration Kit |
| <b>PIC16F1947</b> |MRF24J40 | PICDEM™ PIC18 Explorer Demonstration Board |

## Software Requirements<a name="step3"></a>

* [Microchip MPLAB X IED IDE](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-x-ide)
* [MPLAB® XC Compilers](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-xc-compilers) Install latest XC16 compliler
* [MPLAB® Development Ecosystem Downloads Archive](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-ecosystem-downloads-archive) This is for XC8 compiler v.1.45 download required for MRF MiWi PIC18 device branch code build

* MRF MiWi package ([Clone/Download](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository) the current repo to get the software)

Notes: The MRF MiWi protocol package is validated with MPLAB X IDE v5.45.


## Software Environment Setup<a name="step4"></a>

...

### Must Read to resolve XC8 compiler build issues<a name="step4a"></a>

PIC16 and PIC18 project configurations in MRF MiWi package are not compatible with Microchip XC8 v2.xx compilers. You must install XC8 v1.45 from [MPLAB® Development Ecosystem Downloads Archive](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-ecosystem-downloads-archive) to build PIC16 and PIC18 configurations.

The latest DFPs are not compatible with XC8 v1.45 compiler. Earlier DFPs will need to be installed from Tools => Packs in MPLAB X IDE. The specific device pack can then be selected together with compiler option in Project Properties.

<img src="resources/media/PIC18F46J50_project_property.png" width=1000>

### Location of MakeFiles in LWMESH Folder Structure<a name="step4b"></a>

Generic File Path:
`..\thirdparty\wireless\avr2130_lwmesh\apps\AppName\Device_Name\gcc`

or

Device Specific File Path:
`..\thirdparty\wireless\avr2130_lwmesh\apps\EdDemo\atmega128rfa1_rcb\gcc`


Inside the gcc folder MakeFile can be found.

### Create a project from Makefile in Microchip Studio 7<a name="step4c"></a>

To create a project from Makefile in Microchip Studio 7:

https://microchipsupport.force.com/s/article/Creating-a-project-from-Makefile-in-Atmel-Studio


Alternatively, to open the readily available Microchip studio C project file, find it from the mentioned path:

Generic File Path:
`..\thirdparty\wireless\avr2130_lwmesh\apps\AppName\Device_Name\as5_8`

or

Device Specific File Path:
`..\thirdparty\wireless\avr2130_lwmesh\apps\EdDemo\atmega128rfa1_rcb\as5_8`

Which can be opened with Microchip studio and changes can be done on the application level if needed and then compiled & build. After the successful build, the firmware images will be generated.


## Sample Applications<a name="step5"></a>

### Energy Detection Application<a name="step5a"></a>

#### Overview

- The Lightweight Mesh EDDemo application demonstrates the energy detection (ED) feature of Microchip 802.15.4 Transceivers and helps analyzing the energy on all channels.

- This application requires only one node for demonstration.

- No Data communication is performed in this application and no networking APIs are used.

- A terminal (9600 8 N 1) need to be connected to the node.

- The node measures the energy values on channels 11 to 26 periodically and prints the results on the connected terminal.


#### Output

<p align="center">
<img src="resources/media/eddemo_output.png" width=480>
</p>


### Peer2Peer Application<a name="step5b"></a>

#### Overview

- The Lightweight Mesh Peer2Peer implements a wireless UART application. Two nodes are used in this application.

- These two nodes must be configured with addresses 0x0001 and 0x0000 respectively.

- To test this application, open a terminal for both the nodes. On entering text in the terminal, the data is transmitted from one Node to another node (0x0001 to 0x0000 and vice-versa).

- A terminal (9600 8 N 1) need to be connected to each of the 2 nodes.

#### Nodes Configuration

- Open `config.h` file in Peer2Peer project and Address must be set to 0 for the first device, and to 1 for the second one.

<p align="center">
<img src="resources/media/p2p_config.png" width=480>
</p>

#### Output

<p align="center">
<img src="resources/media/p2p_output.png" width=480>
</p>

### Tester Application<a name="step5c"></a>

#### Overview

The Test application exposes all stack APIs via serial port and was primarily designed to be used as an automated test tool.

- The operations are illustrated in `tester.c` by the function `appUartSendCommand()`.
- Frame is formatted like this: <1 byte start symbol = 0xa5> <2 bytes size> <2 bytes CRC>.
- Commands and their structure are described in the `commands.h` file.

### WSN Demo Application<a name="step5d"></a>

#### Overview

The WSN Demo application implements a typical wireless sensor network scenario, in which one central node collects the data from a network of sensors and passes this data over a serial connection for further processing. In the case of the WSN Demo, this processing is performed by the WSN Monitor PC application.

- Device types (Coordinator, Router and End Device) are simulated on the application level; there is no such separation in Lightweight Mesh on the stack level

- The value of the extended address field is set equal to the value of the short address field

- For all frames, the LQI and RSSI fields are filled in by the coordinator with the values of LQI and RSSI from the received frame. This means that nodes that are not connected to the coordinator directly will have the same values as the last node on the route to the coordinator

- Sensor data values are generated randomly on all platforms

- Sending data to the nodes on the network is not implemented and not supported in this demo application

- This demo has been tested with 3 SAM R21 devices

#### Nodes Configuration

The Application Address (`APP_ADDR`) should be set in `config.h`.

- If `APP_ADDR` is 0, the device role will be identified as Coordinator in WSN monitor
- If `APP_ADDR` is less than 0x8000, the device role will be identified as Router
- If `APP_ADDR` is greater than or equal to 0x8000, the device role will be identified as End Device

<p align="center">
<img src="resources/media/wsndemo_config.png" width=320>
</p>

Coordinator:
- Set `APP_ADDR` = 0x0000

<p align="center">
<img src="resources/media/wsndemo_coordinator_config.png" width=480>
</p>

Router:
- Set `APP_ADDR` = 0x0100

<p align="center">
<img src="resources/media/wsndemo_router_config.png" width=480>
</p>

End Device:
- Set `APP_ADDR` = 0x8001

<p align="center">
<img src="resources/media/wsndemo_enddevice_config.png" width=480>
</p>


#### Output

Network topology in WSN Monitor for 3 devices configured with different device roles in application level.

<p align="center">
<img src="resources/media/wsndemo_output_01.png" width=480>
<img src="resources/media/wsndemo_output_02.png" width=480>
</p>

> Note: For details on LwMesh Architecture & Network Layer specifications, please refer the document `AVR2130_LWMesh_Developer_Guide_v1.2.1`.


