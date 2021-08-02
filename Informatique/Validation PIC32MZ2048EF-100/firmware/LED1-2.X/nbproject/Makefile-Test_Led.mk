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
ifeq "$(wildcard nbproject/Makefile-local-Test_Led.mk)" "nbproject/Makefile-local-Test_Led.mk"
include nbproject/Makefile-local-Test_Led.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Test_Led
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/main.c ../src/config/Test_Led/initialization.c ../src/config/Test_Led/interrupts.c ../src/config/Test_Led/exceptions.c ../src/config/Test_Led/stdio/xc32_monitor.c ../src/config/Test_Led/peripheral/clk/plib_clk.c ../src/config/Test_Led/peripheral/gpio/plib_gpio.c ../src/config/Test_Led/peripheral/evic/plib_evic.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/230360081/initialization.o ${OBJECTDIR}/_ext/230360081/interrupts.o ${OBJECTDIR}/_ext/230360081/exceptions.o ${OBJECTDIR}/_ext/141592331/xc32_monitor.o ${OBJECTDIR}/_ext/506331187/plib_clk.o ${OBJECTDIR}/_ext/1483725444/plib_gpio.o ${OBJECTDIR}/_ext/1483671616/plib_evic.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/230360081/initialization.o.d ${OBJECTDIR}/_ext/230360081/interrupts.o.d ${OBJECTDIR}/_ext/230360081/exceptions.o.d ${OBJECTDIR}/_ext/141592331/xc32_monitor.o.d ${OBJECTDIR}/_ext/506331187/plib_clk.o.d ${OBJECTDIR}/_ext/1483725444/plib_gpio.o.d ${OBJECTDIR}/_ext/1483671616/plib_evic.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/230360081/initialization.o ${OBJECTDIR}/_ext/230360081/interrupts.o ${OBJECTDIR}/_ext/230360081/exceptions.o ${OBJECTDIR}/_ext/141592331/xc32_monitor.o ${OBJECTDIR}/_ext/506331187/plib_clk.o ${OBJECTDIR}/_ext/1483725444/plib_gpio.o ${OBJECTDIR}/_ext/1483671616/plib_evic.o

# Source Files
SOURCEFILES=../src/main.c ../src/config/Test_Led/initialization.c ../src/config/Test_Led/interrupts.c ../src/config/Test_Led/exceptions.c ../src/config/Test_Led/stdio/xc32_monitor.c ../src/config/Test_Led/peripheral/clk/plib_clk.c ../src/config/Test_Led/peripheral/gpio/plib_gpio.c ../src/config/Test_Led/peripheral/evic/plib_evic.c



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
	${MAKE}  -f nbproject/Makefile-Test_Led.mk dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1024EFM100
