################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.c \
../Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.c \
../Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_Fifo.c 

C_DEPS += \
./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.d \
./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.d \
./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_Fifo.d 

OBJS += \
./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.o \
./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.o \
./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_Fifo.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/%.o: ../Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/%.c Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AURIX GCC Compiler'
	tricore-elf-gcc -std=c99 "@C:/project/Blinky_LED_1_KIT_TC397_TFT/Ethernet_1_KIT_TC397_TFT/TriCore Debug (GCC)/AURIX_GCC_Compiler-Include_paths__-I_.opt" -O0 -g3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-_Lib-2f-DataHandling

clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-_Lib-2f-DataHandling:
	-$(RM) ./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.d ./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.o ./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.d ./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.o ./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_Fifo.d ./Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/Ifx_Fifo.o

.PHONY: clean-Libraries-2f-iLLD-2f-TC39B-2f-Tricore-2f-_Lib-2f-DataHandling

