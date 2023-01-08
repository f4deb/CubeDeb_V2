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
FINAL_IMAGE=${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/common/7seg/7segments.c ../src/common/7seg/7segmentsOutputStream.c ../src/common/clock/clock.c ../src/common/clock/clockStream.c ../src/common/delay/delay.c ../src/common/display/displayUtils.c ../src/common/display/displayStream.c ../src/common/error/error.c ../src/common/IO/buffer/buffer.c ../src/common/IO/outputStream/outputStream.c ../src/common/IO/printWriter/printWriter.c ../src/common/led/led.c ../src/common/RGB/RGB.c ../src/common/RGB/RGBStream.c ../src/common/sensor/distance/distance.c ../src/common/sensor/distance/distanceStream.c ../src/common/sensor/frequencyCounter/frequencyCounterStream.c ../src/common/sensor/frequencyCounter/frequencyCounterUtils.c ../src/common/sensor/frequencyCounter/frequencyCounter.c ../src/common/sensor/temperature/temperatureStream.c ../src/common/sensor/temperature/temperature.c ../src/common/serial/serialOutpuStream.c ../src/common/serial/serial.c ../src/common/system/system.c ../src/common/timer1/timer1.c ../src/common/uart5/uart5.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/icap/plib_icap1.c ../src/config/default/peripheral/icap/plib_icap2.c ../src/config/default/peripheral/ocmp/plib_ocmp3.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr4.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/cube/mainCubeMeteo.c ../src/cube/cubeCommon.c ../src/drivers/HCSR04/HC-SR04.c ../src/drivers/LM75A/LM75A.c ../src/drivers/PCF8563/PCF8563.c ../src/drivers/SAA1064T/SAA1064T.c ../src/drivers/TM1638/TM1638.c ../src/drivers/WS2812b/WS2812b.c ../src/mainCube.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1571292264/7segments.o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ${OBJECTDIR}/_ext/1505855908/clock.o ${OBJECTDIR}/_ext/1505855908/clockStream.o ${OBJECTDIR}/_ext/1506567961/delay.o ${OBJECTDIR}/_ext/529250520/displayUtils.o ${OBJECTDIR}/_ext/529250520/displayStream.o ${OBJECTDIR}/_ext/1507884958/error.o ${OBJECTDIR}/_ext/383772639/buffer.o ${OBJECTDIR}/_ext/242462784/outputStream.o ${OBJECTDIR}/_ext/1038083393/printWriter.o ${OBJECTDIR}/_ext/919093983/led.o ${OBJECTDIR}/_ext/919119933/RGB.o ${OBJECTDIR}/_ext/919119933/RGBStream.o ${OBJECTDIR}/_ext/99833024/distance.o ${OBJECTDIR}/_ext/99833024/distanceStream.o ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o ${OBJECTDIR}/_ext/991344331/frequencyCounter.o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ${OBJECTDIR}/_ext/1240316727/temperature.o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ${OBJECTDIR}/_ext/111410402/serial.o ${OBJECTDIR}/_ext/92899495/system.o ${OBJECTDIR}/_ext/79239498/timer1.o ${OBJECTDIR}/_ext/1522154941/uart5.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ${OBJECTDIR}/_ext/1367680316/LM75A.o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ${OBJECTDIR}/_ext/780438209/TM1638.o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ${OBJECTDIR}/_ext/1360937237/mainCube.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1571292264/7segments.o.d ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d ${OBJECTDIR}/_ext/1505855908/clock.o.d ${OBJECTDIR}/_ext/1505855908/clockStream.o.d ${OBJECTDIR}/_ext/1506567961/delay.o.d ${OBJECTDIR}/_ext/529250520/displayUtils.o.d ${OBJECTDIR}/_ext/529250520/displayStream.o.d ${OBJECTDIR}/_ext/1507884958/error.o.d ${OBJECTDIR}/_ext/383772639/buffer.o.d ${OBJECTDIR}/_ext/242462784/outputStream.o.d ${OBJECTDIR}/_ext/1038083393/printWriter.o.d ${OBJECTDIR}/_ext/919093983/led.o.d ${OBJECTDIR}/_ext/919119933/RGB.o.d ${OBJECTDIR}/_ext/919119933/RGBStream.o.d ${OBJECTDIR}/_ext/99833024/distance.o.d ${OBJECTDIR}/_ext/99833024/distanceStream.o.d ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o.d ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o.d ${OBJECTDIR}/_ext/991344331/frequencyCounter.o.d ${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d ${OBJECTDIR}/_ext/1240316727/temperature.o.d ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d ${OBJECTDIR}/_ext/111410402/serial.o.d ${OBJECTDIR}/_ext/92899495/system.o.d ${OBJECTDIR}/_ext/79239498/timer1.o.d ${OBJECTDIR}/_ext/1522154941/uart5.o.d ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d ${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d ${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d ${OBJECTDIR}/_ext/428692892/HC-SR04.o.d ${OBJECTDIR}/_ext/1367680316/LM75A.o.d ${OBJECTDIR}/_ext/1098102801/PCF8563.o.d ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d ${OBJECTDIR}/_ext/780438209/TM1638.o.d ${OBJECTDIR}/_ext/1259047745/WS2812b.o.d ${OBJECTDIR}/_ext/1360937237/mainCube.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1571292264/7segments.o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ${OBJECTDIR}/_ext/1505855908/clock.o ${OBJECTDIR}/_ext/1505855908/clockStream.o ${OBJECTDIR}/_ext/1506567961/delay.o ${OBJECTDIR}/_ext/529250520/displayUtils.o ${OBJECTDIR}/_ext/529250520/displayStream.o ${OBJECTDIR}/_ext/1507884958/error.o ${OBJECTDIR}/_ext/383772639/buffer.o ${OBJECTDIR}/_ext/242462784/outputStream.o ${OBJECTDIR}/_ext/1038083393/printWriter.o ${OBJECTDIR}/_ext/919093983/led.o ${OBJECTDIR}/_ext/919119933/RGB.o ${OBJECTDIR}/_ext/919119933/RGBStream.o ${OBJECTDIR}/_ext/99833024/distance.o ${OBJECTDIR}/_ext/99833024/distanceStream.o ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o ${OBJECTDIR}/_ext/991344331/frequencyCounter.o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ${OBJECTDIR}/_ext/1240316727/temperature.o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ${OBJECTDIR}/_ext/111410402/serial.o ${OBJECTDIR}/_ext/92899495/system.o ${OBJECTDIR}/_ext/79239498/timer1.o ${OBJECTDIR}/_ext/1522154941/uart5.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ${OBJECTDIR}/_ext/1367680316/LM75A.o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ${OBJECTDIR}/_ext/780438209/TM1638.o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ${OBJECTDIR}/_ext/1360937237/mainCube.o

# Source Files
SOURCEFILES=../src/common/7seg/7segments.c ../src/common/7seg/7segmentsOutputStream.c ../src/common/clock/clock.c ../src/common/clock/clockStream.c ../src/common/delay/delay.c ../src/common/display/displayUtils.c ../src/common/display/displayStream.c ../src/common/error/error.c ../src/common/IO/buffer/buffer.c ../src/common/IO/outputStream/outputStream.c ../src/common/IO/printWriter/printWriter.c ../src/common/led/led.c ../src/common/RGB/RGB.c ../src/common/RGB/RGBStream.c ../src/common/sensor/distance/distance.c ../src/common/sensor/distance/distanceStream.c ../src/common/sensor/frequencyCounter/frequencyCounterStream.c ../src/common/sensor/frequencyCounter/frequencyCounterUtils.c ../src/common/sensor/frequencyCounter/frequencyCounter.c ../src/common/sensor/temperature/temperatureStream.c ../src/common/sensor/temperature/temperature.c ../src/common/serial/serialOutpuStream.c ../src/common/serial/serial.c ../src/common/system/system.c ../src/common/timer1/timer1.c ../src/common/uart5/uart5.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../src/config/default/peripheral/icap/plib_icap1.c ../src/config/default/peripheral/icap/plib_icap2.c ../src/config/default/peripheral/ocmp/plib_ocmp3.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr4.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/cube/mainCubeMeteo.c ../src/cube/cubeCommon.c ../src/drivers/HCSR04/HC-SR04.c ../src/drivers/LM75A/LM75A.c ../src/drivers/PCF8563/PCF8563.c ../src/drivers/SAA1064T/SAA1064T.c ../src/drivers/TM1638/TM1638.c ../src/drivers/WS2812b/WS2812b.c ../src/mainCube.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/default/55406ebe7a3832ab155da12dcedfd48129f31de7 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/default/b773e10c6319b4ece6d06be788c5d84fe5db7888 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1571292264/7segments.o: ../src/common/7seg/7segments.c  .generated_files/flags/default/ea09c709cb955b609564f516339c28b7b2da1722 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segments.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segments.o ../src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o: ../src/common/7seg/7segmentsOutputStream.c  .generated_files/flags/default/4b9621bb9c967ca1dd244cdbf7e1cd2eb88ec7ca .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ../src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clock.o: ../src/common/clock/clock.c  .generated_files/flags/default/4cba789d833732470c4211e3b890b0ddd392bfce .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clock.o.d" -o ${OBJECTDIR}/_ext/1505855908/clock.o ../src/common/clock/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clockStream.o: ../src/common/clock/clockStream.c  .generated_files/flags/default/c724798b9006d0370e40b4f231422259b24775fa .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clockStream.o.d" -o ${OBJECTDIR}/_ext/1505855908/clockStream.o ../src/common/clock/clockStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1506567961/delay.o: ../src/common/delay/delay.c  .generated_files/flags/default/dddc09c7287a09651cb38847c742454f17966998 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1506567961" 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506567961/delay.o.d" -o ${OBJECTDIR}/_ext/1506567961/delay.o ../src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/529250520/displayUtils.o: ../src/common/display/displayUtils.c  .generated_files/flags/default/1f27a3f04349b91102c22ac0f4b7063fb8a01aaf .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/529250520" 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/529250520/displayUtils.o.d" -o ${OBJECTDIR}/_ext/529250520/displayUtils.o ../src/common/display/displayUtils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/529250520/displayStream.o: ../src/common/display/displayStream.c  .generated_files/flags/default/53849a5bd413c68ef2db06ed925ac4477390aace .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/529250520" 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/529250520/displayStream.o.d" -o ${OBJECTDIR}/_ext/529250520/displayStream.o ../src/common/display/displayStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1507884958/error.o: ../src/common/error/error.c  .generated_files/flags/default/381088e5c2916e38a412dfd9207c5262bb46f1b3 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1507884958" 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1507884958/error.o.d" -o ${OBJECTDIR}/_ext/1507884958/error.o ../src/common/error/error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/383772639/buffer.o: ../src/common/IO/buffer/buffer.c  .generated_files/flags/default/4d78b04f1b3c6f929072bfde75c65d03ea93388e .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/383772639" 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383772639/buffer.o.d" -o ${OBJECTDIR}/_ext/383772639/buffer.o ../src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/242462784/outputStream.o: ../src/common/IO/outputStream/outputStream.c  .generated_files/flags/default/fc13410d1d9489fdd23ceecbc7ae3913a07048c2 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/242462784" 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/242462784/outputStream.o.d" -o ${OBJECTDIR}/_ext/242462784/outputStream.o ../src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1038083393/printWriter.o: ../src/common/IO/printWriter/printWriter.c  .generated_files/flags/default/9b29ef1c064029797bf39242bce018da4869ffc6 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1038083393" 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1038083393/printWriter.o.d" -o ${OBJECTDIR}/_ext/1038083393/printWriter.o ../src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919093983/led.o: ../src/common/led/led.c  .generated_files/flags/default/4e2480ef9407e5a8689b2132d2fdedb639296c10 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/919093983" 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919093983/led.o.d" -o ${OBJECTDIR}/_ext/919093983/led.o ../src/common/led/led.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGB.o: ../src/common/RGB/RGB.c  .generated_files/flags/default/de1e587d20791a8f57799cb9012ed263bcd965d6 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGB.o.d" -o ${OBJECTDIR}/_ext/919119933/RGB.o ../src/common/RGB/RGB.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGBStream.o: ../src/common/RGB/RGBStream.c  .generated_files/flags/default/9d7fa641274b03e96a8b72484e6aedd793dde8a2 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGBStream.o.d" -o ${OBJECTDIR}/_ext/919119933/RGBStream.o ../src/common/RGB/RGBStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distance.o: ../src/common/sensor/distance/distance.c  .generated_files/flags/default/4bd3017a99d2eebdc59ef7457ee2ef9a007baeae .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distance.o.d" -o ${OBJECTDIR}/_ext/99833024/distance.o ../src/common/sensor/distance/distance.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distanceStream.o: ../src/common/sensor/distance/distanceStream.c  .generated_files/flags/default/777fde785db8ceb64e47497cb19075cbf7302146 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distanceStream.o.d" -o ${OBJECTDIR}/_ext/99833024/distanceStream.o ../src/common/sensor/distance/distanceStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o: ../src/common/sensor/frequencyCounter/frequencyCounterStream.c  .generated_files/flags/default/b00800ea620ca968d192d011ad7ae76aeb8e9962 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/991344331" 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o.d" -o ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o ../src/common/sensor/frequencyCounter/frequencyCounterStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o: ../src/common/sensor/frequencyCounter/frequencyCounterUtils.c  .generated_files/flags/default/a5428c55eff3e52154a50f1e02e6756289ca7340 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/991344331" 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o.d" -o ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o ../src/common/sensor/frequencyCounter/frequencyCounterUtils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/991344331/frequencyCounter.o: ../src/common/sensor/frequencyCounter/frequencyCounter.c  .generated_files/flags/default/7c1811340a7ee4e0b5a4d899d35f64d6576e8f2e .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/991344331" 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/991344331/frequencyCounter.o.d" -o ${OBJECTDIR}/_ext/991344331/frequencyCounter.o ../src/common/sensor/frequencyCounter/frequencyCounter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperatureStream.o: ../src/common/sensor/temperature/temperatureStream.c  .generated_files/flags/default/65476a97a65c06c38a84f6c4b711d2ff1dc84114 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ../src/common/sensor/temperature/temperatureStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperature.o: ../src/common/sensor/temperature/temperature.c  .generated_files/flags/default/a7d1490b7aeb09d9c51e0bae35a7d9dcf325209e .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperature.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperature.o ../src/common/sensor/temperature/temperature.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serialOutpuStream.o: ../src/common/serial/serialOutpuStream.c  .generated_files/flags/default/a1a90f241c64cf6df242d7308d322e458c908a18 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d" -o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ../src/common/serial/serialOutpuStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serial.o: ../src/common/serial/serial.c  .generated_files/flags/default/329a06f70ad528f26bf6528a7c2c60705e0965fc .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serial.o.d" -o ${OBJECTDIR}/_ext/111410402/serial.o ../src/common/serial/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92899495/system.o: ../src/common/system/system.c  .generated_files/flags/default/3c7ba419d43c3bb9238bc8ff94db1cee50c4c633 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/92899495" 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/92899495/system.o.d" -o ${OBJECTDIR}/_ext/92899495/system.o ../src/common/system/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/79239498/timer1.o: ../src/common/timer1/timer1.c  .generated_files/flags/default/87c50c518cf6152e7e0a835499117a9c793c86b5 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/79239498" 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/79239498/timer1.o.d" -o ${OBJECTDIR}/_ext/79239498/timer1.o ../src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1522154941/uart5.o: ../src/common/uart5/uart5.c  .generated_files/flags/default/8627897b8e84880693f2179293da700dfd5ac208 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1522154941" 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1522154941/uart5.o.d" -o ${OBJECTDIR}/_ext/1522154941/uart5.o ../src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/f249e0c2cef0ca1edcafa4042f137bfa4cc37a47 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/flags/default/b587b139213d1ce27d0161549b2aa44e94860156 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/9372cca44484adbea3076507a88ccdbb7022cf02 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/4c312847f03db84863389edf0d5c87eaee5f2eb4 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/9b85cb578595d157306f8e497b1f68109d9ed295 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/9ad590e7efe70be06706875b4de9d615f85752c8 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/e5ef21f91580e87402336ab5c5fa7d740798cf4d .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap1.o: ../src/config/default/peripheral/icap/plib_icap1.c  .generated_files/flags/default/5915a48fd673ed17bc9e57eaa388c4fe40fd37b8 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ../src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap2.o: ../src/config/default/peripheral/icap/plib_icap2.c  .generated_files/flags/default/8bba1481f38d706f7e222e05978401b9080f3e28 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ../src/config/default/peripheral/icap/plib_icap2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o: ../src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/flags/default/7fc0d18972815094abb919989826bdeb140b0d1c .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ../src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/5b9ba4e84c684dfc803f47b4e1a6b1e82f6c7398 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr4.o: ../src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/flags/default/af01332a8554d185296b6572834fe55f6f9c2589 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ../src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/8144a78cadaae42bb23328106f92a217a410e452 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/ba33b29be69029403f9c5e790d3ff278d9d24e16 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/d5fa89f4f2ba31b2f3c0a829e5e4794b7c2b2ad1 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/5b57bc896f8160aea91b07e22434083553a5d10d .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/688690188334ad5ad469b01522b0eeeca16ed446 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/50104e3b49e6c426919fe164dc01b71fdcb9e49c .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/877befd1e4bf4316fb054c9cbcdbdc0ea5e438a3 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o: ../src/cube/mainCubeMeteo.c  .generated_files/flags/default/8b26a29f8a8e079a262931f34891981c957286b2 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ../src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/cubeCommon.o: ../src/cube/cubeCommon.c  .generated_files/flags/default/64e9a441de00090f29d2625ebe1079ea0653b1c3 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d" -o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ../src/cube/cubeCommon.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/428692892/HC-SR04.o: ../src/drivers/HCSR04/HC-SR04.c  .generated_files/flags/default/6bbd65d8ff93d27f8ec01d9d4d5b3f1dfe24c5e2 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/428692892" 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o.d 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/428692892/HC-SR04.o.d" -o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ../src/drivers/HCSR04/HC-SR04.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367680316/LM75A.o: ../src/drivers/LM75A/LM75A.c  .generated_files/flags/default/24e04bed9bf2e1cc196a007d8114205e97165bcb .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1367680316" 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367680316/LM75A.o.d" -o ${OBJECTDIR}/_ext/1367680316/LM75A.o ../src/drivers/LM75A/LM75A.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098102801/PCF8563.o: ../src/drivers/PCF8563/PCF8563.c  .generated_files/flags/default/8a7db34ec7f688e0b2c14eba6f022a4ad57dd439 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1098102801" 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098102801/PCF8563.o.d" -o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ../src/drivers/PCF8563/PCF8563.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/672751358/SAA1064T.o: ../src/drivers/SAA1064T/SAA1064T.c  .generated_files/flags/default/2cad3605f7678fb28b0b8b35caf261df1b172345 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/672751358" 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/672751358/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ../src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/780438209/TM1638.o: ../src/drivers/TM1638/TM1638.c  .generated_files/flags/default/5b5918d06cf54d0b467fe3926dd24f0992beaf70 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/780438209" 
	@${RM} ${OBJECTDIR}/_ext/780438209/TM1638.o.d 
	@${RM} ${OBJECTDIR}/_ext/780438209/TM1638.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/780438209/TM1638.o.d" -o ${OBJECTDIR}/_ext/780438209/TM1638.o ../src/drivers/TM1638/TM1638.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1259047745/WS2812b.o: ../src/drivers/WS2812b/WS2812b.c  .generated_files/flags/default/efe470fd6752cd4e8560e45b2e983f9fd77e1024 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1259047745" 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1259047745/WS2812b.o.d" -o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ../src/drivers/WS2812b/WS2812b.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mainCube.o: ../src/mainCube.c  .generated_files/flags/default/63ae20cb29351c9d31e7ed2411ce7b7091caefcd .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mainCube.o.d" -o ${OBJECTDIR}/_ext/1360937237/mainCube.o ../src/mainCube.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1571292264/7segments.o: ../src/common/7seg/7segments.c  .generated_files/flags/default/ffb992fce2bbe72b8c22ddc28ebe396034d93c1c .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segments.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segments.o ../src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o: ../src/common/7seg/7segmentsOutputStream.c  .generated_files/flags/default/93d35b42577330c319d44e2bd4e1d738b206a38b .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1571292264" 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/1571292264/7segmentsOutputStream.o ../src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clock.o: ../src/common/clock/clock.c  .generated_files/flags/default/906f9d949e023184a6b9a2ea174ce709c0d0e0af .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clock.o.d" -o ${OBJECTDIR}/_ext/1505855908/clock.o ../src/common/clock/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1505855908/clockStream.o: ../src/common/clock/clockStream.c  .generated_files/flags/default/c109d46446c06081cb090801c5355fca7e8fd460 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1505855908" 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505855908/clockStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505855908/clockStream.o.d" -o ${OBJECTDIR}/_ext/1505855908/clockStream.o ../src/common/clock/clockStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1506567961/delay.o: ../src/common/delay/delay.c  .generated_files/flags/default/bceae36fb2f1a1b1e55765ea60816a12c91fae4f .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1506567961" 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506567961/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506567961/delay.o.d" -o ${OBJECTDIR}/_ext/1506567961/delay.o ../src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/529250520/displayUtils.o: ../src/common/display/displayUtils.c  .generated_files/flags/default/278548ee006019b46e3d87c2e59f9252a58da9a6 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/529250520" 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/529250520/displayUtils.o.d" -o ${OBJECTDIR}/_ext/529250520/displayUtils.o ../src/common/display/displayUtils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/529250520/displayStream.o: ../src/common/display/displayStream.c  .generated_files/flags/default/35feabef9440822679c742f851b61652883281a0 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/529250520" 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/529250520/displayStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/529250520/displayStream.o.d" -o ${OBJECTDIR}/_ext/529250520/displayStream.o ../src/common/display/displayStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1507884958/error.o: ../src/common/error/error.c  .generated_files/flags/default/8b60bf6045257bbe9f35c2167c280a51415c2e7b .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1507884958" 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507884958/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1507884958/error.o.d" -o ${OBJECTDIR}/_ext/1507884958/error.o ../src/common/error/error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/383772639/buffer.o: ../src/common/IO/buffer/buffer.c  .generated_files/flags/default/4706a523220e0c0e95ee6e0a156bf471f7cebd47 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/383772639" 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/383772639/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/383772639/buffer.o.d" -o ${OBJECTDIR}/_ext/383772639/buffer.o ../src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/242462784/outputStream.o: ../src/common/IO/outputStream/outputStream.c  .generated_files/flags/default/7d3962a398017439b7f53a16349a8ef66c2918da .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/242462784" 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/242462784/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/242462784/outputStream.o.d" -o ${OBJECTDIR}/_ext/242462784/outputStream.o ../src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1038083393/printWriter.o: ../src/common/IO/printWriter/printWriter.c  .generated_files/flags/default/918a465e96d144884f5d7d4bec9a233bc8f8dcff .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1038083393" 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1038083393/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1038083393/printWriter.o.d" -o ${OBJECTDIR}/_ext/1038083393/printWriter.o ../src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919093983/led.o: ../src/common/led/led.c  .generated_files/flags/default/3f91c68b9d2741572a56a963319103223ee75f5c .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/919093983" 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/919093983/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919093983/led.o.d" -o ${OBJECTDIR}/_ext/919093983/led.o ../src/common/led/led.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGB.o: ../src/common/RGB/RGB.c  .generated_files/flags/default/c4924b1a9cd2a6a494d937c83e57027a580245d5 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGB.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGB.o.d" -o ${OBJECTDIR}/_ext/919119933/RGB.o ../src/common/RGB/RGB.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/919119933/RGBStream.o: ../src/common/RGB/RGBStream.c  .generated_files/flags/default/bed1b03cd553aea8fffd79071cb67842a9f80588 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/919119933" 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/919119933/RGBStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/919119933/RGBStream.o.d" -o ${OBJECTDIR}/_ext/919119933/RGBStream.o ../src/common/RGB/RGBStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distance.o: ../src/common/sensor/distance/distance.c  .generated_files/flags/default/1dc9c04083069534213a6da0071bb926cbf44434 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distance.o.d" -o ${OBJECTDIR}/_ext/99833024/distance.o ../src/common/sensor/distance/distance.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/99833024/distanceStream.o: ../src/common/sensor/distance/distanceStream.c  .generated_files/flags/default/80f33b075f95ba9baf59d3c54f3310298eeff4be .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/99833024" 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/99833024/distanceStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/99833024/distanceStream.o.d" -o ${OBJECTDIR}/_ext/99833024/distanceStream.o ../src/common/sensor/distance/distanceStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o: ../src/common/sensor/frequencyCounter/frequencyCounterStream.c  .generated_files/flags/default/4416d8240449606d61a189a8eaf1596ef1dedd3d .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/991344331" 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o.d" -o ${OBJECTDIR}/_ext/991344331/frequencyCounterStream.o ../src/common/sensor/frequencyCounter/frequencyCounterStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o: ../src/common/sensor/frequencyCounter/frequencyCounterUtils.c  .generated_files/flags/default/99b833d12c641cd794bd079ad7d51de6a6dba002 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/991344331" 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o.d" -o ${OBJECTDIR}/_ext/991344331/frequencyCounterUtils.o ../src/common/sensor/frequencyCounter/frequencyCounterUtils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/991344331/frequencyCounter.o: ../src/common/sensor/frequencyCounter/frequencyCounter.c  .generated_files/flags/default/ae96adc2c6d455b04a9aa231bca03e5cdf6c0cc2 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/991344331" 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/991344331/frequencyCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/991344331/frequencyCounter.o.d" -o ${OBJECTDIR}/_ext/991344331/frequencyCounter.o ../src/common/sensor/frequencyCounter/frequencyCounter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperatureStream.o: ../src/common/sensor/temperature/temperatureStream.c  .generated_files/flags/default/b016c2ec0864eaa27d35a7c0d090e1f7c91c84ad .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperatureStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperatureStream.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperatureStream.o ../src/common/sensor/temperature/temperatureStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1240316727/temperature.o: ../src/common/sensor/temperature/temperature.c  .generated_files/flags/default/c5c14f9440fc34394de166b988d8c437500d0768 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1240316727" 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1240316727/temperature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1240316727/temperature.o.d" -o ${OBJECTDIR}/_ext/1240316727/temperature.o ../src/common/sensor/temperature/temperature.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serialOutpuStream.o: ../src/common/serial/serialOutpuStream.c  .generated_files/flags/default/14b0ce72ad7b98731db1305da891cd99dbf8362 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serialOutpuStream.o.d" -o ${OBJECTDIR}/_ext/111410402/serialOutpuStream.o ../src/common/serial/serialOutpuStream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111410402/serial.o: ../src/common/serial/serial.c  .generated_files/flags/default/dcdb039c41a3423de83cbd88b96800a779f5c2c1 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/111410402" 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/111410402/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111410402/serial.o.d" -o ${OBJECTDIR}/_ext/111410402/serial.o ../src/common/serial/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92899495/system.o: ../src/common/system/system.c  .generated_files/flags/default/f2771477882f55dc3590fc9106c5de242e488339 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/92899495" 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/92899495/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/92899495/system.o.d" -o ${OBJECTDIR}/_ext/92899495/system.o ../src/common/system/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/79239498/timer1.o: ../src/common/timer1/timer1.c  .generated_files/flags/default/c507a5fb469cdd3da52f4ec562967f6d4d224529 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/79239498" 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/79239498/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/79239498/timer1.o.d" -o ${OBJECTDIR}/_ext/79239498/timer1.o ../src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1522154941/uart5.o: ../src/common/uart5/uart5.c  .generated_files/flags/default/72677161ee28ec907c7fbb1b88ebb1defc5ec123 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1522154941" 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1522154941/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1522154941/uart5.o.d" -o ${OBJECTDIR}/_ext/1522154941/uart5.o ../src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/5a24d1f551e667992cf9ac10d880f7df323e13df .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  .generated_files/flags/default/360984246d7b2121c0951ffe41526dee8b0038a6 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/bb75bb6a0cc67d5a99fb37c73e64005b0884009b .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/578c86698909c91a60eb876edbd3ced9b6035a36 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/a7addd1d06698dfae8819f69b481a64426ebd170 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/5da6a1ea8e507b957a1b122b9cc8cfefbea0d971 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/ae7e828d3b58916f08e83fde7c202b2aed594a0b .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c1_master.o ../src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap1.o: ../src/config/default/peripheral/icap/plib_icap1.c  .generated_files/flags/default/97e2d0d09b840cf8d5a2a20313ae00ec3beb77ae .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ../src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap2.o: ../src/config/default/peripheral/icap/plib_icap2.c  .generated_files/flags/default/bc314902d75cac4c77d8d083fd4550fa65ee5f33 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ../src/config/default/peripheral/icap/plib_icap2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o: ../src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/flags/default/76ef004cf1e9f4d06cf085479d00a0905fe2105 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ../src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/f43d9999029a9884622e46870bb952f8ef35cac8 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr4.o: ../src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/flags/default/867d4c59e9b40a1f307b25003a1eecddde9bcd91 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ../src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/a2a48f055e6024da4e4404f4f9fcafd51fea606 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/1204518d10a3f7a9e5f27d9f837da82914a1a39 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/f74dc101217dc912ed797484f23de43f35aee0e0 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/b281f33f81500edcfb2e8e9d25400339e6d89436 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/5cb33cd03495a4544e5f90af4c770d24a1814857 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/8b7a02980fc34eac9b4be306f2a7f0e3504c1de3 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/926038ef3e8548a461331c4710a5ab198af18d9f .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o: ../src/cube/mainCubeMeteo.c  .generated_files/flags/default/46c2028a5049f72c517d419186eedd9aface89ad .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1019397905/mainCubeMeteo.o ../src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1019397905/cubeCommon.o: ../src/cube/cubeCommon.c  .generated_files/flags/default/51815cdf9fe3a1656b02268f0551e7322fe79e0c .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1019397905" 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1019397905/cubeCommon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1019397905/cubeCommon.o.d" -o ${OBJECTDIR}/_ext/1019397905/cubeCommon.o ../src/cube/cubeCommon.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/428692892/HC-SR04.o: ../src/drivers/HCSR04/HC-SR04.c  .generated_files/flags/default/13be87b157c62ae6b32b5c9349fbfc2af59ce135 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/428692892" 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o.d 
	@${RM} ${OBJECTDIR}/_ext/428692892/HC-SR04.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/428692892/HC-SR04.o.d" -o ${OBJECTDIR}/_ext/428692892/HC-SR04.o ../src/drivers/HCSR04/HC-SR04.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1367680316/LM75A.o: ../src/drivers/LM75A/LM75A.c  .generated_files/flags/default/dd744b3db2c41e7124bd3f302bc4a9a0c0716263 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1367680316" 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367680316/LM75A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367680316/LM75A.o.d" -o ${OBJECTDIR}/_ext/1367680316/LM75A.o ../src/drivers/LM75A/LM75A.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1098102801/PCF8563.o: ../src/drivers/PCF8563/PCF8563.c  .generated_files/flags/default/e12206e33b90a912370d6c6122d07baeffe52038 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1098102801" 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098102801/PCF8563.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098102801/PCF8563.o.d" -o ${OBJECTDIR}/_ext/1098102801/PCF8563.o ../src/drivers/PCF8563/PCF8563.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/672751358/SAA1064T.o: ../src/drivers/SAA1064T/SAA1064T.c  .generated_files/flags/default/2ac98f1393d8920ded0d4e3687c354f90a54bdad .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/672751358" 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/672751358/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/672751358/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/672751358/SAA1064T.o ../src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/780438209/TM1638.o: ../src/drivers/TM1638/TM1638.c  .generated_files/flags/default/3236a8ef1820e3526b3e8aa38891c64edcb07271 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/780438209" 
	@${RM} ${OBJECTDIR}/_ext/780438209/TM1638.o.d 
	@${RM} ${OBJECTDIR}/_ext/780438209/TM1638.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/780438209/TM1638.o.d" -o ${OBJECTDIR}/_ext/780438209/TM1638.o ../src/drivers/TM1638/TM1638.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1259047745/WS2812b.o: ../src/drivers/WS2812b/WS2812b.c  .generated_files/flags/default/e4c63943d71ecce0ab0d6123ff3a07bd6e583c13 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1259047745" 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1259047745/WS2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1259047745/WS2812b.o.d" -o ${OBJECTDIR}/_ext/1259047745/WS2812b.o ../src/drivers/WS2812b/WS2812b.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mainCube.o: ../src/mainCube.c  .generated_files/flags/default/87766d448e5a4e95bb54a34555a4e10055bf1418 .generated_files/flags/default/ebdda6bafdfc241e6577e292f1f0dc6f1ec9b100
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mainCube.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mainCube.o.d" -o ${OBJECTDIR}/_ext/1360937237/mainCube.o ../src/mainCube.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MZ2048EFM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MZ2048EFM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/CubeDebMeteo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
