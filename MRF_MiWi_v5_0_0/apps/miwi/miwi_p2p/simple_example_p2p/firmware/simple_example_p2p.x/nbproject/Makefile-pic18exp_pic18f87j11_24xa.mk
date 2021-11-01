#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic18exp_pic18f87j11_24xa.mk)" "nbproject/Makefile-local-pic18exp_pic18f87j11_24xa.mk"
include nbproject/Makefile-local-pic18exp_pic18f87j11_24xa.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic18exp_pic18f87j11_24xa
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24xa.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/pic18exp_pic18f87j11_24xa/console.c ../src/system_config/pic18exp_pic18f87j11_24xa/delay.c ../src/system_config/pic18exp_pic18f87j11_24xa/eeprom.c ../src/system_config/pic18exp_pic18f87j11_24xa/lcd.c ../src/system_config/pic18exp_pic18f87j11_24xa/spi.c ../src/system_config/pic18exp_pic18f87j11_24xa/symbol.c ../src/system_config/pic18exp_pic18f87j11_24xa/system.c ../src/demo_ouput.c ../src/main.c ../src/p2p_demo.c ../src/task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1 ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ${OBJECTDIR}/_ext/1067180048/console.p1 ${OBJECTDIR}/_ext/1067180048/delay.p1 ${OBJECTDIR}/_ext/1067180048/eeprom.p1 ${OBJECTDIR}/_ext/1067180048/lcd.p1 ${OBJECTDIR}/_ext/1067180048/spi.p1 ${OBJECTDIR}/_ext/1067180048/symbol.p1 ${OBJECTDIR}/_ext/1067180048/system.p1 ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 ${OBJECTDIR}/_ext/1360937237/task.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d ${OBJECTDIR}/_ext/1067180048/console.p1.d ${OBJECTDIR}/_ext/1067180048/delay.p1.d ${OBJECTDIR}/_ext/1067180048/eeprom.p1.d ${OBJECTDIR}/_ext/1067180048/lcd.p1.d ${OBJECTDIR}/_ext/1067180048/spi.p1.d ${OBJECTDIR}/_ext/1067180048/symbol.p1.d ${OBJECTDIR}/_ext/1067180048/system.p1.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d ${OBJECTDIR}/_ext/1360937237/main.p1.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d ${OBJECTDIR}/_ext/1360937237/task.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1 ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ${OBJECTDIR}/_ext/1067180048/console.p1 ${OBJECTDIR}/_ext/1067180048/delay.p1 ${OBJECTDIR}/_ext/1067180048/eeprom.p1 ${OBJECTDIR}/_ext/1067180048/lcd.p1 ${OBJECTDIR}/_ext/1067180048/spi.p1 ${OBJECTDIR}/_ext/1067180048/symbol.p1 ${OBJECTDIR}/_ext/1067180048/system.p1 ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 ${OBJECTDIR}/_ext/1360937237/task.p1

# Source Files
SOURCEFILES=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24xa.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/pic18exp_pic18f87j11_24xa/console.c ../src/system_config/pic18exp_pic18f87j11_24xa/delay.c ../src/system_config/pic18exp_pic18f87j11_24xa/eeprom.c ../src/system_config/pic18exp_pic18f87j11_24xa/lcd.c ../src/system_config/pic18exp_pic18f87j11_24xa/spi.c ../src/system_config/pic18exp_pic18f87j11_24xa/symbol.c ../src/system_config/pic18exp_pic18f87j11_24xa/system.c ../src/demo_ouput.c ../src/main.c ../src/p2p_demo.c ../src/task.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic18exp_pic18f87j11_24xa.mk dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F87J11
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24xa.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1 ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24xa.c 
	@-${MV} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.p1: ../../../../../../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ../../../../../../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_nvm.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.p1: ../../../../../../framework/miwi/src/miwi_p2p.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ../../../../../../framework/miwi/src/miwi_p2p.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_p2p.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/console.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/console.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/console.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/console.d ${OBJECTDIR}/_ext/1067180048/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/delay.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/delay.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/delay.d ${OBJECTDIR}/_ext/1067180048/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/eeprom.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/eeprom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/eeprom.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/eeprom.d ${OBJECTDIR}/_ext/1067180048/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/lcd.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/lcd.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/lcd.d ${OBJECTDIR}/_ext/1067180048/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/spi.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/spi.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/spi.d ${OBJECTDIR}/_ext/1067180048/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/symbol.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/symbol.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/symbol.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/symbol.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/symbol.d ${OBJECTDIR}/_ext/1067180048/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/system.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/system.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/system.d ${OBJECTDIR}/_ext/1067180048/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.p1: ../src/demo_ouput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ../src/demo_ouput.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/demo_ouput.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.p1: ../src/p2p_demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 ../src/p2p_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/p2p_demo.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/task.p1: ../src/task.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/task.p1 ../src/task.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/task.d ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24xa.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1 ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24xa.c 
	@-${MV} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24xa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.p1: ../../../../../../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ../../../../../../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_nvm.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.p1: ../../../../../../framework/miwi/src/miwi_p2p.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ../../../../../../framework/miwi/src/miwi_p2p.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_p2p.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/console.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/console.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/console.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/console.d ${OBJECTDIR}/_ext/1067180048/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/delay.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/delay.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/delay.d ${OBJECTDIR}/_ext/1067180048/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/eeprom.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/eeprom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/eeprom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/eeprom.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/eeprom.d ${OBJECTDIR}/_ext/1067180048/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/lcd.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/lcd.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/lcd.d ${OBJECTDIR}/_ext/1067180048/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/spi.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/spi.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/spi.d ${OBJECTDIR}/_ext/1067180048/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/symbol.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/symbol.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/symbol.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/symbol.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/symbol.d ${OBJECTDIR}/_ext/1067180048/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067180048/system.p1: ../src/system_config/pic18exp_pic18f87j11_24xa/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067180048" 
	@${RM} ${OBJECTDIR}/_ext/1067180048/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067180048/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1067180048/system.p1 ../src/system_config/pic18exp_pic18f87j11_24xa/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1067180048/system.d ${OBJECTDIR}/_ext/1067180048/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067180048/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.p1: ../src/demo_ouput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ../src/demo_ouput.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/demo_ouput.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.p1: ../src/p2p_demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1 ../src/p2p_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/p2p_demo.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/p2p_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/task.p1: ../src/task.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1360937237/task.p1 ../src/task.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/task.d ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.map  -DXPRJ_pic18exp_pic18f87j11_24xa=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=ignore -xassembler-with-cpp -I"../src/system_config/pic18exp_pic18f87j11_24xa" -I"../src" -I"../../src" -I"../../../../../../framework" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic18exp_pic18f87j11_24xa
	${RM} -r dist/pic18exp_pic18f87j11_24xa

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
