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
ifeq "$(wildcard nbproject/Makefile-local-exp16_pic24fj128ga010_24j40.mk)" "nbproject/Makefile-local-exp16_pic24fj128ga010_24j40.mk"
include nbproject/Makefile-local-exp16_pic24fj128ga010_24j40.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=exp16_pic24fj128ga010_24j40
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_24j40/console.c ../src/system_config/exp16_pic24f128ga010_24j40/delay.c ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c ../src/system_config/exp16_pic24f128ga010_24j40/spi.c ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c ../src/system_config/exp16_pic24f128ga010_24j40/system.c ../src/demo_ouput.c ../src/main.c ../src/star_demo.c ../src/task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/360740241/console.o ${OBJECTDIR}/_ext/360740241/delay.o ${OBJECTDIR}/_ext/360740241/eeprom.o ${OBJECTDIR}/_ext/360740241/lcd.o ${OBJECTDIR}/_ext/360740241/spi.o ${OBJECTDIR}/_ext/360740241/symbol.o ${OBJECTDIR}/_ext/360740241/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/star_demo.o ${OBJECTDIR}/_ext/1360937237/task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d ${OBJECTDIR}/_ext/360740241/console.o.d ${OBJECTDIR}/_ext/360740241/delay.o.d ${OBJECTDIR}/_ext/360740241/eeprom.o.d ${OBJECTDIR}/_ext/360740241/lcd.o.d ${OBJECTDIR}/_ext/360740241/spi.o.d ${OBJECTDIR}/_ext/360740241/symbol.o.d ${OBJECTDIR}/_ext/360740241/system.o.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/star_demo.o.d ${OBJECTDIR}/_ext/1360937237/task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/360740241/console.o ${OBJECTDIR}/_ext/360740241/delay.o ${OBJECTDIR}/_ext/360740241/eeprom.o ${OBJECTDIR}/_ext/360740241/lcd.o ${OBJECTDIR}/_ext/360740241/spi.o ${OBJECTDIR}/_ext/360740241/symbol.o ${OBJECTDIR}/_ext/360740241/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/star_demo.o ${OBJECTDIR}/_ext/1360937237/task.o

# Source Files
SOURCEFILES=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_24j40/console.c ../src/system_config/exp16_pic24f128ga010_24j40/delay.c ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c ../src/system_config/exp16_pic24f128ga010_24j40/spi.c ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c ../src/system_config/exp16_pic24f128ga010_24j40/system.c ../src/demo_ouput.c ../src/main.c ../src/star_demo.c ../src/task.c



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
	${MAKE}  -f nbproject/Makefile-exp16_pic24fj128ga010_24j40.mk dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  .generated_files/ca7396d088077e1692f4ad8285a2f1e5693991bf.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.o: ../../../../../../framework/miwi/src/miwi_nvm.c  .generated_files/adc3bc03656b5ccf535fd63383aeada30bdfc929.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_nvm.c  -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.o: ../../../../../../framework/miwi/src/miwi_p2p.c  .generated_files/a17e5e2becb9d04437e6b19cf7a54f8a6a0a34.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_p2p.c  -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/console.o: ../src/system_config/exp16_pic24f128ga010_24j40/console.c  .generated_files/bdc17009e36a4091eee410c7f19ad32476417dbb.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/console.c  -o ${OBJECTDIR}/_ext/360740241/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/console.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/delay.o: ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  .generated_files/9f0e4ffb46b04caf4ec2fda33915ae7d3f1c7be8.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  -o ${OBJECTDIR}/_ext/360740241/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/eeprom.o: ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  .generated_files/38afbfcfc67bf554e4c5257389ae39048c214526.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  -o ${OBJECTDIR}/_ext/360740241/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/lcd.o: ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  .generated_files/4022654249cfce69b5dc4729ea3cb7478acb163a.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  -o ${OBJECTDIR}/_ext/360740241/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/spi.o: ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  .generated_files/edc4eef238245cfa3c835099a9ed567c66975137.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  -o ${OBJECTDIR}/_ext/360740241/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/symbol.o: ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  .generated_files/69fd5eb13c05675feef0a527154cb565352d7f29.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  -o ${OBJECTDIR}/_ext/360740241/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/symbol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/system.o: ../src/system_config/exp16_pic24f128ga010_24j40/system.c  .generated_files/ed496483a85fbdd32efda7a1b8b6e52e07318ba4.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/system.c  -o ${OBJECTDIR}/_ext/360740241/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/c63dafdc216782bd5f44da599668751c15a053a8.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/5cd859e9aaff120efa4252bbed2ae807c1d9df69.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/star_demo.o: ../src/star_demo.c  .generated_files/55fe4468113a7d34abab8caa1746e1a001d94c71.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/star_demo.c  -o ${OBJECTDIR}/_ext/1360937237/star_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/star_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/3e50a263b296793be9a8ce0b5219614686b517cb.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/task.c  -o ${OBJECTDIR}/_ext/1360937237/task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  .generated_files/4ed295a55b2090a3c156de39eacb72d83ca13afd.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.o: ../../../../../../framework/miwi/src/miwi_nvm.c  .generated_files/6464ec4508098688aa78af7ac9cea610621b2566.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_nvm.c  -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.o: ../../../../../../framework/miwi/src/miwi_p2p.c  .generated_files/62339267f0354c5789258e6f5d9c8bcd9596cc1d.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_p2p.c  -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/console.o: ../src/system_config/exp16_pic24f128ga010_24j40/console.c  .generated_files/17e120a3db81fd9b1eeaace6513372b5845d4050.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/console.c  -o ${OBJECTDIR}/_ext/360740241/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/console.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/delay.o: ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  .generated_files/8a4519405a325f93495d1b3aa99ce6cd74cc1c11.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  -o ${OBJECTDIR}/_ext/360740241/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/delay.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/eeprom.o: ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  .generated_files/5969c64ab502bb61da1d147e760bf8edb64d2eb0.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  -o ${OBJECTDIR}/_ext/360740241/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/eeprom.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/lcd.o: ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  .generated_files/ad3279fcaa48d1192387dbd11ce738ccf30ed70c.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  -o ${OBJECTDIR}/_ext/360740241/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/lcd.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/spi.o: ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  .generated_files/98abed9e2ce3f8f8a757128bde6346581c9d524c.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  -o ${OBJECTDIR}/_ext/360740241/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/spi.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/symbol.o: ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  .generated_files/be0c91c79200c6b717b66f67f9657bb8511e4a5f.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  -o ${OBJECTDIR}/_ext/360740241/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/symbol.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/system.o: ../src/system_config/exp16_pic24f128ga010_24j40/system.c  .generated_files/d81060a90ca322d288946b1504337ea3411f4ca7.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/system.c  -o ${OBJECTDIR}/_ext/360740241/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/system.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/eb4a7e05f2d896c9a899b316edc27969cf8c5996.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/3f6bb8e7b11f9c97c9390b5af79ec5a84ff4d2fb.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/star_demo.o: ../src/star_demo.c  .generated_files/8c4e3f93b83c70de377029efd61252b31ff664aa.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/star_demo.c  -o ${OBJECTDIR}/_ext/1360937237/star_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/star_demo.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/fbc9c978889abef5f61113166510602cfe561785.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/task.c  -o ${OBJECTDIR}/_ext/1360937237/task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/exp16_pic24fj128ga010_24j40
	${RM} -r dist/exp16_pic24fj128ga010_24j40

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
