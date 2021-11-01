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
ifeq "$(wildcard nbproject/Makefile-local-exp16_pic24fj128ga010_89xa.mk)" "nbproject/Makefile-local-exp16_pic24fj128ga010_89xa.mk"
include nbproject/Makefile-local-exp16_pic24fj128ga010_89xa.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=exp16_pic24fj128ga010_89xa
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
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_89xa/console.c ../src/system_config/exp16_pic24f128ga010_89xa/delay.c ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c ../src/system_config/exp16_pic24f128ga010_89xa/spi.c ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c ../src/system_config/exp16_pic24f128ga010_89xa/system.c ../src/demo_ouput.c ../src/main.c ../src/p2p_demo.c ../src/task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/1512199843/console.o ${OBJECTDIR}/_ext/1512199843/delay.o ${OBJECTDIR}/_ext/1512199843/eeprom.o ${OBJECTDIR}/_ext/1512199843/lcd.o ${OBJECTDIR}/_ext/1512199843/spi.o ${OBJECTDIR}/_ext/1512199843/symbol.o ${OBJECTDIR}/_ext/1512199843/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o ${OBJECTDIR}/_ext/1360937237/task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d ${OBJECTDIR}/_ext/1512199843/console.o.d ${OBJECTDIR}/_ext/1512199843/delay.o.d ${OBJECTDIR}/_ext/1512199843/eeprom.o.d ${OBJECTDIR}/_ext/1512199843/lcd.o.d ${OBJECTDIR}/_ext/1512199843/spi.o.d ${OBJECTDIR}/_ext/1512199843/symbol.o.d ${OBJECTDIR}/_ext/1512199843/system.o.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d ${OBJECTDIR}/_ext/1360937237/task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/1512199843/console.o ${OBJECTDIR}/_ext/1512199843/delay.o ${OBJECTDIR}/_ext/1512199843/eeprom.o ${OBJECTDIR}/_ext/1512199843/lcd.o ${OBJECTDIR}/_ext/1512199843/spi.o ${OBJECTDIR}/_ext/1512199843/symbol.o ${OBJECTDIR}/_ext/1512199843/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o ${OBJECTDIR}/_ext/1360937237/task.o

# Source Files
SOURCEFILES=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_89xa/console.c ../src/system_config/exp16_pic24f128ga010_89xa/delay.c ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c ../src/system_config/exp16_pic24f128ga010_89xa/spi.c ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c ../src/system_config/exp16_pic24f128ga010_89xa/system.c ../src/demo_ouput.c ../src/main.c ../src/p2p_demo.c ../src/task.c



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
	${MAKE}  -f nbproject/Makefile-exp16_pic24fj128ga010_89xa.mk dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  .generated_files/f3b0ae67081cd6707844aaa7858b79c34277a956.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  .generated_files/f8bb628a4890e96a1853388eba8acb92f522bdc5.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.o: ../../../../../../framework/miwi/src/miwi_nvm.c  .generated_files/677137311fb3073a148daaf943b5594f79168de5.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_nvm.c  -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.o: ../../../../../../framework/miwi/src/miwi_p2p.c  .generated_files/206e3b66dc5123e3b519cb8d0780f2df432b3093.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_p2p.c  -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/console.o: ../src/system_config/exp16_pic24f128ga010_89xa/console.c  .generated_files/67577fbf2e639a23ca3e38c0fcffab9fa971a871.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/console.c  -o ${OBJECTDIR}/_ext/1512199843/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/console.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/delay.o: ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  .generated_files/f53c127fa7de956fcfeecb3bb7f38c1d098db178.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  -o ${OBJECTDIR}/_ext/1512199843/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/eeprom.o: ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  .generated_files/b64f5a43e2e80978b1e1c6dd91078b9fd78b09ef.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  -o ${OBJECTDIR}/_ext/1512199843/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/lcd.o: ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  .generated_files/945e114c0e70f1cd95798aa24d398b6d82f3aafb.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  -o ${OBJECTDIR}/_ext/1512199843/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/spi.o: ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  .generated_files/763b0c553a3a73ed8ea94a2dcccd40f24ebebbf6.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  -o ${OBJECTDIR}/_ext/1512199843/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/symbol.o: ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  .generated_files/74fcb9f80d98f7532b823f7fd8b2abb327d00b3e.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  -o ${OBJECTDIR}/_ext/1512199843/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/symbol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/system.o: ../src/system_config/exp16_pic24f128ga010_89xa/system.c  .generated_files/6c5d810083905047ce5590ee73d9182d83f6e759.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/system.c  -o ${OBJECTDIR}/_ext/1512199843/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/571c6a001ccf727d0018da9964e06fa4dc012d6a.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/752e06a1d8a65bfac472415df606d3098dfcea7f.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.o: ../src/p2p_demo.c  .generated_files/3920e0cf6005e22cec0d741a448767f4c6cfdc9d.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/p2p_demo.c  -o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/1189e684c7a4df630f7e721f191e80c79972d99.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/task.c  -o ${OBJECTDIR}/_ext/1360937237/task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  .generated_files/8805cb01d5736b773207eaf88ae106bc1b6c5c73.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  .generated_files/5bf88314f5b3ae3cbf2172b6e2ad6e0b48e51283.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.o: ../../../../../../framework/miwi/src/miwi_nvm.c  .generated_files/d18131177bc0a06492ef5e1d83021f2ee44e25f8.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_nvm.c  -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.o: ../../../../../../framework/miwi/src/miwi_p2p.c  .generated_files/d2ee7b989fad21cbbafa481fcd7f8ca3b0c37153.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_p2p.c  -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/console.o: ../src/system_config/exp16_pic24f128ga010_89xa/console.c  .generated_files/418784cd7bc1f8d9df04c1ac929478f4996577a1.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/console.c  -o ${OBJECTDIR}/_ext/1512199843/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/console.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/delay.o: ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  .generated_files/3d1b014cb0379a140c7c1bcc823ffa6dfb769764.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  -o ${OBJECTDIR}/_ext/1512199843/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/delay.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/eeprom.o: ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  .generated_files/8d79f3fbc20ccf27730031f55a1e41d73dde2749.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  -o ${OBJECTDIR}/_ext/1512199843/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/eeprom.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/lcd.o: ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  .generated_files/b8cacd3c5e169fdcadb9cfa63c89d554598002fb.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  -o ${OBJECTDIR}/_ext/1512199843/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/lcd.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/spi.o: ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  .generated_files/6dbefb069a702b5346e4434fd6229c6556dfb839.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  -o ${OBJECTDIR}/_ext/1512199843/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/spi.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/symbol.o: ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  .generated_files/1a0b69a34bd3e012f4d2b0daf48ae0437bcbe63a.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  -o ${OBJECTDIR}/_ext/1512199843/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/symbol.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/system.o: ../src/system_config/exp16_pic24f128ga010_89xa/system.c  .generated_files/9d755680a015946232690a8c43f24e386d34b570.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/system.c  -o ${OBJECTDIR}/_ext/1512199843/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/system.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/b1d876d297ae07d61b3ac28c5e1d0722382156ae.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/ba72066ec74d2a80b7900e953fa9892da886a46c.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.o: ../src/p2p_demo.c  .generated_files/ea740aa77227436e7e9ef825369a391ea50c1809.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/p2p_demo.c  -o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/e04145393ccc66c5ca093d2a1a2f68653411d83f.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/task.c  -o ${OBJECTDIR}/_ext/1360937237/task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/exp16_pic24fj128ga010_89xa
	${RM} -r dist/exp16_pic24fj128ga010_89xa

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
