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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_89xa/console.c ../src/system_config/exp16_pic24f128ga010_89xa/delay.c ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c ../src/system_config/exp16_pic24f128ga010_89xa/spi.c ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c ../src/system_config/exp16_pic24f128ga010_89xa/system.c ../src/demo_ouput.c ../src/main.c ../src/star_demo.c ../src/task.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/1512199843/console.o ${OBJECTDIR}/_ext/1512199843/delay.o ${OBJECTDIR}/_ext/1512199843/eeprom.o ${OBJECTDIR}/_ext/1512199843/lcd.o ${OBJECTDIR}/_ext/1512199843/spi.o ${OBJECTDIR}/_ext/1512199843/symbol.o ${OBJECTDIR}/_ext/1512199843/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/star_demo.o ${OBJECTDIR}/_ext/1360937237/task.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d ${OBJECTDIR}/_ext/1512199843/console.o.d ${OBJECTDIR}/_ext/1512199843/delay.o.d ${OBJECTDIR}/_ext/1512199843/eeprom.o.d ${OBJECTDIR}/_ext/1512199843/lcd.o.d ${OBJECTDIR}/_ext/1512199843/spi.o.d ${OBJECTDIR}/_ext/1512199843/symbol.o.d ${OBJECTDIR}/_ext/1512199843/system.o.d ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/star_demo.o.d ${OBJECTDIR}/_ext/1360937237/task.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o ${OBJECTDIR}/_ext/1512199843/console.o ${OBJECTDIR}/_ext/1512199843/delay.o ${OBJECTDIR}/_ext/1512199843/eeprom.o ${OBJECTDIR}/_ext/1512199843/lcd.o ${OBJECTDIR}/_ext/1512199843/spi.o ${OBJECTDIR}/_ext/1512199843/symbol.o ${OBJECTDIR}/_ext/1512199843/system.o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/star_demo.o ${OBJECTDIR}/_ext/1360937237/task.o

