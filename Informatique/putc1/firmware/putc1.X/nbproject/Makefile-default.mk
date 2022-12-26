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
FINAL_IMAGE=${DISTDIR}/putc1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/putc1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../firmware/src/common/7seg/7segments.c ../../../firmware/src/common/7seg/7segmentsOutputStream.c ../../../firmware/src/common/clock/clock.c ../../../firmware/src/common/clock/clockStream.c ../../../firmware/src/common/delay/delay.c ../../../firmware/src/common/display/displayUtils.c ../../../firmware/src/common/display/displayStream.c ../../../firmware/src/common/error/error.c ../../../firmware/src/common/IO/buffer/buffer.c ../../../firmware/src/common/IO/outputStream/outputStream.c ../../../firmware/src/common/IO/printWriter/printWriter.c ../../../firmware/src/common/led/led.c ../../../firmware/src/common/RGB/RGB.c ../../../firmware/src/common/RGB/RGBStream.c ../../../firmware/src/common/sensor/distance/distance.c ../../../firmware/src/common/sensor/distance/distanceStream.c ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterStream.c ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterUtils.c ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounter.c ../../../firmware/src/common/sensor/temperature/temperatureStream.c ../../../firmware/src/common/sensor/temperature/temperature.c ../../../firmware/src/common/serial/serialOutpuStream.c ../../../firmware/src/common/serial/serial.c ../../../firmware/src/common/system/system.c ../../../firmware/src/common/timer1/timer1.c ../../../firmware/src/common/uart5/uart5.c ../../../firmware/src/config/default/peripheral/adchs/plib_adchs.c ../../../firmware/src/config/default/peripheral/cache/plib_cache.c ../../../firmware/src/config/default/peripheral/cache/plib_cache_pic32mz.S ../../../firmware/src/config/default/peripheral/clk/plib_clk.c ../../../firmware/src/config/default/peripheral/coretimer/plib_coretimer.c ../../../firmware/src/config/default/peripheral/evic/plib_evic.c ../../../firmware/src/config/default/peripheral/gpio/plib_gpio.c ../../../firmware/src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../../../firmware/src/config/default/peripheral/icap/plib_icap1.c ../../../firmware/src/config/default/peripheral/icap/plib_icap2.c ../../../firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c ../../../firmware/src/config/default/peripheral/tmr/plib_tmr2.c ../../../firmware/src/config/default/peripheral/tmr/plib_tmr4.c ../../../firmware/src/config/default/peripheral/tmr1/plib_tmr1.c ../../../firmware/src/config/default/peripheral/uart/plib_uart2.c ../../../firmware/src/config/default/peripheral/uart/plib_uart5.c ../../../firmware/src/config/default/stdio/xc32_monitor.c ../../../firmware/src/config/default/initialization.c ../../../firmware/src/config/default/interrupts.c ../../../firmware/src/config/default/exceptions.c ../../../firmware/src/cube/mainCubeMeteo.c ../../../firmware/src/cube/cubeCommon.c ../../../firmware/src/drivers/HCSR04/HC-SR04.c ../../../firmware/src/drivers/LM75A/LM75A.c ../../../firmware/src/drivers/PCF8563/PCF8563.c ../../../firmware/src/drivers/SAA1064T/SAA1064T.c ../../../firmware/src/drivers/TM1638/TM1638.c ../../../firmware/src/drivers/WS2812b/WS2812b.c ../../../firmware/src/mainCube.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/851394098/7segments.o ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o ${OBJECTDIR}/_ext/663849242/clock.o ${OBJECTDIR}/_ext/663849242/clockStream.o ${OBJECTDIR}/_ext/664561295/delay.o ${OBJECTDIR}/_ext/1185303858/displayUtils.o ${OBJECTDIR}/_ext/1185303858/displayStream.o ${OBJECTDIR}/_ext/665878292/error.o ${OBJECTDIR}/_ext/1964457045/buffer.o ${OBJECTDIR}/_ext/1795468234/outputStream.o ${OBJECTDIR}/_ext/1249438347/printWriter.o ${OBJECTDIR}/_ext/1496505833/led.o ${OBJECTDIR}/_ext/1496531783/RGB.o ${OBJECTDIR}/_ext/1496531783/RGBStream.o ${OBJECTDIR}/_ext/1938097994/distance.o ${OBJECTDIR}/_ext/1938097994/distanceStream.o ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o ${OBJECTDIR}/_ext/414422291/temperatureStream.o ${OBJECTDIR}/_ext/414422291/temperature.o ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o ${OBJECTDIR}/_ext/443813272/serial.o ${OBJECTDIR}/_ext/425302365/system.o ${OBJECTDIR}/_ext/411642368/timer1.o ${OBJECTDIR}/_ext/680148275/uart5.o ${OBJECTDIR}/_ext/652511389/plib_adchs.o ${OBJECTDIR}/_ext/650753734/plib_cache.o ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1725814566/plib_clk.o ${OBJECTDIR}/_ext/433012926/plib_coretimer.o ${OBJECTDIR}/_ext/1960574765/plib_evic.o ${OBJECTDIR}/_ext/1960520937/plib_gpio.o ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o ${OBJECTDIR}/_ext/1960474095/plib_icap1.o ${OBJECTDIR}/_ext/1960474095/plib_icap2.o ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o ${OBJECTDIR}/_ext/1960117994/plib_uart2.o ${OBJECTDIR}/_ext/1960117994/plib_uart5.o ${OBJECTDIR}/_ext/120884062/xc32_monitor.o ${OBJECTDIR}/_ext/543063388/initialization.o ${OBJECTDIR}/_ext/543063388/interrupts.o ${OBJECTDIR}/_ext/543063388/exceptions.o ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o ${OBJECTDIR}/_ext/1109855845/cubeCommon.o ${OBJECTDIR}/_ext/1285861486/HC-SR04.o ${OBJECTDIR}/_ext/1700083186/LM75A.o ${OBJECTDIR}/_ext/1585286329/PCF8563.o ${OBJECTDIR}/_ext/907933048/SAA1064T.o ${OBJECTDIR}/_ext/934116169/TM1638.o ${OBJECTDIR}/_ext/352530421/WS2812b.o ${OBJECTDIR}/_ext/1909040673/mainCube.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/851394098/7segments.o.d ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o.d ${OBJECTDIR}/_ext/663849242/clock.o.d ${OBJECTDIR}/_ext/663849242/clockStream.o.d ${OBJECTDIR}/_ext/664561295/delay.o.d ${OBJECTDIR}/_ext/1185303858/displayUtils.o.d ${OBJECTDIR}/_ext/1185303858/displayStream.o.d ${OBJECTDIR}/_ext/665878292/error.o.d ${OBJECTDIR}/_ext/1964457045/buffer.o.d ${OBJECTDIR}/_ext/1795468234/outputStream.o.d ${OBJECTDIR}/_ext/1249438347/printWriter.o.d ${OBJECTDIR}/_ext/1496505833/led.o.d ${OBJECTDIR}/_ext/1496531783/RGB.o.d ${OBJECTDIR}/_ext/1496531783/RGBStream.o.d ${OBJECTDIR}/_ext/1938097994/distance.o.d ${OBJECTDIR}/_ext/1938097994/distanceStream.o.d ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o.d ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o.d ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o.d ${OBJECTDIR}/_ext/414422291/temperatureStream.o.d ${OBJECTDIR}/_ext/414422291/temperature.o.d ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o.d ${OBJECTDIR}/_ext/443813272/serial.o.d ${OBJECTDIR}/_ext/425302365/system.o.d ${OBJECTDIR}/_ext/411642368/timer1.o.d ${OBJECTDIR}/_ext/680148275/uart5.o.d ${OBJECTDIR}/_ext/652511389/plib_adchs.o.d ${OBJECTDIR}/_ext/650753734/plib_cache.o.d ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1725814566/plib_clk.o.d ${OBJECTDIR}/_ext/433012926/plib_coretimer.o.d ${OBJECTDIR}/_ext/1960574765/plib_evic.o.d ${OBJECTDIR}/_ext/1960520937/plib_gpio.o.d ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o.d ${OBJECTDIR}/_ext/1960474095/plib_icap1.o.d ${OBJECTDIR}/_ext/1960474095/plib_icap2.o.d ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o.d ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o.d ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o.d ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o.d ${OBJECTDIR}/_ext/1960117994/plib_uart2.o.d ${OBJECTDIR}/_ext/1960117994/plib_uart5.o.d ${OBJECTDIR}/_ext/120884062/xc32_monitor.o.d ${OBJECTDIR}/_ext/543063388/initialization.o.d ${OBJECTDIR}/_ext/543063388/interrupts.o.d ${OBJECTDIR}/_ext/543063388/exceptions.o.d ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o.d ${OBJECTDIR}/_ext/1109855845/cubeCommon.o.d ${OBJECTDIR}/_ext/1285861486/HC-SR04.o.d ${OBJECTDIR}/_ext/1700083186/LM75A.o.d ${OBJECTDIR}/_ext/1585286329/PCF8563.o.d ${OBJECTDIR}/_ext/907933048/SAA1064T.o.d ${OBJECTDIR}/_ext/934116169/TM1638.o.d ${OBJECTDIR}/_ext/352530421/WS2812b.o.d ${OBJECTDIR}/_ext/1909040673/mainCube.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/851394098/7segments.o ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o ${OBJECTDIR}/_ext/663849242/clock.o ${OBJECTDIR}/_ext/663849242/clockStream.o ${OBJECTDIR}/_ext/664561295/delay.o ${OBJECTDIR}/_ext/1185303858/displayUtils.o ${OBJECTDIR}/_ext/1185303858/displayStream.o ${OBJECTDIR}/_ext/665878292/error.o ${OBJECTDIR}/_ext/1964457045/buffer.o ${OBJECTDIR}/_ext/1795468234/outputStream.o ${OBJECTDIR}/_ext/1249438347/printWriter.o ${OBJECTDIR}/_ext/1496505833/led.o ${OBJECTDIR}/_ext/1496531783/RGB.o ${OBJECTDIR}/_ext/1496531783/RGBStream.o ${OBJECTDIR}/_ext/1938097994/distance.o ${OBJECTDIR}/_ext/1938097994/distanceStream.o ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o ${OBJECTDIR}/_ext/414422291/temperatureStream.o ${OBJECTDIR}/_ext/414422291/temperature.o ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o ${OBJECTDIR}/_ext/443813272/serial.o ${OBJECTDIR}/_ext/425302365/system.o ${OBJECTDIR}/_ext/411642368/timer1.o ${OBJECTDIR}/_ext/680148275/uart5.o ${OBJECTDIR}/_ext/652511389/plib_adchs.o ${OBJECTDIR}/_ext/650753734/plib_cache.o ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1725814566/plib_clk.o ${OBJECTDIR}/_ext/433012926/plib_coretimer.o ${OBJECTDIR}/_ext/1960574765/plib_evic.o ${OBJECTDIR}/_ext/1960520937/plib_gpio.o ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o ${OBJECTDIR}/_ext/1960474095/plib_icap1.o ${OBJECTDIR}/_ext/1960474095/plib_icap2.o ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o ${OBJECTDIR}/_ext/1960117994/plib_uart2.o ${OBJECTDIR}/_ext/1960117994/plib_uart5.o ${OBJECTDIR}/_ext/120884062/xc32_monitor.o ${OBJECTDIR}/_ext/543063388/initialization.o ${OBJECTDIR}/_ext/543063388/interrupts.o ${OBJECTDIR}/_ext/543063388/exceptions.o ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o ${OBJECTDIR}/_ext/1109855845/cubeCommon.o ${OBJECTDIR}/_ext/1285861486/HC-SR04.o ${OBJECTDIR}/_ext/1700083186/LM75A.o ${OBJECTDIR}/_ext/1585286329/PCF8563.o ${OBJECTDIR}/_ext/907933048/SAA1064T.o ${OBJECTDIR}/_ext/934116169/TM1638.o ${OBJECTDIR}/_ext/352530421/WS2812b.o ${OBJECTDIR}/_ext/1909040673/mainCube.o

