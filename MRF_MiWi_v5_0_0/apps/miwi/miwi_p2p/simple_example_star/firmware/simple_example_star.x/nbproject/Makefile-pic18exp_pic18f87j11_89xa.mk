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
ifeq "$(wildcard nbproject/Makefile-local-pic18exp_pic18f87j11_89xa.mk)" "nbproject/Makefile-local-pic18exp_pic18f87j11_89xa.mk"
include nbproject/Makefile-local-pic18exp_pic18f87j11_89xa.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic18exp_pic18f87j11_89xa
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/pic18exp_pic18f87j11_89xa/console.c ../src/system_config/pic18exp_pic18f87j11_89xa/delay.c ../src/system_config/pic18exp_pic18f87j11_89xa/eeprom.c ../src/system_config/pic18exp_pic18f87j11_89xa/lcd.c ../src/system_config/pic18exp_pic18f87j11_89xa/spi.c ../src/system_config/pic18exp_pic18f87j11_89xa/symbol.c ../src/system_config/pic18exp_pic18f87j11_89xa/system.c ../src/demo_ouput.c ../src/main.c ../src/star_demo.c ../src/task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1 ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1 ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ${OBJECTDIR}/_ext/1066996497/console.p1 ${OBJECTDIR}/_ext/1066996497/delay.p1 ${OBJECTDIR}/_ext/1066996497/eeprom.p1 ${OBJECTDIR}/_ext/1066996497/lcd.p1 ${OBJECTDIR}/_ext/1066996497/spi.p1 ${OBJECTDIR}/_ext/1066996497/symbol.p1 ${OBJECTDIR}/_ext/1066996497/system.p1 ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/star_demo.p1 ${OBJECTDIR}/_ext/1360937237/task.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d ${OBJECTDIR}/_ext/1066996497/console.p1.d ${OBJECTDIR}/_ext/1066996497/delay.p1.d ${OBJECTDIR}/_ext/1066996497/eeprom.p1.d ${OBJECTDIR}/_ext/1066996497/lcd.p1.d ${OBJECTDIR}/_ext/1066996497/spi.p1.d ${OBJECTDIR}/_ext/1066996497/symbol.p1.d ${OBJECTDIR}/_ext/1066996497/system.p1.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d ${OBJECTDIR}/_ext/1360937237/main.p1.d ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d ${OBJECTDIR}/_ext/1360937237/task.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1 ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1 ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ${OBJECTDIR}/_ext/1066996497/console.p1 ${OBJECTDIR}/_ext/1066996497/delay.p1 ${OBJECTDIR}/_ext/1066996497/eeprom.p1 ${OBJECTDIR}/_ext/1066996497/lcd.p1 ${OBJECTDIR}/_ext/1066996497/spi.p1 ${OBJECTDIR}/_ext/1066996497/symbol.p1 ${OBJECTDIR}/_ext/1066996497/system.p1 ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/star_demo.p1 ${OBJECTDIR}/_ext/1360937237/task.p1

