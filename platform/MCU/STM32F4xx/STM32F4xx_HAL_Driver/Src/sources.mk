# This file is a makefile included from the top level makefile which
# defines the sources built for the target.

# Define the prefix to this directory.
# Note: The name must be unique within this build and should be
#       based on the root of the project
TARGET_STDPERIPH_SRC_PATH = $(TARGET_STDPERIPH_PATH)/Src

# C source files included in this build.
ifeq ("$(PLATFORM_STM32_STDPERIPH_EXCLUDE)","")
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_adc.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_can.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_dac.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_crc.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_dma.c
#CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f2xx_exti.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_flash.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_gpio.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_i2c.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_iwdg.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_pwr.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_rcc.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_rng.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_rtc.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_spi.c
#CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f2xx_syscfg.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_tim.c
CSRC += $(TARGET_STDPERIPH_SRC_PATH)/stm32f4xx_hal_usart.c
endif

# C++ source files included in this build.
CPPSRC +=

# ASM source files included in this build.
ASRC +=

