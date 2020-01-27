V1_COMPAT=1

RACK_DIR ?= ../..

FLAGS +=
CFLAGS += 
CXXFLAGS +=

include $(RACK_DIR)/arch.mk
ifdef ARCH_WIN
LDFLAGS += -lwsock32
else
LDFLAGS +=
endif  

# Add .cpp and .c files to the build
SOURCES += $(wildcard src/*.cpp)
SOURCES += $(wildcard src/*.c)

DISTRIBUTABLES += $(wildcard LICENSE*) res

# Include the VCV Rack plugin Makefile framework
include $(RACK_DIR)/plugin.mk
