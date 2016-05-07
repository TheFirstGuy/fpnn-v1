############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project cmp_max
set_top cmp_max
add_files cmp_max/cmp_max.c
add_files -tb cmp_max/cmp_max_test.c
add_files -tb cmp_max/output_gold.dat
open_solution "solution1"
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
#source "./cmp_max/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
