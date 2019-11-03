RACK_DIR ?= ../..

# FLAGS will be passed to both the C and C++ compiler
FLAGS +=
CFLAGS +=
CXXFLAGS +=


# Careful about linking to libraries, since you can't assume much about the user's environment and library search path.
# Static libraries are fine.
LDFLAGS +=

# Add .cpp and .c files to the build
SOURCES += $(wildcard src/*.cpp)

# Add files to the ZIP package when running `make dist`
DISTRIBUTABLES += $(wildcard Manual* License*) res

RACK_DIR ?= ../..
include ../../plugin.mk