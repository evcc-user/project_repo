################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.c" 

COMPILED_SRCS += \
"Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.src" 

C_DEPS += \
"./Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.d" 

OBJS += \
"Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.o" 


# Each subdirectory must supply rules for building sources it contributes
"Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.src":"../Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.c" "Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc39xb "-fC:/project/Blinky_LED_1_KIT_TC397_TFT/Ethernet_1_KIT_TC397_TFT/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc39xb -Y0 -N0 -Z0 -o "$@" "$<"
"Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.o":"Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.src" "Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-Gtm-2f-Tim-2f-In

clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-Gtm-2f-Tim-2f-In:
	-$(RM) ./Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.d ./Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.o ./Libraries/iLLD/TC39B/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.src

.PHONY: clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-Gtm-2f-Tim-2f-In

