# Copyright 2024 ETH Zurich and University of Bologna.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#

# Author: Alessandro Ottaviano <aottaviano@iis.ee.ethz.ch>

# This makefrag is meant to be included in the Makefile or other makefrag
# managing the SW build of the target PULP system.

###########
# Threadx #
###########

CMAKE ?= cmake-3.18.1
TGT   ?= safety_island

TX_DIR ?= .
TX_SW_LIBS = $(TX_DIR)/build/libthreadx.a
TX_INCS := -I$(TX_DIR)/common/inc
TX_INCS += -I$(TX_DIR)/common_modules/inc
TX_INCS += -I$(TX_DIR)/common_smp/inc
TX_INCS += -I$(TX_DIR)/ports

$(TX_DIR)/build/libthreadx.a:
	cd $(TX_DIR); $(CMAKE) -Bbuild -GNinja -DCMAKE_TOOLCHAIN_FILE=$(TX_DIR)/cmake/$(TGT).cmake .
	cd $(TX_DIR); $(CMAKE) --build $(TX_DIR)/build

.PHONY: tx-lib-build
tx-lib-build: $(TX_DIR)/build/libthreadx.a

.PHONY: tx-lib-clean
tx-lib-clean:
	rm -rf $(TX_DIR)/build
