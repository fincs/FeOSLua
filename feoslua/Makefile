#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
endif

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

ifeq ($(strip $(FEOSSDK)),)
$(error "Please set FEOSSDK in your environment. export FEOSSDK=<path to>FeOS/sdk")
endif

FEOSMK = $(FEOSSDK)/mk

#---------------------------------------------------------------------------------
# TARGET is the name of the output
# BUILD is the directory where object files & intermediate files will be placed
# SOURCES is a list of directories containing source code
# DATA is a list of directories containing data files
# INCLUDES is a list of directories containing header files
#---------------------------------------------------------------------------------
TARGET        := lua
BUILD         := build
SOURCES       := source
DATA          := data
INCLUDES      := include
FILETYPES     := filetypes.cfg

MANIFEST      := manifest.txt
PACKAGENAME   := $(TARGET)

CONF_DEFINES =
CONF_LIBDIRS = $(CURDIR)/../liblua
CONF_LIBS = -llua52

include $(FEOSMK)/app.mk
include $(FEOSMK)/package.mk

install: all
	@mkdir -p $(FEOSDEST)/data/FeOS/bin
	@mkdir -p $(FEOSDEST)/data/FeOS/gui/ftypes
	@cp $(TARGET).fx2 $(FEOSDEST)/data/FeOS/bin/$(TARGET).fx2
	@cp $(FILETYPES) $(FEOSDEST)/data/FeOS/gui/ftypes/feoslua.cfg
	@grit apptile.png -ftr -fh! -gb -gB16 -gT! -gzl -p! -o $(FEOSDEST)/data/FeOS/gui/feoslua.grf
	@grit fileicon.png -ftr -fh! -gb -gB16 -gT7FFE -gzl -p! -o $(FEOSDEST)/data/FeOS/gui/ftypes/feoslua.grf
	@fmantool application.manifest $(FEOSDEST)/data/FeOS/gui/feoslua.app