# Source Files
SOURCEFILES=../../../firmware/src/common/7seg/7segments.c ../../../firmware/src/common/7seg/7segmentsOutputStream.c ../../../firmware/src/common/clock/clock.c ../../../firmware/src/common/clock/clockStream.c ../../../firmware/src/common/delay/delay.c ../../../firmware/src/common/display/displayUtils.c ../../../firmware/src/common/display/displayStream.c ../../../firmware/src/common/error/error.c ../../../firmware/src/common/IO/buffer/buffer.c ../../../firmware/src/common/IO/outputStream/outputStream.c ../../../firmware/src/common/IO/printWriter/printWriter.c ../../../firmware/src/common/led/led.c ../../../firmware/src/common/RGB/RGB.c ../../../firmware/src/common/RGB/RGBStream.c ../../../firmware/src/common/sensor/distance/distance.c ../../../firmware/src/common/sensor/distance/distanceStream.c ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterStream.c ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterUtils.c ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounter.c ../../../firmware/src/common/sensor/temperature/temperatureStream.c ../../../firmware/src/common/sensor/temperature/temperature.c ../../../firmware/src/common/serial/serialOutpuStream.c ../../../firmware/src/common/serial/serial.c ../../../firmware/src/common/system/system.c ../../../firmware/src/common/timer1/timer1.c ../../../firmware/src/common/uart5/uart5.c ../../../firmware/src/config/default/peripheral/adchs/plib_adchs.c ../../../firmware/src/config/default/peripheral/cache/plib_cache.c ../../../firmware/src/config/default/peripheral/cache/plib_cache_pic32mz.S ../../../firmware/src/config/default/peripheral/clk/plib_clk.c ../../../firmware/src/config/default/peripheral/coretimer/plib_coretimer.c ../../../firmware/src/config/default/peripheral/evic/plib_evic.c ../../../firmware/src/config/default/peripheral/gpio/plib_gpio.c ../../../firmware/src/config/default/peripheral/i2c/master/plib_i2c1_master.c ../../../firmware/src/config/default/peripheral/icap/plib_icap1.c ../../../firmware/src/config/default/peripheral/icap/plib_icap2.c ../../../firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c ../../../firmware/src/config/default/peripheral/tmr/plib_tmr2.c ../../../firmware/src/config/default/peripheral/tmr/plib_tmr4.c ../../../firmware/src/config/default/peripheral/tmr1/plib_tmr1.c ../../../firmware/src/config/default/peripheral/uart/plib_uart2.c ../../../firmware/src/config/default/peripheral/uart/plib_uart5.c ../../../firmware/src/config/default/stdio/xc32_monitor.c ../../../firmware/src/config/default/initialization.c ../../../firmware/src/config/default/interrupts.c ../../../firmware/src/config/default/exceptions.c ../../../firmware/src/cube/mainCubeMeteo.c ../../../firmware/src/cube/cubeCommon.c ../../../firmware/src/drivers/HCSR04/HC-SR04.c ../../../firmware/src/drivers/LM75A/LM75A.c ../../../firmware/src/drivers/PCF8563/PCF8563.c ../../../firmware/src/drivers/SAA1064T/SAA1064T.c ../../../firmware/src/drivers/TM1638/TM1638.c ../../../firmware/src/drivers/WS2812b/WS2812b.c ../../../firmware/src/mainCube.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/putc1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=,--script="../../../firmware/src/config/default/p32MZ2048EFM100.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o: ../../../firmware/src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/default/ccffdd3df2ed4843f7fd4547fab08555e7f81f50 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/650753734" 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o ../../../firmware/src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o: ../../../firmware/src/config/default/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/default/ce476a1756b5ef792b51c2172ef7f21936c5619d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/650753734" 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o ../../../firmware/src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/650753734/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/851394098/7segments.o: ../../../firmware/src/common/7seg/7segments.c  .generated_files/flags/default/4282781d2acf515338eaf607425f65a5f2d1b2d1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/851394098" 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/851394098/7segments.o.d" -o ${OBJECTDIR}/_ext/851394098/7segments.o ../../../firmware/src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o: ../../../firmware/src/common/7seg/7segmentsOutputStream.c  .generated_files/flags/default/efa03b72de46b386e369dcf891f282441a4475f5 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/851394098" 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o ../../../firmware/src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/663849242/clock.o: ../../../firmware/src/common/clock/clock.c  .generated_files/flags/default/58a3d7ebfbc9de102e62777ac4bffa117ea34501 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/663849242" 
	@${RM} ${OBJECTDIR}/_ext/663849242/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/663849242/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/663849242/clock.o.d" -o ${OBJECTDIR}/_ext/663849242/clock.o ../../../firmware/src/common/clock/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/663849242/clockStream.o: ../../../firmware/src/common/clock/clockStream.c  .generated_files/flags/default/3c0ffcd5d4d45e102b2fd76e9868301a6d69fc6b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/663849242" 
	@${RM} ${OBJECTDIR}/_ext/663849242/clockStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/663849242/clockStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/663849242/clockStream.o.d" -o ${OBJECTDIR}/_ext/663849242/clockStream.o ../../../firmware/src/common/clock/clockStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/664561295/delay.o: ../../../firmware/src/common/delay/delay.c  .generated_files/flags/default/c08a855658749d6031709698c8bd434688fc88c2 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/664561295" 
	@${RM} ${OBJECTDIR}/_ext/664561295/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/664561295/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/664561295/delay.o.d" -o ${OBJECTDIR}/_ext/664561295/delay.o ../../../firmware/src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1185303858/displayUtils.o: ../../../firmware/src/common/display/displayUtils.c  .generated_files/flags/default/a585bc0e73a582a4ee36feffc532b216d0668d83 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1185303858" 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1185303858/displayUtils.o.d" -o ${OBJECTDIR}/_ext/1185303858/displayUtils.o ../../../firmware/src/common/display/displayUtils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1185303858/displayStream.o: ../../../firmware/src/common/display/displayStream.c  .generated_files/flags/default/96d05aefaf720c6cc38d696b9615470afd5570dd .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1185303858" 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1185303858/displayStream.o.d" -o ${OBJECTDIR}/_ext/1185303858/displayStream.o ../../../firmware/src/common/display/displayStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/665878292/error.o: ../../../firmware/src/common/error/error.c  .generated_files/flags/default/d24070043694ceaff5f88d0c00173f5aa7844126 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/665878292" 
	@${RM} ${OBJECTDIR}/_ext/665878292/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/665878292/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/665878292/error.o.d" -o ${OBJECTDIR}/_ext/665878292/error.o ../../../firmware/src/common/error/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1964457045/buffer.o: ../../../firmware/src/common/IO/buffer/buffer.c  .generated_files/flags/default/f9700ba162c43891d55430b392c0e573bf4f2165 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1964457045" 
	@${RM} ${OBJECTDIR}/_ext/1964457045/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964457045/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1964457045/buffer.o.d" -o ${OBJECTDIR}/_ext/1964457045/buffer.o ../../../firmware/src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1795468234/outputStream.o: ../../../firmware/src/common/IO/outputStream/outputStream.c  .generated_files/flags/default/a167c9f38a20ee3231baaaa58181496247453f70 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1795468234" 
	@${RM} ${OBJECTDIR}/_ext/1795468234/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1795468234/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1795468234/outputStream.o.d" -o ${OBJECTDIR}/_ext/1795468234/outputStream.o ../../../firmware/src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249438347/printWriter.o: ../../../firmware/src/common/IO/printWriter/printWriter.c  .generated_files/flags/default/5e275c2568bf25dcb39f0ece6ab69bff88b7625b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1249438347" 
	@${RM} ${OBJECTDIR}/_ext/1249438347/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249438347/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249438347/printWriter.o.d" -o ${OBJECTDIR}/_ext/1249438347/printWriter.o ../../../firmware/src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1496505833/led.o: ../../../firmware/src/common/led/led.c  .generated_files/flags/default/359a7ac85ef133b8896a2c386b8b5e1682fa8145 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1496505833" 
	@${RM} ${OBJECTDIR}/_ext/1496505833/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496505833/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496505833/led.o.d" -o ${OBJECTDIR}/_ext/1496505833/led.o ../../../firmware/src/common/led/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1496531783/RGB.o: ../../../firmware/src/common/RGB/RGB.c  .generated_files/flags/default/a777a40606454dea1dda83e069b4b6468e661ebb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1496531783" 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGB.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496531783/RGB.o.d" -o ${OBJECTDIR}/_ext/1496531783/RGB.o ../../../firmware/src/common/RGB/RGB.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1496531783/RGBStream.o: ../../../firmware/src/common/RGB/RGBStream.c  .generated_files/flags/default/3e698678b684f9e82b5cdf849e9c2b3eec7a6e9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1496531783" 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGBStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGBStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496531783/RGBStream.o.d" -o ${OBJECTDIR}/_ext/1496531783/RGBStream.o ../../../firmware/src/common/RGB/RGBStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1938097994/distance.o: ../../../firmware/src/common/sensor/distance/distance.c  .generated_files/flags/default/b792f95b47364867d7915fc59a33d2029df0dc58 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1938097994" 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1938097994/distance.o.d" -o ${OBJECTDIR}/_ext/1938097994/distance.o ../../../firmware/src/common/sensor/distance/distance.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1938097994/distanceStream.o: ../../../firmware/src/common/sensor/distance/distanceStream.c  .generated_files/flags/default/f11fd9db748d9cad1ebc6945eb70c26c0e23a912 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1938097994" 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distanceStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distanceStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1938097994/distanceStream.o.d" -o ${OBJECTDIR}/_ext/1938097994/distanceStream.o ../../../firmware/src/common/sensor/distance/distanceStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o: ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterStream.c  .generated_files/flags/default/2b86e1fb51633e3443686d8533b8094fce8b023f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1460536513" 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o.d" -o ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o: ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterUtils.c  .generated_files/flags/default/82414e462afd8b280a0068d446ffcfc214c4e65d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1460536513" 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o.d" -o ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterUtils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1460536513/frequencyCounter.o: ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounter.c  .generated_files/flags/default/2655bfcfd8146eb5026ec15e27eb6ff6c5788354 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1460536513" 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1460536513/frequencyCounter.o.d" -o ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/414422291/temperatureStream.o: ../../../firmware/src/common/sensor/temperature/temperatureStream.c  .generated_files/flags/default/98b7995d56819ae22cada3d82cf95774812fadb1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/414422291" 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperatureStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperatureStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/414422291/temperatureStream.o.d" -o ${OBJECTDIR}/_ext/414422291/temperatureStream.o ../../../firmware/src/common/sensor/temperature/temperatureStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/414422291/temperature.o: ../../../firmware/src/common/sensor/temperature/temperature.c  .generated_files/flags/default/99fd71af3cea562916e3b232f697d7f009d4d1eb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/414422291" 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperature.o.d 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/414422291/temperature.o.d" -o ${OBJECTDIR}/_ext/414422291/temperature.o ../../../firmware/src/common/sensor/temperature/temperature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/443813272/serialOutpuStream.o: ../../../firmware/src/common/serial/serialOutpuStream.c  .generated_files/flags/default/4361a9b04c5c09ce6a0a278ea9f7eb94ef48edd .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/443813272" 
	@${RM} ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/443813272/serialOutpuStream.o.d" -o ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o ../../../firmware/src/common/serial/serialOutpuStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/443813272/serial.o: ../../../firmware/src/common/serial/serial.c  .generated_files/flags/default/d388a13a1aeba0ef84d35c0a11a70d9e88c328e7 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/443813272" 
	@${RM} ${OBJECTDIR}/_ext/443813272/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/443813272/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/443813272/serial.o.d" -o ${OBJECTDIR}/_ext/443813272/serial.o ../../../firmware/src/common/serial/serial.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/425302365/system.o: ../../../firmware/src/common/system/system.c  .generated_files/flags/default/754451e606f1b095d0bfcfbbbb634edc29a69c77 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/425302365" 
	@${RM} ${OBJECTDIR}/_ext/425302365/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/425302365/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/425302365/system.o.d" -o ${OBJECTDIR}/_ext/425302365/system.o ../../../firmware/src/common/system/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/411642368/timer1.o: ../../../firmware/src/common/timer1/timer1.c  .generated_files/flags/default/9e942bb99e085bd33699c959ac5dc32a5e09990f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/411642368" 
	@${RM} ${OBJECTDIR}/_ext/411642368/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/411642368/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/411642368/timer1.o.d" -o ${OBJECTDIR}/_ext/411642368/timer1.o ../../../firmware/src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/680148275/uart5.o: ../../../firmware/src/common/uart5/uart5.c  .generated_files/flags/default/46f81a212e487f0d7b2a0df3b68957173b4e07dc .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/680148275" 
	@${RM} ${OBJECTDIR}/_ext/680148275/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/680148275/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/680148275/uart5.o.d" -o ${OBJECTDIR}/_ext/680148275/uart5.o ../../../firmware/src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/652511389/plib_adchs.o: ../../../firmware/src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/b8657f3e6b151673a58e0a64d3e0085ad0e34489 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/652511389" 
	@${RM} ${OBJECTDIR}/_ext/652511389/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/652511389/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/652511389/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/652511389/plib_adchs.o ../../../firmware/src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/650753734/plib_cache.o: ../../../firmware/src/config/default/peripheral/cache/plib_cache.c  .generated_files/flags/default/fecc02d128a9cd5dd1876f3f9784a44ba9f5e8bc .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/650753734" 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/650753734/plib_cache.o.d" -o ${OBJECTDIR}/_ext/650753734/plib_cache.o ../../../firmware/src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1725814566/plib_clk.o: ../../../firmware/src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/74a812b56fd89183156b93cffa43272120012ed1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1725814566" 
	@${RM} ${OBJECTDIR}/_ext/1725814566/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1725814566/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1725814566/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1725814566/plib_clk.o ../../../firmware/src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/433012926/plib_coretimer.o: ../../../firmware/src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/c4080ad31b0bdb6b182711c09249ffec0b69532e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/433012926" 
	@${RM} ${OBJECTDIR}/_ext/433012926/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/433012926/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/433012926/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/433012926/plib_coretimer.o ../../../firmware/src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960574765/plib_evic.o: ../../../firmware/src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/1d6af64cfe6200c5e25ab3a22cd63fcdd365834f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960574765" 
	@${RM} ${OBJECTDIR}/_ext/1960574765/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960574765/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960574765/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1960574765/plib_evic.o ../../../firmware/src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960520937/plib_gpio.o: ../../../firmware/src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/701905e9044a1eabb4be57552a556a7af962defb .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960520937" 
	@${RM} ${OBJECTDIR}/_ext/1960520937/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960520937/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960520937/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1960520937/plib_gpio.o ../../../firmware/src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o: ../../../firmware/src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/5f5c2a884345fe3f8480a5ca9e78e4647cdb5b4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/979448511" 
	@${RM} ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o ../../../firmware/src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960474095/plib_icap1.o: ../../../firmware/src/config/default/peripheral/icap/plib_icap1.c  .generated_files/flags/default/4774092dbfb23544184b52fd4cf2c0e80e1bdd9f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960474095" 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960474095/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1960474095/plib_icap1.o ../../../firmware/src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960474095/plib_icap2.o: ../../../firmware/src/config/default/peripheral/icap/plib_icap2.c  .generated_files/flags/default/a9431e239bd3bfc10a4a302f73d26b28b7406953 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960474095" 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960474095/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1960474095/plib_icap2.o ../../../firmware/src/config/default/peripheral/icap/plib_icap2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o: ../../../firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/flags/default/64e90883abfe7c2b306533c50a946b7bc37103f0 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960294977" 
	@${RM} ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o ../../../firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1725798191/plib_tmr2.o: ../../../firmware/src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/73cbd15adbcd038e7d6c510b8267c306a23d060b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1725798191" 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1725798191/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o ../../../firmware/src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1725798191/plib_tmr4.o: ../../../firmware/src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/flags/default/455d68dec4a06409b842b154ecb1acb40ef77749 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1725798191" 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1725798191/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o ../../../firmware/src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960136320/plib_tmr1.o: ../../../firmware/src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/6600e03dfe5155aaeca01da66b6651655d47d677 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960136320" 
	@${RM} ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960136320/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o ../../../firmware/src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960117994/plib_uart2.o: ../../../firmware/src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/eb6f556d63f25be083a2fb4a836ab6fb61d4b40b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960117994" 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960117994/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1960117994/plib_uart2.o ../../../firmware/src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960117994/plib_uart5.o: ../../../firmware/src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/6c7bf65343f802ebf50931aa3c619da9eb4e18f7 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960117994" 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960117994/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1960117994/plib_uart5.o ../../../firmware/src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/120884062/xc32_monitor.o: ../../../firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/fdce363f3304d6f91aa9806bc2aed1194e4ef35b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/120884062" 
	@${RM} ${OBJECTDIR}/_ext/120884062/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/120884062/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/120884062/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/120884062/xc32_monitor.o ../../../firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/543063388/initialization.o: ../../../firmware/src/config/default/initialization.c  .generated_files/flags/default/c91594818b6afa3bcd0d7ee85368b488777a0629 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/543063388" 
	@${RM} ${OBJECTDIR}/_ext/543063388/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/543063388/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/543063388/initialization.o.d" -o ${OBJECTDIR}/_ext/543063388/initialization.o ../../../firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/543063388/interrupts.o: ../../../firmware/src/config/default/interrupts.c  .generated_files/flags/default/bcef28cbb88d56c7df8e4c0bf1b9b92da60307b6 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/543063388" 
	@${RM} ${OBJECTDIR}/_ext/543063388/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/543063388/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/543063388/interrupts.o.d" -o ${OBJECTDIR}/_ext/543063388/interrupts.o ../../../firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/543063388/exceptions.o: ../../../firmware/src/config/default/exceptions.c  .generated_files/flags/default/2aac4d6e5af1833cfa5eebb4fa571bb1e981325d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/543063388" 
	@${RM} ${OBJECTDIR}/_ext/543063388/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/543063388/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/543063388/exceptions.o.d" -o ${OBJECTDIR}/_ext/543063388/exceptions.o ../../../firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o: ../../../firmware/src/cube/mainCubeMeteo.c  .generated_files/flags/default/634533a0b37a07fc1e571f5cb370d7fd1d4b033a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1109855845" 
	@${RM} ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o ../../../firmware/src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109855845/cubeCommon.o: ../../../firmware/src/cube/cubeCommon.c  .generated_files/flags/default/458a0a6328db82b2b15e367decb3d4d3f92c955f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1109855845" 
	@${RM} ${OBJECTDIR}/_ext/1109855845/cubeCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109855845/cubeCommon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1109855845/cubeCommon.o.d" -o ${OBJECTDIR}/_ext/1109855845/cubeCommon.o ../../../firmware/src/cube/cubeCommon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1285861486/HC-SR04.o: ../../../firmware/src/drivers/HCSR04/HC-SR04.c  .generated_files/flags/default/7ed31b86f612cd64fbfc550c62db8721ee105e52 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1285861486" 
	@${RM} ${OBJECTDIR}/_ext/1285861486/HC-SR04.o.d 
	@${RM} ${OBJECTDIR}/_ext/1285861486/HC-SR04.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1285861486/HC-SR04.o.d" -o ${OBJECTDIR}/_ext/1285861486/HC-SR04.o ../../../firmware/src/drivers/HCSR04/HC-SR04.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1700083186/LM75A.o: ../../../firmware/src/drivers/LM75A/LM75A.c  .generated_files/flags/default/3c556ba20db986a6ec1cfaad877d3000d5ab3068 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1700083186" 
	@${RM} ${OBJECTDIR}/_ext/1700083186/LM75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700083186/LM75A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1700083186/LM75A.o.d" -o ${OBJECTDIR}/_ext/1700083186/LM75A.o ../../../firmware/src/drivers/LM75A/LM75A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1585286329/PCF8563.o: ../../../firmware/src/drivers/PCF8563/PCF8563.c  .generated_files/flags/default/37ed22a8e50896127622bf1cef504acd41ab9811 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1585286329" 
	@${RM} ${OBJECTDIR}/_ext/1585286329/PCF8563.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585286329/PCF8563.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1585286329/PCF8563.o.d" -o ${OBJECTDIR}/_ext/1585286329/PCF8563.o ../../../firmware/src/drivers/PCF8563/PCF8563.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/907933048/SAA1064T.o: ../../../firmware/src/drivers/SAA1064T/SAA1064T.c  .generated_files/flags/default/167794f3c72424daeefb2ca444000d4eff488031 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/907933048" 
	@${RM} ${OBJECTDIR}/_ext/907933048/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/907933048/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907933048/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/907933048/SAA1064T.o ../../../firmware/src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/934116169/TM1638.o: ../../../firmware/src/drivers/TM1638/TM1638.c  .generated_files/flags/default/c0c877584f0b03a448ff8285fabe5e5bf3cc474b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/934116169" 
	@${RM} ${OBJECTDIR}/_ext/934116169/TM1638.o.d 
	@${RM} ${OBJECTDIR}/_ext/934116169/TM1638.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/934116169/TM1638.o.d" -o ${OBJECTDIR}/_ext/934116169/TM1638.o ../../../firmware/src/drivers/TM1638/TM1638.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/352530421/WS2812b.o: ../../../firmware/src/drivers/WS2812b/WS2812b.c  .generated_files/flags/default/855a8f2c798a1c445025dadc28432c2b17c488ec .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/352530421" 
	@${RM} ${OBJECTDIR}/_ext/352530421/WS2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/352530421/WS2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/352530421/WS2812b.o.d" -o ${OBJECTDIR}/_ext/352530421/WS2812b.o ../../../firmware/src/drivers/WS2812b/WS2812b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1909040673/mainCube.o: ../../../firmware/src/mainCube.c  .generated_files/flags/default/2ce3d939524069265b75bf3054dc3ca7c24622a5 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1909040673" 
	@${RM} ${OBJECTDIR}/_ext/1909040673/mainCube.o.d 
	@${RM} ${OBJECTDIR}/_ext/1909040673/mainCube.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1909040673/mainCube.o.d" -o ${OBJECTDIR}/_ext/1909040673/mainCube.o ../../../firmware/src/mainCube.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/851394098/7segments.o: ../../../firmware/src/common/7seg/7segments.c  .generated_files/flags/default/2d2668630907d8f4a8d84a905e21e3bdac32da06 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/851394098" 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segments.o.d 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segments.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/851394098/7segments.o.d" -o ${OBJECTDIR}/_ext/851394098/7segments.o ../../../firmware/src/common/7seg/7segments.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o: ../../../firmware/src/common/7seg/7segmentsOutputStream.c  .generated_files/flags/default/af81719293e4067f8092bf9ff09368d814ea8696 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/851394098" 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o.d" -o ${OBJECTDIR}/_ext/851394098/7segmentsOutputStream.o ../../../firmware/src/common/7seg/7segmentsOutputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/663849242/clock.o: ../../../firmware/src/common/clock/clock.c  .generated_files/flags/default/e7dfe6ac0bd1931733703bf12050d31b682a2311 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/663849242" 
	@${RM} ${OBJECTDIR}/_ext/663849242/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/663849242/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/663849242/clock.o.d" -o ${OBJECTDIR}/_ext/663849242/clock.o ../../../firmware/src/common/clock/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/663849242/clockStream.o: ../../../firmware/src/common/clock/clockStream.c  .generated_files/flags/default/36661cf31bd578a85d488025190104aa9dce8cd4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/663849242" 
	@${RM} ${OBJECTDIR}/_ext/663849242/clockStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/663849242/clockStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/663849242/clockStream.o.d" -o ${OBJECTDIR}/_ext/663849242/clockStream.o ../../../firmware/src/common/clock/clockStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/664561295/delay.o: ../../../firmware/src/common/delay/delay.c  .generated_files/flags/default/ded58b9419bc278bb4b3f0b6855f85c8db6e6bca .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/664561295" 
	@${RM} ${OBJECTDIR}/_ext/664561295/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/664561295/delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/664561295/delay.o.d" -o ${OBJECTDIR}/_ext/664561295/delay.o ../../../firmware/src/common/delay/delay.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1185303858/displayUtils.o: ../../../firmware/src/common/display/displayUtils.c  .generated_files/flags/default/1b5b89f6bb2d5b6c5c59233142b38386b46d9bc9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1185303858" 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1185303858/displayUtils.o.d" -o ${OBJECTDIR}/_ext/1185303858/displayUtils.o ../../../firmware/src/common/display/displayUtils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1185303858/displayStream.o: ../../../firmware/src/common/display/displayStream.c  .generated_files/flags/default/9cfb3982aa1e652252c709a27c3c70b92bf0e7e5 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1185303858" 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1185303858/displayStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1185303858/displayStream.o.d" -o ${OBJECTDIR}/_ext/1185303858/displayStream.o ../../../firmware/src/common/display/displayStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/665878292/error.o: ../../../firmware/src/common/error/error.c  .generated_files/flags/default/b58370acd13050768c1199ceb9a28a97c829c6d0 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/665878292" 
	@${RM} ${OBJECTDIR}/_ext/665878292/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/665878292/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/665878292/error.o.d" -o ${OBJECTDIR}/_ext/665878292/error.o ../../../firmware/src/common/error/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1964457045/buffer.o: ../../../firmware/src/common/IO/buffer/buffer.c  .generated_files/flags/default/7030ef9e4c8cfa9769538c303f6be80bfe54da8c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1964457045" 
	@${RM} ${OBJECTDIR}/_ext/1964457045/buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964457045/buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1964457045/buffer.o.d" -o ${OBJECTDIR}/_ext/1964457045/buffer.o ../../../firmware/src/common/IO/buffer/buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1795468234/outputStream.o: ../../../firmware/src/common/IO/outputStream/outputStream.c  .generated_files/flags/default/13254154ffae91aadd946c541e19db7f18921ea9 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1795468234" 
	@${RM} ${OBJECTDIR}/_ext/1795468234/outputStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1795468234/outputStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1795468234/outputStream.o.d" -o ${OBJECTDIR}/_ext/1795468234/outputStream.o ../../../firmware/src/common/IO/outputStream/outputStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1249438347/printWriter.o: ../../../firmware/src/common/IO/printWriter/printWriter.c  .generated_files/flags/default/a2a0322fa6e38320c3b1c558770f90a16b081c40 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1249438347" 
	@${RM} ${OBJECTDIR}/_ext/1249438347/printWriter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249438347/printWriter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249438347/printWriter.o.d" -o ${OBJECTDIR}/_ext/1249438347/printWriter.o ../../../firmware/src/common/IO/printWriter/printWriter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1496505833/led.o: ../../../firmware/src/common/led/led.c  .generated_files/flags/default/64194010cacc449b0c22ed1ebb290cb5255ea6a0 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1496505833" 
	@${RM} ${OBJECTDIR}/_ext/1496505833/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496505833/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496505833/led.o.d" -o ${OBJECTDIR}/_ext/1496505833/led.o ../../../firmware/src/common/led/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1496531783/RGB.o: ../../../firmware/src/common/RGB/RGB.c  .generated_files/flags/default/c7fb59bd5035dffa3f38a073515aff1d2b575194 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1496531783" 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGB.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGB.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496531783/RGB.o.d" -o ${OBJECTDIR}/_ext/1496531783/RGB.o ../../../firmware/src/common/RGB/RGB.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1496531783/RGBStream.o: ../../../firmware/src/common/RGB/RGBStream.c  .generated_files/flags/default/39d9e72f9b7e58a4a85ee752a690c67f39256bbd .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1496531783" 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGBStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496531783/RGBStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1496531783/RGBStream.o.d" -o ${OBJECTDIR}/_ext/1496531783/RGBStream.o ../../../firmware/src/common/RGB/RGBStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1938097994/distance.o: ../../../firmware/src/common/sensor/distance/distance.c  .generated_files/flags/default/4ddf8ca75c27e72bdd30e14cd2dfb55fa9b05edf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1938097994" 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1938097994/distance.o.d" -o ${OBJECTDIR}/_ext/1938097994/distance.o ../../../firmware/src/common/sensor/distance/distance.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1938097994/distanceStream.o: ../../../firmware/src/common/sensor/distance/distanceStream.c  .generated_files/flags/default/f83cc0514bb64023b4cbc6171b716f7ecb00ff4a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1938097994" 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distanceStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1938097994/distanceStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1938097994/distanceStream.o.d" -o ${OBJECTDIR}/_ext/1938097994/distanceStream.o ../../../firmware/src/common/sensor/distance/distanceStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o: ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterStream.c  .generated_files/flags/default/bbce243e726e7c029fc5157a71c097e8c00a1839 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1460536513" 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o.d" -o ${OBJECTDIR}/_ext/1460536513/frequencyCounterStream.o ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o: ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterUtils.c  .generated_files/flags/default/507f16cfdebd8ff13d834dac5cc19d904bde824c .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1460536513" 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o.d" -o ${OBJECTDIR}/_ext/1460536513/frequencyCounterUtils.o ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounterUtils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1460536513/frequencyCounter.o: ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounter.c  .generated_files/flags/default/dbb8ee0dd5e008990b3e4155e00b46fb4152c3ee .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1460536513" 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1460536513/frequencyCounter.o.d" -o ${OBJECTDIR}/_ext/1460536513/frequencyCounter.o ../../../firmware/src/common/sensor/frequencyCounter/frequencyCounter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/414422291/temperatureStream.o: ../../../firmware/src/common/sensor/temperature/temperatureStream.c  .generated_files/flags/default/7b916a1a93766c25fb922a7d04789c92bca2eb7d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/414422291" 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperatureStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperatureStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/414422291/temperatureStream.o.d" -o ${OBJECTDIR}/_ext/414422291/temperatureStream.o ../../../firmware/src/common/sensor/temperature/temperatureStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/414422291/temperature.o: ../../../firmware/src/common/sensor/temperature/temperature.c  .generated_files/flags/default/e633460f4b0d38519d5702eabb639d6afa0c1eec .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/414422291" 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperature.o.d 
	@${RM} ${OBJECTDIR}/_ext/414422291/temperature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/414422291/temperature.o.d" -o ${OBJECTDIR}/_ext/414422291/temperature.o ../../../firmware/src/common/sensor/temperature/temperature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/443813272/serialOutpuStream.o: ../../../firmware/src/common/serial/serialOutpuStream.c  .generated_files/flags/default/a65716c89089aab65610e4d3ee96c39e4a0cdeb4 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/443813272" 
	@${RM} ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o.d 
	@${RM} ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/443813272/serialOutpuStream.o.d" -o ${OBJECTDIR}/_ext/443813272/serialOutpuStream.o ../../../firmware/src/common/serial/serialOutpuStream.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/443813272/serial.o: ../../../firmware/src/common/serial/serial.c  .generated_files/flags/default/e32ac791b4d059328f20eb36374e6329861d3aee .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/443813272" 
	@${RM} ${OBJECTDIR}/_ext/443813272/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/443813272/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/443813272/serial.o.d" -o ${OBJECTDIR}/_ext/443813272/serial.o ../../../firmware/src/common/serial/serial.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/425302365/system.o: ../../../firmware/src/common/system/system.c  .generated_files/flags/default/e3708b8a766eee81dbabf73c0fbd422f58e7519e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/425302365" 
	@${RM} ${OBJECTDIR}/_ext/425302365/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/425302365/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/425302365/system.o.d" -o ${OBJECTDIR}/_ext/425302365/system.o ../../../firmware/src/common/system/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/411642368/timer1.o: ../../../firmware/src/common/timer1/timer1.c  .generated_files/flags/default/cd2694d8053c91ace03a64aae9cc71c23df38a84 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/411642368" 
	@${RM} ${OBJECTDIR}/_ext/411642368/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/411642368/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/411642368/timer1.o.d" -o ${OBJECTDIR}/_ext/411642368/timer1.o ../../../firmware/src/common/timer1/timer1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/680148275/uart5.o: ../../../firmware/src/common/uart5/uart5.c  .generated_files/flags/default/bde4c95480e81515a7a735954fa98dff9605ee60 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/680148275" 
	@${RM} ${OBJECTDIR}/_ext/680148275/uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/680148275/uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/680148275/uart5.o.d" -o ${OBJECTDIR}/_ext/680148275/uart5.o ../../../firmware/src/common/uart5/uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/652511389/plib_adchs.o: ../../../firmware/src/config/default/peripheral/adchs/plib_adchs.c  .generated_files/flags/default/654f1b7be8871bf18ff1bf2a268eb13af71169f1 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/652511389" 
	@${RM} ${OBJECTDIR}/_ext/652511389/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/652511389/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/652511389/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/652511389/plib_adchs.o ../../../firmware/src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/650753734/plib_cache.o: ../../../firmware/src/config/default/peripheral/cache/plib_cache.c  .generated_files/flags/default/77baf45fd975079024821e5c4576b1f53af8a57f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/650753734" 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/650753734/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/650753734/plib_cache.o.d" -o ${OBJECTDIR}/_ext/650753734/plib_cache.o ../../../firmware/src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1725814566/plib_clk.o: ../../../firmware/src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/1170d280256a173668e592955b0e5511d5fa5aec .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1725814566" 
	@${RM} ${OBJECTDIR}/_ext/1725814566/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1725814566/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1725814566/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1725814566/plib_clk.o ../../../firmware/src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/433012926/plib_coretimer.o: ../../../firmware/src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/d33796f523f8e34c506a8eefda0d205e3c53847e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/433012926" 
	@${RM} ${OBJECTDIR}/_ext/433012926/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/433012926/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/433012926/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/433012926/plib_coretimer.o ../../../firmware/src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960574765/plib_evic.o: ../../../firmware/src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/dd699309da83d9bd87a436210652877e9e5b78de .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960574765" 
	@${RM} ${OBJECTDIR}/_ext/1960574765/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960574765/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960574765/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1960574765/plib_evic.o ../../../firmware/src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960520937/plib_gpio.o: ../../../firmware/src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/8c0d642042fb8de6bd369dc56e0cd5d863273864 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960520937" 
	@${RM} ${OBJECTDIR}/_ext/1960520937/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960520937/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960520937/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1960520937/plib_gpio.o ../../../firmware/src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o: ../../../firmware/src/config/default/peripheral/i2c/master/plib_i2c1_master.c  .generated_files/flags/default/6e464cca0964460b99672d265519ed93adb09c67 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/979448511" 
	@${RM} ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o.d" -o ${OBJECTDIR}/_ext/979448511/plib_i2c1_master.o ../../../firmware/src/config/default/peripheral/i2c/master/plib_i2c1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960474095/plib_icap1.o: ../../../firmware/src/config/default/peripheral/icap/plib_icap1.c  .generated_files/flags/default/f58b8adb194e9d41efa443036875fb6605d60fdd .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960474095" 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960474095/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1960474095/plib_icap1.o ../../../firmware/src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960474095/plib_icap2.o: ../../../firmware/src/config/default/peripheral/icap/plib_icap2.c  .generated_files/flags/default/56aafb208d826e3fc86cc50bf246f641b8a8ee0b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960474095" 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960474095/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960474095/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1960474095/plib_icap2.o ../../../firmware/src/config/default/peripheral/icap/plib_icap2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o: ../../../firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/flags/default/f8845a2fe643f4db90e3302b2066979ca6e1b28b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960294977" 
	@${RM} ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1960294977/plib_ocmp3.o ../../../firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1725798191/plib_tmr2.o: ../../../firmware/src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/flags/default/e6684d92800e392bf62a81dbed0e848142c7bba6 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1725798191" 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1725798191/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1725798191/plib_tmr2.o ../../../firmware/src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1725798191/plib_tmr4.o: ../../../firmware/src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/flags/default/9df6ac66cedb6a8ece4bb12c2b0b03d81c0ca0c0 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1725798191" 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1725798191/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/1725798191/plib_tmr4.o ../../../firmware/src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960136320/plib_tmr1.o: ../../../firmware/src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/default/7d40bfbdd31c5fcd08cad85609f4961dcc575f8d .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960136320" 
	@${RM} ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960136320/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1960136320/plib_tmr1.o ../../../firmware/src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960117994/plib_uart2.o: ../../../firmware/src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/e05843711b1f3285a539ef389b4d351905cd5b7a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960117994" 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960117994/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1960117994/plib_uart2.o ../../../firmware/src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1960117994/plib_uart5.o: ../../../firmware/src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/5db19c60a385bff3b80f3991e21ff4e769b12db2 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1960117994" 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1960117994/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1960117994/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1960117994/plib_uart5.o ../../../firmware/src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/120884062/xc32_monitor.o: ../../../firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/56e3c900ac7f5484dd9965354d55940275e217da .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/120884062" 
	@${RM} ${OBJECTDIR}/_ext/120884062/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/120884062/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/120884062/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/120884062/xc32_monitor.o ../../../firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/543063388/initialization.o: ../../../firmware/src/config/default/initialization.c  .generated_files/flags/default/d928b66dfc424e7840a6362d5461f6d7b527b67b .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/543063388" 
	@${RM} ${OBJECTDIR}/_ext/543063388/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/543063388/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/543063388/initialization.o.d" -o ${OBJECTDIR}/_ext/543063388/initialization.o ../../../firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/543063388/interrupts.o: ../../../firmware/src/config/default/interrupts.c  .generated_files/flags/default/bcd1516fe988d10297f090136f007cfac7fe856f .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/543063388" 
	@${RM} ${OBJECTDIR}/_ext/543063388/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/543063388/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/543063388/interrupts.o.d" -o ${OBJECTDIR}/_ext/543063388/interrupts.o ../../../firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/543063388/exceptions.o: ../../../firmware/src/config/default/exceptions.c  .generated_files/flags/default/e19147227e0ec80bdbae72b7526c6b59f2374d44 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/543063388" 
	@${RM} ${OBJECTDIR}/_ext/543063388/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/543063388/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/543063388/exceptions.o.d" -o ${OBJECTDIR}/_ext/543063388/exceptions.o ../../../firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o: ../../../firmware/src/cube/mainCubeMeteo.c  .generated_files/flags/default/f582fe7a409528e23743a598623001886e22b511 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1109855845" 
	@${RM} ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o.d" -o ${OBJECTDIR}/_ext/1109855845/mainCubeMeteo.o ../../../firmware/src/cube/mainCubeMeteo.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1109855845/cubeCommon.o: ../../../firmware/src/cube/cubeCommon.c  .generated_files/flags/default/f4e6c8503c73d641c45c7627ee25913e18eae86e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1109855845" 
	@${RM} ${OBJECTDIR}/_ext/1109855845/cubeCommon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109855845/cubeCommon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1109855845/cubeCommon.o.d" -o ${OBJECTDIR}/_ext/1109855845/cubeCommon.o ../../../firmware/src/cube/cubeCommon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1285861486/HC-SR04.o: ../../../firmware/src/drivers/HCSR04/HC-SR04.c  .generated_files/flags/default/12412b6bd47a222401b7d87978f15d7849e7f144 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1285861486" 
	@${RM} ${OBJECTDIR}/_ext/1285861486/HC-SR04.o.d 
	@${RM} ${OBJECTDIR}/_ext/1285861486/HC-SR04.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1285861486/HC-SR04.o.d" -o ${OBJECTDIR}/_ext/1285861486/HC-SR04.o ../../../firmware/src/drivers/HCSR04/HC-SR04.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1700083186/LM75A.o: ../../../firmware/src/drivers/LM75A/LM75A.c  .generated_files/flags/default/777214f5a7d91a4c39c076d8111ac9e22dcb1ce3 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1700083186" 
	@${RM} ${OBJECTDIR}/_ext/1700083186/LM75A.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700083186/LM75A.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1700083186/LM75A.o.d" -o ${OBJECTDIR}/_ext/1700083186/LM75A.o ../../../firmware/src/drivers/LM75A/LM75A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1585286329/PCF8563.o: ../../../firmware/src/drivers/PCF8563/PCF8563.c  .generated_files/flags/default/a195c3052928f84e2760967be89d6dc7784eb28e .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1585286329" 
	@${RM} ${OBJECTDIR}/_ext/1585286329/PCF8563.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585286329/PCF8563.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1585286329/PCF8563.o.d" -o ${OBJECTDIR}/_ext/1585286329/PCF8563.o ../../../firmware/src/drivers/PCF8563/PCF8563.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/907933048/SAA1064T.o: ../../../firmware/src/drivers/SAA1064T/SAA1064T.c  .generated_files/flags/default/822e82c9e98901e6f771404a06cde9fd4eb7aaf .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/907933048" 
	@${RM} ${OBJECTDIR}/_ext/907933048/SAA1064T.o.d 
	@${RM} ${OBJECTDIR}/_ext/907933048/SAA1064T.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/907933048/SAA1064T.o.d" -o ${OBJECTDIR}/_ext/907933048/SAA1064T.o ../../../firmware/src/drivers/SAA1064T/SAA1064T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/934116169/TM1638.o: ../../../firmware/src/drivers/TM1638/TM1638.c  .generated_files/flags/default/300ff36ad334a80cdae3db8009679fc4e912123a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/934116169" 
	@${RM} ${OBJECTDIR}/_ext/934116169/TM1638.o.d 
	@${RM} ${OBJECTDIR}/_ext/934116169/TM1638.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/934116169/TM1638.o.d" -o ${OBJECTDIR}/_ext/934116169/TM1638.o ../../../firmware/src/drivers/TM1638/TM1638.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/352530421/WS2812b.o: ../../../firmware/src/drivers/WS2812b/WS2812b.c  .generated_files/flags/default/d579700e3eef6815d21af576f20ebf835b5ab08 .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/352530421" 
	@${RM} ${OBJECTDIR}/_ext/352530421/WS2812b.o.d 
	@${RM} ${OBJECTDIR}/_ext/352530421/WS2812b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/352530421/WS2812b.o.d" -o ${OBJECTDIR}/_ext/352530421/WS2812b.o ../../../firmware/src/drivers/WS2812b/WS2812b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1909040673/mainCube.o: ../../../firmware/src/mainCube.c  .generated_files/flags/default/713701c2b7f15914320433bbb89a5ca78ff9f50a .generated_files/flags/default/7d63b6c21ed12ba11a3e70f53bbb7267290d2f7c
	@${MKDIR} "${OBJECTDIR}/_ext/1909040673" 
	@${RM} ${OBJECTDIR}/_ext/1909040673/mainCube.o.d 
	@${RM} ${OBJECTDIR}/_ext/1909040673/mainCube.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM100_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1909040673/mainCube.o.d" -o ${OBJECTDIR}/_ext/1909040673/mainCube.o ../../../firmware/src/mainCube.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/putc1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../firmware/src/config/default/p32MZ2048EFM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/putc1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/putc1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../firmware/src/config/default/p32MZ2048EFM100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/putc1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/putc1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
