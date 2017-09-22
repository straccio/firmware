
GCC_PREFIX=

include $(COMMON_BUILD)/common-tools.mk

#
# default flags for targeting ARM
#

GCC_OPTIMIZE=3
ifeq ($(DEBUG_BUILD),y)
     GCC_OPTIMIZE=0
endif

# C compiler flags
CFLAGS +=  -g3 -O$(GCC_OPTIMIZE) -gdwarf-2
CFLAGS += -Wno-unused-local-typedefs -O$(GCC_OPTIMIZE)
CPPFLAGS +=

ASFLAGS +=  -g3


ifeq ("$(MAKE_OS)", "LINUX")
LDFLAGS +=  -pthread -Xlinker --gc-sections
endif

ifneq ($(MAKE_OS),OSX)
LDFLAGS += -Xlinker --gc-sections
endif

ifeq ($(MAKE_OS),OSX)
CFLAGS += -Wno-return-type-c-linkage
CPPFLAGS += -Wno-unused-private-field
endif
