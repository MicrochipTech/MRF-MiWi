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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_24j40/console.c ../src/system_config/exp16_pic24f128ga010_24j40/delay.c ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c ../src/system_config/exp16_pic24f128ga010_24j40/spi.c ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c ../src/system_config/exp16_pic24f128ga010_24j40/system.c ../src/demo_ouput.c ../src/main.c ../src/p2p_demo.c ../src/task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/360740241/console.o ${OBJECTDIR}/_ext/360740241/delay.o ${OBJECTDIR}/_ext/360740241/eeprom.o ${OBJECTDIR}/_ext/360740241/lcd.o ${OBJECTDIR}/_ext/360740241/spi.o ${OBJECTDIR}/_ext/360740241/symbol.o ${OBJECTDIR}/_ext/360740241/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o ${OBJECTDIR}/_ext/1360937237/task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d ${OBJECTDIR}/_ext/360740241/console.o.d ${OBJECTDIR}/_ext/360740241/delay.o.d ${OBJECTDIR}/_ext/360740241/eeprom.o.d ${OBJECTDIR}/_ext/360740241/lcd.o.d ${OBJECTDIR}/_ext/360740241/spi.o.d ${OBJECTDIR}/_ext/360740241/symbol.o.d ${OBJECTDIR}/_ext/360740241/system.o.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d ${OBJECTDIR}/_ext/1360937237/task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/360740241/console.o ${OBJECTDIR}/_ext/360740241/delay.o ${OBJECTDIR}/_ext/360740241/eeprom.o ${OBJECTDIR}/_ext/360740241/lcd.o ${OBJECTDIR}/_ext/360740241/spi.o ${OBJECTDIR}/_ext/360740241/symbol.o ${OBJECTDIR}/_ext/360740241/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o ${OBJECTDIR}/_ext/1360937237/task.o

# Source Files
SOURCEFILES=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_24j40/console.c ../src/system_config/exp16_pic24f128ga010_24j40/delay.c ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c ../src/system_config/exp16_pic24f128ga010_24j40/spi.c ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c ../src/system_config/exp16_pic24f128ga010_24j40/system.c ../src/demo_ouput.c ../src/main.c ../src/p2p_demo.c ../src/task.c



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
	${MAKE}  -f nbproject/Makefile-exp16_pic24fj128ga010_24j40.mk dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  .generated_files/e8adfc78733d6c0cd5af37d72f9ba31ab3945517.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.o: ../../../../../../framework/miwi/src/miwi_nvm.c  .generated_files/efe4cfba446929f72d9698d34eff5f69dbb35d98.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_nvm.c  -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.o: ../../../../../../framework/miwi/src/miwi_p2p.c  .generated_files/a67266390ff421a59e9c0f79e2d6652f0acdd95f.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_p2p.c  -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/console.o: ../src/system_config/exp16_pic24f128ga010_24j40/console.c  .generated_files/77d596001b43f46fbba04d5c70b44028e8fe257f.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/console.c  -o ${OBJECTDIR}/_ext/360740241/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/console.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/delay.o: ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  .generated_files/35280822a232258d6c1022573469651783eb09b2.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  -o ${OBJECTDIR}/_ext/360740241/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/eeprom.o: ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  .generated_files/3d171427a35a6019f0fe127a1b0fd88afcaa2ba4.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  -o ${OBJECTDIR}/_ext/360740241/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/lcd.o: ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  .generated_files/e5d66a1afdbea29d2bd47d7031025e94e93291c5.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  -o ${OBJECTDIR}/_ext/360740241/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/spi.o: ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  .generated_files/fedf14cac2404d3c0444fb571a1e14cd008beb5f.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  -o ${OBJECTDIR}/_ext/360740241/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/symbol.o: ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  .generated_files/52fc4bdba6852e49ffbc33740433c9766937da62.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  -o ${OBJECTDIR}/_ext/360740241/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/symbol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/system.o: ../src/system_config/exp16_pic24f128ga010_24j40/system.c  .generated_files/542dac85ea5cc5d6929a7df9dc57fa9638cfdb91.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/system.c  -o ${OBJECTDIR}/_ext/360740241/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/d4b057dcf0c2cb129cbf5242d7bd947bb06da254.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/c9f21688b24193907373f4c4259e7d6f563e2303.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.o: ../src/p2p_demo.c  .generated_files/6fd266dd7c5d016a72e09bf2db590437ba0eaf9.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/p2p_demo.c  -o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/ac17b6e399dc3a56850df9375f094c8cd368884e.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/task.c  -o ${OBJECTDIR}/_ext/1360937237/task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  .generated_files/563175ce880bf6276c50e1086b5514fc6086a8ba.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_24j40.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_24j40.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.o: ../../../../../../framework/miwi/src/miwi_nvm.c  .generated_files/49071b37cb99bb8188b7cb9ef208da4ad0f7ed1d.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_nvm.c  -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.o: ../../../../../../framework/miwi/src/miwi_p2p.c  .generated_files/960b866987a2cef0f0c79721713460962533a37.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_p2p.c  -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/console.o: ../src/system_config/exp16_pic24f128ga010_24j40/console.c  .generated_files/105b1edb15fa98f9c4336881e6e7c2184bd9cfa8.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/console.c  -o ${OBJECTDIR}/_ext/360740241/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/console.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/delay.o: ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  .generated_files/a7a8a47daa687700daee0cb1d699c78632b7e2d9.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/delay.c  -o ${OBJECTDIR}/_ext/360740241/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/delay.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/eeprom.o: ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  .generated_files/437334b3ac78ecd39b41e9ffa341f90d28c23473.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/eeprom.c  -o ${OBJECTDIR}/_ext/360740241/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/eeprom.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/lcd.o: ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  .generated_files/292db774ac982dd806bd9cc8b852898a37d60f61.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/lcd.c  -o ${OBJECTDIR}/_ext/360740241/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/lcd.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/spi.o: ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  .generated_files/7320013078995ecc39a72501fffeb9df2a96d566.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/spi.c  -o ${OBJECTDIR}/_ext/360740241/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/spi.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/symbol.o: ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  .generated_files/8fdb1fd7b3c515722ddf13a4abd73fafd07fbf44.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/symbol.c  -o ${OBJECTDIR}/_ext/360740241/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/symbol.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/360740241/system.o: ../src/system_config/exp16_pic24f128ga010_24j40/system.c  .generated_files/4f8aa313bb9bbfc454bf26bc694c2afc26047753.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/360740241" 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/360740241/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_24j40/system.c  -o ${OBJECTDIR}/_ext/360740241/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/360740241/system.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/7964ba90a35aa2e7bef307a18d0eb192fb844815.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/9962f5b186d68764b394e1d67ea76c7a2bbd0384.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/p2p_demo.o: ../src/p2p_demo.c  .generated_files/5f7c86453fe78f07395e945e8eb821dfc7d35861.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/p2p_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/p2p_demo.c  -o ${OBJECTDIR}/_ext/1360937237/p2p_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/p2p_demo.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_24j40" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/75ff1ade61dc82d857678a7bc27ed7335e4a3537.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
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
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_exp16_pic24fj128ga010_24j40=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_p2p.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