# Source Files
SOURCEFILES=../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c ../../../../../../framework/miwi/src/miwi_nvm.c ../../../../../../framework/miwi/src/miwi_p2p.c ../src/system_config/exp16_pic24f128ga010_89xa/console.c ../src/system_config/exp16_pic24f128ga010_89xa/delay.c ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c ../src/system_config/exp16_pic24f128ga010_89xa/spi.c ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c ../src/system_config/exp16_pic24f128ga010_89xa/system.c ../src/demo_ouput.c ../src/main.c ../src/star_demo.c ../src/task.c



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
	${MAKE}  -f nbproject/Makefile-exp16_pic24fj128ga010_89xa.mk dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  .generated_files/4e9e594846866f93036fc46ff88711deeedd1700.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_89xa.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_89xa.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o: ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  .generated_files/2d0068ca2507b95c88666321f0c2657157116b5f.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1308774647" 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/driver/mrf_miwi/src/drv_mrf_miwi_security.c  -o ${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1308774647/drv_mrf_miwi_security.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_nvm.o: ../../../../../../framework/miwi/src/miwi_nvm.c  .generated_files/70ebef228693dfeb55023fe83faa2dc4e6536ec.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_nvm.c  -o ${OBJECTDIR}/_ext/916281452/miwi_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_nvm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/916281452/miwi_p2p.o: ../../../../../../framework/miwi/src/miwi_p2p.c  .generated_files/bc40c5ea17b738ea31aa2b9462dfef49ff61f4f9.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/916281452" 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d 
	@${RM} ${OBJECTDIR}/_ext/916281452/miwi_p2p.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/miwi/src/miwi_p2p.c  -o ${OBJECTDIR}/_ext/916281452/miwi_p2p.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/916281452/miwi_p2p.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/console.o: ../src/system_config/exp16_pic24f128ga010_89xa/console.c  .generated_files/674ae98447a7391dabda97211855853a9f711117.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/console.c  -o ${OBJECTDIR}/_ext/1512199843/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/console.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/delay.o: ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  .generated_files/399f657cfb5b09883f4ea7cc38291be1c4d68745.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  -o ${OBJECTDIR}/_ext/1512199843/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/eeprom.o: ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  .generated_files/712f591719980da2321983bc34abe783b4f88a5d.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  -o ${OBJECTDIR}/_ext/1512199843/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/lcd.o: ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  .generated_files/68d731a26e65f1b1498085ca9db4686cb5f8d00a.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  -o ${OBJECTDIR}/_ext/1512199843/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/spi.o: ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  .generated_files/1acbbbaac81775ccee7bde5384e2b969b26acc26.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  -o ${OBJECTDIR}/_ext/1512199843/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/symbol.o: ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  .generated_files/4189ebac328d8def754aeeb646041b4c319b9b7d.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  -o ${OBJECTDIR}/_ext/1512199843/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/symbol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/system.o: ../src/system_config/exp16_pic24f128ga010_89xa/system.c  .generated_files/299077a94a49355e536d4ca62c47ad93734c6e50.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/system.c  -o ${OBJECTDIR}/_ext/1512199843/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/afdd8ea512ce134c97c040e9f403184bebf423e2.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/22ce296d2007cfa4b24e865d7a48e046351aa9ed.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/star_demo.o: ../src/star_demo.c  .generated_files/8a2d76015723f30a984a4631a87118691d25e565.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/star_demo.c  -o ${OBJECTDIR}/_ext/1360937237/star_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/star_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/2268e5d6269bfc9495a9fa2f8e209bc6f2927792.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/task.c  -o ${OBJECTDIR}/_ext/1360937237/task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1    -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/_ext/1512199843/console.o: ../src/system_config/exp16_pic24f128ga010_89xa/console.c  .generated_files/cf467ca1cb49cf4d1538038717a1ef7329105c61.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/console.c  -o ${OBJECTDIR}/_ext/1512199843/console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/console.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/delay.o: ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  .generated_files/37836e21f3aeff65632409730de13765401675b9.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/delay.c  -o ${OBJECTDIR}/_ext/1512199843/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/delay.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/eeprom.o: ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  .generated_files/54bbfbfef1c60d84dd446584880812143e5761af.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/eeprom.c  -o ${OBJECTDIR}/_ext/1512199843/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/eeprom.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/lcd.o: ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  .generated_files/faa88829aaedd2e1ed4c04b74a767af09b740dbd.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/lcd.c  -o ${OBJECTDIR}/_ext/1512199843/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/lcd.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/spi.o: ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  .generated_files/870c4ec86362eb0f42e64ef6521e455063cdef51.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/spi.c  -o ${OBJECTDIR}/_ext/1512199843/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/spi.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/symbol.o: ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  .generated_files/d1e4ddf600fce703c2ec0b8a517a21142bf343b2.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/symbol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/symbol.c  -o ${OBJECTDIR}/_ext/1512199843/symbol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/symbol.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1512199843/system.o: ../src/system_config/exp16_pic24f128ga010_89xa/system.c  .generated_files/9a5a1465a1b6cd7e23696e8b7b8036dbf41b4cdc.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1512199843" 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1512199843/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/exp16_pic24f128ga010_89xa/system.c  -o ${OBJECTDIR}/_ext/1512199843/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1512199843/system.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/demo_ouput.o: ../src/demo_ouput.c  .generated_files/da455cb1b466bf76ca3a2295b7d420bf4fe12d04.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/demo_ouput.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/demo_ouput.c  -o ${OBJECTDIR}/_ext/1360937237/demo_ouput.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/demo_ouput.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/e2570a5c4282afc8dd0e8a2fc0e9d94309f1b3aa.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/star_demo.o: ../src/star_demo.c  .generated_files/d839143d6fc6c58b8399d62729d7490311714010.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/star_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/star_demo.c  -o ${OBJECTDIR}/_ext/1360937237/star_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/star_demo.o.d"        -g -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../src" -I"../../../../../../framework" -I"../src/system_config/exp16_pic24f128ga010_89xa" -I"../../src" -DEXPLORER16 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360937237/task.o: ../src/task.c  .generated_files/e48d985832ca978912ff692ef555cac5ad7dc370.flag .generated_files/34f10ed94471186a01ad319137d9fa859a1e47b3.flag
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
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_exp16_pic24fj128ga010_89xa=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/simple_example_star.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