# Source Files
SOURCEFILES=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/pic18exp_pic18f87j11_89xa/console.c ../src/system_config/pic18exp_pic18f87j11_89xa/delay.c ../src/system_config/pic18exp_pic18f87j11_89xa/eeprom.c ../src/system_config/pic18exp_pic18f87j11_89xa/lcd.c ../src/system_config/pic18exp_pic18f87j11_89xa/spi.c ../src/system_config/pic18exp_pic18f87j11_89xa/symbol.c ../src/system_config/pic18exp_pic18f87j11_89xa/system.c ../src/demo_ouput.c ../src/main.c ../src/star_demo.c ../src/task.c



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
	${MAKE}  -f nbproject/Makefile-pic18exp_pic18f87j11_89xa.mk dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F87J11
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1 ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c 
	@-${MV} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1 ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c 
	@-${MV} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.p1: ../../../../../../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ../../../../../../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_nvm.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.p1: ../../../../../../framework/miwi/src/miwi_p2p.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ../../../../../../framework/miwi/src/miwi_p2p.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_p2p.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/console.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/console.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/console.d ${OBJECTDIR}/_ext/1066996497/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/delay.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/delay.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/delay.d ${OBJECTDIR}/_ext/1066996497/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/eeprom.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/eeprom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/eeprom.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/eeprom.d ${OBJECTDIR}/_ext/1066996497/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/lcd.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/lcd.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/lcd.d ${OBJECTDIR}/_ext/1066996497/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/spi.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/spi.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/spi.d ${OBJECTDIR}/_ext/1066996497/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/symbol.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/symbol.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/symbol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/symbol.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/symbol.d ${OBJECTDIR}/_ext/1066996497/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/system.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/system.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/system.d ${OBJECTDIR}/_ext/1066996497/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.p1: ../src/demo_ouput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ../src/demo_ouput.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/demo_ouput.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/star_demo.p1: ../src/star_demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/star_demo.p1 ../src/star_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/star_demo.d ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/task.p1: ../src/task.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/task.p1 ../src/task.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/task.d ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1 ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c 
	@-${MV} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1 ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c 
	@-${MV} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.p1: ../../../../../../framework/miwi/src/miwi_nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/916281452/miwi_nvm.p1 ../../../../../../framework/miwi/src/miwi_nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_nvm.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.p1: ../../../../../../framework/miwi/src/miwi_p2p.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/916281452/miwi_p2p.p1 ../../../../../../framework/miwi/src/miwi_p2p.c 
	@-${MV} ${OBJECTDIR}/_ext/916281452/miwi_p2p.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/916281452/miwi_p2p.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/console.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/console.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/console.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/console.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/console.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/console.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/console.d ${OBJECTDIR}/_ext/1066996497/console.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/console.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/delay.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/delay.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/delay.d ${OBJECTDIR}/_ext/1066996497/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/eeprom.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/eeprom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/eeprom.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/eeprom.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/eeprom.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/eeprom.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/eeprom.d ${OBJECTDIR}/_ext/1066996497/eeprom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/eeprom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/lcd.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/lcd.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/lcd.d ${OBJECTDIR}/_ext/1066996497/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/spi.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/spi.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/spi.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/spi.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/spi.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/spi.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/spi.d ${OBJECTDIR}/_ext/1066996497/spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/symbol.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/symbol.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/symbol.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/symbol.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/symbol.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/symbol.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/symbol.d ${OBJECTDIR}/_ext/1066996497/symbol.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/symbol.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1066996497/system.p1: ../src/system_config/pic18exp_pic18f87j11_89xa/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1066996497" 
	@${RM} ${OBJECTDIR}/_ext/1066996497/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1066996497/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1066996497/system.p1 ../src/system_config/pic18exp_pic18f87j11_89xa/system.c 
	@-${MV} ${OBJECTDIR}/_ext/1066996497/system.d ${OBJECTDIR}/_ext/1066996497/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1066996497/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.p1: ../src/demo_ouput.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/demo_ouput.p1 ../src/demo_ouput.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/demo_ouput.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/demo_ouput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/star_demo.p1: ../src/star_demo.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/star_demo.p1 ../src/star_demo.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/star_demo.d ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/star_demo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/task.p1: ../src/task.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/task.p1 ../src/task.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/task.d ${OBJECTDIR}/_ext/1360937237/task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=none  -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.map  -DXPRJ_pic18exp_pic18f87j11_89xa=$(CND_CONF)    --double=32 --float=32 --emi=wordwrite --opt=+asm,-asmfile,+speed,-space,-debug,-local --addrqual=ignore --mode=pro -P -N255 -I"../src/system_config/pic18exp_pic18f87j11_89xa" -I"../src" -I"../../src" -I"../../../../../../framework" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic18exp_pic18f87j11_89xa
	${RM} -r dist/pic18exp_pic18f87j11_89xa

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
