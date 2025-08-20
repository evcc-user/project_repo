# Subbu Makefile for Jenkins CI/CD
# Toolchain paths (adjust to your ADS install path)
# CC=/c/Infineon/AURIX-Studio/tools/compiler/gcc-tricore/bin/tricore-gcc.exe
CC=C:\Infineon\AURIX-Studio-1.10.10\tools\Compilers\tricore-gcc11\bin\tricore-elf-gcc.exe
#LD=C:\Infineon\AURIX-Studio-1.10.10\tools\Compilers\tricore-gcc11\bin\tricore-elf-ld.exe
LD=C:\Infineon\AURIX-Studio-1.10.10\tools\Compilers\tricore-gcc11\tricore-elf\bin\ld.exe
# LD=/c/Infineon/AURIX-Studio/tools/compiler/gcc-tricore/bin/tricore-ld.exe
# OBJCOPY=/c/Infineon/AURIX-Studio/tools/compiler/gcc-tricore/bin/tricore-objcopy.exe
OBJCOPY=C:\Infineon\AURIX-Studio-1.10.10\tools\Compilers\tricore-gcc11\bin\tricore-elf-objcopy.exe

include includepath_flags_gen.mk

# Compiler and linker flags
CFLAGS= -mcpu=tc39xx -D__CPU__=tc39xb -O2 -Wall -fdata-sections -ffunction-sections \
       -Iinc -Isrc -DCPU_TC397 -DIFX_CFG_USE_STANDARD_INTERFACE=1 \
       $(AurixIncludePaths)

GCCFLAGS= -mcpu=tc39xx -Iinc -std=c99 -O3 -Wall -c -fmessage-length=0 -fno-common -fstrict-volatile-bitfields -fdata-sections -ffunction-sections -mtc162 -MMD -MP $(AurixIncludePaths)

# LDFLAGS=-Tlinker/AURIX_TC3XX.ld -nostdlib -Wl,--gc-sections
LDFLAGS=-TLcf_Gnuc_Tricore_Tc.lsl -nostdlib

# File lists
# SRC=$(wildcard src/*.c)
# OBJ=$(patsubst src/%.c,build/%.o,$(SRC))

TARGET=build/aurix_firmware.elf
BUILD_DIR = build

SRC_DIRS = ./src \
Configurations/Debug \
Configurations \
. \
Libraries/Ethernet/Phy_Rtl8211f \
Libraries/Ethernet/lwip/port/src \
Libraries/Ethernet/lwip/src/api \
Libraries/Ethernet/lwip/src/core \
Libraries/Ethernet/lwip/src/core/ipv4 \
Libraries/Ethernet/lwip/src/core/ipv6 \
Libraries/Ethernet/lwip/src/netif \
Libraries/Ethernet/lwip/src/netif/ppp \
Libraries/Ethernet/lwip/src/netif/ppp/polarssl \
Libraries/Infra/Platform/Tricore/Compilers \
Libraries/Infra/Ssw/TC39B/Tricore \
Libraries/Service/CpuGeneric/StdIf \
Libraries/Service/CpuGeneric/SysSe/Comm \
Libraries/UART \
Libraries/Infra/Platform/Tricore/Compilers \
Libraries/Infra/Ssw/TC39B/Tricore \
Libraries/Service/CpuGeneric/SysSe/Bsp \
Libraries/iLLD/TC39B/Tricore/Asclin/Asc \
Libraries/iLLD/TC39B/Tricore/Asclin/Std \
Libraries/iLLD/TC39B/Tricore/Cpu/Irq \
Libraries/iLLD/TC39B/Tricore/Cpu/Std \
Libraries/iLLD/TC39B/Tricore/Cpu/Trap \
Libraries/iLLD/TC39B/Tricore/Geth/Eth \
Libraries/iLLD/TC39B/Tricore/Geth/Std \
Libraries/iLLD/TC39B/Tricore/Gtm/Std \
Libraries/iLLD/TC39B/Tricore/Mtu/Std \
Libraries/iLLD/TC39B/Tricore/Pms/Std \
Libraries/iLLD/TC39B/Tricore/Port/Std \
Libraries/iLLD/TC39B/Tricore/Scu/Std \
Libraries/iLLD/TC39B/Tricore/Src/Std \
Libraries/iLLD/TC39B/Tricore/Stm/Std \
Libraries/iLLD/TC39B/Tricore/_Impl \
Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling \
Libraries/iLLD/TC39B/Tricore/_PinMap 



# SRC_DIRS = app libs/lib1 libs/lib2
# Automatically find source files
SRCS := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
OBJS := $(patsubst %.c,$(BUILD_DIR)/%.o,$(SRCS))

all: $(TARGET)

$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(GCCFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
#	$(CC) $(OBJ) $(LDFLAGS) -o $(TARGET)
	C:/Infineon/AURIX-Studio-1.10.10/tools/Compilers/tricore-gcc11/bin/tricore-elf-gcc.exe -T"Lcf_Gnuc_Tricore_Tc.lsl" -mcpu=tc39xx -nocrt0 -Wl,--gc-sections -mtc162 -o build/aurix_firmware.elf $(OBJS)
# 	$(LD) $(OBJS) -o $@ $(LDFLAGS)
	$(OBJCOPY) -O ihex $(TARGET) build/aurix_firmware.hex
	$(OBJCOPY) -O binary $(TARGET) build/aurix_firmware.bin
	
-include $(OBJS:.o=.d)

clean:
	rm -rf build/*

flash: $(TARGET)
	JLinkExe -device TC397 -if JTAG -speed 4000 -CommanderScript flash.jlink
