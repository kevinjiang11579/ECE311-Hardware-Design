#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Nov 18 12:47:46 EST 2019
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim testbench_behav -key {Behavioral:sim_1:Functional:testbench} -tclbatch testbench.tcl -view /home/student/midterm/testbench_behav1.wcfg -log simulate.log"
xsim testbench_behav -key {Behavioral:sim_1:Functional:testbench} -tclbatch testbench.tcl -view /home/student/midterm/testbench_behav1.wcfg -log simulate.log

