#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Oct 14 12:06:41 EDT 2019
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 58ebdbc35895447eb92da6aaff97a4dc --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot lab2_2test_behav xil_defaultlib.lab2_2test xil_defaultlib.glbl -log elaborate.log"
xelab -wto 58ebdbc35895447eb92da6aaff97a4dc --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot lab2_2test_behav xil_defaultlib.lab2_2test xil_defaultlib.glbl -log elaborate.log

