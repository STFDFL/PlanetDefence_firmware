#This file is generated by VisualGDB.
#It contains GCC settings automatically derived from the board support package (BSP).
#DO NOT EDIT MANUALLY. THE FILE WILL BE OVERWRITTEN. 
#Use VisualGDB Project Properties dialog or modify Makefile or per-configuration .mak files instead.

#VisualGDB provides BSP_ROOT and TOOLCHAIN_ROOT via environment when running Make. The line below will only be active if GNU Make is started manually.
BSP_ROOT ?= BSP
EFP_BASE ?= $(LOCALAPPDATA)/VisualGDB/EmbeddedEFPs
TOOLCHAIN_ROOT ?= $(CMDER_ROOT)/Vendor/arm-eabi

#Embedded toolchain
CC := $(TOOLCHAIN_ROOT)/bin/arm-eabi-gcc.exe
CXX := $(TOOLCHAIN_ROOT)/bin/arm-eabi-g++.exe
LD := $(CXX)
AR := $(TOOLCHAIN_ROOT)/bin/arm-eabi-ar.exe
OBJCOPY := $(TOOLCHAIN_ROOT)/bin/arm-eabi-objcopy.exe

#Additional flags
PREPROCESSOR_MACROS += ARM_MATH_CM0 STM32F030R8 stm32_flash_layout STM32F030x8
INCLUDE_DIRS += . $(BSP_ROOT)/STM32F0xxxx/STM32F0xx_HAL_Driver/Inc $(BSP_ROOT)/STM32F0xxxx/STM32F0xx_HAL_Driver/Inc/Legacy $(BSP_ROOT)/STM32F0xxxx/CMSIS_HAL/Device/ST/STM32F0xx/Include $(BSP_ROOT)/STM32F0xxxx/CMSIS_HAL/Include $(BSP_ROOT)/STM32F0xxxx/CMSIS_HAL/RTOS/Template
LIBRARY_DIRS += 
LIBRARY_NAMES += compactcpp
ADDITIONAL_LINKER_INPUTS += 
MACOS_FRAMEWORKS += 
LINUX_PACKAGES += 

CFLAGS += 
CXXFLAGS += 
ASFLAGS += 
LDFLAGS +=  
COMMONFLAGS += -mcpu=cortex-m0 -mthumb
LINKER_SCRIPT := $(BSP_ROOT)/STM32F030R8_flash.lds
