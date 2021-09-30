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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/common/7seg/7segments.c ../src/common/7seg/7segmentsOutputStream.c ../src/common/delay/delay.c ../src/common/error/error.c ../src/common/IO/buffer/buffer.c ../src/common/IO/outputStream/outputStream.c ../src/common/IO/printWriter/printWriter.c ../src/common/led/led.c ../src/common/system/system.c ../src/common/timer1/timer1.c ../src/common/uart5/uart5.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/cube/cubeCommon7Seg.c ../src/cube/mainCubeMeteo.c ../src/drivers/SAA1064T/SAA1064T.c ../src/mainCube.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1571292264/7segments.o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ${OBJECTDIR}/_ext/1506567961/delay.o ${OBJECTDIR}/_ext/1507884958/error.o ${OBJECTDIR}/_ext/383772639/buffer.o ${OBJECTDIR}/_ext/242462784/outputStream.o ${OBJECTDIR}/_ext/1038083393/printWriter.o ${OBJECTDIR}/_ext/919093983/led.o ${OBJECTDIR}/_ext/92899495/system.o ${OBJECTDIR}/_ext/79239498/timer1.o ${OBJECTDIR}/_ext/1522154941/uart5.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ${OBJECTDIR}/_ext/1360937237/mainCube.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1571292264/7segments.o.d ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d ${OBJECTDIR}/_ext/1506567961/delay.o.d ${OBJECTDIR}/_ext/1507884958/error.o.d ${OBJECTDIR}/_ext/383772639/buffer.o.d ${OBJECTDIR}/_ext/242462784/outputStream.o.d ${OBJECTDIR}/_ext/1038083393/printWriter.o.d ${OBJECTDIR}/_ext/919093983/led.o.d ${OBJECTDIR}/_ext/92899495/system.o.d ${OBJECTDIR}/_ext/79239498/timer1.o.d ${OBJECTDIR}/_ext/1522154941/uart5.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o.d ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d ${OBJECTDIR}/_ext/1360937237/mainCube.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1571292264/7segments.o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ${OBJECTDIR}/_ext/1506567961/delay.o ${OBJECTDIR}/_ext/1507884958/error.o ${OBJECTDIR}/_ext/383772639/buffer.o ${OBJECTDIR}/_ext/242462784/outputStream.o ${OBJECTDIR}/_ext/1038083393/printWriter.o ${OBJECTDIR}/_ext/919093983/led.o ${OBJECTDIR}/_ext/92899495/system.o ${OBJECTDIR}/_ext/79239498/timer1.o ${OBJECTDIR}/_ext/1522154941/uart5.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ${OBJECTDIR}/_ext/1360937237/mainCube.o

