################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Libraries/UART/UART_Logging.c" 

COMPILED_SRCS += \
"Libraries/UART/UART_Logging.src" 

C_DEPS += \
"./Libraries/UART/UART_Logging.d" 

OBJS += \
"Libraries/UART/UART_Logging.o" 


# Each subdirectory must supply rules for building sources it contributes
"Libraries/UART/UART_Logging.src":"../Libraries/UART/UART_Logging.c" "Libraries/UART/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc39xb "-fC:/project/Blinky_LED_1_KIT_TC397_TFT/Ethernet_1_KIT_TC397_TFT/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc39xb -Y0 -N0 -Z0 -o "$@" "$<"
"Libraries/UART/UART_Logging.o":"Libraries/UART/UART_Logging.src" "Libraries/UART/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Libraries-2f-UART

clean-Libraries-2f-UART:
	-$(RM) ./Libraries/UART/UART_Logging.d ./Libraries/UART/UART_Logging.o ./Libraries/UART/UART_Logging.src

.PHONY: clean-Libraries-2f-UART

