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
SOURCEFILES_QUOTED_IF_SPACED=../src/common/7seg/7segments.c ../src/common/7seg/7segmentsOutputStream.c ../src/common/clock/clock.c ../src/common/clock/clockStream.c ../src/common/delay/delay.c ../src/common/error/error.c ../src/common/IO/buffer/buffer.c ../src/common/IO/outputStream/outputStream.c ../src/common/IO/printWriter/printWriter.c ../src/common/led/led.c ../src/common/RGB/RGB.c ../src/common/RGB/RGBStream.c ../src/common/sensor/distance/distance.c ../src/common/sensor/distance/distanceStream.c ../src/common/sensor/temperature/temperatureStream.c ../src/common/sensor/temperature/temperature.c ../src/common/serial/serialOutpuStream.c ../src/common/serial/serial.c ../src/common/system/system.c ../src/common/timer1/timer1.c ../src/common/uart5/uart5.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/icap/plib_icap1.c ../src/config/default/peripheral/ocmp/plib_ocmp3.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr4.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/cube/mainCubeMeteo.c ../src/cube/cubeCommon.c ../src/drivers/HCSR04/HC-SR04.c ../src/drivers/LM75A/LM75A.c ../src/drivers/PCF8563/PCF8563.c ../src/drivers/SAA1064T/SAA1064T.c ../src/drivers/WS2812b/WS2812b.c ../src/mainCube.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1571292264/7segments.o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ${OBJECTDIR}/_ext/1505855908/clock.o ${OBJECTDIR}/_ext/1505855908/clockStream.o ${OBJECTDIR}/_ext/1506567961/delay.o ${OBJECTDIR}/_ext/1507884958/error.o ${OBJECTDIR}/_ext/383772639/buffer.o ${OBJECTDIR}/_ext/242462784/outputStream.o ${OBJECTDIR}/_ext/1038083393/printWriter.o ${OBJECTDIR}/_ext/919093983/led.o ${OBJECTDIR}/_ext/919119933/RGB.o ${OBJECTDIR}/_ext/919119933/RGBStream.o ${OBJECTDIR}/_ext/99833024/distance.o ${OBJECTDIR}/_ext/99833024/distanceStream.o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ${OBJECTDIR}/_ext/1240316727/temperature.o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ${OBJECTDIR}/_ext/111410402/serial.o ${OBJECTDIR}/_ext/92899495/system.o ${OBJECTDIR}/_ext/79239498/timer1.o ${OBJECTDIR}/_ext/1522154941/uart5.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ${OBJECTDIR}/_ext/1367680316/LM75A.o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ${OBJECTDIR}/_ext/1360937237/mainCube.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1571292264/7segments.o.d ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d ${OBJECTDIR}/_ext/1505855908/clock.o.d ${OBJECTDIR}/_ext/1505855908/clockStream.o.d ${OBJECTDIR}/_ext/1506567961/delay.o.d ${OBJECTDIR}/_ext/1507884958/error.o.d ${OBJECTDIR}/_ext/383772639/buffer.o.d ${OBJECTDIR}/_ext/242462784/outputStream.o.d ${OBJECTDIR}/_ext/1038083393/printWriter.o.d ${OBJECTDIR}/_ext/919093983/led.o.d ${OBJECTDIR}/_ext/919119933/RGB.o.d ${OBJECTDIR}/_ext/919119933/RGBStream.o.d ${OBJECTDIR}/_ext/99833024/distance.o.d ${OBJECTDIR}/_ext/99833024/distanceStream.o.d ${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d ${OBJECTDIR}/_ext/1240316727/temperature.o.d ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d ${OBJECTDIR}/_ext/111410402/serial.o.d ${OBJECTDIR}/_ext/92899495/system.o.d ${OBJECTDIR}/_ext/79239498/timer1.o.d ${OBJECTDIR}/_ext/1522154941/uart5.o.d ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d ${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d ${OBJECTDIR}/_ext/428692892/HC-SR04.o.d ${OBJECTDIR}/_ext/1367680316/LM75A.o.d ${OBJECTDIR}/_ext/1098102801/PCF8563.o.d ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d ${OBJECTDIR}/_ext/1259047745/WS2812b.o.d ${OBJECTDIR}/_ext/1360937237/mainCube.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1571292264/7segments.o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ${OBJECTDIR}/_ext/1505855908/clock.o ${OBJECTDIR}/_ext/1505855908/clockStream.o ${OBJECTDIR}/_ext/1506567961/delay.o ${OBJECTDIR}/_ext/1507884958/error.o ${OBJECTDIR}/_ext/383772639/buffer.o ${OBJECTDIR}/_ext/242462784/outputStream.o ${OBJECTDIR}/_ext/1038083393/printWriter.o ${OBJECTDIR}/_ext/919093983/led.o ${OBJECTDIR}/_ext/919119933/RGB.o ${OBJECTDIR}/_ext/919119933/RGBStream.o ${OBJECTDIR}/_ext/99833024/distance.o ${OBJECTDIR}/_ext/99833024/distanceStream.o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ${OBJECTDIR}/_ext/1240316727/temperature.o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ${OBJECTDIR}/_ext/111410402/serial.o ${OBJECTDIR}/_ext/92899495/system.o ${OBJECTDIR}/_ext/79239498/timer1.o ${OBJECTDIR}/_ext/1522154941/uart5.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ${OBJECTDIR}/_ext/1367680316/LM75A.o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ${OBJECTDIR}/_ext/1360937237/mainCube.o

# Source Files
SOURCEFILES=../src/common/7seg/7segments.c ../src/common/7seg/7segmentsOutputStream.c ../src/common/clock/clock.c ../src/common/clock/clockStream.c ../src/common/delay/delay.c ../src/common/error/error.c ../src/common/IO/buffer/buffer.c ../src/common/IO/outputStream/outputStream.c ../src/common/IO/printWriter/printWriter.c ../src/common/led/led.c ../src/common/RGB/RGB.c ../src/common/RGB/RGBStream.c ../src/common/sensor/distance/distance.c ../src/common/sensor/distance/distanceStream.c ../src/common/sensor/temperature/temperatureStream.c ../src/common/sensor/temperature/temperature.c ../src/common/serial/serialOutpuStream.c ../src/common/serial/serial.c ../src/common/system/system.c ../src/common/timer1/timer1.c ../src/common/uart5/uart5.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/icap/plib_icap1.c ../src/config/default/peripheral/ocmp/plib_ocmp3.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr4.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/cube/mainCubeMeteo.c ../src/cube/cubeCommon.c ../src/drivers/HCSR04/HC-SR04.c ../src/drivers/LM75A/LM75A.c ../src/drivers/PCF8563/PCF8563.c ../src/drivers/SAA1064T/SAA1064T.c ../src/drivers/WS2812b/WS2812b.c ../src/mainCube.c



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
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/589db70b0be0d6d188378387900e08023d6ec588.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/9693866a0ba21b3fdf64beb4f7f63f869c5eb52c.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
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
${OBJECTDIR}/_ext/1571292264/7segments.o: ../src/common/7seg/7segments.c  .generated_files/cef0037a84d96bddef1ae661d05b33afb03ba2bb.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segments.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segments.o ../src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o: ../src/common/7seg/7segmentsOutputStream.c  .generated_files/b161cfe6673426171d5d75b761515b9ad8c3cd7b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ../src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clock.o: ../src/common/clock/clock.c  .generated_files/2ed36da10076d1f9896f2f35b1db542ce4f7fb9c.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clock.o.d" -o ${OBJECTDIR}/_ext/1505855908/clock.o ../src/common/clock/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clockStream.o: ../src/common/clock/clockStream.c  .generated_files/44f9c7b930db880cbdcf454bb1c66a4a39f60aed.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clockStream.o.d" -o ${OBJECTDIR}/_ext/1505855908/clockStream.o ../src/common/clock/clockStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1506567961/delay.o: ../src/common/delay/delay.c  .generated_files/2afcfefa8d465c22246d2799944f9b2db26d9446.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1506567961" 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506567961/delay.o.d" -o ${OBJECTDIR}/_ext/1506567961/delay.o ../src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1507884958/error.o: ../src/common/error/error.c  .generated_files/f500fb16db322de7ffbf4cc5f9f5647b6dedd4e7.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1507884958" 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1507884958/error.o.d" -o ${OBJECTDIR}/_ext/1507884958/error.o ../src/common/error/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/383772639/buffer.o: ../src/common/IO/buffer/buffer.c  .generated_files/3ed48c91ff1308361106f2561a79b9484d04fabe.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/383772639" 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383772639/buffer.o.d" -o ${OBJECTDIR}/_ext/383772639/buffer.o ../src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/242462784/outputStream.o: ../src/common/IO/outputStream/outputStream.c  .generated_files/965266cc1b6b8d6e04d71ef4139e5f0f51d4fc6e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/242462784" 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/242462784/outputStream.o.d" -o ${OBJECTDIR}/_ext/242462784/outputStream.o ../src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1038083393/printWriter.o: ../src/common/IO/printWriter/printWriter.c  .generated_files/6f0aa25264171222e247ab8416334c46c04a4128.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1038083393" 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1038083393/printWriter.o.d" -o ${OBJECTDIR}/_ext/1038083393/printWriter.o ../src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919093983/led.o: ../src/common/led/led.c  .generated_files/e59faf587d56d81aad0bd3bdff5608d7832b71ab.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919093983" 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919093983/led.o.d" -o ${OBJECTDIR}/_ext/919093983/led.o ../src/common/led/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGB.o: ../src/common/RGB/RGB.c  .generated_files/44e2851d618aa525eefd04a17e9a8352bae650dd.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGB.o.d" -o ${OBJECTDIR}/_ext/919119933/RGB.o ../src/common/RGB/RGB.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGBStream.o: ../src/common/RGB/RGBStream.c  .generated_files/ecfc20c767e291d8e840241e8df3da2b38b39469.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGBStream.o.d" -o ${OBJECTDIR}/_ext/919119933/RGBStream.o ../src/common/RGB/RGBStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distance.o: ../src/common/sensor/distance/distance.c  .generated_files/f08356f9eed0b0d673f60b223388703c2d3687b7.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distance.o.d" -o ${OBJECTDIR}/_ext/99833024/distance.o ../src/common/sensor/distance/distance.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distanceStream.o: ../src/common/sensor/distance/distanceStream.c  .generated_files/2a26556e90600698b0a935bc432eee516be35b57.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distanceStream.o.d" -o ${OBJECTDIR}/_ext/99833024/distanceStream.o ../src/common/sensor/distance/distanceStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperatureStream.o: ../src/common/sensor/temperature/temperatureStream.c  .generated_files/b135eca9fc85e49806661c395966f538b507c799.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ../src/common/sensor/temperature/temperatureStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperature.o: ../src/common/sensor/temperature/temperature.c  .generated_files/1a58c19bcbb7aa8e2be435a1d2f12918595f5b39.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperature.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperature.o ../src/common/sensor/temperature/temperature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serialOutpuStream.o: ../src/common/serial/serialOutpuStream.c  .generated_files/54db2495ac6a556b1f14577669ee385a5167d294.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d" -o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ../src/common/serial/serialOutpuStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serial.o: ../src/common/serial/serial.c  .generated_files/4196be312305c4bb73e2ce22e361884dfef56057.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serial.o.d" -o ${OBJECTDIR}/_ext/111410402/serial.o ../src/common/serial/serial.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92899495/system.o: ../src/common/system/system.c  .generated_files/cb6c4279f9a1cf63d749e7a75753da42a7fe8102.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/92899495" 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/92899495/system.o.d" -o ${OBJECTDIR}/_ext/92899495/system.o ../src/common/system/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/79239498/timer1.o: ../src/common/timer1/timer1.c  .generated_files/f1d99760d4a3ddb8e046c2dfd0ecf6a17724a569.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/79239498" 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/79239498/timer1.o.d" -o ${OBJECTDIR}/_ext/79239498/timer1.o ../src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1522154941/uart5.o: ../src/common/uart5/uart5.c  .generated_files/f364f2357d32bdfed5a4a907e4438493977fe3f1.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1522154941" 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1522154941/uart5.o.d" -o ${OBJECTDIR}/_ext/1522154941/uart5.o ../src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/6fa66fecbcc5d9632d14f10df6859bf0c45ac3a8.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/b2584920b013d0172fd6afeff234686639201b11.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/edc2dba593434011532886c99264d4132b28127.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/96bea6f56f7f2fc711da313a0e78f7ec4156ba76.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/303c6e945ea98785f04fd8cb72bafc5415e6acf3.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/ac60e7a5fd815b0e3b03e2a601fcc1677b9035fa.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/16e5ab6037c4c985b6cbb81d59fc56be2ef6ac15.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap1.o: ../src/config/default/peripheral/icap/plib_icap1.c  .generated_files/fc26eafe220209258a4702d3926b75e70cef4577.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ../src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o: ../src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/4692f2ba39ac9ee8fed85f4da5ac942bdf6f14fc.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ../src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/d26c39d3257c818f236757abf0dfcb0b3082b9dc.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr4.o: ../src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/c0de15709adea09418b9846047f2ddf9cffa6f44.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ../src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/63ce0f4816ffea6f38b0f9216207bf91f117452.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/c7823cafa9a40871401e97336dd1bc3fb6d7780a.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/efccec14dd0611dca5d2d526d43d38af9e1c9cd7.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/53486dbf04af8d0c268ba6e7a8cd7cb7d2a10d09.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/f91996ae9328bf04f87d0e7bb20eb0efa1816514.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/c6d9fa87b3d658bea5486233f446e866fcb36742.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/32c40cd6060601456a84bcc19b18df841cd3e7bc.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o: ../src/cube/mainCubeMeteo.c  .generated_files/5591dd435961518ec0d18aa81e1d575b60a1fa4e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ../src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/cubeCommon.o: ../src/cube/cubeCommon.c  .generated_files/bb093ecfa23d132ec2c7466d41cb40a62a713af6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d" -o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ../src/cube/cubeCommon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/428692892/HC-SR04.o: ../src/drivers/HCSR04/HC-SR04.c  .generated_files/5fd47650d35a4bb39a16501803c1c72ce87c425c.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/428692892" 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o.d 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/428692892/HC-SR04.o.d" -o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ../src/drivers/HCSR04/HC-SR04.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367680316/LM75A.o: ../src/drivers/LM75A/LM75A.c  .generated_files/65bf78d57697867b64c1756550d247337738eab.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1367680316" 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367680316/LM75A.o.d" -o ${OBJECTDIR}/_ext/1367680316/LM75A.o ../src/drivers/LM75A/LM75A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098102801/PCF8563.o: ../src/drivers/PCF8563/PCF8563.c  .generated_files/6d0c9a48dcaa1e5fba8e435aabe43686549e442d.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1098102801" 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098102801/PCF8563.o.d" -o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ../src/drivers/PCF8563/PCF8563.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/672751358/SAA1064T.o: ../src/drivers/SAA1064T/SAA1064T.c  .generated_files/2c528ae730c39ad33a57411ceea87d03fdf4500a.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/672751358" 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/672751358/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ../src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1259047745/WS2812b.o: ../src/drivers/WS2812b/WS2812b.c  .generated_files/b59b4d7b8a5e47033bdc914f946492b36a9f156e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1259047745" 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1259047745/WS2812b.o.d" -o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ../src/drivers/WS2812b/WS2812b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mainCube.o: ../src/mainCube.c  .generated_files/ac1a3c284f114e206a329d70e0917c1ad8fe6ec9.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mainCube.o.d" -o ${OBJECTDIR}/_ext/1360937237/mainCube.o ../src/mainCube.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1571292264/7segments.o: ../src/common/7seg/7segments.c  .generated_files/65d84bc9683c0fb042de3ea188dd8776a2ef1458.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segments.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segments.o ../src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o: ../src/common/7seg/7segmentsOutputStream.c  .generated_files/4c1351f3bc5822d0cddb79db442a08adfd09524f.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ../src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clock.o: ../src/common/clock/clock.c  .generated_files/47cb77b5d1945f9eee11aa97f61fa62847819be1.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clock.o.d" -o ${OBJECTDIR}/_ext/1505855908/clock.o ../src/common/clock/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clockStream.o: ../src/common/clock/clockStream.c  .generated_files/83d592e7d2f925229cf4e636a2c5ce8837bfa046.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clockStream.o.d" -o ${OBJECTDIR}/_ext/1505855908/clockStream.o ../src/common/clock/clockStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1506567961/delay.o: ../src/common/delay/delay.c  .generated_files/715bf58798245a60f8821faf60c6d8f04a12172f.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1506567961" 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506567961/delay.o.d" -o ${OBJECTDIR}/_ext/1506567961/delay.o ../src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1507884958/error.o: ../src/common/error/error.c  .generated_files/fb1a050373542a7acd90b435c50c7c5821f1bf2b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1507884958" 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1507884958/error.o.d" -o ${OBJECTDIR}/_ext/1507884958/error.o ../src/common/error/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/383772639/buffer.o: ../src/common/IO/buffer/buffer.c  .generated_files/8291323ebabadcefc90dd4d2f37a9c18e138da15.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/383772639" 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383772639/buffer.o.d" -o ${OBJECTDIR}/_ext/383772639/buffer.o ../src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/242462784/outputStream.o: ../src/common/IO/outputStream/outputStream.c  .generated_files/6159362865259981df3dc552c06b125583133d74.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/242462784" 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/242462784/outputStream.o.d" -o ${OBJECTDIR}/_ext/242462784/outputStream.o ../src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1038083393/printWriter.o: ../src/common/IO/printWriter/printWriter.c  .generated_files/665eb6ab561413836ecf8839cc90db579b8268f0.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1038083393" 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1038083393/printWriter.o.d" -o ${OBJECTDIR}/_ext/1038083393/printWriter.o ../src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919093983/led.o: ../src/common/led/led.c  .generated_files/91d49ff895298ec02b5ee095fbb895da00203fb0.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919093983" 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919093983/led.o.d" -o ${OBJECTDIR}/_ext/919093983/led.o ../src/common/led/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGB.o: ../src/common/RGB/RGB.c  .generated_files/b0bdd5980c5432e2aa996048fe57f23e3e3ee3c1.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGB.o.d" -o ${OBJECTDIR}/_ext/919119933/RGB.o ../src/common/RGB/RGB.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGBStream.o: ../src/common/RGB/RGBStream.c  .generated_files/5735243468321c29a70c2bfdbc7c28392ba6ab9b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGBStream.o.d" -o ${OBJECTDIR}/_ext/919119933/RGBStream.o ../src/common/RGB/RGBStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distance.o: ../src/common/sensor/distance/distance.c  .generated_files/e225e91b595e51f8732d7db62df4e11834e856.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distance.o.d" -o ${OBJECTDIR}/_ext/99833024/distance.o ../src/common/sensor/distance/distance.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distanceStream.o: ../src/common/sensor/distance/distanceStream.c  .generated_files/51a2ce3e9d517e112bc7e9fd564fd76213892f6b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distanceStream.o.d" -o ${OBJECTDIR}/_ext/99833024/distanceStream.o ../src/common/sensor/distance/distanceStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperatureStream.o: ../src/common/sensor/temperature/temperatureStream.c  .generated_files/5cae9e1c36b29f2369ac00acc125602ebf61c655.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ../src/common/sensor/temperature/temperatureStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperature.o: ../src/common/sensor/temperature/temperature.c  .generated_files/f6d10aae920b0805493c7e7bcfa9d24662e27625.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperature.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperature.o ../src/common/sensor/temperature/temperature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serialOutpuStream.o: ../src/common/serial/serialOutpuStream.c  .generated_files/98713116d64ccf6f8c116c5d5b7cdb976c9ec275.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d" -o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ../src/common/serial/serialOutpuStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serial.o: ../src/common/serial/serial.c  .generated_files/46d73bca8d9fcf356f869f2f05f9f688a9193e79.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serial.o.d" -o ${OBJECTDIR}/_ext/111410402/serial.o ../src/common/serial/serial.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92899495/system.o: ../src/common/system/system.c  .generated_files/54a5a511825048533f8364cedbb39ead7c55e9c9.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/92899495" 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/92899495/system.o.d" -o ${OBJECTDIR}/_ext/92899495/system.o ../src/common/system/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/79239498/timer1.o: ../src/common/timer1/timer1.c  .generated_files/53eb36d510c3817cdc0b574ada07b35ab9ce963.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/79239498" 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/79239498/timer1.o.d" -o ${OBJECTDIR}/_ext/79239498/timer1.o ../src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1522154941/uart5.o: ../src/common/uart5/uart5.c  .generated_files/871bdfc198eef29b5dad3db1d22d71aa79044257.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1522154941" 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1522154941/uart5.o.d" -o ${OBJECTDIR}/_ext/1522154941/uart5.o ../src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/e5e96460af43b0d673fedc0897bb71b253c4ecca.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/cc073b525c02543d7ff5a632c44fe6c8a39ab249.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/a9065a9651083ac7cd71e832352f455c3d73c029.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/18dba5ee7f7d8a6e040a9ace7558df51fc6a6759.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/d97fb8895b364986c47aa43b8d0ef7720701caf6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/f33a93281403a01b0176a1085e7a1600e5d830a1.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/f0579e295c0a41bbc33137088fea4b087c074e2.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap1.o: ../src/config/default/peripheral/icap/plib_icap1.c  .generated_files/5e346efc6d354d6186514859e5c77e23341e0ec6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ../src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o: ../src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/106004618f44ff7cd8b6db3df9dc13401d76c3b3.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ../src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/3609730564c0d56d92111b47583c7c108c021eca.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr4.o: ../src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/d007f0f9f60d0dcdf69fff680b866829ce8100ce.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ../src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/22fa24584fcce8dd93a9c8bc12fca51ee135916.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/1d25c54d454f9a6bd8e8edcd9feb7c2ba81c5bb2.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/a602f79618eb1275b651c52e22a753f8e361c9b6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/aa5805d2a3df5397294bfa59a6ef283beb0d8dc1.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/7650e6147e4e9cda86dc6987ba7b0db863b7e3c4.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/9130e8fcaace4b1956da825b78a5040a1751ca50.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/29e3af39fe04667b0c0222910374181e4fd4bd50.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o: ../src/cube/mainCubeMeteo.c  .generated_files/1a080556ba71ced4b72b0629b2d9e31209def5db.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ../src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/cubeCommon.o: ../src/cube/cubeCommon.c  .generated_files/d7c035ce7a1cf3b8ef91c154f0622d82f1ae3a9.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d" -o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ../src/cube/cubeCommon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/428692892/HC-SR04.o: ../src/drivers/HCSR04/HC-SR04.c  .generated_files/9b70e22a2002f5bf9d7672d08d4ded8ee68dc2a7.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/428692892" 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o.d 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/428692892/HC-SR04.o.d" -o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ../src/drivers/HCSR04/HC-SR04.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367680316/LM75A.o: ../src/drivers/LM75A/LM75A.c  .generated_files/cf314c482c151c2591d3090a0693e52cf83f1e21.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1367680316" 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367680316/LM75A.o.d" -o ${OBJECTDIR}/_ext/1367680316/LM75A.o ../src/drivers/LM75A/LM75A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098102801/PCF8563.o: ../src/drivers/PCF8563/PCF8563.c  .generated_files/a83ed2d56746010a3b0668ac714a6b5ef487c2e0.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1098102801" 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098102801/PCF8563.o.d" -o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ../src/drivers/PCF8563/PCF8563.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/672751358/SAA1064T.o: ../src/drivers/SAA1064T/SAA1064T.c  .generated_files/525c1b56abfbd4c6c95e11f753f621741184e671.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/672751358" 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/672751358/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ../src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1259047745/WS2812b.o: ../src/drivers/WS2812b/WS2812b.c  .generated_files/d52cdb9670d9973aeca3ca904e6d2e8674dd598d.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1259047745" 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1259047745/WS2812b.o.d" -o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ../src/drivers/WS2812b/WS2812b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mainCube.o: ../src/mainCube.c  .generated_files/68a27ed338fcad462a8200ab16692f55810f62ad.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
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
