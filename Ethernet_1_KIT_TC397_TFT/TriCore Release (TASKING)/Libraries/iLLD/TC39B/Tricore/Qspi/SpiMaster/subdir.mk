################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.c" 

COMPILED_SRCS += \
"Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src" 

C_DEPS += \
"./Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.d" 

OBJS += \
"Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.o" 


# Each subdirectory must supply rules for building sources it contributes
"Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src":"../Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.c" "Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc39xb "-fC:/project/Blinky_LED_1_KIT_TC397_TFT/Ethernet_1_KIT_TC397_TFT/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc39xb -Y0 -N0 -Z0 -o "$@" "$<"
"Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.o":"Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src" "Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-Qspi-2f-SpiMaster

clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-Qspi-2f-SpiMaster:
	-$(RM) ./Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.d ./Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.o ./Libraries/iLLD/TC39B/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src

.PHONY: clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-Qspi-2f-SpiMaster