MP_LINKER_FILE_OPTION=,--script="../src/config/Test_Led/p32MZ1024EFM100.ld"
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/7fea84da74dd55109df927f8d3df376544ebd85e.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/230360081/initialization.o: ../src/config/Test_Led/initialization.c  .generated_files/ef70e4daa70400a99537e3d565b9e54198ce21c6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/230360081" 
	@${RM} ${OBJECTDIR}/_ext/230360081/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/230360081/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/230360081/initialization.o.d" -o ${OBJECTDIR}/_ext/230360081/initialization.o ../src/config/Test_Led/initialization.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/230360081/interrupts.o: ../src/config/Test_Led/interrupts.c  .generated_files/de2a7062dd2553e7d7162f452b9ad55f64ea4a84.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/230360081" 
	@${RM} ${OBJECTDIR}/_ext/230360081/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/230360081/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/230360081/interrupts.o.d" -o ${OBJECTDIR}/_ext/230360081/interrupts.o ../src/config/Test_Led/interrupts.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/230360081/exceptions.o: ../src/config/Test_Led/exceptions.c  .generated_files/4ab157111fe527ef7d5a70494d2f194c273f94f1.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/230360081" 
	@${RM} ${OBJECTDIR}/_ext/230360081/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/230360081/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/230360081/exceptions.o.d" -o ${OBJECTDIR}/_ext/230360081/exceptions.o ../src/config/Test_Led/exceptions.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/141592331/xc32_monitor.o: ../src/config/Test_Led/stdio/xc32_monitor.c  .generated_files/5580bb9a7cb9d3702961b5c96e4ec0d30c9256a0.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141592331" 
	@${RM} ${OBJECTDIR}/_ext/141592331/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/141592331/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141592331/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/141592331/xc32_monitor.o ../src/config/Test_Led/stdio/xc32_monitor.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/506331187/plib_clk.o: ../src/config/Test_Led/peripheral/clk/plib_clk.c  .generated_files/2b783551920270ffbe47081056f50b5554ec872b.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/506331187" 
	@${RM} ${OBJECTDIR}/_ext/506331187/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/506331187/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/506331187/plib_clk.o.d" -o ${OBJECTDIR}/_ext/506331187/plib_clk.o ../src/config/Test_Led/peripheral/clk/plib_clk.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1483725444/plib_gpio.o: ../src/config/Test_Led/peripheral/gpio/plib_gpio.c  .generated_files/8d48d11ccce526f3bbc4bd9b19cdbb22db6a5e65.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1483725444" 
	@${RM} ${OBJECTDIR}/_ext/1483725444/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1483725444/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1483725444/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1483725444/plib_gpio.o ../src/config/Test_Led/peripheral/gpio/plib_gpio.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1483671616/plib_evic.o: ../src/config/Test_Led/peripheral/evic/plib_evic.c  .generated_files/38e758e4eed3b780164b334f3c8b56ded13ff214.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1483671616" 
	@${RM} ${OBJECTDIR}/_ext/1483671616/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1483671616/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1483671616/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1483671616/plib_evic.o ../src/config/Test_Led/peripheral/evic/plib_evic.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/eb35f52739c13c2c68bc1dad356d03511c6a3279.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/230360081/initialization.o: ../src/config/Test_Led/initialization.c  .generated_files/fe775125e6eb3136a222e97ef9072d0c377a718.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/230360081" 
	@${RM} ${OBJECTDIR}/_ext/230360081/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/230360081/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/230360081/initialization.o.d" -o ${OBJECTDIR}/_ext/230360081/initialization.o ../src/config/Test_Led/initialization.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/230360081/interrupts.o: ../src/config/Test_Led/interrupts.c  .generated_files/b3c714db8725de5fe18281364a982c2262310e9d.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/230360081" 
	@${RM} ${OBJECTDIR}/_ext/230360081/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/230360081/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/230360081/interrupts.o.d" -o ${OBJECTDIR}/_ext/230360081/interrupts.o ../src/config/Test_Led/interrupts.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/230360081/exceptions.o: ../src/config/Test_Led/exceptions.c  .generated_files/32c6236d673add122f83867d9f53a9463d06898.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/230360081" 
	@${RM} ${OBJECTDIR}/_ext/230360081/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/230360081/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/230360081/exceptions.o.d" -o ${OBJECTDIR}/_ext/230360081/exceptions.o ../src/config/Test_Led/exceptions.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/141592331/xc32_monitor.o: ../src/config/Test_Led/stdio/xc32_monitor.c  .generated_files/c05b67ebe177945ad17f8de9e0319acce38db1a6.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/141592331" 
	@${RM} ${OBJECTDIR}/_ext/141592331/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/141592331/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/141592331/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/141592331/xc32_monitor.o ../src/config/Test_Led/stdio/xc32_monitor.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/506331187/plib_clk.o: ../src/config/Test_Led/peripheral/clk/plib_clk.c  .generated_files/7ccf18016f9a3b26297f659d8bc40323cfe4c419.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/506331187" 
	@${RM} ${OBJECTDIR}/_ext/506331187/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/506331187/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/506331187/plib_clk.o.d" -o ${OBJECTDIR}/_ext/506331187/plib_clk.o ../src/config/Test_Led/peripheral/clk/plib_clk.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1483725444/plib_gpio.o: ../src/config/Test_Led/peripheral/gpio/plib_gpio.c  .generated_files/24b4f18f742b62601180df4d76c54edba7131fa5.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1483725444" 
	@${RM} ${OBJECTDIR}/_ext/1483725444/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1483725444/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1483725444/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1483725444/plib_gpio.o ../src/config/Test_Led/peripheral/gpio/plib_gpio.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1483671616/plib_evic.o: ../src/config/Test_Led/peripheral/evic/plib_evic.c  .generated_files/c8cebfefb4ed9b8a406551baadf8587bdf2ea6ee.flag .generated_files/f1ca444b8d15f85172eef40e82dcd04fec010b72.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1483671616" 
	@${RM} ${OBJECTDIR}/_ext/1483671616/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1483671616/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/Test_Led" -I"../src/packs/PIC32MZ1024EFM100_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1483671616/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1483671616/plib_evic.o ../src/config/Test_Led/peripheral/evic/plib_evic.c    -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/Test_Led/p32MZ1024EFM100.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/Test_Led/p32MZ1024EFM100.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Test_Led=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/LED1-2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Test_Led
	${RM} -r dist/Test_Led