# Source Files
SOURCEFILES=../src/common/7seg/7segments.c ../src/common/7seg/7segmentsOutputStream.c ../src/common/delay/delay.c ../src/common/error/error.c ../src/common/IO/buffer/buffer.c ../src/common/IO/outputStream/outputStream.c ../src/common/IO/printWriter/printWriter.c ../src/common/led/led.c ../src/common/system/system.c ../src/common/timer1/timer1.c ../src/common/uart5/uart5.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/cube/cubeCommon7Seg.c ../src/cube/mainCubeMeteo.c ../src/drivers/SAA1064T/SAA1064T.c ../src/mainCube.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=,--script="../src/config/default/p32MZ2048EFM100.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/4afbac9073e9227f3a6e0631548177ac47986b39.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/ed9349b1df9f051a5cb0c9a484259d1f1096e9de.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1571292264/7segments.o: ../src/common/7seg/7segments.c  .generated_files/8bee98c3e889af55605ef8467e4e7e9c62c87b56.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segments.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segments.o ../src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o: ../src/common/7seg/7segmentsOutputStream.c  .generated_files/bb90f40579552dfa81e27cb5dadef5deed1aea86.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ../src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1506567961/delay.o: ../src/common/delay/delay.c  .generated_files/7df884f5992b2f80f8c4de28a4ebfba5aad84726.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1506567961" 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506567961/delay.o.d" -o ${OBJECTDIR}/_ext/1506567961/delay.o ../src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1507884958/error.o: ../src/common/error/error.c  .generated_files/8315e6c7d4998fe96b1f1d9cb6541a1213a520f3.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1507884958" 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1507884958/error.o.d" -o ${OBJECTDIR}/_ext/1507884958/error.o ../src/common/error/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/383772639/buffer.o: ../src/common/IO/buffer/buffer.c  .generated_files/e9c26f4de1250b3d5cd5fc892345d45c6edb3e00.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/383772639" 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383772639/buffer.o.d" -o ${OBJECTDIR}/_ext/383772639/buffer.o ../src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/242462784/outputStream.o: ../src/common/IO/outputStream/outputStream.c  .generated_files/8814cb4fb10e7a0b4ee92d8db9aee82962e1e02c.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/242462784" 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/242462784/outputStream.o.d" -o ${OBJECTDIR}/_ext/242462784/outputStream.o ../src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1038083393/printWriter.o: ../src/common/IO/printWriter/printWriter.c  .generated_files/8c3499d63df728894d3e43aa0928e61309ea69b1.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1038083393" 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1038083393/printWriter.o.d" -o ${OBJECTDIR}/_ext/1038083393/printWriter.o ../src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919093983/led.o: ../src/common/led/led.c  .generated_files/e25793027786662cab27460926cc2dc828b42282.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919093983" 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919093983/led.o.d" -o ${OBJECTDIR}/_ext/919093983/led.o ../src/common/led/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92899495/system.o: ../src/common/system/system.c  .generated_files/66554c1aac03106f964d5205d5a26e3e980320c6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/92899495" 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/92899495/system.o.d" -o ${OBJECTDIR}/_ext/92899495/system.o ../src/common/system/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/79239498/timer1.o: ../src/common/timer1/timer1.c  .generated_files/d956d3beeb42dae8d85fee8fb65dc10bdbc0e0a3.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/79239498" 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/79239498/timer1.o.d" -o ${OBJECTDIR}/_ext/79239498/timer1.o ../src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1522154941/uart5.o: ../src/common/uart5/uart5.c  .generated_files/1107cff1d247865a9d2ee4c6d40ff56ee57109ad.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1522154941" 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1522154941/uart5.o.d" -o ${OBJECTDIR}/_ext/1522154941/uart5.o ../src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/f524a560edef61257fb7ab89d2da3475171bafad.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/661f3ae69b373128e90f53b21516b91b5a0535cc.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/5690f261943ae76afab44fc88ec63e5358de4345.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/a1569a1970bae010314af955ca125cac00942d56.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/68ed1f137a6a93e33a1062f583db3662f060b881.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/fdc3dcc2043f3ec773a18c95082bd399d49c9d3e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/fe97bdaa8e3fa2742cecc167f07b6f75c24cc954.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/1599f379b6a198e5a5e1e84394aff742b0a364c9.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/9e676db814742f8881250e76523ef49c8582fe15.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/54345bb194df29c1dd329186316e2d22305ec417.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/5c40d986a4e484840c4ed98acc7036c6eec45bb6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/c3f59aa6bec5225c6485b274c1a829547838319e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/4ece3f61d0cbffcabc8d1324913575deedee6e00.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/60ea77f5239440bc8de858eb54109033a4a23482.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o: ../src/cube/cubeCommon7Seg.c  .generated_files/69225e89d87a325e8e70de1ae8351c8dd8b0855b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o.d" -o ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o ../src/cube/cubeCommon7Seg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o: ../src/cube/mainCubeMeteo.c  .generated_files/96e7b34b6872f142453fe4cdd21bd9663fde3e26.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ../src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/672751358/SAA1064T.o: ../src/drivers/SAA1064T/SAA1064T.c  .generated_files/3827e39f340cf909b1977b47f42699cfc318ab3d.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/672751358" 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/672751358/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ../src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mainCube.o: ../src/mainCube.c  .generated_files/b5f625b44dae9528ff25b1ebcf6ab7a9b7594afb.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mainCube.o.d" -o ${OBJECTDIR}/_ext/1360937237/mainCube.o ../src/mainCube.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1571292264/7segments.o: ../src/common/7seg/7segments.c  .generated_files/e4704357d14013e5193c2d4ea67c98eeb5d1915c.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segments.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segments.o ../src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o: ../src/common/7seg/7segmentsOutputStream.c  .generated_files/328d55c68247886b7dc8b56a8fd61f4d7de3a3c5.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ../src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1506567961/delay.o: ../src/common/delay/delay.c  .generated_files/272f9f7df0f41cf7de7ad0db538523e7d8f969ea.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1506567961" 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506567961/delay.o.d" -o ${OBJECTDIR}/_ext/1506567961/delay.o ../src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1507884958/error.o: ../src/common/error/error.c  .generated_files/39adc4d67bd4e8e81879f80722f9df1679b69528.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1507884958" 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1507884958/error.o.d" -o ${OBJECTDIR}/_ext/1507884958/error.o ../src/common/error/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/383772639/buffer.o: ../src/common/IO/buffer/buffer.c  .generated_files/3a65adc9bc4e2398731c9bd3473b72752cc07236.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/383772639" 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383772639/buffer.o.d" -o ${OBJECTDIR}/_ext/383772639/buffer.o ../src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/242462784/outputStream.o: ../src/common/IO/outputStream/outputStream.c  .generated_files/45eb48ea27b8295601e9cdc5204c30761f47fb8b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/242462784" 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/242462784/outputStream.o.d" -o ${OBJECTDIR}/_ext/242462784/outputStream.o ../src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1038083393/printWriter.o: ../src/common/IO/printWriter/printWriter.c  .generated_files/ad684bcf20ab2c5d870f2d8146c661fe014cbf7f.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1038083393" 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1038083393/printWriter.o.d" -o ${OBJECTDIR}/_ext/1038083393/printWriter.o ../src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919093983/led.o: ../src/common/led/led.c  .generated_files/f7ef83cf944c7ff03f13e9d741d98d6609f7a984.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919093983" 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919093983/led.o.d" -o ${OBJECTDIR}/_ext/919093983/led.o ../src/common/led/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92899495/system.o: ../src/common/system/system.c  .generated_files/ea440b2e167bfaee59dded6331ed35cb2f8b5578.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/92899495" 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/92899495/system.o.d" -o ${OBJECTDIR}/_ext/92899495/system.o ../src/common/system/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/79239498/timer1.o: ../src/common/timer1/timer1.c  .generated_files/4cc773a5ee604e6dfa084051a712e049f24c3c5b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/79239498" 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/79239498/timer1.o.d" -o ${OBJECTDIR}/_ext/79239498/timer1.o ../src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1522154941/uart5.o: ../src/common/uart5/uart5.c  .generated_files/f3765faae9dc49e999f9806b931dbbc7ea080359.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1522154941" 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1522154941/uart5.o.d" -o ${OBJECTDIR}/_ext/1522154941/uart5.o ../src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/bb65dc1d44eaf08ef672493c39d9df32d9806332.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/30c673ea7d9a4f4558158ae9725929b96cc11cb0.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/f41ffeedc86419de342b013f0f9de4d6d04c2352.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/fab8d0563ccaf5f18654077d6b51873fc532e422.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/8095f68e440958a3e984edd99154d57f5f5e3d3a.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/a514ed55054a428740a0367a09d84dba4b8c242c.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/f3da2f7c848c27da44bcef2a2e193bd5cd1cbd6a.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/581743079c97b56f179199ec15b0c927a8a9f32c.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/a26a858cb7c28f3c8864f5688319d1b9fa92429d.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/eb070517b38c4bdf935990ab782e7d3738adf609.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/3b30fb8d03170e1929b9167ae36e0f03c6f9f905.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/596859e6339b150004fb02280425d391805e309b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/cc9df7704e981a0698f6842d1f15798c0c3fb428.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/9b34bc1291bb2b2be4d2d81be49cde28a2d6ac6e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o: ../src/cube/cubeCommon7Seg.c  .generated_files/e4fd8386b42d7d9a60668af7ecfe3c6b99b4803d.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o.d" -o ${OBJECTDIR}/_ext/1019397905/cubeCommon7Seg.o ../src/cube/cubeCommon7Seg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o: ../src/cube/mainCubeMeteo.c  .generated_files/acd8636fd65e205017aa710571d050ec562053b0.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ../src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/672751358/SAA1064T.o: ../src/drivers/SAA1064T/SAA1064T.c  .generated_files/7f81c74aaa6aa7b1bca2643f864f2645fb714e3e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/672751358" 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/672751358/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ../src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mainCube.o: ../src/mainCube.c  .generated_files/188890975f107903084692768ae704856deea45d.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mainCube.o.d" -o ${OBJECTDIR}/_ext/1360937237/mainCube.o ../src/mainCube.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MZ2048EFM100.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MZ2048EFM100.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/CubeDebMeteo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
