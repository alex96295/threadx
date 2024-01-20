# Copyright 2024 ETH Zurich and University of Bologna.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#

###########
# Threadx #
###########

TX_DIR ?= .
TX_SW_LIBS = $(TX_DIR)/build/libthreadx.a
TX_INCS := -I$(TX_DIR)/common/inc
TX_INCS += -I$(TX_DIR)/common_modules/inc
TX_INCS += -I$(TX_DIR)/common_smp/inc
TX_INCS += -I$(TX_DIR)/ports
