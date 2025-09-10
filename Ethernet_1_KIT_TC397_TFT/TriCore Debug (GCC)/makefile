################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Libraries/iLLD/TC39B/Tricore/_PinMap/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/_Lib/DataHandling/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/_Impl/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Stm/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Src/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Scu/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Port/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Pms/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Mtu/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Gtm/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Geth/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Geth/Eth/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Cpu/Trap/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Cpu/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Cpu/Irq/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Asclin/Std/subdir.mk
-include Libraries/iLLD/TC39B/Tricore/Asclin/Asc/subdir.mk
-include Libraries/UART/subdir.mk
-include Libraries/Service/CpuGeneric/SysSe/Comm/subdir.mk
-include Libraries/Service/CpuGeneric/StdIf/subdir.mk
-include Libraries/Infra/Ssw/TC39B/Tricore/subdir.mk
-include Libraries/Infra/Platform/Tricore/Compilers/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/ppp/polarssl/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/ppp/subdir.mk
-include Libraries/Ethernet/lwip/src/netif/subdir.mk
-include Libraries/Ethernet/lwip/src/core/ipv6/subdir.mk
-include Libraries/Ethernet/lwip/src/core/ipv4/subdir.mk
-include Libraries/Ethernet/lwip/src/core/subdir.mk
-include Libraries/Ethernet/lwip/src/api/subdir.mk
-include Libraries/Ethernet/lwip/port/src/subdir.mk
-include Libraries/Ethernet/Phy_Rtl8211f/subdir.mk
-include Configurations/Debug/subdir.mk
-include Configurations/subdir.mk
-include subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Ethernet_1_KIT_TC397_TFT
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
Ethernet_1_KIT_TC397_TFT.hex \

SECONDARY_LIST += \
Ethernet_1_KIT_TC397_TFT.lst \

SECONDARY_SIZE += \
Ethernet_1_KIT_TC397_TFT.siz \


# All Target
all: main-build

# Main-build Target
main-build: Ethernet_1_KIT_TC397_TFT.elf secondary-outputs

# Tool invocations
Ethernet_1_KIT_TC397_TFT.elf: $(OBJS) ../Lcf_Gnuc_Tricore_Tc.lsl makefile $(OPTIONAL_TOOL_DEPS) .Ethernet_1_KIT_TC397_TFT.elf.opt
	@echo 'Building target: $@'
	@echo 'Invoking: AURIX GCC Linker'
	tricore-elf-gcc @.Ethernet_1_KIT_TC397_TFT.elf.opt
	@echo 'Finished building target: $@'
	@echo ' '

.Ethernet_1_KIT_TC397_TFT.elf.opt:
	$(file >$@, -T"../Lcf_Gnuc_Tricore_Tc.lsl" -nocrt0 -Wl,--gc-sections -mtc162 -o "Ethernet_1_KIT_TC397_TFT.elf" $(OBJS))

.PHONY: .Ethernet_1_KIT_TC397_TFT.elf.opt

Ethernet_1_KIT_TC397_TFT.hex: Ethernet_1_KIT_TC397_TFT.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: AURIX Object Copy'
	tricore-elf-objcopy -O ihex "Ethernet_1_KIT_TC397_TFT.elf" "Ethernet_1_KIT_TC397_TFT.hex"
	@echo 'Finished building: $@'
	@echo ' '

Ethernet_1_KIT_TC397_TFT.lst: Ethernet_1_KIT_TC397_TFT.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: AURIX Create Listing'
	tricore-elf-objdump -h -S "Ethernet_1_KIT_TC397_TFT.elf" > "Ethernet_1_KIT_TC397_TFT.lst"
	@echo 'Finished building: $@'
	@echo ' '

Ethernet_1_KIT_TC397_TFT.siz: Ethernet_1_KIT_TC397_TFT.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: AURIX Print Size'
	tricore-elf-size  --format=berkeley "Ethernet_1_KIT_TC397_TFT.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Ethernet_1_KIT_TC397_TFT.elf Ethernet_1_KIT_TC397_TFT.hex Ethernet_1_KIT_TC397_TFT.lst Ethernet_1_KIT_TC397_TFT.siz
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
