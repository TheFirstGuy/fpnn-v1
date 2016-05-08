--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: wrapper_timesim.vhd
-- /___/   /\     Timestamp: Sat May 07 20:04:44 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter "C:/Users/Urs Mobile/Dropbox/Code/FPNNV1/iseconfig/filter.filter" -intstyle ise -s 2 -pcf wrapper.pcf -rpw 100 -tpw 0 -ar Structure -tm wrapper -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim wrapper.ncd wrapper_timesim.vhd 
-- Device	: 6vlx75tff484-2 (PRODUCTION 1.17 2013-10-13)
-- Input file	: wrapper.ncd
-- Output file	: C:\Users\Urs Mobile\Dropbox\Code\FPNNV1\netgen\par\wrapper_timesim.vhd
-- # of Entities	: 1
-- Design Name	: wrapper
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity wrapper is
  port (
    clk : in STD_LOGIC := 'X'; 
    broadcast : in STD_LOGIC := 'X'; 
    forward : in STD_LOGIC := 'X'; 
    still_fwd : in STD_LOGIC := 'X'; 
    backward : in STD_LOGIC := 'X'; 
    update : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    northIn : in STD_LOGIC_VECTOR ( 19 downto 0 ); 
    eastIn : in STD_LOGIC_VECTOR ( 19 downto 0 ); 
    westIn : in STD_LOGIC_VECTOR ( 19 downto 0 ); 
    southIn : in STD_LOGIC_VECTOR ( 19 downto 0 ); 
    output : out STD_LOGIC_VECTOR ( 19 downto 0 ) 
  );
end wrapper;

architecture Structure of wrapper is
  signal n_ACT_state_FSM_FFd1_In : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd1_5422 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd4_5423 : STD_LOGIC; 
  signal forward_IBUF_5424 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd3_5425 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd2_5426 : STD_LOGIC; 
  signal n_ACT_acc_t_en_0 : STD_LOGIC; 
  signal n_ACT_U2_n0042_inv : STD_LOGIC; 
  signal reset_IBUF_5430 : STD_LOGIC; 
  signal n_ACT_U9_d_2_Q : STD_LOGIC; 
  signal n_ACT_U9_d_0_Q : STD_LOGIC; 
  signal n_ACT_U9_clr_e_AND_29_o_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal n_ACT_cnt_en : STD_LOGIC; 
  signal n_ACT_mult_enable_0 : STD_LOGIC; 
  signal n_ACT_U1_ready_5437 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal eastIn_12_IBUF_5440 : STD_LOGIC; 
  signal eastIn_13_IBUF_5442 : STD_LOGIC; 
  signal N74_0 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal eastIn_4_IBUF_5446 : STD_LOGIC; 
  signal eastIn_5_IBUF_5448 : STD_LOGIC; 
  signal N90_0 : STD_LOGIC; 
  signal eastIn_18_IBUF_5451 : STD_LOGIC; 
  signal N62_0 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal eastIn_14_IBUF_5455 : STD_LOGIC; 
  signal eastIn_15_IBUF_5457 : STD_LOGIC; 
  signal N70_0 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal eastIn_6_IBUF_5461 : STD_LOGIC; 
  signal eastIn_7_IBUF_5463 : STD_LOGIC; 
  signal N86_0 : STD_LOGIC; 
  signal n_EL_mult_enable : STD_LOGIC; 
  signal update_IBUF_5466 : STD_LOGIC; 
  signal n_NL_U9_res_d_5467 : STD_LOGIC; 
  signal n_NL_update_reg_5468 : STD_LOGIC; 
  signal n_NL_U10_res_d_5469 : STD_LOGIC; 
  signal n_EL_mult_reset_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal n_ACT_U7_f_5474 : STD_LOGIC; 
  signal n_ACT_acc_b_en : STD_LOGIC; 
  signal backward_IBUF_5476 : STD_LOGIC; 
  signal broadcast_IBUF_5477 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal eastIn_19_IBUF_5480 : STD_LOGIC; 
  signal eastIn_1_IBUF_5482 : STD_LOGIC; 
  signal N100_0 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal eastIn_16_IBUF_5486 : STD_LOGIC; 
  signal eastIn_17_IBUF_5488 : STD_LOGIC; 
  signal N66_0 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal eastIn_8_IBUF_5492 : STD_LOGIC; 
  signal eastIn_9_IBUF_5494 : STD_LOGIC; 
  signal N82_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_B_0_Q : STD_LOGIC; 
  signal n_ACT_acc_f_reset0_0 : STD_LOGIC; 
  signal n_ACT_acc_f_reset1 : STD_LOGIC; 
  signal eastIn_0_IBUF_5500 : STD_LOGIC; 
  signal n_ACT_omx_out_0_0 : STD_LOGIC; 
  signal n_ACT_add_ld_a_0 : STD_LOGIC; 
  signal n_ACT_mult_reset : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal eastIn_10_IBUF_5506 : STD_LOGIC; 
  signal eastIn_11_IBUF_5508 : STD_LOGIC; 
  signal N78_0 : STD_LOGIC; 
  signal n_ACT_add_reset : STD_LOGIC; 
  signal n_ACT_add_en_0 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal eastIn_2_IBUF_5514 : STD_LOGIC; 
  signal eastIn_3_IBUF_5516 : STD_LOGIC; 
  signal N94_0 : STD_LOGIC; 
  signal n_EL_F_SEL_CLR : STD_LOGIC; 
  signal still_fwd_IBUF_5519 : STD_LOGIC; 
  signal n_NL_U9_clr_inv_0 : STD_LOGIC; 
  signal n_NL_U4_Maccum_weight_reg_cy_3_Q_5527 : STD_LOGIC; 
  signal n_NL_U4_Maccum_weight_reg_cy_7_Q_5536 : STD_LOGIC; 
  signal n_NL_U4_Maccum_weight_reg_cy_11_Q_5545 : STD_LOGIC; 
  signal n_NL_U4_Maccum_weight_reg_cy_15_Q_5554 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000058_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000092 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000059_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005a_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005b_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005c_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000008e : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005d_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005e_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005f_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000060_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000008a : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000061_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000062_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000063_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000064_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000086 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000065_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000066_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000067_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000068_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000082 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000069_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006a_0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006b_0 : STD_LOGIC; 
  signal n_NL_U2_n0042_inv : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_5618 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_5627 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_5636 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_5645 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q : STD_LOGIC; 
  signal n_ACT_omx_out_1_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q : STD_LOGIC; 
  signal n_ACT_omx_out_2_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_5666 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q : STD_LOGIC; 
  signal n_ACT_omx_out_3_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q : STD_LOGIC; 
  signal n_ACT_omx_out_4_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q : STD_LOGIC; 
  signal n_ACT_omx_out_5_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q : STD_LOGIC; 
  signal n_ACT_omx_out_6_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_5683 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q : STD_LOGIC; 
  signal n_ACT_omx_out_7_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q : STD_LOGIC; 
  signal n_ACT_omx_out_8_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q : STD_LOGIC; 
  signal n_ACT_omx_out_9_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q : STD_LOGIC; 
  signal n_ACT_omx_out_10_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_5700 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q : STD_LOGIC; 
  signal n_ACT_omx_out_11_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q : STD_LOGIC; 
  signal n_ACT_omx_out_12_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q : STD_LOGIC; 
  signal n_ACT_omx_out_13_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q : STD_LOGIC; 
  signal n_ACT_omx_out_14_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_5717 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q : STD_LOGIC; 
  signal n_ACT_omx_out_15_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q : STD_LOGIC; 
  signal n_ACT_omx_out_16_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q : STD_LOGIC; 
  signal n_ACT_omx_out_17_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q : STD_LOGIC; 
  signal n_ACT_omx_out_18_0 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q : STD_LOGIC; 
  signal n_ACT_omx_out_19_0 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_1 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_0 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_2_x_addr_3_AND_10_o : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_0_0 : STD_LOGIC; 
  signal n_ACT_in1_0_Q : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_1_0 : STD_LOGIC; 
  signal n_ACT_in1_1_Q : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_2_0 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q_5749 : STD_LOGIC; 
  signal n_ACT_in1_14_Q : STD_LOGIC; 
  signal n_ACT_U6_x_addr_3 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_3_0 : STD_LOGIC; 
  signal n_ACT_in1_10_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_4_0 : STD_LOGIC; 
  signal n_ACT_in1_11_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_5_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_6_0 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q_5758 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_7_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_8_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_9_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_10_0 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q_5763 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_11_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_12_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_13_0 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_14_0 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q_5769 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_15_0 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_16_0 : STD_LOGIC; 
  signal n_ACT_in1_16_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_17_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_18_0 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_19_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000058_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000092 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000059_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005a_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005b_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005c_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000008e : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005d_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005e_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005f_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000060_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000008a : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000061_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000062_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000063_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000064_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000086 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000065_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000066_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000067_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000068_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000082 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000069_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006a_0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006b_0 : STD_LOGIC; 
  signal n_ACT_U5_Maccum_cnt_cy_3_Q_5829 : STD_LOGIC; 
  signal n_ACT_U5_Maccum_cnt_cy_7_Q_5834 : STD_LOGIC; 
  signal n_ACT_U5_Maccum_cnt_cy_11_Q_5839 : STD_LOGIC; 
  signal n_ACT_U5_Maccum_cnt_cy_15_Q_5844 : STD_LOGIC; 
  signal n_ACT_U4_Maccum_weight_reg_cy_3_Q_5850 : STD_LOGIC; 
  signal n_ACT_U4_Maccum_weight_reg_cy_7_Q_5851 : STD_LOGIC; 
  signal n_ACT_U4_Maccum_weight_reg_cy_11_Q_5852 : STD_LOGIC; 
  signal n_ACT_U4_Maccum_weight_reg_cy_15_Q_5853 : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_cy_3_Q_5854 : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_cy_7_Q_5855 : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_cy_11_Q_5856 : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_cy_15_Q_5857 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_5858 : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG : STD_LOGIC; 
  signal n_NL_mult_in_17_0 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd3_In_0 : STD_LOGIC; 
  signal n_ACT_U9_res_d_0 : STD_LOGIC; 
  signal n_ACT_U10_res_d_5899 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd2_In_5917 : STD_LOGIC; 
  signal N47_0 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_332_5919 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_033_5922 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd4_In : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd4_1_5925 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd1_1_5926 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd2_1_5927 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd3_1_5928 : STD_LOGIC; 
  signal n_NL_U9_clr_e_AND_29_o : STD_LOGIC; 
  signal n_ACT_U10_clr_inv : STD_LOGIC; 
  signal n_ACT_U6_x_addr_2_x_addr_3_AND_10_o4_5933 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_2_x_addr_3_AND_10_o1_5934 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_2_x_addr_3_AND_10_o2_5935 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_33 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_03 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_031_5941 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_132_5942 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_131_5943 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_331_5944 : STD_LOGIC; 
  signal n_ACT_sel_fwd_en_accf : STD_LOGIC; 
  signal n_NL_acc_b_reset : STD_LOGIC; 
  signal n_NL_U10_clr_inv : STD_LOGIC; 
  signal n_ACT_U6_x_addr_032_5948 : STD_LOGIC; 
  signal n_ACT_U10_clr_e_AND_29_o : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal n_ACT_U6_x_addr_13 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd4_In1_5954 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal n_NL_Result_0_1 : STD_LOGIC; 
  signal n_NL_Result_1_1 : STD_LOGIC; 
  signal n_NL_Result_2_1 : STD_LOGIC; 
  signal n_NL_Result_3_1 : STD_LOGIC; 
  signal n_NL_Result_4_1 : STD_LOGIC; 
  signal n_NL_Result_5_1 : STD_LOGIC; 
  signal n_NL_Result_6_1 : STD_LOGIC; 
  signal n_NL_Result_7_1 : STD_LOGIC; 
  signal n_NL_Result_8_1 : STD_LOGIC; 
  signal n_NL_Result_9_1 : STD_LOGIC; 
  signal n_NL_Result_10_1 : STD_LOGIC; 
  signal n_NL_Result_11_1 : STD_LOGIC; 
  signal n_NL_Result_12_1 : STD_LOGIC; 
  signal n_NL_Result_13_1 : STD_LOGIC; 
  signal n_NL_Result_14_1 : STD_LOGIC; 
  signal n_NL_Result_15_1 : STD_LOGIC; 
  signal n_NL_Result_16_1 : STD_LOGIC; 
  signal n_NL_Result_17_1 : STD_LOGIC; 
  signal n_NL_Result_18_1 : STD_LOGIC; 
  signal n_NL_Result_19_1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000aa : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000ab : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000080 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000007f : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000058 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000059 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000007e : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000007d : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000007c : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000007b : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005a : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005b : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005c : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005d : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000007a : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000077 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005e : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000005f : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000060 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000061 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000009f : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000076 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000078 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig000000a2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000079 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000009e : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000075 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000009d : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000074 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000009c : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000073 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000062 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000063 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000064 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000065 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000009b : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000072 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000009a : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000071 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000099 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000070 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000098 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006f : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000066 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000067 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000068 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000069 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000097 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006e : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_334 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_327 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_320 : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_0_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_1_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_2_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_3_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_305 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_374 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_367 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_360 : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_4_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_5_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_6_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_7_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_345 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_414 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_407 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_400 : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_8_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_9_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_10_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_11_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_385 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_454 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_447 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_440 : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_12_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_13_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_14_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_15_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_425 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_492 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_485 : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_478 : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_16_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_17_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_18_Q : STD_LOGIC; 
  signal n_NL_U2_cnt_19_init0_19_mux_6_OUT_19_Q : STD_LOGIC; 
  signal n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_465 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_538 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_529 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_520 : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_0_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_1_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_2_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_3_Q : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_503 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_582 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_573 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_564 : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_4_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_5_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_6_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_7_Q : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_547 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_626 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_617 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_608 : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_8_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_9_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_10_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_11_Q : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_591 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_670 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_661 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_652 : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_12_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_13_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_14_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_15_Q : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_635 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_712 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_703 : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_694 : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_16_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_17_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_18_Q : STD_LOGIC; 
  signal n_ACT_U2_cnt_19_init0_19_mux_6_OUT_19_Q : STD_LOGIC; 
  signal n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_678 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q_748 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q_740 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q_734 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_0_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_1_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_2_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_3_Q : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q_720 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q_784 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q_776 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q_768 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_4_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_5_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_6_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_7_Q : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q_756 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q_822 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q_814 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q_806 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_8_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_9_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_10_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_11_Q : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q_792 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q_858 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q_850 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q_844 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_12_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_13_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_14_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_15_Q : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q_830 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q_890 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q_882 : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q_874 : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_16_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_17_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_18_Q : STD_LOGIC; 
  signal n_ACT_U8_a_19_b_19_add_0_OUT_19_Q : STD_LOGIC; 
  signal n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q_865 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000aa : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000ab : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000080 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000007f : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000058 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000059 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000007e : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000007d : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000007c : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000007b : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005a : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005b : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005c : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005d : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000007a : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000077 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005e : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000005f : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000060 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000061 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000009f : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000076 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000078 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig000000a2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000079 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000009e : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000075 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000009d : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000074 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000009c : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000073 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000062 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000063 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000064 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000065 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000009b : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000072 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000009a : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000071 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000099 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000070 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000098 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006f : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000066 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000067 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000068 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000069 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000097 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006e : STD_LOGIC; 
  signal n_ACT_Result_0_1 : STD_LOGIC; 
  signal n_ACT_Result_1_1 : STD_LOGIC; 
  signal n_ACT_Result_2_1 : STD_LOGIC; 
  signal n_ACT_Result_3_1 : STD_LOGIC; 
  signal n_ACT_Result_4_1 : STD_LOGIC; 
  signal n_ACT_Result_5_1 : STD_LOGIC; 
  signal n_ACT_Result_6_1 : STD_LOGIC; 
  signal n_ACT_Result_7_1 : STD_LOGIC; 
  signal n_ACT_Result_8_1 : STD_LOGIC; 
  signal n_ACT_Result_9_1 : STD_LOGIC; 
  signal n_ACT_Result_10_1 : STD_LOGIC; 
  signal n_ACT_Result_11_1 : STD_LOGIC; 
  signal n_ACT_Result_12_1 : STD_LOGIC; 
  signal n_ACT_Result_13_1 : STD_LOGIC; 
  signal n_ACT_Result_14_1 : STD_LOGIC; 
  signal n_ACT_Result_15_1 : STD_LOGIC; 
  signal n_ACT_Result_16_1 : STD_LOGIC; 
  signal n_ACT_Result_17_1 : STD_LOGIC; 
  signal n_ACT_Result_18_1 : STD_LOGIC; 
  signal n_ACT_Result_19_1 : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_0_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_1_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_2_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_3_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_4_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_5_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_6_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_7_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_8_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_9_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_10_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_11_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_12_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_13_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_14_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_15_Q : STD_LOGIC; 
  signal n_NL_acc_f_in_16_rt_1445 : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_17_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_18_Q : STD_LOGIC; 
  signal n_ACT_U3_Msub_Output_lut_19_Q : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT10 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT11 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT12 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT13 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT14 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT15 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT16 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT17 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT18 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT19 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT20 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT21 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT22 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT23 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT24 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT25 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT26 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT27 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT28 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT29 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT30 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT31 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT32 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT33 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT34 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT35 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT36 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT37 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT38 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT39 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT40 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT41 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT42 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT43 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT44 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT45 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT46 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCOUT47 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P10 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P11 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P12 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P13 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P33 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P34 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P35 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P36 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P38 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P39 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P40 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P41 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P42 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P43 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P44 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P45 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P46 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_P47 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT10 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT11 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT12 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT13 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT14 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT15 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT16 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCOUT17 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT10 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT11 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT12 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT13 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT14 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT15 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT16 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT17 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT18 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT19 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT20 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT21 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT22 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT23 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT24 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT25 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT26 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT27 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT28 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACOUT29 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OVERFLOW : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PATTERNDETECT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_UNDERFLOW : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CARRYCASCOUT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_MULTSIGNOUT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PATTERNBDETECT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN10 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN11 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN12 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN13 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN14 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN15 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN16 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN17 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN18 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN19 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN20 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN21 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN22 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN23 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN24 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN25 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN26 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN27 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN28 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ACIN29 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN10 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN11 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN12 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN13 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN14 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN15 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN16 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_BCIN17 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_INMODE0_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_INMODE1_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_INMODE2_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_INMODE3_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_INMODE4_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE0_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE1_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE2_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE3_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN0 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN1 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN2 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN3 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN4 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN5 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN6 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN7 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN8 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN9 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN10 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN11 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN12 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN13 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN14 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN15 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN16 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN17 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN18 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN19 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN20 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN21 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN22 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN23 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN24 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN25 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN26 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN27 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN28 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN29 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN30 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN31 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN32 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN33 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN34 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN35 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN36 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN37 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN38 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN39 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN40 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN41 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN42 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN43 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN44 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN45 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN46 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_PCIN47 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OPMODE0_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OPMODE1_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OPMODE2_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OPMODE3_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OPMODE4_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OPMODE5_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_OPMODE6_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CARRYCASCIN : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CARRYIN_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_CLK_INT : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_blk00000046_MULTSIGNIN : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_EOS : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_DINSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_PREQ : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_TCKSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_CFGCLK : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT10 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT11 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT12 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT13 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT14 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT15 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT16 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT17 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT18 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT19 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT20 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT21 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT22 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT23 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT24 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT25 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT26 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT27 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT28 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT29 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT30 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT31 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT32 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT33 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT34 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT35 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT36 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT37 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT38 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT39 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT40 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT41 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT42 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT43 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT44 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT45 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT46 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCOUT47 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P10 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P11 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P12 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P13 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P33 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P34 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P35 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P36 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P38 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P39 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P40 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P41 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P42 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P43 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P44 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P45 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P46 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_P47 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT10 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT11 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT12 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT13 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT14 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT15 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT16 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCOUT17 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT10 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT11 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT12 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT13 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT14 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT15 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT16 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT17 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT18 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT19 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT20 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT21 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT22 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT23 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT24 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT25 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT26 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT27 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT28 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACOUT29 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OVERFLOW : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PATTERNDETECT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_UNDERFLOW : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CARRYCASCOUT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_MULTSIGNOUT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PATTERNBDETECT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN10 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN11 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN12 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN13 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN14 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN15 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN16 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN17 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN18 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN19 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN20 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN21 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN22 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN23 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN24 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN25 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN26 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN27 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN28 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ACIN29 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN10 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN11 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN12 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN13 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN14 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN15 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN16 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_BCIN17 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_INMODE0_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_INMODE1_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_INMODE2_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_INMODE3_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_INMODE4_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ALUMODE0_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ALUMODE1_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ALUMODE2_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_ALUMODE3_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN0 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN1 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN2 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN3 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN4 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN5 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN6 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN7 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN8 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN9 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN10 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN11 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN12 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN13 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN14 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN15 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN16 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN17 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN18 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN19 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN20 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN21 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN22 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN23 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN24 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN25 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN26 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN27 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN28 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN29 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN30 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN31 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN32 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN33 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN34 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN35 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN36 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN37 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN38 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN39 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN40 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN41 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN42 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN43 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN44 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN45 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN46 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_PCIN47 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OPMODE0_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OPMODE1_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OPMODE2_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OPMODE3_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OPMODE4_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OPMODE5_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_OPMODE6_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CARRYCASCIN : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CARRYIN_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_CLK_INT : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_blk00000046_MULTSIGNIN : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006c : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006a : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006b : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig00000096 : STD_LOGIC; 
  signal n_NL_U1_U1_blk00000001_sig0000006d : STD_LOGIC; 
  signal n_EL_mult_reset : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal n_ACT_U9_predand_3_d_3_or_3_OUT_0_Q : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal n_ACT_U9_clr_e_AND_29_o : STD_LOGIC; 
  signal n_NL_U10_clr_inv_pack_1 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal n_ACT_add_ld_a : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal n_ACT_mult_enable : STD_LOGIC; 
  signal n_ACT_U10_clr_e_AND_29_o_pack_2 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal n_NL_U9_clr_inv : STD_LOGIC; 
  signal n_ACT_acc_t_en : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_12_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_11_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_14_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_10_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_13_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_18_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_19_Q : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal n_ACT_state_FSM_FFd3_In : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_7_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_9_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_4_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_3_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_8_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_5_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_1_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_15_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_16_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_17_Q : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal n_ACT_U7_cnt_1_GND_17_o_equal_4_o : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal n_ACT_add_en : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_0_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_2_Q : STD_LOGIC; 
  signal n_ACT_U8_sum_19_a_19_mux_3_OUT_6_Q : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006d : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig00000096 : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006b : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006c : STD_LOGIC; 
  signal n_ACT_U1_U1_blk00000001_sig0000006a : STD_LOGIC; 
  signal n_ACT_U9_res_d_5317 : STD_LOGIC; 
  signal forward_IBUF_rt_5313 : STD_LOGIC; 
  signal n_ACT_acc_f_reset0 : STD_LOGIC; 
  signal n_ACT_U7_cnt_0_pack_1 : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U4_weight_reg_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U2_cnt_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U2_cnt_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U5_cnt_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_Maccum_weight_reg_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_Maccum_weight_reg_cy_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U4_weight_reg_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_output_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_43_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_42_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_41_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_40_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_35_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_34_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_33_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_31_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_30_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_29_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_27_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_26_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_25_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_24_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_23_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_22_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_21_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_20_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_15_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_13_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_43_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_42_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_41_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_40_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_39_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_35_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_34_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_33_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_31_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_30_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_29_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_26_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_25_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_24_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_23_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_22_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_21_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_20_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_B_14_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_B_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_update_reg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_update_reg_IN : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U9_d_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U9_d_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U10_res_d_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U10_res_d_IN : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U1_ready_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U10_d_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U9_d_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd3_IN : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U9_res_d_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_NL_U9_res_d_IN : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U7_f_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U8_sum_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_state_FSM_FFd3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U10_res_d_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U10_res_d_IN : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U9_res_d_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U7_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_n_ACT_U7_cnt_0_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ProtoComp14_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U4_Maccum_weight_reg_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp18_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000002a_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000002a_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000002a_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000002a_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000002a_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000026_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000026_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000026_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000022_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000022_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000022_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000001e_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000001e_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000001e_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000001a_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000001a_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk0000001a_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp22_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp25_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp28_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp18_CYINITGND_1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000002a_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000002a_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000002a_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000002a_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000002a_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000026_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000026_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000026_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000022_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000022_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000022_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000001e_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000001e_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000001e_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000001a_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000001a_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk0000001a_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp33_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U5_Maccum_cnt_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp14_CYINITGND_1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U4_Maccum_weight_reg_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp36_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_18_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_19_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_14_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_16_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_10_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_12_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_6_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_8_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U3_Msub_Output_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U10_d_1_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_NL_U1_U1_blk00000001_blk00000004_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_n_ACT_U1_U1_blk00000001_blk00000004_S_3_UNCONNECTED : STD_LOGIC; 
  signal n_EL_acc_f_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U7_cnt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal n_NL_U4_weight_reg : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_acc_b_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_mult_w_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_mult_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_NL_U2_cnt : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_NL_acc_f_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U2_cnt : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U4_weight_reg : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_NL_mult_w_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_NL_mult_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U5_cnt : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U8_sum : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_NL_U9_d : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal n_ACT_U10_d : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal n_NL_U4_Maccum_weight_reg_lut : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U5_Maccum_cnt_lut : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U4_Maccum_weight_reg_lut : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_omx_out : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal n_ACT_U7_GND_17_o_PWR_18_o_mux_2_OUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  n_NL_U4_weight_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_3_CLK,
      I => n_NL_Result_3_1,
      O => n_NL_U4_weight_reg(3),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(3),
      ADR4 => '1',
      ADR1 => n_ACT_acc_b_in(4),
      O => n_NL_U4_Maccum_weight_reg_lut(3)
    );
  ProtoComp14_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X11Y53"
    )
    port map (
      O => NLW_ProtoComp14_CYINITGND_O_UNCONNECTED
    );
  n_NL_U4_weight_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_2_CLK,
      I => n_NL_Result_2_1,
      O => n_NL_U4_weight_reg(2),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X11Y53"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_NL_U4_Maccum_weight_reg_cy_3_Q_5527,
      CO(2) => NLW_n_NL_U4_Maccum_weight_reg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U4_Maccum_weight_reg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U4_Maccum_weight_reg_cy_3_CO_0_UNCONNECTED,
      DI(3) => n_NL_U4_weight_reg(3),
      DI(2) => n_NL_U4_weight_reg(2),
      DI(1) => n_NL_U4_weight_reg(1),
      DI(0) => n_NL_U4_weight_reg(0),
      O(3) => n_NL_Result_3_1,
      O(2) => n_NL_Result_2_1,
      O(1) => n_NL_Result_1_1,
      O(0) => n_NL_Result_0_1,
      S(3) => n_NL_U4_Maccum_weight_reg_lut(3),
      S(2) => n_NL_U4_Maccum_weight_reg_lut(2),
      S(1) => n_NL_U4_Maccum_weight_reg_lut(1),
      S(0) => n_NL_U4_Maccum_weight_reg_lut(0)
    );
  n_NL_U4_Maccum_weight_reg_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_NL_U4_weight_reg(2),
      ADR3 => '1',
      ADR2 => n_ACT_acc_b_in(3),
      O => n_NL_U4_Maccum_weight_reg_lut(2)
    );
  n_NL_U4_weight_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_1_CLK,
      I => n_NL_Result_1_1,
      O => n_NL_U4_weight_reg(1),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(1),
      ADR4 => '1',
      ADR1 => n_ACT_acc_b_in(2),
      O => n_NL_U4_Maccum_weight_reg_lut(1)
    );
  n_NL_U4_weight_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_0_CLK,
      I => n_NL_Result_0_1,
      O => n_NL_U4_weight_reg(0),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y53",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(0),
      ADR5 => '1',
      ADR3 => n_ACT_acc_b_in(1),
      O => n_NL_U4_Maccum_weight_reg_lut(0)
    );
  n_NL_U4_weight_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_7_CLK,
      I => n_NL_Result_7_1,
      O => n_NL_U4_weight_reg(7),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(7),
      ADR4 => '1',
      ADR0 => n_ACT_acc_b_in(8),
      O => n_NL_U4_Maccum_weight_reg_lut(7)
    );
  n_NL_U4_weight_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_6_CLK,
      I => n_NL_Result_6_1,
      O => n_NL_U4_weight_reg(6),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X11Y54"
    )
    port map (
      CI => n_NL_U4_Maccum_weight_reg_cy_3_Q_5527,
      CYINIT => '0',
      CO(3) => n_NL_U4_Maccum_weight_reg_cy_7_Q_5536,
      CO(2) => NLW_n_NL_U4_Maccum_weight_reg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U4_Maccum_weight_reg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U4_Maccum_weight_reg_cy_7_CO_0_UNCONNECTED,
      DI(3) => n_NL_U4_weight_reg(7),
      DI(2) => n_NL_U4_weight_reg(6),
      DI(1) => n_NL_U4_weight_reg(5),
      DI(0) => n_NL_U4_weight_reg(4),
      O(3) => n_NL_Result_7_1,
      O(2) => n_NL_Result_6_1,
      O(1) => n_NL_Result_5_1,
      O(0) => n_NL_Result_4_1,
      S(3) => n_NL_U4_Maccum_weight_reg_lut(7),
      S(2) => n_NL_U4_Maccum_weight_reg_lut(6),
      S(1) => n_NL_U4_Maccum_weight_reg_lut(5),
      S(0) => n_NL_U4_Maccum_weight_reg_lut(4)
    );
  n_NL_U4_Maccum_weight_reg_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(6),
      ADR5 => '1',
      ADR3 => n_ACT_acc_b_in(7),
      O => n_NL_U4_Maccum_weight_reg_lut(6)
    );
  n_NL_U4_weight_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_5_CLK,
      I => n_NL_Result_5_1,
      O => n_NL_U4_weight_reg(5),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(5),
      ADR4 => '1',
      ADR1 => n_ACT_acc_b_in(6),
      O => n_NL_U4_Maccum_weight_reg_lut(5)
    );
  n_NL_U4_weight_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_4_CLK,
      I => n_NL_Result_4_1,
      O => n_NL_U4_weight_reg(4),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y54",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(4),
      ADR5 => '1',
      ADR3 => n_ACT_acc_b_in(5),
      O => n_NL_U4_Maccum_weight_reg_lut(4)
    );
  n_NL_U4_weight_reg_11 : X_FF
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_11_CLK,
      I => n_NL_Result_11_1,
      O => n_NL_U4_weight_reg(11),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(11),
      ADR5 => '1',
      ADR4 => n_ACT_acc_b_in(12),
      O => n_NL_U4_Maccum_weight_reg_lut(11)
    );
  n_NL_U4_weight_reg_10 : X_FF
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_10_CLK,
      I => n_NL_Result_10_1,
      O => n_NL_U4_weight_reg(10),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X11Y55"
    )
    port map (
      CI => n_NL_U4_Maccum_weight_reg_cy_7_Q_5536,
      CYINIT => '0',
      CO(3) => n_NL_U4_Maccum_weight_reg_cy_11_Q_5545,
      CO(2) => NLW_n_NL_U4_Maccum_weight_reg_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U4_Maccum_weight_reg_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U4_Maccum_weight_reg_cy_11_CO_0_UNCONNECTED,
      DI(3) => n_NL_U4_weight_reg(11),
      DI(2) => n_NL_U4_weight_reg(10),
      DI(1) => n_NL_U4_weight_reg(9),
      DI(0) => n_NL_U4_weight_reg(8),
      O(3) => n_NL_Result_11_1,
      O(2) => n_NL_Result_10_1,
      O(1) => n_NL_Result_9_1,
      O(0) => n_NL_Result_8_1,
      S(3) => n_NL_U4_Maccum_weight_reg_lut(11),
      S(2) => n_NL_U4_Maccum_weight_reg_lut(10),
      S(1) => n_NL_U4_Maccum_weight_reg_lut(9),
      S(0) => n_NL_U4_Maccum_weight_reg_lut(8)
    );
  n_NL_U4_Maccum_weight_reg_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(10),
      ADR5 => '1',
      ADR3 => n_ACT_acc_b_in(11),
      O => n_NL_U4_Maccum_weight_reg_lut(10)
    );
  n_NL_U4_weight_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_9_CLK,
      I => n_NL_Result_9_1,
      O => n_NL_U4_weight_reg(9),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(9),
      ADR4 => '1',
      ADR1 => n_ACT_acc_b_in(10),
      O => n_NL_U4_Maccum_weight_reg_lut(9)
    );
  n_NL_U4_weight_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_8_CLK,
      I => n_NL_Result_8_1,
      O => n_NL_U4_weight_reg(8),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y55",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(8),
      ADR3 => '1',
      ADR5 => n_ACT_acc_b_in(9),
      O => n_NL_U4_Maccum_weight_reg_lut(8)
    );
  n_NL_U4_weight_reg_15 : X_FF
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => '1'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_15_CLK,
      I => n_NL_Result_15_1,
      O => n_NL_U4_weight_reg(15),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(15),
      ADR4 => '1',
      ADR0 => n_ACT_acc_b_in(16),
      O => n_NL_U4_Maccum_weight_reg_lut(15)
    );
  n_NL_U4_weight_reg_14 : X_FF
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_14_CLK,
      I => n_NL_Result_14_1,
      O => n_NL_U4_weight_reg(14),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X11Y56"
    )
    port map (
      CI => n_NL_U4_Maccum_weight_reg_cy_11_Q_5545,
      CYINIT => '0',
      CO(3) => n_NL_U4_Maccum_weight_reg_cy_15_Q_5554,
      CO(2) => NLW_n_NL_U4_Maccum_weight_reg_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U4_Maccum_weight_reg_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U4_Maccum_weight_reg_cy_15_CO_0_UNCONNECTED,
      DI(3) => n_NL_U4_weight_reg(15),
      DI(2) => n_NL_U4_weight_reg(14),
      DI(1) => n_NL_U4_weight_reg(13),
      DI(0) => n_NL_U4_weight_reg(12),
      O(3) => n_NL_Result_15_1,
      O(2) => n_NL_Result_14_1,
      O(1) => n_NL_Result_13_1,
      O(0) => n_NL_Result_12_1,
      S(3) => n_NL_U4_Maccum_weight_reg_lut(15),
      S(2) => n_NL_U4_Maccum_weight_reg_lut(14),
      S(1) => n_NL_U4_Maccum_weight_reg_lut(13),
      S(0) => n_NL_U4_Maccum_weight_reg_lut(12)
    );
  n_NL_U4_Maccum_weight_reg_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(14),
      ADR5 => '1',
      ADR3 => n_ACT_acc_b_in(15),
      O => n_NL_U4_Maccum_weight_reg_lut(14)
    );
  n_NL_U4_weight_reg_13 : X_FF
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_13_CLK,
      I => n_NL_Result_13_1,
      O => n_NL_U4_weight_reg(13),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(13),
      ADR4 => '1',
      ADR1 => n_ACT_acc_b_in(14),
      O => n_NL_U4_Maccum_weight_reg_lut(13)
    );
  n_NL_U4_weight_reg_12 : X_FF
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_12_CLK,
      I => n_NL_Result_12_1,
      O => n_NL_U4_weight_reg(12),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y56",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(12),
      ADR3 => '1',
      ADR5 => n_ACT_acc_b_in(13),
      O => n_NL_U4_Maccum_weight_reg_lut(12)
    );
  n_NL_U4_weight_reg_19 : X_FF
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_19_CLK,
      I => n_NL_Result_19_1,
      O => n_NL_U4_weight_reg(19),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(19),
      ADR5 => '1',
      ADR4 => n_ACT_acc_b_in(19),
      O => n_NL_U4_Maccum_weight_reg_lut(19)
    );
  n_NL_U4_weight_reg_18 : X_FF
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_18_CLK,
      I => n_NL_Result_18_1,
      O => n_NL_U4_weight_reg(18),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X11Y57"
    )
    port map (
      CI => n_NL_U4_Maccum_weight_reg_cy_15_Q_5554,
      CYINIT => '0',
      CO(3) => NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U4_Maccum_weight_reg_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_n_NL_U4_Maccum_weight_reg_xor_19_DI_3_UNCONNECTED,
      DI(2) => n_NL_U4_weight_reg(18),
      DI(1) => n_NL_U4_weight_reg(17),
      DI(0) => n_NL_U4_weight_reg(16),
      O(3) => n_NL_Result_19_1,
      O(2) => n_NL_Result_18_1,
      O(1) => n_NL_Result_17_1,
      O(0) => n_NL_Result_16_1,
      S(3) => n_NL_U4_Maccum_weight_reg_lut(19),
      S(2) => n_NL_U4_Maccum_weight_reg_lut(18),
      S(1) => n_NL_U4_Maccum_weight_reg_lut(17),
      S(0) => n_NL_U4_Maccum_weight_reg_lut(16)
    );
  n_NL_U4_Maccum_weight_reg_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(18),
      ADR3 => '1',
      ADR0 => n_ACT_acc_b_in(19),
      O => n_NL_U4_Maccum_weight_reg_lut(18)
    );
  n_NL_U4_weight_reg_17 : X_FF
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_17_CLK,
      I => n_NL_Result_17_1,
      O => n_NL_U4_weight_reg(17),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_NL_U4_weight_reg(17),
      ADR4 => '1',
      ADR1 => n_ACT_acc_b_in(18),
      O => n_NL_U4_Maccum_weight_reg_lut(17)
    );
  n_NL_U4_weight_reg_16 : X_FF
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => '0'
    )
    port map (
      CE => n_EL_mult_reset_0,
      CLK => NlwBufferSignal_n_NL_U4_weight_reg_16_CLK,
      I => n_NL_Result_16_1,
      O => n_NL_U4_weight_reg(16),
      RST => GND,
      SET => GND
    );
  n_NL_U4_Maccum_weight_reg_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y57",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_U4_weight_reg(16),
      ADR3 => '1',
      ADR5 => n_ACT_acc_b_in(17),
      O => n_NL_U4_Maccum_weight_reg_lut(16)
    );
  n_ACT_U1_U1_blk00000001_sig00000092_n_ACT_U1_U1_blk00000001_sig00000092_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000059,
      O => n_ACT_U1_U1_blk00000001_sig00000059_0
    );
  n_ACT_U1_U1_blk00000001_sig00000092_n_ACT_U1_U1_blk00000001_sig00000092_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000058,
      O => n_ACT_U1_U1_blk00000001_sig00000058_0
    );
  n_ACT_U1_U1_blk00000001_blk0000004d : X_LUT6
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_mult_w_in(2),
      ADR4 => n_ACT_mult_in(1),
      ADR1 => n_ACT_mult_w_in(3),
      ADR3 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000007e
    );
  n_ACT_U1_U1_blk00000001_blk00000040 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_mult_w_in(2),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR1 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a7
    );
  ProtoComp18_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X27Y65"
    )
    port map (
      O => NLW_ProtoComp18_CYINITGND_O_UNCONNECTED
    );
  n_ACT_U1_U1_blk00000001_blk0000002a : X_CARRY4
    generic map(
      LOC => "SLICE_X27Y65"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_ACT_U1_U1_blk00000001_sig00000092,
      CO(2) => NLW_n_ACT_U1_U1_blk00000001_blk0000002a_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U1_U1_blk00000001_blk0000002a_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U1_U1_blk00000001_blk0000002a_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U1_U1_blk00000001_sig000000a7,
      DI(2) => n_ACT_U1_U1_blk00000001_sig000000a8,
      DI(1) => n_ACT_U1_U1_blk00000001_sig000000a9,
      DI(0) => n_ACT_U1_U1_blk00000001_sig000000aa,
      O(3) => n_ACT_U1_U1_blk00000001_sig00000059,
      O(2) => n_ACT_U1_U1_blk00000001_sig00000058,
      O(1) => NLW_n_ACT_U1_U1_blk00000001_blk0000002a_O_1_UNCONNECTED,
      O(0) => NLW_n_ACT_U1_U1_blk00000001_blk0000002a_O_0_UNCONNECTED,
      S(3) => n_ACT_U1_U1_blk00000001_sig0000007e,
      S(2) => n_ACT_U1_U1_blk00000001_sig0000007f,
      S(1) => n_ACT_U1_U1_blk00000001_sig00000080,
      S(0) => n_ACT_U1_U1_blk00000001_sig000000ab
    );
  n_ACT_U1_U1_blk00000001_blk0000004e : X_LUT6
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_mult_w_in(1),
      ADR4 => n_ACT_mult_in(1),
      ADR2 => n_ACT_mult_w_in(2),
      ADR3 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000007f
    );
  n_ACT_U1_U1_blk00000001_blk00000041 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_mult_w_in(1),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a8
    );
  n_ACT_U1_U1_blk00000001_blk00000051 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_mult_w_in(0),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => n_ACT_mult_w_in(1),
      ADR2 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000080
    );
  n_ACT_U1_U1_blk00000001_blk00000042 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_mult_w_in(0),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a9
    );
  n_ACT_U1_U1_blk00000001_blk0000005c : X_LUT6
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_mult_w_in(0),
      ADR4 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000ab
    );
  n_ACT_U1_U1_blk00000001_blk00000043 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y65",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_mult_w_in(0),
      ADR4 => n_ACT_mult_in(0),
      O => n_ACT_U1_U1_blk00000001_sig000000aa
    );
  n_ACT_U1_U1_blk00000001_sig0000008e_n_ACT_U1_U1_blk00000001_sig0000008e_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000005d,
      O => n_ACT_U1_U1_blk00000001_sig0000005d_0
    );
  n_ACT_U1_U1_blk00000001_sig0000008e_n_ACT_U1_U1_blk00000001_sig0000008e_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000005c,
      O => n_ACT_U1_U1_blk00000001_sig0000005c_0
    );
  n_ACT_U1_U1_blk00000001_sig0000008e_n_ACT_U1_U1_blk00000001_sig0000008e_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000005b,
      O => n_ACT_U1_U1_blk00000001_sig0000005b_0
    );
  n_ACT_U1_U1_blk00000001_sig0000008e_n_ACT_U1_U1_blk00000001_sig0000008e_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000005a,
      O => n_ACT_U1_U1_blk00000001_sig0000005a_0
    );
  n_ACT_U1_U1_blk00000001_blk00000049 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_ACT_mult_w_in(6),
      ADR4 => n_ACT_mult_in(1),
      ADR2 => n_ACT_mult_w_in(7),
      ADR0 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000007a
    );
  n_ACT_U1_U1_blk00000001_blk0000003c : X_LUT5
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_ACT_mult_w_in(6),
      ADR4 => n_ACT_mult_in(1),
      ADR1 => '1',
      ADR2 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a3
    );
  n_ACT_U1_U1_blk00000001_blk00000026 : X_CARRY4
    generic map(
      LOC => "SLICE_X27Y66"
    )
    port map (
      CI => n_ACT_U1_U1_blk00000001_sig00000092,
      CYINIT => '0',
      CO(3) => n_ACT_U1_U1_blk00000001_sig0000008e,
      CO(2) => NLW_n_ACT_U1_U1_blk00000001_blk00000026_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U1_U1_blk00000001_blk00000026_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U1_U1_blk00000001_blk00000026_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U1_U1_blk00000001_sig000000a3,
      DI(2) => n_ACT_U1_U1_blk00000001_sig000000a4,
      DI(1) => n_ACT_U1_U1_blk00000001_sig000000a5,
      DI(0) => n_ACT_U1_U1_blk00000001_sig000000a6,
      O(3) => n_ACT_U1_U1_blk00000001_sig0000005d,
      O(2) => n_ACT_U1_U1_blk00000001_sig0000005c,
      O(1) => n_ACT_U1_U1_blk00000001_sig0000005b,
      O(0) => n_ACT_U1_U1_blk00000001_sig0000005a,
      S(3) => n_ACT_U1_U1_blk00000001_sig0000007a,
      S(2) => n_ACT_U1_U1_blk00000001_sig0000007b,
      S(1) => n_ACT_U1_U1_blk00000001_sig0000007c,
      S(0) => n_ACT_U1_U1_blk00000001_sig0000007d
    );
  n_ACT_U1_U1_blk00000001_blk0000004a : X_LUT6
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_mult_w_in(5),
      ADR3 => n_ACT_mult_in(1),
      ADR1 => n_ACT_mult_w_in(6),
      ADR4 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000007b
    );
  n_ACT_U1_U1_blk00000001_blk0000003d : X_LUT5
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_mult_w_in(5),
      ADR3 => n_ACT_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a4
    );
  n_ACT_U1_U1_blk00000001_blk0000004b : X_LUT6
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_mult_w_in(4),
      ADR3 => n_ACT_mult_in(1),
      ADR2 => n_ACT_mult_w_in(5),
      ADR4 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000007c
    );
  n_ACT_U1_U1_blk00000001_blk0000003e : X_LUT5
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"AA00AA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_mult_w_in(4),
      ADR3 => n_ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a5
    );
  n_ACT_U1_U1_blk00000001_blk0000004c : X_LUT6
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(3),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => n_ACT_mult_w_in(4),
      ADR0 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000007d
    );
  n_ACT_U1_U1_blk00000001_blk0000003f : X_LUT5
    generic map(
      LOC => "SLICE_X27Y66",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_mult_w_in(3),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR1 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a6
    );
  n_ACT_U1_U1_blk00000001_sig0000008a_n_ACT_U1_U1_blk00000001_sig0000008a_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000061,
      O => n_ACT_U1_U1_blk00000001_sig00000061_0
    );
  n_ACT_U1_U1_blk00000001_sig0000008a_n_ACT_U1_U1_blk00000001_sig0000008a_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000060,
      O => n_ACT_U1_U1_blk00000001_sig00000060_0
    );
  n_ACT_U1_U1_blk00000001_sig0000008a_n_ACT_U1_U1_blk00000001_sig0000008a_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000005f,
      O => n_ACT_U1_U1_blk00000001_sig0000005f_0
    );
  n_ACT_U1_U1_blk00000001_sig0000008a_n_ACT_U1_U1_blk00000001_sig0000008a_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000005e,
      O => n_ACT_U1_U1_blk00000001_sig0000005e_0
    );
  n_ACT_U1_U1_blk00000001_blk0000005a : X_LUT6
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(10),
      ADR4 => n_ACT_mult_in(1),
      ADR0 => n_ACT_mult_w_in(11),
      ADR3 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000076
    );
  n_ACT_U1_U1_blk00000001_blk00000038 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_mult_w_in(10),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR1 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000009f
    );
  n_ACT_U1_U1_blk00000001_blk00000022 : X_CARRY4
    generic map(
      LOC => "SLICE_X27Y67"
    )
    port map (
      CI => n_ACT_U1_U1_blk00000001_sig0000008e,
      CYINIT => '0',
      CO(3) => n_ACT_U1_U1_blk00000001_sig0000008a,
      CO(2) => NLW_n_ACT_U1_U1_blk00000001_blk00000022_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U1_U1_blk00000001_blk00000022_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U1_U1_blk00000001_blk00000022_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U1_U1_blk00000001_sig0000009f,
      DI(2) => n_ACT_U1_U1_blk00000001_sig000000a0,
      DI(1) => n_ACT_U1_U1_blk00000001_sig000000a1,
      DI(0) => n_ACT_U1_U1_blk00000001_sig000000a2,
      O(3) => n_ACT_U1_U1_blk00000001_sig00000061,
      O(2) => n_ACT_U1_U1_blk00000001_sig00000060,
      O(1) => n_ACT_U1_U1_blk00000001_sig0000005f,
      O(0) => n_ACT_U1_U1_blk00000001_sig0000005e,
      S(3) => n_ACT_U1_U1_blk00000001_sig00000076,
      S(2) => n_ACT_U1_U1_blk00000001_sig00000077,
      S(1) => n_ACT_U1_U1_blk00000001_sig00000078,
      S(0) => n_ACT_U1_U1_blk00000001_sig00000079
    );
  n_ACT_U1_U1_blk00000001_blk0000005b : X_LUT6
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_ACT_mult_w_in(10),
      ADR0 => n_ACT_mult_in(0),
      ADR4 => n_ACT_mult_w_in(9),
      ADR2 => n_ACT_mult_in(1),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000077
    );
  n_ACT_U1_U1_blk00000001_blk00000039 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => n_ACT_mult_w_in(9),
      ADR2 => n_ACT_mult_in(1),
      O => n_ACT_U1_U1_blk00000001_sig000000a0
    );
  n_ACT_U1_U1_blk00000001_blk00000047 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(8),
      ADR0 => n_ACT_mult_in(1),
      ADR4 => n_ACT_mult_w_in(9),
      ADR3 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000078
    );
  n_ACT_U1_U1_blk00000001_blk0000003a : X_LUT5
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(8),
      ADR0 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a1
    );
  n_ACT_U1_U1_blk00000001_blk00000048 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_ACT_mult_w_in(7),
      ADR4 => n_ACT_mult_in(1),
      ADR0 => n_ACT_mult_w_in(8),
      ADR2 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000079
    );
  n_ACT_U1_U1_blk00000001_blk0000003b : X_LUT5
    generic map(
      LOC => "SLICE_X27Y67",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_ACT_mult_w_in(7),
      ADR4 => n_ACT_mult_in(1),
      ADR1 => '1',
      ADR2 => '1',
      O => n_ACT_U1_U1_blk00000001_sig000000a2
    );
  n_ACT_U1_U1_blk00000001_sig00000086_n_ACT_U1_U1_blk00000001_sig00000086_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000065,
      O => n_ACT_U1_U1_blk00000001_sig00000065_0
    );
  n_ACT_U1_U1_blk00000001_sig00000086_n_ACT_U1_U1_blk00000001_sig00000086_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000064,
      O => n_ACT_U1_U1_blk00000001_sig00000064_0
    );
  n_ACT_U1_U1_blk00000001_sig00000086_n_ACT_U1_U1_blk00000001_sig00000086_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000063,
      O => n_ACT_U1_U1_blk00000001_sig00000063_0
    );
  n_ACT_U1_U1_blk00000001_sig00000086_n_ACT_U1_U1_blk00000001_sig00000086_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000062,
      O => n_ACT_U1_U1_blk00000001_sig00000062_0
    );
  n_ACT_U1_U1_blk00000001_blk00000056 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_ACT_mult_w_in(14),
      ADR1 => n_ACT_mult_in(1),
      ADR4 => n_ACT_mult_w_in(15),
      ADR2 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000072
    );
  n_ACT_U1_U1_blk00000001_blk00000034 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_ACT_mult_w_in(14),
      ADR1 => n_ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000009b
    );
  n_ACT_U1_U1_blk00000001_blk0000001e : X_CARRY4
    generic map(
      LOC => "SLICE_X27Y68"
    )
    port map (
      CI => n_ACT_U1_U1_blk00000001_sig0000008a,
      CYINIT => '0',
      CO(3) => n_ACT_U1_U1_blk00000001_sig00000086,
      CO(2) => NLW_n_ACT_U1_U1_blk00000001_blk0000001e_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U1_U1_blk00000001_blk0000001e_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U1_U1_blk00000001_blk0000001e_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U1_U1_blk00000001_sig0000009b,
      DI(2) => n_ACT_U1_U1_blk00000001_sig0000009c,
      DI(1) => n_ACT_U1_U1_blk00000001_sig0000009d,
      DI(0) => n_ACT_U1_U1_blk00000001_sig0000009e,
      O(3) => n_ACT_U1_U1_blk00000001_sig00000065,
      O(2) => n_ACT_U1_U1_blk00000001_sig00000064,
      O(1) => n_ACT_U1_U1_blk00000001_sig00000063,
      O(0) => n_ACT_U1_U1_blk00000001_sig00000062,
      S(3) => n_ACT_U1_U1_blk00000001_sig00000072,
      S(2) => n_ACT_U1_U1_blk00000001_sig00000073,
      S(1) => n_ACT_U1_U1_blk00000001_sig00000074,
      S(0) => n_ACT_U1_U1_blk00000001_sig00000075
    );
  n_ACT_U1_U1_blk00000001_blk00000057 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_ACT_mult_w_in(13),
      ADR2 => n_ACT_mult_in(1),
      ADR1 => n_ACT_mult_w_in(14),
      ADR3 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000073
    );
  n_ACT_U1_U1_blk00000001_blk00000035 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_ACT_mult_w_in(13),
      ADR2 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR1 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000009c
    );
  n_ACT_U1_U1_blk00000001_blk00000058 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(12),
      ADR0 => n_ACT_mult_in(1),
      ADR4 => n_ACT_mult_w_in(13),
      ADR3 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000074
    );
  n_ACT_U1_U1_blk00000001_blk00000036 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(12),
      ADR0 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000009d
    );
  n_ACT_U1_U1_blk00000001_blk00000059 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_ACT_mult_w_in(11),
      ADR0 => n_ACT_mult_in(1),
      ADR4 => n_ACT_mult_w_in(12),
      ADR2 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000075
    );
  n_ACT_U1_U1_blk00000001_blk00000037 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y68",
      INIT => X"AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR3 => n_ACT_mult_w_in(11),
      ADR0 => n_ACT_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000009e
    );
  n_ACT_U1_U1_blk00000001_sig00000082_n_ACT_U1_U1_blk00000001_sig00000082_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000069,
      O => n_ACT_U1_U1_blk00000001_sig00000069_0
    );
  n_ACT_U1_U1_blk00000001_sig00000082_n_ACT_U1_U1_blk00000001_sig00000082_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000068,
      O => n_ACT_U1_U1_blk00000001_sig00000068_0
    );
  n_ACT_U1_U1_blk00000001_sig00000082_n_ACT_U1_U1_blk00000001_sig00000082_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000067,
      O => n_ACT_U1_U1_blk00000001_sig00000067_0
    );
  n_ACT_U1_U1_blk00000001_sig00000082_n_ACT_U1_U1_blk00000001_sig00000082_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000066,
      O => n_ACT_U1_U1_blk00000001_sig00000066_0
    );
  n_ACT_U1_U1_blk00000001_blk00000052 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_mult_w_in(18),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => n_ACT_mult_w_in(19),
      ADR2 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000006e
    );
  n_ACT_U1_U1_blk00000001_blk00000030 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_mult_w_in(18),
      ADR4 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000097
    );
  n_ACT_U1_U1_blk00000001_blk0000001a : X_CARRY4
    generic map(
      LOC => "SLICE_X27Y69"
    )
    port map (
      CI => n_ACT_U1_U1_blk00000001_sig00000086,
      CYINIT => '0',
      CO(3) => n_ACT_U1_U1_blk00000001_sig00000082,
      CO(2) => NLW_n_ACT_U1_U1_blk00000001_blk0000001a_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U1_U1_blk00000001_blk0000001a_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U1_U1_blk00000001_blk0000001a_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U1_U1_blk00000001_sig00000097,
      DI(2) => n_ACT_U1_U1_blk00000001_sig00000098,
      DI(1) => n_ACT_U1_U1_blk00000001_sig00000099,
      DI(0) => n_ACT_U1_U1_blk00000001_sig0000009a,
      O(3) => n_ACT_U1_U1_blk00000001_sig00000069,
      O(2) => n_ACT_U1_U1_blk00000001_sig00000068,
      O(1) => n_ACT_U1_U1_blk00000001_sig00000067,
      O(0) => n_ACT_U1_U1_blk00000001_sig00000066,
      S(3) => n_ACT_U1_U1_blk00000001_sig0000006e,
      S(2) => n_ACT_U1_U1_blk00000001_sig0000006f,
      S(1) => n_ACT_U1_U1_blk00000001_sig00000070,
      S(0) => n_ACT_U1_U1_blk00000001_sig00000071
    );
  n_ACT_U1_U1_blk00000001_blk00000053 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(17),
      ADR0 => n_ACT_mult_in(1),
      ADR3 => n_ACT_mult_w_in(18),
      ADR4 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000006f
    );
  n_ACT_U1_U1_blk00000001_blk00000031 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_mult_w_in(17),
      ADR0 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000098
    );
  n_ACT_U1_U1_blk00000001_blk00000054 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"5AAAF0005AAAF000"
    )
    port map (
      ADR1 => '1',
      ADR4 => n_ACT_mult_w_in(16),
      ADR0 => n_ACT_mult_in(1),
      ADR2 => n_ACT_mult_w_in(17),
      ADR3 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000070
    );
  n_ACT_U1_U1_blk00000001_blk00000032 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR4 => n_ACT_mult_w_in(16),
      ADR0 => n_ACT_mult_in(1),
      ADR3 => '1',
      ADR1 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000099
    );
  n_ACT_U1_U1_blk00000001_blk00000055 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_ACT_mult_w_in(15),
      ADR4 => n_ACT_mult_in(1),
      ADR0 => n_ACT_mult_w_in(16),
      ADR2 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000071
    );
  n_ACT_U1_U1_blk00000001_blk00000033 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y69",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_ACT_mult_w_in(15),
      ADR4 => n_ACT_mult_in(1),
      ADR1 => '1',
      ADR2 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000009a
    );
  n_NL_U2_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_3_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_3_Q,
      O => n_NL_U2_cnt(3),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"0005050000050500"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(3),
      ADR4 => n_NL_acc_f_in(3),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_305
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A141 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"05000500"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(3),
      ADR4 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q
    );
  ProtoComp22_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      O => NLW_ProtoComp22_CYINITGND_O_UNCONNECTED
    );
  n_NL_U2_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_2_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_2_Q,
      O => n_NL_U2_cnt(2),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y60"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_5618,
      CO(2) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q,
      DI(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q,
      DI(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q,
      DI(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q,
      O(3) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_3_Q,
      O(2) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_2_Q,
      O(1) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_1_Q,
      O(0) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_0_Q,
      S(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_305,
      S(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_320,
      S(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_327,
      S(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_334
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"0101040401010404"
    )
    port map (
      ADR3 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(2),
      ADR1 => n_NL_acc_f_in(2),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_320
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A131 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"05050000"
    )
    port map (
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(2),
      ADR3 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q
    );
  n_NL_U2_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_1_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_1_Q,
      O => n_NL_U2_cnt(1),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"0000114400001144"
    )
    port map (
      ADR2 => '1',
      ADR0 => update_IBUF_5466,
      ADR4 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(1),
      ADR1 => n_NL_acc_f_in(1),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_327
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A121 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"00005500"
    )
    port map (
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR4 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(1),
      ADR2 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q
    );
  n_NL_U2_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_0_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_0_Q,
      O => n_NL_U2_cnt(0),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"0005050000050500"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(0),
      ADR3 => n_NL_acc_f_in(0),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_334
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A11 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y60",
      INIT => X"05050000"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(0),
      ADR3 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q
    );
  n_NL_U2_cnt_7 : X_FF
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_7_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_7_Q,
      O => n_NL_U2_cnt(7),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"0000050A0000050A"
    )
    port map (
      ADR1 => '1',
      ADR4 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(7),
      ADR0 => n_NL_acc_f_in(7),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_345
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A181 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"00000F00"
    )
    port map (
      ADR0 => '1',
      ADR4 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(7),
      ADR1 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q
    );
  n_NL_U2_cnt_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_6_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_6_Q,
      O => n_NL_U2_cnt(6),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y61"
    )
    port map (
      CI => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_5618,
      CYINIT => '0',
      CO(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_5627,
      CO(2) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_0_UNCONNECTED,
      DI(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q,
      DI(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q,
      DI(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q,
      DI(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q,
      O(3) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_7_Q,
      O(2) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_6_Q,
      O(1) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_5_Q,
      O(0) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_4_Q,
      S(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_345,
      S(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_360,
      S(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_367,
      S(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_374
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"0005050000050500"
    )
    port map (
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(6),
      ADR3 => n_NL_acc_f_in(6),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_360
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A171 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"05050000"
    )
    port map (
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(6),
      ADR3 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q
    );
  n_NL_U2_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_5_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_5_Q,
      O => n_NL_U2_cnt(5),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"0104010401040104"
    )
    port map (
      ADR4 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(5),
      ADR1 => n_NL_acc_f_in(5),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_367
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A161 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"05000500"
    )
    port map (
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(5),
      ADR4 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q
    );
  n_NL_U2_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_4_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_4_Q,
      O => n_NL_U2_cnt(4),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"0000050A0000050A"
    )
    port map (
      ADR1 => '1',
      ADR4 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(4),
      ADR0 => n_NL_acc_f_in(4),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_374
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A151 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y61",
      INIT => X"00000F00"
    )
    port map (
      ADR0 => '1',
      ADR4 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(4),
      ADR1 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q
    );
  n_NL_U2_cnt_11 : X_FF
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_11_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_11_Q,
      O => n_NL_U2_cnt(11),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"0110011001100110"
    )
    port map (
      ADR4 => '1',
      ADR1 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(11),
      ADR2 => n_NL_acc_f_in(11),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_385
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A31 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"11001100"
    )
    port map (
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(11),
      ADR4 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q
    );
  n_NL_U2_cnt_10 : X_FF
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_10_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_10_Q,
      O => n_NL_U2_cnt(10),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y62"
    )
    port map (
      CI => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_5627,
      CYINIT => '0',
      CO(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_5636,
      CO(2) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_0_UNCONNECTED,
      DI(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q,
      DI(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q,
      DI(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q,
      DI(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q,
      O(3) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_11_Q,
      O(2) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_10_Q,
      O(1) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_9_Q,
      O(0) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_8_Q,
      S(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_385,
      S(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_400,
      S(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_407,
      S(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_414
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"0003030000030300"
    )
    port map (
      ADR0 => '1',
      ADR2 => update_IBUF_5466,
      ADR1 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(10),
      ADR3 => n_NL_acc_f_in(10),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_400
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A21 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"03030000"
    )
    port map (
      ADR0 => '1',
      ADR2 => update_IBUF_5466,
      ADR1 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(10),
      ADR3 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q
    );
  n_NL_U2_cnt_9 : X_FF
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_9_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_9_Q,
      O => n_NL_U2_cnt(9),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"0000030C0000030C"
    )
    port map (
      ADR0 => '1',
      ADR2 => update_IBUF_5466,
      ADR4 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(9),
      ADR1 => n_NL_acc_f_in(9),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_407
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A201 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"00000F00"
    )
    port map (
      ADR0 => '1',
      ADR2 => update_IBUF_5466,
      ADR4 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(9),
      ADR1 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q
    );
  n_NL_U2_cnt_8 : X_FF
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_8_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_8_Q,
      O => n_NL_U2_cnt(8),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"0101101001011010"
    )
    port map (
      ADR3 => '1',
      ADR1 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(8),
      ADR2 => n_NL_acc_f_in(8),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_414
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A191 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => X"11110000"
    )
    port map (
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(8),
      ADR3 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q
    );
  n_NL_U2_cnt_15 : X_FF
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_15_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_15_Q,
      O => n_NL_U2_cnt(15),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"0000112200001122"
    )
    port map (
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR4 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(15),
      ADR0 => n_NL_acc_f_in(15),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_425
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A71 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"00003300"
    )
    port map (
      ADR0 => '1',
      ADR1 => update_IBUF_5466,
      ADR4 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(15),
      ADR2 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q
    );
  n_NL_U2_cnt_14 : X_FF
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_14_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_14_Q,
      O => n_NL_U2_cnt(14),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y63"
    )
    port map (
      CI => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_5636,
      CYINIT => '0',
      CO(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_5645,
      CO(2) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_0_UNCONNECTED,
      DI(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q,
      DI(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q,
      DI(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q,
      DI(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q,
      O(3) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_15_Q,
      O(2) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_14_Q,
      O(1) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_13_Q,
      O(0) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_12_Q,
      S(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_425,
      S(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_440,
      S(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_447,
      S(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_454
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"0005050000050500"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(14),
      ADR3 => n_NL_acc_f_in(14),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_440
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A61 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"05050000"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(14),
      ADR3 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q
    );
  n_NL_U2_cnt_13 : X_FF
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_13_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_13_Q,
      O => n_NL_U2_cnt(13),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"0005050000050500"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(13),
      ADR4 => n_NL_acc_f_in(13),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_447
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A51 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"05000500"
    )
    port map (
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(13),
      ADR4 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q
    );
  n_NL_U2_cnt_12 : X_FF
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_12_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_12_Q,
      O => n_NL_U2_cnt(12),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"0003003000030030"
    )
    port map (
      ADR0 => '1',
      ADR1 => update_IBUF_5466,
      ADR3 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(12),
      ADR2 => n_NL_acc_f_in(12),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_454
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A41 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y63",
      INIT => X"00330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => update_IBUF_5466,
      ADR3 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(12),
      ADR2 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q
    );
  n_NL_U2_cnt_19 : X_FF
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_19_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_19_Q,
      O => n_NL_U2_cnt(19),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => X"0003000303000300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => update_IBUF_5466,
      ADR3 => n_NL_U2_cnt(19),
      ADR2 => reset_IBUF_5430,
      ADR5 => n_NL_acc_f_in(19),
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_465
    );
  n_NL_U2_cnt_18 : X_FF
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_18_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_18_Q,
      O => n_NL_U2_cnt(18),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y64"
    )
    port map (
      CI => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_5645,
      CYINIT => '0',
      CO(3) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_3_UNCONNECTED,
      DI(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q,
      DI(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q,
      DI(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q,
      O(3) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_19_Q,
      O(2) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_18_Q,
      O(1) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_17_Q,
      O(0) => n_NL_U2_cnt_19_init0_19_mux_6_OUT_16_Q,
      S(3) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_465,
      S(2) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_478,
      S(1) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_485,
      S(0) => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_492
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => X"0003000C0003000C"
    )
    port map (
      ADR0 => '1',
      ADR3 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(18),
      ADR1 => n_NL_acc_f_in(18),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_478
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A101 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => X"000F0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(18),
      ADR1 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q
    );
  n_NL_U2_cnt_17 : X_FF
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_17_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_17_Q,
      O => n_NL_U2_cnt(17),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => X"0104010401040104"
    )
    port map (
      ADR4 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(17),
      ADR1 => n_NL_acc_f_in(17),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_485
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A91 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => X"05000500"
    )
    port map (
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => reset_IBUF_5430,
      ADR3 => n_NL_U2_cnt(17),
      ADR4 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q
    );
  n_NL_U2_cnt_16 : X_FF
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => '0'
    )
    port map (
      CE => n_NL_U2_n0042_inv,
      CLK => NlwBufferSignal_n_NL_U2_cnt_16_CLK,
      I => n_NL_U2_cnt_19_init0_19_mux_6_OUT_16_Q,
      O => n_NL_U2_cnt(16),
      RST => GND,
      SET => GND
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => X"0101101001011010"
    )
    port map (
      ADR3 => '1',
      ADR1 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(16),
      ADR2 => n_NL_acc_f_in(16),
      ADR5 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_492
    );
  n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A81 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y64",
      INIT => X"11110000"
    )
    port map (
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR0 => reset_IBUF_5430,
      ADR4 => n_NL_U2_cnt(16),
      ADR3 => '1',
      O => n_NL_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q
    );
  n_ACT_U2_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_3_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_3_Q,
      O => n_ACT_U2_cnt(3),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => X"5F5FA0A0E4B1E4B1"
    )
    port map (
      ADR5 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_acc_f_reset1,
      ADR1 => N92,
      ADR3 => n_ACT_U2_cnt(3),
      ADR2 => n_ACT_omx_out_3_0,
      ADR4 => n_ACT_U4_weight_reg(3),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_503
    );
  ProtoComp25_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X20Y67"
    )
    port map (
      O => NLW_ProtoComp25_CYINITGND_O_UNCONNECTED
    );
  n_ACT_U2_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_2_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_2_Q,
      O => n_ACT_U2_cnt(2),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y67"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_5666,
      CO(2) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q,
      DI(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q,
      DI(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q,
      DI(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q,
      O(3) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_3_Q,
      O(2) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_2_Q,
      O(1) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_1_Q,
      O(0) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_0_Q,
      S(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_503,
      S(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_520,
      S(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_529,
      S(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_538
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => X"78DD7888788878DD"
    )
    port map (
      ADR3 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_acc_f_reset1,
      ADR5 => N94_0,
      ADR4 => n_ACT_U2_cnt(2),
      ADR1 => n_ACT_omx_out_2_0,
      ADR2 => n_ACT_U4_weight_reg(2),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_520
    );
  n_ACT_U2_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_1_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_1_Q,
      O => n_ACT_U2_cnt(1),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => X"6C6CF5A06C6CA0F5"
    )
    port map (
      ADR0 => n_ACT_acc_f_reset0_0,
      ADR4 => n_ACT_acc_f_reset1,
      ADR5 => N96,
      ADR3 => n_ACT_U2_cnt(1),
      ADR1 => n_ACT_omx_out_1_0,
      ADR2 => n_ACT_U4_weight_reg(1),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_529
    );
  n_ACT_U2_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_0_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_0_Q,
      O => n_ACT_U2_cnt(0),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y67",
      INIT => X"0C2E1D3FF3D1E2C0"
    )
    port map (
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_acc_f_reset1,
      ADR3 => n_ACT_omx_out_0_0,
      ADR4 => n_ACT_U2_cnt(0),
      ADR2 => n_ACT_U4_weight_reg(0),
      ADR5 => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_B_0_Q,
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_538
    );
  n_ACT_U2_cnt_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_7_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_7_Q,
      O => n_ACT_U2_cnt(7),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => X"6666FAAFCCCC5005"
    )
    port map (
      ADR0 => n_ACT_acc_f_reset0_0,
      ADR4 => n_ACT_acc_f_reset1,
      ADR2 => N84,
      ADR3 => n_ACT_U2_cnt(7),
      ADR1 => n_ACT_omx_out_7_0,
      ADR5 => n_ACT_U4_weight_reg(7),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_547
    );
  n_ACT_U2_cnt_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_6_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_6_Q,
      O => n_ACT_U2_cnt(6),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y68"
    )
    port map (
      CI => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_5666,
      CYINIT => '0',
      CO(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_5683,
      CO(2) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q,
      DI(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q,
      DI(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q,
      DI(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q,
      O(3) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_7_Q,
      O(2) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_6_Q,
      O(1) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_5_Q,
      O(0) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_4_Q,
      S(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_547,
      S(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_564,
      S(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_573,
      S(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_582
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => X"7B78787B8B88888B"
    )
    port map (
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR2 => n_ACT_acc_f_reset1,
      ADR3 => N86_0,
      ADR4 => n_ACT_U2_cnt(6),
      ADR5 => n_ACT_omx_out_6_0,
      ADR0 => n_ACT_U4_weight_reg(6),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_564
    );
  n_ACT_U2_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_5_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_5_Q,
      O => n_ACT_U2_cnt(5),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => X"7878DD88787888DD"
    )
    port map (
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_acc_f_reset1,
      ADR5 => N88,
      ADR3 => n_ACT_U2_cnt(5),
      ADR1 => n_ACT_omx_out_5_0,
      ADR2 => n_ACT_U4_weight_reg(5),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_573
    );
  n_ACT_U2_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_4_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_4_Q,
      O => n_ACT_U2_cnt(4),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y68",
      INIT => X"5EAE5BABF404F101"
    )
    port map (
      ADR2 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_acc_f_reset1,
      ADR1 => N90_0,
      ADR4 => n_ACT_U2_cnt(4),
      ADR5 => n_ACT_omx_out_4_0,
      ADR3 => n_ACT_U4_weight_reg(4),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_582
    );
  n_ACT_U2_cnt_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_11_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_11_Q,
      O => n_ACT_U2_cnt(11),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => X"3E3DCECDF2F10201"
    )
    port map (
      ADR2 => n_ACT_acc_f_reset0_0,
      ADR1 => n_ACT_acc_f_reset1,
      ADR0 => N76,
      ADR3 => n_ACT_U2_cnt(11),
      ADR5 => n_ACT_omx_out_11_0,
      ADR4 => n_ACT_U4_weight_reg(11),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_591
    );
  n_ACT_U2_cnt_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_10_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_10_Q,
      O => n_ACT_U2_cnt(10),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y69"
    )
    port map (
      CI => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_5683,
      CYINIT => '0',
      CO(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_5700,
      CO(2) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q,
      DI(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q,
      DI(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q,
      DI(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q,
      O(3) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_11_Q,
      O(2) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_10_Q,
      O(1) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_9_Q,
      O(0) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_8_Q,
      S(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_591,
      S(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_608,
      S(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_617,
      S(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_626
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => X"6CF56CA06CA06CF5"
    )
    port map (
      ADR0 => n_ACT_acc_f_reset0_0,
      ADR3 => n_ACT_acc_f_reset1,
      ADR5 => N78_0,
      ADR4 => n_ACT_U2_cnt(10),
      ADR1 => n_ACT_omx_out_10_0,
      ADR2 => n_ACT_U4_weight_reg(10),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_608
    );
  n_ACT_U2_cnt_9 : X_FF
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_9_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_9_Q,
      O => n_ACT_U2_cnt(9),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => X"6A6A6A6AF3C0C0F3"
    )
    port map (
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_acc_f_reset1,
      ADR4 => N80,
      ADR3 => n_ACT_U2_cnt(9),
      ADR0 => n_ACT_omx_out_9_0,
      ADR2 => n_ACT_U4_weight_reg(9),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_617
    );
  n_ACT_U2_cnt_8 : X_FF
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_8_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_8_Q,
      O => n_ACT_U2_cnt(8),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y69",
      INIT => X"3CF03CF0EE22DD11"
    )
    port map (
      ADR5 => n_ACT_acc_f_reset0_0,
      ADR1 => n_ACT_acc_f_reset1,
      ADR0 => N82_0,
      ADR4 => n_ACT_U2_cnt(8),
      ADR3 => n_ACT_omx_out_8_0,
      ADR2 => n_ACT_U4_weight_reg(8),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_626
    );
  n_ACT_U2_cnt_15 : X_FF
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_15_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_15_Q,
      O => n_ACT_U2_cnt(15),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => X"7B6A6A7BD1C0C0D1"
    )
    port map (
      ADR0 => n_ACT_acc_f_reset0_0,
      ADR1 => n_ACT_acc_f_reset1,
      ADR4 => N68,
      ADR3 => n_ACT_U2_cnt(15),
      ADR2 => n_ACT_omx_out_15_0,
      ADR5 => n_ACT_U4_weight_reg(15),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_635
    );
  n_ACT_U2_cnt_14 : X_FF
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_14_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_14_Q,
      O => n_ACT_U2_cnt(14),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y70"
    )
    port map (
      CI => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_5700,
      CYINIT => '0',
      CO(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_5717,
      CO(2) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q,
      DI(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q,
      DI(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q,
      DI(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q,
      O(3) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_15_Q,
      O(2) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_14_Q,
      O(1) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_13_Q,
      O(0) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_12_Q,
      S(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_635,
      S(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_652,
      S(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_661,
      S(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_670
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => X"7B8B788878887B8B"
    )
    port map (
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR2 => n_ACT_acc_f_reset1,
      ADR5 => N70_0,
      ADR4 => n_ACT_U2_cnt(14),
      ADR3 => n_ACT_omx_out_14_0,
      ADR0 => n_ACT_U4_weight_reg(14),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_652
    );
  n_ACT_U2_cnt_13 : X_FF
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_13_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_13_Q,
      O => n_ACT_U2_cnt(13),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => X"3F3FCAC5C0C0CAC5"
    )
    port map (
      ADR2 => n_ACT_acc_f_reset0_0,
      ADR4 => n_ACT_acc_f_reset1,
      ADR0 => N72,
      ADR3 => n_ACT_U2_cnt(13),
      ADR5 => n_ACT_omx_out_13_0,
      ADR1 => n_ACT_U4_weight_reg(13),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_661
    );
  n_ACT_U2_cnt_12 : X_FF
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_12_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_12_Q,
      O => n_ACT_U2_cnt(12),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y70",
      INIT => X"66FA66AFCC50CC05"
    )
    port map (
      ADR3 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_acc_f_reset1,
      ADR2 => N74_0,
      ADR4 => n_ACT_U2_cnt(12),
      ADR5 => n_ACT_omx_out_12_0,
      ADR1 => n_ACT_U4_weight_reg(12),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_670
    );
  n_ACT_U2_cnt_19 : X_FF
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_19_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_19_Q,
      O => n_ACT_U2_cnt(19),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"3F3FC0C0CAC5CAC5"
    )
    port map (
      ADR2 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_acc_f_reset1,
      ADR0 => N100_0,
      ADR3 => n_ACT_U2_cnt(19),
      ADR4 => n_ACT_omx_out_19_0,
      ADR1 => n_ACT_U4_weight_reg(19),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_678
    );
  n_ACT_U2_cnt_18 : X_FF
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_18_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_18_Q,
      O => n_ACT_U2_cnt(18),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y71"
    )
    port map (
      CI => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_5717,
      CYINIT => '0',
      CO(3) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_3_UNCONNECTED,
      DI(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q,
      DI(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q,
      DI(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q,
      O(3) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_19_Q,
      O(2) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_18_Q,
      O(1) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_17_Q,
      O(0) => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_16_Q,
      S(3) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_678,
      S(2) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_694,
      S(1) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_703,
      S(0) => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_712
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"3CEE3CDDF022F011"
    )
    port map (
      ADR3 => n_ACT_acc_f_reset0_0,
      ADR1 => n_ACT_acc_f_reset1,
      ADR0 => N62_0,
      ADR4 => n_ACT_U2_cnt(18),
      ADR5 => n_ACT_omx_out_18_0,
      ADR2 => n_ACT_U4_weight_reg(18),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_694
    );
  n_ACT_U2_cnt_17 : X_FF
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_17_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_17_Q,
      O => n_ACT_U2_cnt(17),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"6666CCCCAAAAF00F"
    )
    port map (
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_acc_f_reset1,
      ADR2 => N64,
      ADR3 => n_ACT_U2_cnt(17),
      ADR1 => n_ACT_omx_out_17_0,
      ADR0 => n_ACT_U4_weight_reg(17),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_703
    );
  n_ACT_U2_cnt_16 : X_FF
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_n_ACT_U2_cnt_16_CLK,
      I => n_ACT_U2_cnt_19_init0_19_mux_6_OUT_16_Q,
      O => n_ACT_U2_cnt(16),
      RST => GND,
      SET => GND
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y71",
      INIT => X"66AA66AAFC30CF03"
    )
    port map (
      ADR5 => n_ACT_acc_f_reset0_0,
      ADR1 => n_ACT_acc_f_reset1,
      ADR2 => N66_0,
      ADR4 => n_ACT_U2_cnt(16),
      ADR3 => n_ACT_omx_out_16_0,
      ADR0 => n_ACT_U4_weight_reg(16),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_712
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_3_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_3_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_2_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_2_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_1_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_1_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_0_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_0_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y66",
      INIT => X"33CF33CBCC30CC34"
    )
    port map (
      ADR5 => n_NL_acc_f_in(3),
      ADR1 => N6_0,
      ADR2 => n_ACT_U6_x_addr_1,
      ADR0 => n_ACT_U6_x_addr_3,
      ADR3 => n_ACT_U6_x_addr_0,
      ADR4 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q_720
    );
  ProtoComp28_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X26Y66"
    )
    port map (
      O => NLW_ProtoComp28_CYINITGND_O_UNCONNECTED
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y66"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q_5749,
      CO(2) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q,
      DI(2) => n_ACT_in1_14_Q,
      DI(1) => n_ACT_in1_1_Q,
      DI(0) => n_ACT_in1_0_Q,
      O(3) => n_ACT_U8_a_19_b_19_add_0_OUT_3_Q,
      O(2) => n_ACT_U8_a_19_b_19_add_0_OUT_2_Q,
      O(1) => n_ACT_U8_a_19_b_19_add_0_OUT_1_Q,
      O(0) => n_ACT_U8_a_19_b_19_add_0_OUT_0_Q,
      S(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q_720,
      S(2) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q_734,
      S(1) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q_740,
      S(0) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q_748
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y66",
      INIT => X"33CC33CC3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR1 => n_NL_acc_f_in(2),
      ADR3 => N19,
      ADR2 => N18,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q_734
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y66",
      INIT => X"AAAAA6AAAAA5A6A5"
    )
    port map (
      ADR3 => n_ACT_U7_cnt(1),
      ADR0 => n_NL_acc_f_in(1),
      ADR4 => n_ACT_U6_x_addr_1,
      ADR2 => n_ACT_U6_x_addr_0,
      ADR5 => N4,
      ADR1 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q_740
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y66",
      INIT => X"CC63CC6C99669969"
    )
    port map (
      ADR5 => n_ACT_U7_cnt(0),
      ADR0 => n_ACT_U7_cnt(1),
      ADR1 => n_NL_acc_f_in(0),
      ADR2 => n_ACT_U6_x_addr_1,
      ADR3 => n_ACT_U6_x_addr_0,
      ADR4 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q_748
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_7_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_7_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_6_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_6_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_5_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_5_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_4_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_4_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y67",
      INIT => X"5A0F5AF05A0F5AF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR2 => n_NL_acc_f_in(7),
      ADR0 => N19,
      ADR4 => N18,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q_756
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y67"
    )
    port map (
      CI => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q_5749,
      CYINIT => '0',
      CO(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q_5758,
      CO(2) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_3_Q,
      DI(2) => n_ACT_in1_10_Q,
      DI(1) => n_ACT_in1_1_Q,
      DI(0) => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q,
      O(3) => n_ACT_U8_a_19_b_19_add_0_OUT_7_Q,
      O(2) => n_ACT_U8_a_19_b_19_add_0_OUT_6_Q,
      O(1) => n_ACT_U8_a_19_b_19_add_0_OUT_5_Q,
      O(0) => n_ACT_U8_a_19_b_19_add_0_OUT_4_Q,
      S(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q_756,
      S(2) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q_768,
      S(1) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q_776,
      S(0) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q_784
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y67",
      INIT => X"0FF50EF5F00AF10A"
    )
    port map (
      ADR5 => n_NL_acc_f_in(6),
      ADR3 => N6_0,
      ADR0 => n_ACT_U6_x_addr_1,
      ADR4 => n_ACT_U6_x_addr_3,
      ADR2 => n_ACT_U6_x_addr_0,
      ADR1 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q_768
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y67",
      INIT => X"F0E1F0E1A5E1F0E1"
    )
    port map (
      ADR3 => n_ACT_U7_cnt(1),
      ADR2 => n_NL_acc_f_in(5),
      ADR5 => n_ACT_U6_x_addr_1,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR1 => N4,
      ADR4 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q_776
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y67",
      INIT => X"FFFF03FD0000FC02"
    )
    port map (
      ADR2 => n_ACT_U7_cnt(0),
      ADR1 => n_ACT_U7_cnt(1),
      ADR5 => n_NL_acc_f_in(4),
      ADR3 => n_ACT_U6_x_addr_1,
      ADR0 => n_ACT_U6_x_addr_3,
      ADR4 => n_ACT_U6_x_addr_0,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q_784
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_11_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_11_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_10_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_10_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_9_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_9_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_8_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_8_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y68",
      INIT => X"CCCC3C3CCCCC3CC6"
    )
    port map (
      ADR5 => n_ACT_U7_cnt(0),
      ADR3 => n_ACT_U7_cnt(1),
      ADR1 => n_NL_acc_f_in(11),
      ADR2 => n_ACT_U6_x_addr_1,
      ADR0 => n_ACT_U6_x_addr_3,
      ADR4 => n_ACT_U6_x_addr_0,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q_792
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y68"
    )
    port map (
      CI => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q_5758,
      CYINIT => '0',
      CO(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q_5763,
      CO(2) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_3_Q,
      DI(2) => n_ACT_in1_10_Q,
      DI(1) => n_ACT_in1_1_Q,
      DI(0) => n_ACT_in1_10_Q,
      O(3) => n_ACT_U8_a_19_b_19_add_0_OUT_11_Q,
      O(2) => n_ACT_U8_a_19_b_19_add_0_OUT_10_Q,
      O(1) => n_ACT_U8_a_19_b_19_add_0_OUT_9_Q,
      O(0) => n_ACT_U8_a_19_b_19_add_0_OUT_8_Q,
      S(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q_792,
      S(2) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q_806,
      S(1) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q_814,
      S(0) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q_822
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y68",
      INIT => X"679867986798639C"
    )
    port map (
      ADR3 => n_NL_acc_f_in(10),
      ADR1 => N6_0,
      ADR2 => n_ACT_U6_x_addr_1,
      ADR4 => n_ACT_U6_x_addr_3,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q_806
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y68",
      INIT => X"F0B4F0B4F0F0A5A5"
    )
    port map (
      ADR5 => n_ACT_U7_cnt(1),
      ADR2 => n_NL_acc_f_in(9),
      ADR3 => n_ACT_U6_x_addr_1,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR4 => N4,
      ADR1 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q_814
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y68",
      INIT => X"3333CFCBCCCC3034"
    )
    port map (
      ADR5 => n_NL_acc_f_in(8),
      ADR1 => N6_0,
      ADR2 => n_ACT_U6_x_addr_1,
      ADR0 => n_ACT_U6_x_addr_3,
      ADR4 => n_ACT_U6_x_addr_0,
      ADR3 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q_822
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_15_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_15_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_14_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_14_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_13_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_13_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_12_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_12_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y69",
      INIT => X"666699996663CCCC"
    )
    port map (
      ADR1 => n_NL_acc_f_in(15),
      ADR4 => N6_0,
      ADR5 => n_ACT_U6_x_addr_1,
      ADR2 => n_ACT_U6_x_addr_3,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR3 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q_830
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y69"
    )
    port map (
      CI => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q_5763,
      CYINIT => '0',
      CO(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q_5769,
      CO(2) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => n_ACT_in1_10_Q,
      DI(2) => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_2_Q,
      DI(1) => n_ACT_in1_10_Q,
      DI(0) => n_ACT_in1_10_Q,
      O(3) => n_ACT_U8_a_19_b_19_add_0_OUT_15_Q,
      O(2) => n_ACT_U8_a_19_b_19_add_0_OUT_14_Q,
      O(1) => n_ACT_U8_a_19_b_19_add_0_OUT_13_Q,
      O(0) => n_ACT_U8_a_19_b_19_add_0_OUT_12_Q,
      S(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q_830,
      S(2) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q_844,
      S(1) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q_850,
      S(0) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q_858
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y69",
      INIT => X"555500FFAAAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR5 => n_NL_acc_f_in(14),
      ADR0 => N34,
      ADR3 => N18,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q_844
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y69",
      INIT => X"5AB45AB45AB44BB4"
    )
    port map (
      ADR2 => n_NL_acc_f_in(13),
      ADR3 => N6_0,
      ADR1 => n_ACT_U6_x_addr_1,
      ADR4 => n_ACT_U6_x_addr_3,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q_850
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y69",
      INIT => X"5554BBBBAAAB4444"
    )
    port map (
      ADR5 => n_NL_acc_f_in(12),
      ADR4 => N6_0,
      ADR1 => n_ACT_U6_x_addr_1,
      ADR2 => n_ACT_U6_x_addr_3,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR3 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q_858
    );
  n_ACT_U8_a_19_b_19_add_0_OUT_19_n_ACT_U8_a_19_b_19_add_0_OUT_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_19_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_19_0
    );
  n_ACT_U8_a_19_b_19_add_0_OUT_19_n_ACT_U8_a_19_b_19_add_0_OUT_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_18_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_18_0
    );
  n_ACT_U8_a_19_b_19_add_0_OUT_19_n_ACT_U8_a_19_b_19_add_0_OUT_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_17_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_17_0
    );
  n_ACT_U8_a_19_b_19_add_0_OUT_19_n_ACT_U8_a_19_b_19_add_0_OUT_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U8_a_19_b_19_add_0_OUT_16_Q,
      O => n_ACT_U8_a_19_b_19_add_0_OUT_16_0
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y70",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => n_NL_acc_f_in(19),
      ADR2 => n_ACT_in1_16_Q,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q_865
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y70"
    )
    port map (
      CI => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q_5769,
      CYINIT => '0',
      CO(3) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_3_UNCONNECTED,
      DI(2) => n_ACT_in1_16_Q,
      DI(1) => n_ACT_in1_16_Q,
      DI(0) => n_ACT_in1_16_Q,
      O(3) => n_ACT_U8_a_19_b_19_add_0_OUT_19_Q,
      O(2) => n_ACT_U8_a_19_b_19_add_0_OUT_18_Q,
      O(1) => n_ACT_U8_a_19_b_19_add_0_OUT_17_Q,
      O(0) => n_ACT_U8_a_19_b_19_add_0_OUT_16_Q,
      S(3) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q_865,
      S(2) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q_874,
      S(1) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q_882,
      S(0) => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q_890
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y70",
      INIT => X"DF10D51520EF2AEA"
    )
    port map (
      ADR2 => n_ACT_U7_cnt(0),
      ADR5 => n_NL_acc_f_in(18),
      ADR4 => n_ACT_U6_x_addr_3,
      ADR1 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR0 => N36,
      ADR3 => N37,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q_874
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y70",
      INIT => X"D2F087F00F2D0F78"
    )
    port map (
      ADR0 => n_ACT_U7_cnt(0),
      ADR2 => n_NL_acc_f_in(17),
      ADR4 => n_ACT_U6_x_addr_3,
      ADR1 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR3 => N36,
      ADR5 => N37,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q_882
    );
  n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y70",
      INIT => X"9999959A55AA959A"
    )
    port map (
      ADR4 => n_ACT_U7_cnt(0),
      ADR0 => n_NL_acc_f_in(16),
      ADR2 => n_ACT_U6_x_addr_3,
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR3 => N36,
      ADR1 => N37,
      O => n_ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q_890
    );
  n_NL_U1_U1_blk00000001_sig00000092_n_NL_U1_U1_blk00000001_sig00000092_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000059,
      O => n_NL_U1_U1_blk00000001_sig00000059_0
    );
  n_NL_U1_U1_blk00000001_sig00000092_n_NL_U1_U1_blk00000001_sig00000092_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000058,
      O => n_NL_U1_U1_blk00000001_sig00000058_0
    );
  n_NL_U1_U1_blk00000001_blk0000004d : X_LUT6
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_NL_mult_w_in(2),
      ADR0 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(3),
      ADR3 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000007e
    );
  n_NL_U1_U1_blk00000001_blk00000040 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_NL_mult_w_in(2),
      ADR0 => n_NL_mult_in(1),
      ADR3 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a7
    );
  ProtoComp18_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X10Y54"
    )
    port map (
      O => NLW_ProtoComp18_CYINITGND_1_O_UNCONNECTED
    );
  n_NL_U1_U1_blk00000001_blk0000002a : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y54"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_NL_U1_U1_blk00000001_sig00000092,
      CO(2) => NLW_n_NL_U1_U1_blk00000001_blk0000002a_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U1_U1_blk00000001_blk0000002a_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U1_U1_blk00000001_blk0000002a_CO_0_UNCONNECTED,
      DI(3) => n_NL_U1_U1_blk00000001_sig000000a7,
      DI(2) => n_NL_U1_U1_blk00000001_sig000000a8,
      DI(1) => n_NL_U1_U1_blk00000001_sig000000a9,
      DI(0) => n_NL_U1_U1_blk00000001_sig000000aa,
      O(3) => n_NL_U1_U1_blk00000001_sig00000059,
      O(2) => n_NL_U1_U1_blk00000001_sig00000058,
      O(1) => NLW_n_NL_U1_U1_blk00000001_blk0000002a_O_1_UNCONNECTED,
      O(0) => NLW_n_NL_U1_U1_blk00000001_blk0000002a_O_0_UNCONNECTED,
      S(3) => n_NL_U1_U1_blk00000001_sig0000007e,
      S(2) => n_NL_U1_U1_blk00000001_sig0000007f,
      S(1) => n_NL_U1_U1_blk00000001_sig00000080,
      S(0) => n_NL_U1_U1_blk00000001_sig000000ab
    );
  n_NL_U1_U1_blk00000001_blk0000004e : X_LUT6
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(1),
      ADR3 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(2),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000007f
    );
  n_NL_U1_U1_blk00000001_blk00000041 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(1),
      ADR3 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a8
    );
  n_NL_U1_U1_blk00000001_blk00000051 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(0),
      ADR3 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(1),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000080
    );
  n_NL_U1_U1_blk00000001_blk00000042 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(0),
      ADR3 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a9
    );
  n_NL_U1_U1_blk00000001_blk0000005c : X_LUT6
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_mult_w_in(0),
      ADR3 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000ab
    );
  n_NL_U1_U1_blk00000001_blk00000043 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_NL_mult_w_in(0),
      ADR3 => n_NL_mult_in(0),
      O => n_NL_U1_U1_blk00000001_sig000000aa
    );
  n_NL_U1_U1_blk00000001_sig0000008e_n_NL_U1_U1_blk00000001_sig0000008e_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000005d,
      O => n_NL_U1_U1_blk00000001_sig0000005d_0
    );
  n_NL_U1_U1_blk00000001_sig0000008e_n_NL_U1_U1_blk00000001_sig0000008e_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000005c,
      O => n_NL_U1_U1_blk00000001_sig0000005c_0
    );
  n_NL_U1_U1_blk00000001_sig0000008e_n_NL_U1_U1_blk00000001_sig0000008e_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000005b,
      O => n_NL_U1_U1_blk00000001_sig0000005b_0
    );
  n_NL_U1_U1_blk00000001_sig0000008e_n_NL_U1_U1_blk00000001_sig0000008e_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000005a,
      O => n_NL_U1_U1_blk00000001_sig0000005a_0
    );
  n_NL_U1_U1_blk00000001_blk00000049 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_NL_mult_w_in(6),
      ADR4 => n_NL_mult_in(1),
      ADR2 => n_NL_mult_w_in(7),
      ADR0 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000007a
    );
  n_NL_U1_U1_blk00000001_blk0000003c : X_LUT5
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(6),
      ADR4 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR2 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a3
    );
  n_NL_U1_U1_blk00000001_blk00000026 : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y55"
    )
    port map (
      CI => n_NL_U1_U1_blk00000001_sig00000092,
      CYINIT => '0',
      CO(3) => n_NL_U1_U1_blk00000001_sig0000008e,
      CO(2) => NLW_n_NL_U1_U1_blk00000001_blk00000026_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U1_U1_blk00000001_blk00000026_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U1_U1_blk00000001_blk00000026_CO_0_UNCONNECTED,
      DI(3) => n_NL_U1_U1_blk00000001_sig000000a3,
      DI(2) => n_NL_U1_U1_blk00000001_sig000000a4,
      DI(1) => n_NL_U1_U1_blk00000001_sig000000a5,
      DI(0) => n_NL_U1_U1_blk00000001_sig000000a6,
      O(3) => n_NL_U1_U1_blk00000001_sig0000005d,
      O(2) => n_NL_U1_U1_blk00000001_sig0000005c,
      O(1) => n_NL_U1_U1_blk00000001_sig0000005b,
      O(0) => n_NL_U1_U1_blk00000001_sig0000005a,
      S(3) => n_NL_U1_U1_blk00000001_sig0000007a,
      S(2) => n_NL_U1_U1_blk00000001_sig0000007b,
      S(1) => n_NL_U1_U1_blk00000001_sig0000007c,
      S(0) => n_NL_U1_U1_blk00000001_sig0000007d
    );
  n_NL_U1_U1_blk00000001_blk0000004a : X_LUT6
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(5),
      ADR2 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(6),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000007b
    );
  n_NL_U1_U1_blk00000001_blk0000003d : X_LUT5
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(5),
      ADR2 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a4
    );
  n_NL_U1_U1_blk00000001_blk0000004b : X_LUT6
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(4),
      ADR2 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(5),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000007c
    );
  n_NL_U1_U1_blk00000001_blk0000003e : X_LUT5
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(4),
      ADR2 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a5
    );
  n_NL_U1_U1_blk00000001_blk0000004c : X_LUT6
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(3),
      ADR1 => n_NL_mult_in(1),
      ADR2 => n_NL_mult_w_in(4),
      ADR3 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000007d
    );
  n_NL_U1_U1_blk00000001_blk0000003f : X_LUT5
    generic map(
      LOC => "SLICE_X10Y55",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(3),
      ADR1 => n_NL_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a6
    );
  n_NL_U1_U1_blk00000001_sig0000008a_n_NL_U1_U1_blk00000001_sig0000008a_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000061,
      O => n_NL_U1_U1_blk00000001_sig00000061_0
    );
  n_NL_U1_U1_blk00000001_sig0000008a_n_NL_U1_U1_blk00000001_sig0000008a_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000060,
      O => n_NL_U1_U1_blk00000001_sig00000060_0
    );
  n_NL_U1_U1_blk00000001_sig0000008a_n_NL_U1_U1_blk00000001_sig0000008a_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000005f,
      O => n_NL_U1_U1_blk00000001_sig0000005f_0
    );
  n_NL_U1_U1_blk00000001_sig0000008a_n_NL_U1_U1_blk00000001_sig0000008a_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000005e,
      O => n_NL_U1_U1_blk00000001_sig0000005e_0
    );
  n_NL_U1_U1_blk00000001_blk0000005a : X_LUT6
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"5AAAF0005AAAF000"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_NL_mult_w_in(10),
      ADR2 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(11),
      ADR0 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000076
    );
  n_NL_U1_U1_blk00000001_blk00000038 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(10),
      ADR2 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000009f
    );
  n_NL_U1_U1_blk00000001_blk00000022 : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y56"
    )
    port map (
      CI => n_NL_U1_U1_blk00000001_sig0000008e,
      CYINIT => '0',
      CO(3) => n_NL_U1_U1_blk00000001_sig0000008a,
      CO(2) => NLW_n_NL_U1_U1_blk00000001_blk00000022_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U1_U1_blk00000001_blk00000022_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U1_U1_blk00000001_blk00000022_CO_0_UNCONNECTED,
      DI(3) => n_NL_U1_U1_blk00000001_sig0000009f,
      DI(2) => n_NL_U1_U1_blk00000001_sig000000a0,
      DI(1) => n_NL_U1_U1_blk00000001_sig000000a1,
      DI(0) => n_NL_U1_U1_blk00000001_sig000000a2,
      O(3) => n_NL_U1_U1_blk00000001_sig00000061,
      O(2) => n_NL_U1_U1_blk00000001_sig00000060,
      O(1) => n_NL_U1_U1_blk00000001_sig0000005f,
      O(0) => n_NL_U1_U1_blk00000001_sig0000005e,
      S(3) => n_NL_U1_U1_blk00000001_sig00000076,
      S(2) => n_NL_U1_U1_blk00000001_sig00000077,
      S(1) => n_NL_U1_U1_blk00000001_sig00000078,
      S(0) => n_NL_U1_U1_blk00000001_sig00000079
    );
  n_NL_U1_U1_blk00000001_blk0000005b : X_LUT6
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(10),
      ADR1 => n_NL_mult_in(0),
      ADR3 => n_NL_mult_w_in(9),
      ADR2 => n_NL_mult_in(1),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000077
    );
  n_NL_U1_U1_blk00000001_blk00000039 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => n_NL_mult_w_in(9),
      ADR2 => n_NL_mult_in(1),
      O => n_NL_U1_U1_blk00000001_sig000000a0
    );
  n_NL_U1_U1_blk00000001_blk00000047 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_NL_mult_w_in(8),
      ADR0 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(9),
      ADR2 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000078
    );
  n_NL_U1_U1_blk00000001_blk0000003a : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR3 => n_NL_mult_w_in(8),
      ADR0 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a1
    );
  n_NL_U1_U1_blk00000001_blk00000048 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"3FC0C0C03FC0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(7),
      ADR1 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(8),
      ADR3 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000079
    );
  n_NL_U1_U1_blk00000001_blk0000003b : X_LUT5
    generic map(
      LOC => "SLICE_X10Y56",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(7),
      ADR1 => n_NL_mult_in(1),
      ADR3 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig000000a2
    );
  n_NL_U1_U1_blk00000001_sig00000086_n_NL_U1_U1_blk00000001_sig00000086_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000065,
      O => n_NL_U1_U1_blk00000001_sig00000065_0
    );
  n_NL_U1_U1_blk00000001_sig00000086_n_NL_U1_U1_blk00000001_sig00000086_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000064,
      O => n_NL_U1_U1_blk00000001_sig00000064_0
    );
  n_NL_U1_U1_blk00000001_sig00000086_n_NL_U1_U1_blk00000001_sig00000086_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000063,
      O => n_NL_U1_U1_blk00000001_sig00000063_0
    );
  n_NL_U1_U1_blk00000001_sig00000086_n_NL_U1_U1_blk00000001_sig00000086_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000062,
      O => n_NL_U1_U1_blk00000001_sig00000062_0
    );
  n_NL_U1_U1_blk00000001_blk00000056 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(14),
      ADR2 => n_NL_mult_in(1),
      ADR3 => n_NL_mult_w_in(15),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000072
    );
  n_NL_U1_U1_blk00000001_blk00000034 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(14),
      ADR2 => n_NL_mult_in(1),
      ADR3 => '1',
      ADR1 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000009b
    );
  n_NL_U1_U1_blk00000001_blk0000001e : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y57"
    )
    port map (
      CI => n_NL_U1_U1_blk00000001_sig0000008a,
      CYINIT => '0',
      CO(3) => n_NL_U1_U1_blk00000001_sig00000086,
      CO(2) => NLW_n_NL_U1_U1_blk00000001_blk0000001e_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U1_U1_blk00000001_blk0000001e_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U1_U1_blk00000001_blk0000001e_CO_0_UNCONNECTED,
      DI(3) => n_NL_U1_U1_blk00000001_sig0000009b,
      DI(2) => n_NL_U1_U1_blk00000001_sig0000009c,
      DI(1) => n_NL_U1_U1_blk00000001_sig0000009d,
      DI(0) => n_NL_U1_U1_blk00000001_sig0000009e,
      O(3) => n_NL_U1_U1_blk00000001_sig00000065,
      O(2) => n_NL_U1_U1_blk00000001_sig00000064,
      O(1) => n_NL_U1_U1_blk00000001_sig00000063,
      O(0) => n_NL_U1_U1_blk00000001_sig00000062,
      S(3) => n_NL_U1_U1_blk00000001_sig00000072,
      S(2) => n_NL_U1_U1_blk00000001_sig00000073,
      S(1) => n_NL_U1_U1_blk00000001_sig00000074,
      S(0) => n_NL_U1_U1_blk00000001_sig00000075
    );
  n_NL_U1_U1_blk00000001_blk00000057 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(13),
      ADR2 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(14),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000073
    );
  n_NL_U1_U1_blk00000001_blk00000035 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(13),
      ADR2 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000009c
    );
  n_NL_U1_U1_blk00000001_blk00000058 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(12),
      ADR3 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(13),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000074
    );
  n_NL_U1_U1_blk00000001_blk00000036 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_NL_mult_w_in(12),
      ADR3 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000009d
    );
  n_NL_U1_U1_blk00000001_blk00000059 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"3FC0C0C03FC0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(11),
      ADR3 => n_NL_mult_in(1),
      ADR2 => n_NL_mult_w_in(12),
      ADR1 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000075
    );
  n_NL_U1_U1_blk00000001_blk00000037 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(11),
      ADR3 => n_NL_mult_in(1),
      ADR2 => '1',
      ADR1 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000009e
    );
  n_NL_U1_U1_blk00000001_sig00000082_n_NL_U1_U1_blk00000001_sig00000082_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000069,
      O => n_NL_U1_U1_blk00000001_sig00000069_0
    );
  n_NL_U1_U1_blk00000001_sig00000082_n_NL_U1_U1_blk00000001_sig00000082_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000068,
      O => n_NL_U1_U1_blk00000001_sig00000068_0
    );
  n_NL_U1_U1_blk00000001_sig00000082_n_NL_U1_U1_blk00000001_sig00000082_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000067,
      O => n_NL_U1_U1_blk00000001_sig00000067_0
    );
  n_NL_U1_U1_blk00000001_sig00000082_n_NL_U1_U1_blk00000001_sig00000082_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig00000066,
      O => n_NL_U1_U1_blk00000001_sig00000066_0
    );
  n_NL_U1_U1_blk00000001_blk00000052 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_NL_mult_w_in(18),
      ADR0 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(19),
      ADR2 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000006e
    );
  n_NL_U1_U1_blk00000001_blk00000030 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR3 => n_NL_mult_w_in(18),
      ADR0 => n_NL_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000097
    );
  n_NL_U1_U1_blk00000001_blk0000001a : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y58"
    )
    port map (
      CI => n_NL_U1_U1_blk00000001_sig00000086,
      CYINIT => '0',
      CO(3) => n_NL_U1_U1_blk00000001_sig00000082,
      CO(2) => NLW_n_NL_U1_U1_blk00000001_blk0000001a_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U1_U1_blk00000001_blk0000001a_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U1_U1_blk00000001_blk0000001a_CO_0_UNCONNECTED,
      DI(3) => n_NL_U1_U1_blk00000001_sig00000097,
      DI(2) => n_NL_U1_U1_blk00000001_sig00000098,
      DI(1) => n_NL_U1_U1_blk00000001_sig00000099,
      DI(0) => n_NL_U1_U1_blk00000001_sig0000009a,
      O(3) => n_NL_U1_U1_blk00000001_sig00000069,
      O(2) => n_NL_U1_U1_blk00000001_sig00000068,
      O(1) => n_NL_U1_U1_blk00000001_sig00000067,
      O(0) => n_NL_U1_U1_blk00000001_sig00000066,
      S(3) => n_NL_U1_U1_blk00000001_sig0000006e,
      S(2) => n_NL_U1_U1_blk00000001_sig0000006f,
      S(1) => n_NL_U1_U1_blk00000001_sig00000070,
      S(0) => n_NL_U1_U1_blk00000001_sig00000071
    );
  n_NL_U1_U1_blk00000001_blk00000053 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"6A6AC0C06A6AC0C0"
    )
    port map (
      ADR3 => '1',
      ADR0 => n_NL_mult_w_in(17),
      ADR4 => n_NL_mult_in(1),
      ADR1 => n_NL_mult_w_in(18),
      ADR2 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000006f
    );
  n_NL_U1_U1_blk00000001_blk00000031 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"AAAA0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_NL_mult_w_in(17),
      ADR4 => n_NL_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000098
    );
  n_NL_U1_U1_blk00000001_blk00000054 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(16),
      ADR1 => n_NL_mult_in(1),
      ADR4 => n_NL_mult_w_in(17),
      ADR2 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000070
    );
  n_NL_U1_U1_blk00000001_blk00000032 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_NL_mult_w_in(16),
      ADR1 => n_NL_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000099
    );
  n_NL_U1_U1_blk00000001_blk00000055 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(15),
      ADR1 => n_NL_mult_in(1),
      ADR2 => n_NL_mult_w_in(16),
      ADR3 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000071
    );
  n_NL_U1_U1_blk00000001_blk00000033 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_NL_mult_w_in(15),
      ADR1 => n_NL_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000009a
    );
  n_ACT_U5_cnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_3_CLK,
      I => n_ACT_Result(3),
      O => n_ACT_U5_cnt(3),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U5_cnt(3),
      ADR4 => '1',
      ADR5 => n_ACT_acc_b_in(3),
      O => n_ACT_U5_Maccum_cnt_lut(3)
    );
  ProtoComp33_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X22Y60"
    )
    port map (
      O => NLW_ProtoComp33_CYINITGND_O_UNCONNECTED
    );
  n_ACT_U5_cnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_2_CLK,
      I => n_ACT_Result(2),
      O => n_ACT_U5_cnt(2),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y60"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_ACT_U5_Maccum_cnt_cy_3_Q_5829,
      CO(2) => NLW_n_ACT_U5_Maccum_cnt_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U5_Maccum_cnt_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U5_Maccum_cnt_cy_3_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U5_cnt(3),
      DI(2) => n_ACT_U5_cnt(2),
      DI(1) => n_ACT_U5_cnt(1),
      DI(0) => n_ACT_U5_cnt(0),
      O(3) => n_ACT_Result(3),
      O(2) => n_ACT_Result(2),
      O(1) => n_ACT_Result(1),
      O(0) => n_ACT_Result(0),
      S(3) => n_ACT_U5_Maccum_cnt_lut(3),
      S(2) => n_ACT_U5_Maccum_cnt_lut(2),
      S(1) => n_ACT_U5_Maccum_cnt_lut(1),
      S(0) => n_ACT_U5_Maccum_cnt_lut(0)
    );
  n_ACT_U5_Maccum_cnt_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U5_cnt(2),
      ADR3 => '1',
      ADR0 => n_ACT_acc_b_in(2),
      O => n_ACT_U5_Maccum_cnt_lut(2)
    );
  n_ACT_U5_cnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_1_CLK,
      I => n_ACT_Result(1),
      O => n_ACT_U5_cnt(1),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U5_cnt(1),
      ADR4 => '1',
      ADR1 => n_ACT_acc_b_in(1),
      O => n_ACT_U5_Maccum_cnt_lut(1)
    );
  n_ACT_U5_cnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_0_CLK,
      I => n_ACT_Result(0),
      O => n_ACT_U5_cnt(0),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U5_cnt(0),
      ADR3 => '1',
      ADR1 => n_ACT_acc_b_in(0),
      O => n_ACT_U5_Maccum_cnt_lut(0)
    );
  n_ACT_U5_cnt_7 : X_SFF
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_7_CLK,
      I => n_ACT_Result(7),
      O => n_ACT_U5_cnt(7),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => n_ACT_U5_cnt(7),
      ADR4 => '1',
      ADR2 => n_ACT_acc_b_in(7),
      O => n_ACT_U5_Maccum_cnt_lut(7)
    );
  n_ACT_U5_cnt_6 : X_SFF
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_6_CLK,
      I => n_ACT_Result(6),
      O => n_ACT_U5_cnt(6),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y61"
    )
    port map (
      CI => n_ACT_U5_Maccum_cnt_cy_3_Q_5829,
      CYINIT => '0',
      CO(3) => n_ACT_U5_Maccum_cnt_cy_7_Q_5834,
      CO(2) => NLW_n_ACT_U5_Maccum_cnt_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U5_Maccum_cnt_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U5_Maccum_cnt_cy_7_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U5_cnt(7),
      DI(2) => n_ACT_U5_cnt(6),
      DI(1) => n_ACT_U5_cnt(5),
      DI(0) => n_ACT_U5_cnt(4),
      O(3) => n_ACT_Result(7),
      O(2) => n_ACT_Result(6),
      O(1) => n_ACT_Result(5),
      O(0) => n_ACT_Result(4),
      S(3) => n_ACT_U5_Maccum_cnt_lut(7),
      S(2) => n_ACT_U5_Maccum_cnt_lut(6),
      S(1) => n_ACT_U5_Maccum_cnt_lut(5),
      S(0) => n_ACT_U5_Maccum_cnt_lut(4)
    );
  n_ACT_U5_Maccum_cnt_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U5_cnt(6),
      ADR3 => '1',
      ADR0 => n_ACT_acc_b_in(6),
      O => n_ACT_U5_Maccum_cnt_lut(6)
    );
  n_ACT_U5_cnt_5 : X_SFF
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_5_CLK,
      I => n_ACT_Result(5),
      O => n_ACT_U5_cnt(5),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U5_cnt(5),
      ADR4 => '1',
      ADR0 => n_ACT_acc_b_in(5),
      O => n_ACT_U5_Maccum_cnt_lut(5)
    );
  n_ACT_U5_cnt_4 : X_SFF
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_4_CLK,
      I => n_ACT_Result(4),
      O => n_ACT_U5_cnt(4),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y61",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U5_cnt(4),
      ADR3 => '1',
      ADR1 => n_ACT_acc_b_in(4),
      O => n_ACT_U5_Maccum_cnt_lut(4)
    );
  n_ACT_U5_cnt_11 : X_SFF
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_11_CLK,
      I => n_ACT_Result(11),
      O => n_ACT_U5_cnt(11),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => n_ACT_U5_cnt(11),
      ADR4 => '1',
      ADR2 => n_ACT_acc_b_in(11),
      O => n_ACT_U5_Maccum_cnt_lut(11)
    );
  n_ACT_U5_cnt_10 : X_SFF
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_10_CLK,
      I => n_ACT_Result(10),
      O => n_ACT_U5_cnt(10),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y62"
    )
    port map (
      CI => n_ACT_U5_Maccum_cnt_cy_7_Q_5834,
      CYINIT => '0',
      CO(3) => n_ACT_U5_Maccum_cnt_cy_11_Q_5839,
      CO(2) => NLW_n_ACT_U5_Maccum_cnt_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U5_Maccum_cnt_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U5_Maccum_cnt_cy_11_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U5_cnt(11),
      DI(2) => n_ACT_U5_cnt(10),
      DI(1) => n_ACT_U5_cnt(9),
      DI(0) => n_ACT_U5_cnt(8),
      O(3) => n_ACT_Result(11),
      O(2) => n_ACT_Result(10),
      O(1) => n_ACT_Result(9),
      O(0) => n_ACT_Result(8),
      S(3) => n_ACT_U5_Maccum_cnt_lut(11),
      S(2) => n_ACT_U5_Maccum_cnt_lut(10),
      S(1) => n_ACT_U5_Maccum_cnt_lut(9),
      S(0) => n_ACT_U5_Maccum_cnt_lut(8)
    );
  n_ACT_U5_Maccum_cnt_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U5_cnt(10),
      ADR3 => '1',
      ADR0 => n_ACT_acc_b_in(10),
      O => n_ACT_U5_Maccum_cnt_lut(10)
    );
  n_ACT_U5_cnt_9 : X_SFF
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_9_CLK,
      I => n_ACT_Result(9),
      O => n_ACT_U5_cnt(9),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => n_ACT_U5_cnt(9),
      ADR4 => '1',
      ADR2 => n_ACT_acc_b_in(9),
      O => n_ACT_U5_Maccum_cnt_lut(9)
    );
  n_ACT_U5_cnt_8 : X_SFF
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_8_CLK,
      I => n_ACT_Result(8),
      O => n_ACT_U5_cnt(8),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y62",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_ACT_U5_cnt(8),
      ADR3 => '1',
      ADR2 => n_ACT_acc_b_in(8),
      O => n_ACT_U5_Maccum_cnt_lut(8)
    );
  n_ACT_U5_cnt_15 : X_SFF
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_15_CLK,
      I => n_ACT_Result(15),
      O => n_ACT_U5_cnt(15),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => n_ACT_U5_cnt(15),
      ADR4 => '1',
      ADR2 => n_ACT_acc_b_in(15),
      O => n_ACT_U5_Maccum_cnt_lut(15)
    );
  n_ACT_U5_cnt_14 : X_SFF
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_14_CLK,
      I => n_ACT_Result(14),
      O => n_ACT_U5_cnt(14),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y63"
    )
    port map (
      CI => n_ACT_U5_Maccum_cnt_cy_11_Q_5839,
      CYINIT => '0',
      CO(3) => n_ACT_U5_Maccum_cnt_cy_15_Q_5844,
      CO(2) => NLW_n_ACT_U5_Maccum_cnt_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U5_Maccum_cnt_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U5_Maccum_cnt_cy_15_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U5_cnt(15),
      DI(2) => n_ACT_U5_cnt(14),
      DI(1) => n_ACT_U5_cnt(13),
      DI(0) => n_ACT_U5_cnt(12),
      O(3) => n_ACT_Result(15),
      O(2) => n_ACT_Result(14),
      O(1) => n_ACT_Result(13),
      O(0) => n_ACT_Result(12),
      S(3) => n_ACT_U5_Maccum_cnt_lut(15),
      S(2) => n_ACT_U5_Maccum_cnt_lut(14),
      S(1) => n_ACT_U5_Maccum_cnt_lut(13),
      S(0) => n_ACT_U5_Maccum_cnt_lut(12)
    );
  n_ACT_U5_Maccum_cnt_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U5_cnt(14),
      ADR3 => '1',
      ADR0 => n_ACT_acc_b_in(14),
      O => n_ACT_U5_Maccum_cnt_lut(14)
    );
  n_ACT_U5_cnt_13 : X_SFF
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_13_CLK,
      I => n_ACT_Result(13),
      O => n_ACT_U5_cnt(13),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => n_ACT_U5_cnt(13),
      ADR4 => '1',
      ADR2 => n_ACT_acc_b_in(13),
      O => n_ACT_U5_Maccum_cnt_lut(13)
    );
  n_ACT_U5_cnt_12 : X_SFF
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_12_CLK,
      I => n_ACT_Result(12),
      O => n_ACT_U5_cnt(12),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y63",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_ACT_U5_cnt(12),
      ADR3 => '1',
      ADR2 => n_ACT_acc_b_in(12),
      O => n_ACT_U5_Maccum_cnt_lut(12)
    );
  n_ACT_U5_cnt_19 : X_SFF
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_19_CLK,
      I => n_ACT_Result(19),
      O => n_ACT_U5_cnt(19),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U5_cnt(19),
      ADR5 => '1',
      ADR4 => n_ACT_acc_b_in(19),
      O => n_ACT_U5_Maccum_cnt_lut(19)
    );
  n_ACT_U5_cnt_18 : X_SFF
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_18_CLK,
      I => n_ACT_Result(18),
      O => n_ACT_U5_cnt(18),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y64"
    )
    port map (
      CI => n_ACT_U5_Maccum_cnt_cy_15_Q_5844,
      CYINIT => '0',
      CO(3) => NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U5_Maccum_cnt_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_n_ACT_U5_Maccum_cnt_xor_19_DI_3_UNCONNECTED,
      DI(2) => n_ACT_U5_cnt(18),
      DI(1) => n_ACT_U5_cnt(17),
      DI(0) => n_ACT_U5_cnt(16),
      O(3) => n_ACT_Result(19),
      O(2) => n_ACT_Result(18),
      O(1) => n_ACT_Result(17),
      O(0) => n_ACT_Result(16),
      S(3) => n_ACT_U5_Maccum_cnt_lut(19),
      S(2) => n_ACT_U5_Maccum_cnt_lut(18),
      S(1) => n_ACT_U5_Maccum_cnt_lut(17),
      S(0) => n_ACT_U5_Maccum_cnt_lut(16)
    );
  n_ACT_U5_Maccum_cnt_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U5_cnt(18),
      ADR3 => '1',
      ADR0 => n_ACT_acc_b_in(18),
      O => n_ACT_U5_Maccum_cnt_lut(18)
    );
  n_ACT_U5_cnt_17 : X_SFF
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_17_CLK,
      I => n_ACT_Result(17),
      O => n_ACT_U5_cnt(17),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => n_ACT_U5_cnt(17),
      ADR4 => '1',
      ADR2 => n_ACT_acc_b_in(17),
      O => n_ACT_U5_Maccum_cnt_lut(17)
    );
  n_ACT_U5_cnt_16 : X_SFF
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_b_en,
      CLK => NlwBufferSignal_n_ACT_U5_cnt_16_CLK,
      I => n_ACT_Result(16),
      O => n_ACT_U5_cnt(16),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U5_Maccum_cnt_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y64",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_ACT_U5_cnt(16),
      ADR3 => '1',
      ADR2 => n_ACT_acc_b_in(16),
      O => n_ACT_U5_Maccum_cnt_lut(16)
    );
  n_ACT_U4_weight_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_3_CLK,
      I => n_ACT_Result_3_1,
      O => n_ACT_U4_weight_reg(3),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(3),
      ADR4 => '1',
      ADR1 => n_NL_acc_f_in(4),
      O => n_ACT_U4_Maccum_weight_reg_lut(3)
    );
  ProtoComp14_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X21Y66"
    )
    port map (
      O => NLW_ProtoComp14_CYINITGND_1_O_UNCONNECTED
    );
  n_ACT_U4_weight_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_2_CLK,
      I => n_ACT_Result_2_1,
      O => n_ACT_U4_weight_reg(2),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X21Y66"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => n_ACT_U4_Maccum_weight_reg_cy_3_Q_5850,
      CO(2) => NLW_n_ACT_U4_Maccum_weight_reg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U4_Maccum_weight_reg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U4_Maccum_weight_reg_cy_3_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U4_weight_reg(3),
      DI(2) => n_ACT_U4_weight_reg(2),
      DI(1) => n_ACT_U4_weight_reg(1),
      DI(0) => NlwBufferSignal_n_ACT_U4_Maccum_weight_reg_cy_3_DI_0_Q,
      O(3) => n_ACT_Result_3_1,
      O(2) => n_ACT_Result_2_1,
      O(1) => n_ACT_Result_1_1,
      O(0) => n_ACT_Result_0_1,
      S(3) => n_ACT_U4_Maccum_weight_reg_lut(3),
      S(2) => n_ACT_U4_Maccum_weight_reg_lut(2),
      S(1) => n_ACT_U4_Maccum_weight_reg_lut(1),
      S(0) => n_ACT_U4_Maccum_weight_reg_lut(0)
    );
  n_ACT_U4_Maccum_weight_reg_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_ACT_U4_weight_reg(2),
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(3),
      O => n_ACT_U4_Maccum_weight_reg_lut(2)
    );
  n_ACT_U4_weight_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_1_CLK,
      I => n_ACT_Result_1_1,
      O => n_ACT_U4_weight_reg(1),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(1),
      ADR4 => '1',
      ADR1 => n_NL_acc_f_in(2),
      O => n_ACT_U4_Maccum_weight_reg_lut(1)
    );
  n_ACT_U4_weight_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_0_CLK,
      I => n_ACT_Result_0_1,
      O => n_ACT_U4_weight_reg(0),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y66",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => n_ACT_U4_weight_reg(0),
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(1),
      O => n_ACT_U4_Maccum_weight_reg_lut(0)
    );
  n_ACT_U4_weight_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_7_CLK,
      I => n_ACT_Result_7_1,
      O => n_ACT_U4_weight_reg(7),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => n_ACT_U4_weight_reg(7),
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(8),
      O => n_ACT_U4_Maccum_weight_reg_lut(7)
    );
  n_ACT_U4_weight_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_6_CLK,
      I => n_ACT_Result_6_1,
      O => n_ACT_U4_weight_reg(6),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X21Y67"
    )
    port map (
      CI => n_ACT_U4_Maccum_weight_reg_cy_3_Q_5850,
      CYINIT => '0',
      CO(3) => n_ACT_U4_Maccum_weight_reg_cy_7_Q_5851,
      CO(2) => NLW_n_ACT_U4_Maccum_weight_reg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U4_Maccum_weight_reg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U4_Maccum_weight_reg_cy_7_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U4_weight_reg(7),
      DI(2) => n_ACT_U4_weight_reg(6),
      DI(1) => n_ACT_U4_weight_reg(5),
      DI(0) => n_ACT_U4_weight_reg(4),
      O(3) => n_ACT_Result_7_1,
      O(2) => n_ACT_Result_6_1,
      O(1) => n_ACT_Result_5_1,
      O(0) => n_ACT_Result_4_1,
      S(3) => n_ACT_U4_Maccum_weight_reg_lut(7),
      S(2) => n_ACT_U4_Maccum_weight_reg_lut(6),
      S(1) => n_ACT_U4_Maccum_weight_reg_lut(5),
      S(0) => n_ACT_U4_Maccum_weight_reg_lut(4)
    );
  n_ACT_U4_Maccum_weight_reg_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_ACT_U4_weight_reg(6),
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(7),
      O => n_ACT_U4_Maccum_weight_reg_lut(6)
    );
  n_ACT_U4_weight_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_5_CLK,
      I => n_ACT_Result_5_1,
      O => n_ACT_U4_weight_reg(5),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(5),
      ADR4 => '1',
      ADR0 => n_NL_acc_f_in(6),
      O => n_ACT_U4_Maccum_weight_reg_lut(5)
    );
  n_ACT_U4_weight_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_4_CLK,
      I => n_ACT_Result_4_1,
      O => n_ACT_U4_weight_reg(4),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y67",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U4_weight_reg(4),
      ADR5 => '1',
      ADR3 => n_NL_acc_f_in(5),
      O => n_ACT_U4_Maccum_weight_reg_lut(4)
    );
  n_ACT_U4_weight_reg_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_11_CLK,
      I => n_ACT_Result_11_1,
      O => n_ACT_U4_weight_reg(11),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(11),
      ADR4 => '1',
      ADR0 => n_NL_acc_f_in(12),
      O => n_ACT_U4_Maccum_weight_reg_lut(11)
    );
  n_ACT_U4_weight_reg_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_10_CLK,
      I => n_ACT_Result_10_1,
      O => n_ACT_U4_weight_reg(10),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X21Y68"
    )
    port map (
      CI => n_ACT_U4_Maccum_weight_reg_cy_7_Q_5851,
      CYINIT => '0',
      CO(3) => n_ACT_U4_Maccum_weight_reg_cy_11_Q_5852,
      CO(2) => NLW_n_ACT_U4_Maccum_weight_reg_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U4_Maccum_weight_reg_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U4_Maccum_weight_reg_cy_11_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U4_weight_reg(11),
      DI(2) => n_ACT_U4_weight_reg(10),
      DI(1) => n_ACT_U4_weight_reg(9),
      DI(0) => n_ACT_U4_weight_reg(8),
      O(3) => n_ACT_Result_11_1,
      O(2) => n_ACT_Result_10_1,
      O(1) => n_ACT_Result_9_1,
      O(0) => n_ACT_Result_8_1,
      S(3) => n_ACT_U4_Maccum_weight_reg_lut(11),
      S(2) => n_ACT_U4_Maccum_weight_reg_lut(10),
      S(1) => n_ACT_U4_Maccum_weight_reg_lut(9),
      S(0) => n_ACT_U4_Maccum_weight_reg_lut(8)
    );
  n_ACT_U4_Maccum_weight_reg_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U4_weight_reg(10),
      ADR3 => '1',
      ADR0 => n_NL_acc_f_in(11),
      O => n_ACT_U4_Maccum_weight_reg_lut(10)
    );
  n_ACT_U4_weight_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_9_CLK,
      I => n_ACT_Result_9_1,
      O => n_ACT_U4_weight_reg(9),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(9),
      ADR5 => '1',
      ADR4 => n_NL_acc_f_in(10),
      O => n_ACT_U4_Maccum_weight_reg_lut(9)
    );
  n_ACT_U4_weight_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_8_CLK,
      I => n_ACT_Result_8_1,
      O => n_ACT_U4_weight_reg(8),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y68",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_ACT_U4_weight_reg(8),
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(9),
      O => n_ACT_U4_Maccum_weight_reg_lut(8)
    );
  n_ACT_U4_weight_reg_15 : X_FF
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => '1'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_15_CLK,
      I => n_ACT_Result_15_1,
      O => n_ACT_U4_weight_reg(15),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => n_ACT_U4_weight_reg(15),
      ADR4 => '1',
      ADR2 => n_NL_acc_f_in(16),
      O => n_ACT_U4_Maccum_weight_reg_lut(15)
    );
  n_ACT_U4_weight_reg_14 : X_FF
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_14_CLK,
      I => n_ACT_Result_14_1,
      O => n_ACT_U4_weight_reg(14),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X21Y69"
    )
    port map (
      CI => n_ACT_U4_Maccum_weight_reg_cy_11_Q_5852,
      CYINIT => '0',
      CO(3) => n_ACT_U4_Maccum_weight_reg_cy_15_Q_5853,
      CO(2) => NLW_n_ACT_U4_Maccum_weight_reg_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U4_Maccum_weight_reg_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U4_Maccum_weight_reg_cy_15_CO_0_UNCONNECTED,
      DI(3) => n_ACT_U4_weight_reg(15),
      DI(2) => n_ACT_U4_weight_reg(14),
      DI(1) => n_ACT_U4_weight_reg(13),
      DI(0) => NlwBufferSignal_n_ACT_U4_Maccum_weight_reg_cy_15_DI_0_Q,
      O(3) => n_ACT_Result_15_1,
      O(2) => n_ACT_Result_14_1,
      O(1) => n_ACT_Result_13_1,
      O(0) => n_ACT_Result_12_1,
      S(3) => n_ACT_U4_Maccum_weight_reg_lut(15),
      S(2) => n_ACT_U4_Maccum_weight_reg_lut(14),
      S(1) => n_ACT_U4_Maccum_weight_reg_lut(13),
      S(0) => n_ACT_U4_Maccum_weight_reg_lut(12)
    );
  n_ACT_U4_Maccum_weight_reg_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U4_weight_reg(14),
      ADR3 => '1',
      ADR0 => n_NL_acc_f_in(15),
      O => n_ACT_U4_Maccum_weight_reg_lut(14)
    );
  n_ACT_U4_weight_reg_13 : X_FF
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_13_CLK,
      I => n_ACT_Result_13_1,
      O => n_ACT_U4_weight_reg(13),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(13),
      ADR5 => '1',
      ADR4 => n_NL_acc_f_in(14),
      O => n_ACT_U4_Maccum_weight_reg_lut(13)
    );
  n_ACT_U4_weight_reg_12 : X_FF
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_12_CLK,
      I => n_ACT_Result_12_1,
      O => n_ACT_U4_weight_reg(12),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y69",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => n_ACT_U4_weight_reg(12),
      ADR5 => '1',
      ADR4 => n_NL_acc_f_in(13),
      O => n_ACT_U4_Maccum_weight_reg_lut(12)
    );
  n_ACT_U4_weight_reg_19 : X_FF
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_19_CLK,
      I => n_ACT_Result_19_1,
      O => n_ACT_U4_weight_reg(19),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(19),
      ADR4 => '1',
      ADR0 => n_NL_acc_f_in(19),
      O => n_ACT_U4_Maccum_weight_reg_lut(19)
    );
  n_ACT_U4_weight_reg_18 : X_FF
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_18_CLK,
      I => n_ACT_Result_18_1,
      O => n_ACT_U4_weight_reg(18),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X21Y70"
    )
    port map (
      CI => n_ACT_U4_Maccum_weight_reg_cy_15_Q_5853,
      CYINIT => '0',
      CO(3) => NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U4_Maccum_weight_reg_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_n_ACT_U4_Maccum_weight_reg_xor_19_DI_3_UNCONNECTED,
      DI(2) => n_ACT_U4_weight_reg(18),
      DI(1) => n_ACT_U4_weight_reg(17),
      DI(0) => n_ACT_U4_weight_reg(16),
      O(3) => n_ACT_Result_19_1,
      O(2) => n_ACT_Result_18_1,
      O(1) => n_ACT_Result_17_1,
      O(0) => n_ACT_Result_16_1,
      S(3) => n_ACT_U4_Maccum_weight_reg_lut(19),
      S(2) => n_ACT_U4_Maccum_weight_reg_lut(18),
      S(1) => n_ACT_U4_Maccum_weight_reg_lut(17),
      S(0) => n_ACT_U4_Maccum_weight_reg_lut(16)
    );
  n_ACT_U4_Maccum_weight_reg_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U4_weight_reg(18),
      ADR5 => '1',
      ADR3 => n_NL_acc_f_in(19),
      O => n_ACT_U4_Maccum_weight_reg_lut(18)
    );
  n_ACT_U4_weight_reg_17 : X_FF
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_17_CLK,
      I => n_ACT_Result_17_1,
      O => n_ACT_U4_weight_reg(17),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U4_weight_reg(17),
      ADR4 => '1',
      ADR0 => n_NL_acc_f_in(18),
      O => n_ACT_U4_Maccum_weight_reg_lut(17)
    );
  n_ACT_U4_weight_reg_16 : X_FF
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_acc_t_en_0,
      CLK => NlwBufferSignal_n_ACT_U4_weight_reg_16_CLK,
      I => n_ACT_Result_16_1,
      O => n_ACT_U4_weight_reg(16),
      RST => GND,
      SET => GND
    );
  n_ACT_U4_Maccum_weight_reg_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X21Y70",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => n_ACT_U4_weight_reg(16),
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(17),
      O => n_ACT_U4_Maccum_weight_reg_lut(16)
    );
  n_ACT_U3_Msub_Output_cy_3_n_ACT_U3_Msub_Output_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(3),
      O => n_ACT_omx_out_3_0
    );
  n_ACT_U3_Msub_Output_cy_3_n_ACT_U3_Msub_Output_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(2),
      O => n_ACT_omx_out_2_0
    );
  n_ACT_U3_Msub_Output_cy_3_n_ACT_U3_Msub_Output_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(1),
      O => n_ACT_omx_out_1_0
    );
  n_ACT_U3_Msub_Output_cy_3_n_ACT_U3_Msub_Output_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(0),
      O => n_ACT_omx_out_0_0
    );
  n_ACT_U3_Msub_Output_lut_3_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => n_NL_acc_f_in(3),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_3_Q
    );
  n_ACT_U10_d_1_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_17_D5LUT_O_UNCONNECTED
    );
  ProtoComp36_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X22Y67"
    )
    port map (
      O => NLW_ProtoComp36_CYINITVCC_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y67"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => n_ACT_U3_Msub_Output_cy_3_Q_5854,
      CO(2) => NLW_n_ACT_U3_Msub_Output_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U3_Msub_Output_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U3_Msub_Output_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => n_ACT_omx_out(3),
      O(2) => n_ACT_omx_out(2),
      O(1) => n_ACT_omx_out(1),
      O(0) => n_ACT_omx_out(0),
      S(3) => n_ACT_U3_Msub_Output_lut_3_Q,
      S(2) => n_ACT_U3_Msub_Output_lut_2_Q,
      S(1) => n_ACT_U3_Msub_Output_lut_1_Q,
      S(0) => n_ACT_U3_Msub_Output_lut_0_Q
    );
  n_ACT_U3_Msub_Output_lut_2_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => n_NL_acc_f_in(2),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_2_Q
    );
  n_ACT_U10_d_1_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_18_C5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => n_NL_acc_f_in(1),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_1_Q
    );
  n_ACT_U10_d_1_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_19_B5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => n_NL_acc_f_in(0),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_0_Q
    );
  n_ACT_U10_d_1_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_20_A5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_cy_7_n_ACT_U3_Msub_Output_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(7),
      O => n_ACT_omx_out_7_0
    );
  n_ACT_U3_Msub_Output_cy_7_n_ACT_U3_Msub_Output_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(6),
      O => n_ACT_omx_out_6_0
    );
  n_ACT_U3_Msub_Output_cy_7_n_ACT_U3_Msub_Output_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(5),
      O => n_ACT_omx_out_5_0
    );
  n_ACT_U3_Msub_Output_cy_7_n_ACT_U3_Msub_Output_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(4),
      O => n_ACT_omx_out_4_0
    );
  n_ACT_U3_Msub_Output_lut_7_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => n_NL_acc_f_in(7),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_7_Q
    );
  n_ACT_U10_d_1_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_13_D5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y68"
    )
    port map (
      CI => n_ACT_U3_Msub_Output_cy_3_Q_5854,
      CYINIT => '0',
      CO(3) => n_ACT_U3_Msub_Output_cy_7_Q_5855,
      CO(2) => NLW_n_ACT_U3_Msub_Output_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U3_Msub_Output_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U3_Msub_Output_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => n_ACT_omx_out(7),
      O(2) => n_ACT_omx_out(6),
      O(1) => n_ACT_omx_out(5),
      O(0) => n_ACT_omx_out(4),
      S(3) => n_ACT_U3_Msub_Output_lut_7_Q,
      S(2) => n_ACT_U3_Msub_Output_lut_6_Q,
      S(1) => n_ACT_U3_Msub_Output_lut_5_Q,
      S(0) => n_ACT_U3_Msub_Output_lut_4_Q
    );
  n_ACT_U3_Msub_Output_lut_6_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(6),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_6_Q
    );
  n_ACT_U10_d_1_14_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_14_C5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_5_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => n_NL_acc_f_in(5),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_5_Q
    );
  n_ACT_U10_d_1_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_15_B5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_4_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(4),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_4_Q
    );
  n_ACT_U10_d_1_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_16_A5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_cy_11_n_ACT_U3_Msub_Output_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(11),
      O => n_ACT_omx_out_11_0
    );
  n_ACT_U3_Msub_Output_cy_11_n_ACT_U3_Msub_Output_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(10),
      O => n_ACT_omx_out_10_0
    );
  n_ACT_U3_Msub_Output_cy_11_n_ACT_U3_Msub_Output_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(9),
      O => n_ACT_omx_out_9_0
    );
  n_ACT_U3_Msub_Output_cy_11_n_ACT_U3_Msub_Output_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(8),
      O => n_ACT_omx_out_8_0
    );
  n_ACT_U3_Msub_Output_lut_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(11),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_11_Q
    );
  n_ACT_U10_d_1_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_9_D5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y69"
    )
    port map (
      CI => n_ACT_U3_Msub_Output_cy_7_Q_5855,
      CYINIT => '0',
      CO(3) => n_ACT_U3_Msub_Output_cy_11_Q_5856,
      CO(2) => NLW_n_ACT_U3_Msub_Output_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U3_Msub_Output_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U3_Msub_Output_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => n_ACT_omx_out(11),
      O(2) => n_ACT_omx_out(10),
      O(1) => n_ACT_omx_out(9),
      O(0) => n_ACT_omx_out(8),
      S(3) => n_ACT_U3_Msub_Output_lut_11_Q,
      S(2) => n_ACT_U3_Msub_Output_lut_10_Q,
      S(1) => n_ACT_U3_Msub_Output_lut_9_Q,
      S(0) => n_ACT_U3_Msub_Output_lut_8_Q
    );
  n_ACT_U3_Msub_Output_lut_10_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(10),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_10_Q
    );
  n_ACT_U10_d_1_10_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_10_C5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_9_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => n_NL_acc_f_in(9),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_9_Q
    );
  n_ACT_U10_d_1_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_11_B5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_8_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(8),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_8_Q
    );
  n_ACT_U10_d_1_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_12_A5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_cy_15_n_ACT_U3_Msub_Output_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(15),
      O => n_ACT_omx_out_15_0
    );
  n_ACT_U3_Msub_Output_cy_15_n_ACT_U3_Msub_Output_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(14),
      O => n_ACT_omx_out_14_0
    );
  n_ACT_U3_Msub_Output_cy_15_n_ACT_U3_Msub_Output_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(13),
      O => n_ACT_omx_out_13_0
    );
  n_ACT_U3_Msub_Output_cy_15_n_ACT_U3_Msub_Output_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(12),
      O => n_ACT_omx_out_12_0
    );
  n_ACT_U3_Msub_Output_lut_15_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(15),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_15_Q
    );
  n_ACT_U10_d_1_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_5_D5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y70"
    )
    port map (
      CI => n_ACT_U3_Msub_Output_cy_11_Q_5856,
      CYINIT => '0',
      CO(3) => n_ACT_U3_Msub_Output_cy_15_Q_5857,
      CO(2) => NLW_n_ACT_U3_Msub_Output_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U3_Msub_Output_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U3_Msub_Output_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => n_ACT_omx_out(15),
      O(2) => n_ACT_omx_out(14),
      O(1) => n_ACT_omx_out(13),
      O(0) => n_ACT_omx_out(12),
      S(3) => n_ACT_U3_Msub_Output_lut_15_Q,
      S(2) => n_ACT_U3_Msub_Output_lut_14_Q,
      S(1) => n_ACT_U3_Msub_Output_lut_13_Q,
      S(0) => n_ACT_U3_Msub_Output_lut_12_Q
    );
  n_ACT_U3_Msub_Output_lut_14_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(14),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_14_Q
    );
  n_ACT_U10_d_1_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_6_C5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_13_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(13),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_13_Q
    );
  n_ACT_U10_d_1_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_7_B5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_12_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(12),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_12_Q
    );
  n_ACT_U10_d_1_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_8_A5LUT_O_UNCONNECTED
    );
  n_ACT_omx_out_19_n_ACT_omx_out_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(19),
      O => n_ACT_omx_out_19_0
    );
  n_ACT_omx_out_19_n_ACT_omx_out_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(18),
      O => n_ACT_omx_out_18_0
    );
  n_ACT_omx_out_19_n_ACT_omx_out_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(17),
      O => n_ACT_omx_out_17_0
    );
  n_ACT_omx_out_19_n_ACT_omx_out_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_omx_out(16),
      O => n_ACT_omx_out_16_0
    );
  n_ACT_U3_Msub_Output_lut_19_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => n_NL_acc_f_in(19),
      O => n_ACT_U3_Msub_Output_lut_19_Q
    );
  n_ACT_U3_Msub_Output_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y71"
    )
    port map (
      CI => n_ACT_U3_Msub_Output_cy_15_Q_5857,
      CYINIT => '0',
      CO(3) => NLW_n_ACT_U3_Msub_Output_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_n_ACT_U3_Msub_Output_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U3_Msub_Output_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U3_Msub_Output_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_n_ACT_U3_Msub_Output_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => n_ACT_omx_out(19),
      O(2) => n_ACT_omx_out(18),
      O(1) => n_ACT_omx_out(17),
      O(0) => n_ACT_omx_out(16),
      S(3) => n_ACT_U3_Msub_Output_lut_19_Q,
      S(2) => n_ACT_U3_Msub_Output_lut_18_Q,
      S(1) => n_ACT_U3_Msub_Output_lut_17_Q,
      S(0) => n_NL_acc_f_in_16_rt_1445
    );
  n_ACT_U3_Msub_Output_lut_18_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => n_NL_acc_f_in(18),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_18_Q
    );
  n_ACT_U10_d_1_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_3_C5LUT_O_UNCONNECTED
    );
  n_ACT_U3_Msub_Output_lut_17_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(17),
      ADR5 => '1',
      O => n_ACT_U3_Msub_Output_lut_17_Q
    );
  n_ACT_U10_d_1_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_n_ACT_U10_d_1_4_B5LUT_O_UNCONNECTED
    );
  n_NL_acc_f_in_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => n_NL_acc_f_in(16),
      ADR5 => '1',
      O => n_NL_acc_f_in_16_rt_1445
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y71",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X2Y43",
      PATHPULSE => 450 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_5858,
      I => clk
    );
  eastIn_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y79",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_0_IBUF_5500,
      I => eastIn(0)
    );
  eastIn_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y78",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_1_IBUF_5482,
      I => eastIn(1)
    );
  eastIn_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y77",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_2_IBUF_5514,
      I => eastIn(2)
    );
  eastIn_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y76",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_3_IBUF_5516,
      I => eastIn(3)
    );
  eastIn_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y75",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_4_IBUF_5446,
      I => eastIn(4)
    );
  eastIn_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y74",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_5_IBUF_5448,
      I => eastIn(5)
    );
  eastIn_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y73",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_6_IBUF_5461,
      I => eastIn(6)
    );
  eastIn_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y72",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_7_IBUF_5463,
      I => eastIn(7)
    );
  eastIn_8_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y71",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_8_IBUF_5492,
      I => eastIn(8)
    );
  eastIn_9_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y70",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_9_IBUF_5494,
      I => eastIn(9)
    );
  broadcast_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y59",
      PATHPULSE => 450 ps
    )
    port map (
      O => broadcast_IBUF_5477,
      I => broadcast
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y54",
      PATHPULSE => 450 ps
    )
    port map (
      O => reset_IBUF_5430,
      I => reset
    );
  eastIn_10_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y69",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_10_IBUF_5506,
      I => eastIn(10)
    );
  eastIn_11_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y68",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_11_IBUF_5508,
      I => eastIn(11)
    );
  eastIn_12_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y67",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_12_IBUF_5440,
      I => eastIn(12)
    );
  eastIn_13_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y66",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_13_IBUF_5442,
      I => eastIn(13)
    );
  eastIn_14_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y65",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_14_IBUF_5455,
      I => eastIn(14)
    );
  eastIn_15_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y64",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_15_IBUF_5457,
      I => eastIn(15)
    );
  eastIn_16_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y63",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_16_IBUF_5486,
      I => eastIn(16)
    );
  eastIn_17_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y62",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_17_IBUF_5488,
      I => eastIn(17)
    );
  eastIn_18_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y61",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_18_IBUF_5451,
      I => eastIn(18)
    );
  forward_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y57",
      PATHPULSE => 450 ps
    )
    port map (
      O => forward_IBUF_5424,
      I => forward
    );
  eastIn_19_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y60",
      PATHPULSE => 450 ps
    )
    port map (
      O => eastIn_19_IBUF_5480,
      I => eastIn(19)
    );
  westIn_10_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y69",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(10),
      I => westIn(10)
    );
  westIn_11_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y68",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(11),
      I => westIn(11)
    );
  westIn_12_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y67",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(12),
      I => westIn(12)
    );
  westIn_13_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y66",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(13),
      I => westIn(13)
    );
  westIn_14_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y65",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(14),
      I => westIn(14)
    );
  westIn_15_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y64",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(15),
      I => westIn(15)
    );
  westIn_16_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y63",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(16),
      I => westIn(16)
    );
  westIn_17_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y62",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(17),
      I => westIn(17)
    );
  westIn_18_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y61",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(18),
      I => westIn(18)
    );
  westIn_19_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y60",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(19),
      I => westIn(19)
    );
  output_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y49"
    )
    port map (
      I => NlwBufferSignal_output_10_OBUF_I,
      O => output(10)
    );
  output_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y48"
    )
    port map (
      I => NlwBufferSignal_output_11_OBUF_I,
      O => output(11)
    );
  output_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y47"
    )
    port map (
      I => NlwBufferSignal_output_12_OBUF_I,
      O => output(12)
    );
  output_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y46"
    )
    port map (
      I => NlwBufferSignal_output_13_OBUF_I,
      O => output(13)
    );
  output_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y45"
    )
    port map (
      I => NlwBufferSignal_output_14_OBUF_I,
      O => output(14)
    );
  output_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y44"
    )
    port map (
      I => NlwBufferSignal_output_15_OBUF_I,
      O => output(15)
    );
  output_16_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y43"
    )
    port map (
      I => NlwBufferSignal_output_16_OBUF_I,
      O => output(16)
    );
  output_17_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y42"
    )
    port map (
      I => NlwBufferSignal_output_17_OBUF_I,
      O => output(17)
    );
  output_18_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y41"
    )
    port map (
      I => NlwBufferSignal_output_18_OBUF_I,
      O => output(18)
    );
  output_19_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y40"
    )
    port map (
      I => NlwBufferSignal_output_19_OBUF_I,
      O => output(19)
    );
  backward_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y58",
      PATHPULSE => 450 ps
    )
    port map (
      O => backward_IBUF_5476,
      I => backward
    );
  westIn_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y79",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(0),
      I => westIn(0)
    );
  westIn_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y78",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(1),
      I => westIn(1)
    );
  westIn_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y77",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(2),
      I => westIn(2)
    );
  westIn_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y76",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(3),
      I => westIn(3)
    );
  westIn_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y75",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(4),
      I => westIn(4)
    );
  westIn_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y74",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(5),
      I => westIn(5)
    );
  westIn_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y73",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(6),
      I => westIn(6)
    );
  westIn_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y72",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(7),
      I => westIn(7)
    );
  westIn_8_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y71",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(8),
      I => westIn(8)
    );
  westIn_9_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y70",
      PATHPULSE => 450 ps
    )
    port map (
      O => n_EL_acc_f_in(9),
      I => westIn(9)
    );
  update_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y55",
      PATHPULSE => 450 ps
    )
    port map (
      O => update_IBUF_5466,
      I => update
    );
  output_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y59"
    )
    port map (
      I => NlwBufferSignal_output_0_OBUF_I,
      O => output(0)
    );
  output_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y58"
    )
    port map (
      I => NlwBufferSignal_output_1_OBUF_I,
      O => output(1)
    );
  output_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y52"
    )
    port map (
      I => NlwBufferSignal_output_2_OBUF_I,
      O => output(2)
    );
  output_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y51"
    )
    port map (
      I => NlwBufferSignal_output_3_OBUF_I,
      O => output(3)
    );
  output_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y50"
    )
    port map (
      I => NlwBufferSignal_output_4_OBUF_I,
      O => output(4)
    );
  output_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y54"
    )
    port map (
      I => NlwBufferSignal_output_5_OBUF_I,
      O => output(5)
    );
  output_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y53"
    )
    port map (
      I => NlwBufferSignal_output_6_OBUF_I,
      O => output(6)
    );
  output_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y57"
    )
    port map (
      I => NlwBufferSignal_output_7_OBUF_I,
      O => output(7)
    );
  output_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y55"
    )
    port map (
      I => NlwBufferSignal_output_8_OBUF_I,
      O => output(8)
    );
  output_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y56"
    )
    port map (
      I => NlwBufferSignal_output_9_OBUF_I,
      O => output(9)
    );
  still_fwd_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y56",
      PATHPULSE => 450 ps
    )
    port map (
      O => still_fwd_IBUF_5519,
      I => still_fwd
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y0",
      PATHPULSE => 450 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  n_ACT_U1_U1_blk00000001_blk00000046_INMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_INMODE0_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_INMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_INMODE1_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_INMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_INMODE2_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_INMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_INMODE3_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_INMODE4INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_INMODE4_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE0_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE1_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE2_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE3_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_OPMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE0_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_OPMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE1_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_OPMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE2_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_OPMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE3_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_OPMODE4INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE4_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_OPMODE5INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE5_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_OPMODE6INV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE6_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_CARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_ACT_U1_U1_blk00000001_blk00000046_CARRYIN_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X2Y27",
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => n_ACT_U1_U1_blk00000001_blk00000046_CLK_INT
    );
  n_ACT_U1_U1_blk00000001_blk00000046 : X_DSP48E1
    generic map(
      ALUMODEREG => 0,
      AREG => 0,
      ADREG => 0,
      DREG => 0,
      INMODEREG => 0,
      CARRYINSELREG => 0,
      BCASCREG => 0,
      OPMODEREG => 0,
      ACASCREG => 0,
      CREG => 0,
      MREG => 0,
      BREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      A_INPUT => "DIRECT",
      B_INPUT => "DIRECT",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_DPORT => FALSE,
      USE_SIMD => "ONE48",
      AUTORESET_PATDET => "NO_RESET",
      SEL_MASK => "MASK",
      MASK => X"000000000000",
      PATTERN => X"000000000000",
      LOC => "DSP48_X2Y27"
    )
    port map (
      RSTC => GND,
      CEB1 => GND,
      CEAD => GND,
      CEC => GND,
      RSTM => GND,
      MULTSIGNIN => n_ACT_U1_U1_blk00000001_blk00000046_MULTSIGNIN,
      CEB2 => GND,
      RSTCTRL => GND,
      CEP => n_ACT_mult_enable_0,
      RSTA => GND,
      CECARRYIN => GND,
      RSTALUMODE => GND,
      RSTALLCARRYIN => GND,
      CED => GND,
      RSTD => GND,
      CEALUMODE => GND,
      CEA2 => GND,
      CLK => n_ACT_U1_U1_blk00000001_blk00000046_CLK_INT,
      CEA1 => GND,
      RSTB => GND,
      CECTRL => GND,
      CEM => GND,
      CARRYIN => n_ACT_U1_U1_blk00000001_blk00000046_CARRYIN_INT,
      CARRYCASCIN => n_ACT_U1_U1_blk00000001_blk00000046_CARRYCASCIN,
      RSTINMODE => GND,
      CEINMODE => GND,
      RSTP => n_ACT_mult_reset,
      PATTERNBDETECT => n_ACT_U1_U1_blk00000001_blk00000046_PATTERNBDETECT,
      MULTSIGNOUT => n_ACT_U1_U1_blk00000001_blk00000046_MULTSIGNOUT,
      CARRYCASCOUT => n_ACT_U1_U1_blk00000001_blk00000046_CARRYCASCOUT,
      UNDERFLOW => n_ACT_U1_U1_blk00000001_blk00000046_UNDERFLOW,
      PATTERNDETECT => n_ACT_U1_U1_blk00000001_blk00000046_PATTERNDETECT,
      OVERFLOW => n_ACT_U1_U1_blk00000001_blk00000046_OVERFLOW,
      OPMODE(6) => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE6_INT,
      OPMODE(5) => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE5_INT,
      OPMODE(4) => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE4_INT,
      OPMODE(3) => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE3_INT,
      OPMODE(2) => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE2_INT,
      OPMODE(1) => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE1_INT,
      OPMODE(0) => n_ACT_U1_U1_blk00000001_blk00000046_OPMODE0_INT,
      PCIN(47) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN47,
      PCIN(46) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN46,
      PCIN(45) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN45,
      PCIN(44) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN44,
      PCIN(43) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN43,
      PCIN(42) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN42,
      PCIN(41) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN41,
      PCIN(40) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN40,
      PCIN(39) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN39,
      PCIN(38) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN38,
      PCIN(37) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN37,
      PCIN(36) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN36,
      PCIN(35) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN35,
      PCIN(34) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN34,
      PCIN(33) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN33,
      PCIN(32) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN32,
      PCIN(31) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN31,
      PCIN(30) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN30,
      PCIN(29) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN29,
      PCIN(28) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN28,
      PCIN(27) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN27,
      PCIN(26) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN26,
      PCIN(25) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN25,
      PCIN(24) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN24,
      PCIN(23) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN23,
      PCIN(22) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN22,
      PCIN(21) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN21,
      PCIN(20) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN20,
      PCIN(19) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN19,
      PCIN(18) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN18,
      PCIN(17) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN17,
      PCIN(16) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN16,
      PCIN(15) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN15,
      PCIN(14) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN14,
      PCIN(13) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN13,
      PCIN(12) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN12,
      PCIN(11) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN11,
      PCIN(10) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN10,
      PCIN(9) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN9,
      PCIN(8) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN8,
      PCIN(7) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN7,
      PCIN(6) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN6,
      PCIN(5) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN5,
      PCIN(4) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN4,
      PCIN(3) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN3,
      PCIN(2) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN2,
      PCIN(1) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN1,
      PCIN(0) => n_ACT_U1_U1_blk00000001_blk00000046_PCIN0,
      ALUMODE(3) => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE3_INT,
      ALUMODE(2) => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE2_INT,
      ALUMODE(1) => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE1_INT,
      ALUMODE(0) => n_ACT_U1_U1_blk00000001_blk00000046_ALUMODE0_INT,
      C(47) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(46) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(45) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(44) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(43) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_43_Q,
      C(42) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_42_Q,
      C(41) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_41_Q,
      C(40) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_40_Q,
      C(39) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(38) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(37) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(36) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(35) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_35_Q,
      C(34) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_34_Q,
      C(33) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_33_Q,
      C(32) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(31) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_31_Q,
      C(30) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_30_Q,
      C(29) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_29_Q,
      C(28) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(27) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_27_Q,
      C(26) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_26_Q,
      C(25) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_25_Q,
      C(24) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_24_Q,
      C(23) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_23_Q,
      C(22) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_22_Q,
      C(21) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_21_Q,
      C(20) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_20_Q,
      C(19) => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      C(18) => n_ACT_U1_U1_blk00000001_sig0000006a_0,
      C(17) => n_ACT_U1_U1_blk00000001_sig00000069_0,
      C(16) => n_ACT_U1_U1_blk00000001_sig00000068_0,
      C(15) => n_ACT_U1_U1_blk00000001_sig00000067_0,
      C(14) => n_ACT_U1_U1_blk00000001_sig00000066_0,
      C(13) => n_ACT_U1_U1_blk00000001_sig00000065_0,
      C(12) => n_ACT_U1_U1_blk00000001_sig00000064_0,
      C(11) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_11_Q,
      C(10) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_10_Q,
      C(9) => n_ACT_U1_U1_blk00000001_sig00000061_0,
      C(8) => n_ACT_U1_U1_blk00000001_sig00000060_0,
      C(7) => n_ACT_U1_U1_blk00000001_sig0000005f_0,
      C(6) => n_ACT_U1_U1_blk00000001_sig0000005e_0,
      C(5) => n_ACT_U1_U1_blk00000001_sig0000005d_0,
      C(4) => n_ACT_U1_U1_blk00000001_sig0000005c_0,
      C(3) => n_ACT_U1_U1_blk00000001_sig0000005b_0,
      C(2) => n_ACT_U1_U1_blk00000001_sig0000005a_0,
      C(1) => n_ACT_U1_U1_blk00000001_sig00000059_0,
      C(0) => n_ACT_U1_U1_blk00000001_sig00000058_0,
      INMODE(4) => n_ACT_U1_U1_blk00000001_blk00000046_INMODE4_INT,
      INMODE(3) => n_ACT_U1_U1_blk00000001_blk00000046_INMODE3_INT,
      INMODE(2) => n_ACT_U1_U1_blk00000001_blk00000046_INMODE2_INT,
      INMODE(1) => n_ACT_U1_U1_blk00000001_blk00000046_INMODE1_INT,
      INMODE(0) => n_ACT_U1_U1_blk00000001_blk00000046_INMODE0_INT,
      BCIN(17) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN17,
      BCIN(16) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN16,
      BCIN(15) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN15,
      BCIN(14) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN14,
      BCIN(13) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN13,
      BCIN(12) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN12,
      BCIN(11) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN11,
      BCIN(10) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN10,
      BCIN(9) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN9,
      BCIN(8) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN8,
      BCIN(7) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN7,
      BCIN(6) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN6,
      BCIN(5) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN5,
      BCIN(4) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN4,
      BCIN(3) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN3,
      BCIN(2) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN2,
      BCIN(1) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN1,
      BCIN(0) => n_ACT_U1_U1_blk00000001_blk00000046_BCIN0,
      B(17) => n_ACT_mult_in(19),
      B(16) => n_ACT_mult_in(18),
      B(15) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_15_Q,
      B(14) => n_ACT_mult_in(16),
      B(13) => n_ACT_mult_in(15),
      B(12) => n_ACT_mult_in(14),
      B(11) => n_ACT_mult_in(13),
      B(10) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_10_Q,
      B(9) => n_ACT_mult_in(11),
      B(8) => n_ACT_mult_in(10),
      B(7) => n_ACT_mult_in(9),
      B(6) => n_ACT_mult_in(8),
      B(5) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_5_Q,
      B(4) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_4_Q,
      B(3) => n_ACT_mult_in(5),
      B(2) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_2_Q,
      B(1) => n_ACT_mult_in(3),
      B(0) => n_ACT_mult_in(2),
      D(24) => GND,
      D(23) => GND,
      D(22) => GND,
      D(21) => GND,
      D(20) => GND,
      D(19) => GND,
      D(18) => GND,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(29) => GND,
      A(28) => GND,
      A(27) => GND,
      A(26) => GND,
      A(25) => GND,
      A(24) => n_ACT_mult_w_in(19),
      A(23) => n_ACT_mult_w_in(19),
      A(22) => n_ACT_mult_w_in(19),
      A(21) => n_ACT_mult_w_in(19),
      A(20) => n_ACT_mult_w_in(19),
      A(19) => n_ACT_mult_w_in(19),
      A(18) => n_ACT_mult_w_in(18),
      A(17) => n_ACT_mult_w_in(17),
      A(16) => n_ACT_mult_w_in(16),
      A(15) => n_ACT_mult_w_in(15),
      A(14) => n_ACT_mult_w_in(14),
      A(13) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_13_Q,
      A(12) => n_ACT_mult_w_in(12),
      A(11) => n_ACT_mult_w_in(11),
      A(10) => n_ACT_mult_w_in(10),
      A(9) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_9_Q,
      A(8) => n_ACT_mult_w_in(8),
      A(7) => n_ACT_mult_w_in(7),
      A(6) => n_ACT_mult_w_in(6),
      A(5) => n_ACT_mult_w_in(5),
      A(4) => n_ACT_mult_w_in(4),
      A(3) => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_3_Q,
      A(2) => n_ACT_mult_w_in(2),
      A(1) => n_ACT_mult_w_in(1),
      A(0) => n_ACT_mult_w_in(0),
      ACIN(29) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN29,
      ACIN(28) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN28,
      ACIN(27) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN27,
      ACIN(26) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN26,
      ACIN(25) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN25,
      ACIN(24) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN24,
      ACIN(23) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN23,
      ACIN(22) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN22,
      ACIN(21) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN21,
      ACIN(20) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN20,
      ACIN(19) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN19,
      ACIN(18) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN18,
      ACIN(17) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN17,
      ACIN(16) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN16,
      ACIN(15) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN15,
      ACIN(14) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN14,
      ACIN(13) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN13,
      ACIN(12) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN12,
      ACIN(11) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN11,
      ACIN(10) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN10,
      ACIN(9) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN9,
      ACIN(8) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN8,
      ACIN(7) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN7,
      ACIN(6) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN6,
      ACIN(5) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN5,
      ACIN(4) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN4,
      ACIN(3) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN3,
      ACIN(2) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN2,
      ACIN(1) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN1,
      ACIN(0) => n_ACT_U1_U1_blk00000001_blk00000046_ACIN0,
      CARRYINSEL(2) => GND,
      CARRYINSEL(1) => GND,
      CARRYINSEL(0) => GND,
      ACOUT(29) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT29,
      ACOUT(28) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT28,
      ACOUT(27) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT27,
      ACOUT(26) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT26,
      ACOUT(25) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT25,
      ACOUT(24) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT24,
      ACOUT(23) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT23,
      ACOUT(22) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT22,
      ACOUT(21) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT21,
      ACOUT(20) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT20,
      ACOUT(19) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT19,
      ACOUT(18) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT18,
      ACOUT(17) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT17,
      ACOUT(16) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT16,
      ACOUT(15) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT15,
      ACOUT(14) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT14,
      ACOUT(13) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT13,
      ACOUT(12) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT12,
      ACOUT(11) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT11,
      ACOUT(10) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT10,
      ACOUT(9) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT9,
      ACOUT(8) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT8,
      ACOUT(7) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT7,
      ACOUT(6) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT6,
      ACOUT(5) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT5,
      ACOUT(4) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT4,
      ACOUT(3) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT3,
      ACOUT(2) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT2,
      ACOUT(1) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT1,
      ACOUT(0) => n_ACT_U1_U1_blk00000001_blk00000046_ACOUT0,
      CARRYOUT(3) => n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT3,
      CARRYOUT(2) => n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT2,
      CARRYOUT(1) => n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT1,
      CARRYOUT(0) => n_ACT_U1_U1_blk00000001_blk00000046_CARRYOUT0,
      BCOUT(17) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT17,
      BCOUT(16) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT16,
      BCOUT(15) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT15,
      BCOUT(14) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT14,
      BCOUT(13) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT13,
      BCOUT(12) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT12,
      BCOUT(11) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT11,
      BCOUT(10) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT10,
      BCOUT(9) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT9,
      BCOUT(8) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT8,
      BCOUT(7) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT7,
      BCOUT(6) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT6,
      BCOUT(5) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT5,
      BCOUT(4) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT4,
      BCOUT(3) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT3,
      BCOUT(2) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT2,
      BCOUT(1) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT1,
      BCOUT(0) => n_ACT_U1_U1_blk00000001_blk00000046_BCOUT0,
      P(47) => n_ACT_U1_U1_blk00000001_blk00000046_P47,
      P(46) => n_ACT_U1_U1_blk00000001_blk00000046_P46,
      P(45) => n_ACT_U1_U1_blk00000001_blk00000046_P45,
      P(44) => n_ACT_U1_U1_blk00000001_blk00000046_P44,
      P(43) => n_ACT_U1_U1_blk00000001_blk00000046_P43,
      P(42) => n_ACT_U1_U1_blk00000001_blk00000046_P42,
      P(41) => n_ACT_U1_U1_blk00000001_blk00000046_P41,
      P(40) => n_ACT_U1_U1_blk00000001_blk00000046_P40,
      P(39) => n_ACT_U1_U1_blk00000001_blk00000046_P39,
      P(38) => n_ACT_U1_U1_blk00000001_blk00000046_P38,
      P(37) => n_NL_acc_f_in(19),
      P(36) => n_ACT_U1_U1_blk00000001_blk00000046_P36,
      P(35) => n_ACT_U1_U1_blk00000001_blk00000046_P35,
      P(34) => n_ACT_U1_U1_blk00000001_blk00000046_P34,
      P(33) => n_ACT_U1_U1_blk00000001_blk00000046_P33,
      P(32) => n_NL_acc_f_in(18),
      P(31) => n_NL_acc_f_in(17),
      P(30) => n_NL_acc_f_in(16),
      P(29) => n_NL_acc_f_in(15),
      P(28) => n_NL_acc_f_in(14),
      P(27) => n_NL_acc_f_in(13),
      P(26) => n_NL_acc_f_in(12),
      P(25) => n_NL_acc_f_in(11),
      P(24) => n_NL_acc_f_in(10),
      P(23) => n_NL_acc_f_in(9),
      P(22) => n_NL_acc_f_in(8),
      P(21) => n_NL_acc_f_in(7),
      P(20) => n_NL_acc_f_in(6),
      P(19) => n_NL_acc_f_in(5),
      P(18) => n_NL_acc_f_in(4),
      P(17) => n_NL_acc_f_in(3),
      P(16) => n_NL_acc_f_in(2),
      P(15) => n_NL_acc_f_in(1),
      P(14) => n_NL_acc_f_in(0),
      P(13) => n_ACT_U1_U1_blk00000001_blk00000046_P13,
      P(12) => n_ACT_U1_U1_blk00000001_blk00000046_P12,
      P(11) => n_ACT_U1_U1_blk00000001_blk00000046_P11,
      P(10) => n_ACT_U1_U1_blk00000001_blk00000046_P10,
      P(9) => n_ACT_U1_U1_blk00000001_blk00000046_P9,
      P(8) => n_ACT_U1_U1_blk00000001_blk00000046_P8,
      P(7) => n_ACT_U1_U1_blk00000001_blk00000046_P7,
      P(6) => n_ACT_U1_U1_blk00000001_blk00000046_P6,
      P(5) => n_ACT_U1_U1_blk00000001_blk00000046_P5,
      P(4) => n_ACT_U1_U1_blk00000001_blk00000046_P4,
      P(3) => n_ACT_U1_U1_blk00000001_blk00000046_P3,
      P(2) => n_ACT_U1_U1_blk00000001_blk00000046_P2,
      P(1) => n_ACT_U1_U1_blk00000001_blk00000046_P1,
      P(0) => n_ACT_U1_U1_blk00000001_blk00000046_P0,
      PCOUT(47) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT47,
      PCOUT(46) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT46,
      PCOUT(45) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT45,
      PCOUT(44) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT44,
      PCOUT(43) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT43,
      PCOUT(42) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT42,
      PCOUT(41) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT41,
      PCOUT(40) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT40,
      PCOUT(39) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT39,
      PCOUT(38) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT38,
      PCOUT(37) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT37,
      PCOUT(36) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT36,
      PCOUT(35) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT35,
      PCOUT(34) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT34,
      PCOUT(33) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT33,
      PCOUT(32) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT32,
      PCOUT(31) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT31,
      PCOUT(30) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT30,
      PCOUT(29) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT29,
      PCOUT(28) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT28,
      PCOUT(27) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT27,
      PCOUT(26) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT26,
      PCOUT(25) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT25,
      PCOUT(24) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT24,
      PCOUT(23) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT23,
      PCOUT(22) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT22,
      PCOUT(21) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT21,
      PCOUT(20) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT20,
      PCOUT(19) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT19,
      PCOUT(18) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT18,
      PCOUT(17) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT17,
      PCOUT(16) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT16,
      PCOUT(15) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT15,
      PCOUT(14) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT14,
      PCOUT(13) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT13,
      PCOUT(12) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT12,
      PCOUT(11) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT11,
      PCOUT(10) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT10,
      PCOUT(9) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT9,
      PCOUT(8) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT8,
      PCOUT(7) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT7,
      PCOUT(6) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT6,
      PCOUT(5) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT5,
      PCOUT(4) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT4,
      PCOUT(3) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT3,
      PCOUT(2) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT2,
      PCOUT(1) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT1,
      PCOUT(0) => n_ACT_U1_U1_blk00000001_blk00000046_PCOUT0
    );
  n_NL_U1_U1_blk00000001_blk00000046_INMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_INMODE0_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_INMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_INMODE1_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_INMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_INMODE2_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_INMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_INMODE3_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_INMODE4INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_INMODE4_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_ALUMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE0_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_ALUMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE1_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_ALUMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE2_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_ALUMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE3_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_OPMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_NL_U1_U1_blk00000001_blk00000046_OPMODE0_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_OPMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_OPMODE1_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_OPMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_NL_U1_U1_blk00000001_blk00000046_OPMODE2_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_OPMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_OPMODE3_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_OPMODE4INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_NL_U1_U1_blk00000001_blk00000046_OPMODE4_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_OPMODE5INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => n_NL_U1_U1_blk00000001_blk00000046_OPMODE5_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_OPMODE6INV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_OPMODE6_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_CARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => n_NL_U1_U1_blk00000001_blk00000046_CARRYIN_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => n_NL_U1_U1_blk00000001_blk00000046_CLK_INT
    );
  n_NL_U1_U1_blk00000001_blk00000046 : X_DSP48E1
    generic map(
      ALUMODEREG => 0,
      AREG => 0,
      ADREG => 0,
      DREG => 0,
      INMODEREG => 0,
      CARRYINSELREG => 0,
      BCASCREG => 0,
      OPMODEREG => 0,
      ACASCREG => 0,
      CREG => 0,
      MREG => 0,
      BREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      A_INPUT => "DIRECT",
      B_INPUT => "DIRECT",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_DPORT => FALSE,
      USE_SIMD => "ONE48",
      AUTORESET_PATDET => "NO_RESET",
      SEL_MASK => "MASK",
      MASK => X"000000000000",
      PATTERN => X"000000000000",
      LOC => "DSP48_X0Y22"
    )
    port map (
      RSTC => GND,
      CEB1 => GND,
      CEAD => GND,
      CEC => GND,
      RSTM => GND,
      MULTSIGNIN => n_NL_U1_U1_blk00000001_blk00000046_MULTSIGNIN,
      CEB2 => GND,
      RSTCTRL => GND,
      CEP => n_EL_mult_enable,
      RSTA => GND,
      CECARRYIN => GND,
      RSTALUMODE => GND,
      RSTALLCARRYIN => GND,
      CED => GND,
      RSTD => GND,
      CEALUMODE => GND,
      CEA2 => GND,
      CLK => n_NL_U1_U1_blk00000001_blk00000046_CLK_INT,
      CEA1 => GND,
      RSTB => GND,
      CECTRL => GND,
      CEM => GND,
      CARRYIN => n_NL_U1_U1_blk00000001_blk00000046_CARRYIN_INT,
      CARRYCASCIN => n_NL_U1_U1_blk00000001_blk00000046_CARRYCASCIN,
      RSTINMODE => GND,
      CEINMODE => GND,
      RSTP => n_EL_mult_reset_0,
      PATTERNBDETECT => n_NL_U1_U1_blk00000001_blk00000046_PATTERNBDETECT,
      MULTSIGNOUT => n_NL_U1_U1_blk00000001_blk00000046_MULTSIGNOUT,
      CARRYCASCOUT => n_NL_U1_U1_blk00000001_blk00000046_CARRYCASCOUT,
      UNDERFLOW => n_NL_U1_U1_blk00000001_blk00000046_UNDERFLOW,
      PATTERNDETECT => n_NL_U1_U1_blk00000001_blk00000046_PATTERNDETECT,
      OVERFLOW => n_NL_U1_U1_blk00000001_blk00000046_OVERFLOW,
      OPMODE(6) => n_NL_U1_U1_blk00000001_blk00000046_OPMODE6_INT,
      OPMODE(5) => n_NL_U1_U1_blk00000001_blk00000046_OPMODE5_INT,
      OPMODE(4) => n_NL_U1_U1_blk00000001_blk00000046_OPMODE4_INT,
      OPMODE(3) => n_NL_U1_U1_blk00000001_blk00000046_OPMODE3_INT,
      OPMODE(2) => n_NL_U1_U1_blk00000001_blk00000046_OPMODE2_INT,
      OPMODE(1) => n_NL_U1_U1_blk00000001_blk00000046_OPMODE1_INT,
      OPMODE(0) => n_NL_U1_U1_blk00000001_blk00000046_OPMODE0_INT,
      PCIN(47) => n_NL_U1_U1_blk00000001_blk00000046_PCIN47,
      PCIN(46) => n_NL_U1_U1_blk00000001_blk00000046_PCIN46,
      PCIN(45) => n_NL_U1_U1_blk00000001_blk00000046_PCIN45,
      PCIN(44) => n_NL_U1_U1_blk00000001_blk00000046_PCIN44,
      PCIN(43) => n_NL_U1_U1_blk00000001_blk00000046_PCIN43,
      PCIN(42) => n_NL_U1_U1_blk00000001_blk00000046_PCIN42,
      PCIN(41) => n_NL_U1_U1_blk00000001_blk00000046_PCIN41,
      PCIN(40) => n_NL_U1_U1_blk00000001_blk00000046_PCIN40,
      PCIN(39) => n_NL_U1_U1_blk00000001_blk00000046_PCIN39,
      PCIN(38) => n_NL_U1_U1_blk00000001_blk00000046_PCIN38,
      PCIN(37) => n_NL_U1_U1_blk00000001_blk00000046_PCIN37,
      PCIN(36) => n_NL_U1_U1_blk00000001_blk00000046_PCIN36,
      PCIN(35) => n_NL_U1_U1_blk00000001_blk00000046_PCIN35,
      PCIN(34) => n_NL_U1_U1_blk00000001_blk00000046_PCIN34,
      PCIN(33) => n_NL_U1_U1_blk00000001_blk00000046_PCIN33,
      PCIN(32) => n_NL_U1_U1_blk00000001_blk00000046_PCIN32,
      PCIN(31) => n_NL_U1_U1_blk00000001_blk00000046_PCIN31,
      PCIN(30) => n_NL_U1_U1_blk00000001_blk00000046_PCIN30,
      PCIN(29) => n_NL_U1_U1_blk00000001_blk00000046_PCIN29,
      PCIN(28) => n_NL_U1_U1_blk00000001_blk00000046_PCIN28,
      PCIN(27) => n_NL_U1_U1_blk00000001_blk00000046_PCIN27,
      PCIN(26) => n_NL_U1_U1_blk00000001_blk00000046_PCIN26,
      PCIN(25) => n_NL_U1_U1_blk00000001_blk00000046_PCIN25,
      PCIN(24) => n_NL_U1_U1_blk00000001_blk00000046_PCIN24,
      PCIN(23) => n_NL_U1_U1_blk00000001_blk00000046_PCIN23,
      PCIN(22) => n_NL_U1_U1_blk00000001_blk00000046_PCIN22,
      PCIN(21) => n_NL_U1_U1_blk00000001_blk00000046_PCIN21,
      PCIN(20) => n_NL_U1_U1_blk00000001_blk00000046_PCIN20,
      PCIN(19) => n_NL_U1_U1_blk00000001_blk00000046_PCIN19,
      PCIN(18) => n_NL_U1_U1_blk00000001_blk00000046_PCIN18,
      PCIN(17) => n_NL_U1_U1_blk00000001_blk00000046_PCIN17,
      PCIN(16) => n_NL_U1_U1_blk00000001_blk00000046_PCIN16,
      PCIN(15) => n_NL_U1_U1_blk00000001_blk00000046_PCIN15,
      PCIN(14) => n_NL_U1_U1_blk00000001_blk00000046_PCIN14,
      PCIN(13) => n_NL_U1_U1_blk00000001_blk00000046_PCIN13,
      PCIN(12) => n_NL_U1_U1_blk00000001_blk00000046_PCIN12,
      PCIN(11) => n_NL_U1_U1_blk00000001_blk00000046_PCIN11,
      PCIN(10) => n_NL_U1_U1_blk00000001_blk00000046_PCIN10,
      PCIN(9) => n_NL_U1_U1_blk00000001_blk00000046_PCIN9,
      PCIN(8) => n_NL_U1_U1_blk00000001_blk00000046_PCIN8,
      PCIN(7) => n_NL_U1_U1_blk00000001_blk00000046_PCIN7,
      PCIN(6) => n_NL_U1_U1_blk00000001_blk00000046_PCIN6,
      PCIN(5) => n_NL_U1_U1_blk00000001_blk00000046_PCIN5,
      PCIN(4) => n_NL_U1_U1_blk00000001_blk00000046_PCIN4,
      PCIN(3) => n_NL_U1_U1_blk00000001_blk00000046_PCIN3,
      PCIN(2) => n_NL_U1_U1_blk00000001_blk00000046_PCIN2,
      PCIN(1) => n_NL_U1_U1_blk00000001_blk00000046_PCIN1,
      PCIN(0) => n_NL_U1_U1_blk00000001_blk00000046_PCIN0,
      ALUMODE(3) => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE3_INT,
      ALUMODE(2) => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE2_INT,
      ALUMODE(1) => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE1_INT,
      ALUMODE(0) => n_NL_U1_U1_blk00000001_blk00000046_ALUMODE0_INT,
      C(47) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(46) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(45) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(44) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(43) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_43_Q,
      C(42) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_42_Q,
      C(41) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_41_Q,
      C(40) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_40_Q,
      C(39) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_39_Q,
      C(38) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(37) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(36) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(35) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_35_Q,
      C(34) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_34_Q,
      C(33) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_33_Q,
      C(32) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(31) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_31_Q,
      C(30) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_30_Q,
      C(29) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_29_Q,
      C(28) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(27) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(26) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_26_Q,
      C(25) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_25_Q,
      C(24) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_24_Q,
      C(23) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_23_Q,
      C(22) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_22_Q,
      C(21) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_21_Q,
      C(20) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_20_Q,
      C(19) => n_NL_U1_U1_blk00000001_sig0000006b_0,
      C(18) => n_NL_U1_U1_blk00000001_sig0000006a_0,
      C(17) => n_NL_U1_U1_blk00000001_sig00000069_0,
      C(16) => n_NL_U1_U1_blk00000001_sig00000068_0,
      C(15) => n_NL_U1_U1_blk00000001_sig00000067_0,
      C(14) => n_NL_U1_U1_blk00000001_sig00000066_0,
      C(13) => n_NL_U1_U1_blk00000001_sig00000065_0,
      C(12) => n_NL_U1_U1_blk00000001_sig00000064_0,
      C(11) => n_NL_U1_U1_blk00000001_sig00000063_0,
      C(10) => n_NL_U1_U1_blk00000001_sig00000062_0,
      C(9) => n_NL_U1_U1_blk00000001_sig00000061_0,
      C(8) => n_NL_U1_U1_blk00000001_sig00000060_0,
      C(7) => n_NL_U1_U1_blk00000001_sig0000005f_0,
      C(6) => n_NL_U1_U1_blk00000001_sig0000005e_0,
      C(5) => n_NL_U1_U1_blk00000001_sig0000005d_0,
      C(4) => n_NL_U1_U1_blk00000001_sig0000005c_0,
      C(3) => n_NL_U1_U1_blk00000001_sig0000005b_0,
      C(2) => n_NL_U1_U1_blk00000001_sig0000005a_0,
      C(1) => n_NL_U1_U1_blk00000001_sig00000059_0,
      C(0) => n_NL_U1_U1_blk00000001_sig00000058_0,
      INMODE(4) => n_NL_U1_U1_blk00000001_blk00000046_INMODE4_INT,
      INMODE(3) => n_NL_U1_U1_blk00000001_blk00000046_INMODE3_INT,
      INMODE(2) => n_NL_U1_U1_blk00000001_blk00000046_INMODE2_INT,
      INMODE(1) => n_NL_U1_U1_blk00000001_blk00000046_INMODE1_INT,
      INMODE(0) => n_NL_U1_U1_blk00000001_blk00000046_INMODE0_INT,
      BCIN(17) => n_NL_U1_U1_blk00000001_blk00000046_BCIN17,
      BCIN(16) => n_NL_U1_U1_blk00000001_blk00000046_BCIN16,
      BCIN(15) => n_NL_U1_U1_blk00000001_blk00000046_BCIN15,
      BCIN(14) => n_NL_U1_U1_blk00000001_blk00000046_BCIN14,
      BCIN(13) => n_NL_U1_U1_blk00000001_blk00000046_BCIN13,
      BCIN(12) => n_NL_U1_U1_blk00000001_blk00000046_BCIN12,
      BCIN(11) => n_NL_U1_U1_blk00000001_blk00000046_BCIN11,
      BCIN(10) => n_NL_U1_U1_blk00000001_blk00000046_BCIN10,
      BCIN(9) => n_NL_U1_U1_blk00000001_blk00000046_BCIN9,
      BCIN(8) => n_NL_U1_U1_blk00000001_blk00000046_BCIN8,
      BCIN(7) => n_NL_U1_U1_blk00000001_blk00000046_BCIN7,
      BCIN(6) => n_NL_U1_U1_blk00000001_blk00000046_BCIN6,
      BCIN(5) => n_NL_U1_U1_blk00000001_blk00000046_BCIN5,
      BCIN(4) => n_NL_U1_U1_blk00000001_blk00000046_BCIN4,
      BCIN(3) => n_NL_U1_U1_blk00000001_blk00000046_BCIN3,
      BCIN(2) => n_NL_U1_U1_blk00000001_blk00000046_BCIN2,
      BCIN(1) => n_NL_U1_U1_blk00000001_blk00000046_BCIN1,
      BCIN(0) => n_NL_U1_U1_blk00000001_blk00000046_BCIN0,
      B(17) => n_NL_mult_in(19),
      B(16) => n_NL_mult_in(18),
      B(15) => n_NL_mult_in_17_0,
      B(14) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_B_14_Q,
      B(13) => n_NL_mult_in(15),
      B(12) => n_NL_mult_in(14),
      B(11) => n_NL_mult_in(13),
      B(10) => n_NL_mult_in(12),
      B(9) => n_NL_mult_in(11),
      B(8) => n_NL_mult_in(10),
      B(7) => n_NL_mult_in(9),
      B(6) => n_NL_mult_in(8),
      B(5) => n_NL_mult_in(7),
      B(4) => n_NL_mult_in(6),
      B(3) => n_NL_mult_in(5),
      B(2) => n_NL_mult_in(4),
      B(1) => n_NL_mult_in(3),
      B(0) => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_B_0_Q,
      D(24) => GND,
      D(23) => GND,
      D(22) => GND,
      D(21) => GND,
      D(20) => GND,
      D(19) => GND,
      D(18) => GND,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(29) => GND,
      A(28) => GND,
      A(27) => GND,
      A(26) => GND,
      A(25) => GND,
      A(24) => n_NL_mult_w_in(19),
      A(23) => n_NL_mult_w_in(19),
      A(22) => n_NL_mult_w_in(19),
      A(21) => n_NL_mult_w_in(19),
      A(20) => n_NL_mult_w_in(19),
      A(19) => n_NL_mult_w_in(19),
      A(18) => n_NL_mult_w_in(18),
      A(17) => n_NL_mult_w_in(17),
      A(16) => n_NL_mult_w_in(16),
      A(15) => n_NL_mult_w_in(15),
      A(14) => n_NL_mult_w_in(14),
      A(13) => n_NL_mult_w_in(13),
      A(12) => n_NL_mult_w_in(12),
      A(11) => n_NL_mult_w_in(11),
      A(10) => n_NL_mult_w_in(10),
      A(9) => n_NL_mult_w_in(9),
      A(8) => n_NL_mult_w_in(8),
      A(7) => n_NL_mult_w_in(7),
      A(6) => n_NL_mult_w_in(6),
      A(5) => n_NL_mult_w_in(5),
      A(4) => n_NL_mult_w_in(4),
      A(3) => n_NL_mult_w_in(3),
      A(2) => n_NL_mult_w_in(2),
      A(1) => n_NL_mult_w_in(1),
      A(0) => n_NL_mult_w_in(0),
      ACIN(29) => n_NL_U1_U1_blk00000001_blk00000046_ACIN29,
      ACIN(28) => n_NL_U1_U1_blk00000001_blk00000046_ACIN28,
      ACIN(27) => n_NL_U1_U1_blk00000001_blk00000046_ACIN27,
      ACIN(26) => n_NL_U1_U1_blk00000001_blk00000046_ACIN26,
      ACIN(25) => n_NL_U1_U1_blk00000001_blk00000046_ACIN25,
      ACIN(24) => n_NL_U1_U1_blk00000001_blk00000046_ACIN24,
      ACIN(23) => n_NL_U1_U1_blk00000001_blk00000046_ACIN23,
      ACIN(22) => n_NL_U1_U1_blk00000001_blk00000046_ACIN22,
      ACIN(21) => n_NL_U1_U1_blk00000001_blk00000046_ACIN21,
      ACIN(20) => n_NL_U1_U1_blk00000001_blk00000046_ACIN20,
      ACIN(19) => n_NL_U1_U1_blk00000001_blk00000046_ACIN19,
      ACIN(18) => n_NL_U1_U1_blk00000001_blk00000046_ACIN18,
      ACIN(17) => n_NL_U1_U1_blk00000001_blk00000046_ACIN17,
      ACIN(16) => n_NL_U1_U1_blk00000001_blk00000046_ACIN16,
      ACIN(15) => n_NL_U1_U1_blk00000001_blk00000046_ACIN15,
      ACIN(14) => n_NL_U1_U1_blk00000001_blk00000046_ACIN14,
      ACIN(13) => n_NL_U1_U1_blk00000001_blk00000046_ACIN13,
      ACIN(12) => n_NL_U1_U1_blk00000001_blk00000046_ACIN12,
      ACIN(11) => n_NL_U1_U1_blk00000001_blk00000046_ACIN11,
      ACIN(10) => n_NL_U1_U1_blk00000001_blk00000046_ACIN10,
      ACIN(9) => n_NL_U1_U1_blk00000001_blk00000046_ACIN9,
      ACIN(8) => n_NL_U1_U1_blk00000001_blk00000046_ACIN8,
      ACIN(7) => n_NL_U1_U1_blk00000001_blk00000046_ACIN7,
      ACIN(6) => n_NL_U1_U1_blk00000001_blk00000046_ACIN6,
      ACIN(5) => n_NL_U1_U1_blk00000001_blk00000046_ACIN5,
      ACIN(4) => n_NL_U1_U1_blk00000001_blk00000046_ACIN4,
      ACIN(3) => n_NL_U1_U1_blk00000001_blk00000046_ACIN3,
      ACIN(2) => n_NL_U1_U1_blk00000001_blk00000046_ACIN2,
      ACIN(1) => n_NL_U1_U1_blk00000001_blk00000046_ACIN1,
      ACIN(0) => n_NL_U1_U1_blk00000001_blk00000046_ACIN0,
      CARRYINSEL(2) => GND,
      CARRYINSEL(1) => GND,
      CARRYINSEL(0) => GND,
      ACOUT(29) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT29,
      ACOUT(28) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT28,
      ACOUT(27) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT27,
      ACOUT(26) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT26,
      ACOUT(25) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT25,
      ACOUT(24) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT24,
      ACOUT(23) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT23,
      ACOUT(22) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT22,
      ACOUT(21) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT21,
      ACOUT(20) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT20,
      ACOUT(19) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT19,
      ACOUT(18) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT18,
      ACOUT(17) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT17,
      ACOUT(16) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT16,
      ACOUT(15) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT15,
      ACOUT(14) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT14,
      ACOUT(13) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT13,
      ACOUT(12) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT12,
      ACOUT(11) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT11,
      ACOUT(10) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT10,
      ACOUT(9) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT9,
      ACOUT(8) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT8,
      ACOUT(7) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT7,
      ACOUT(6) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT6,
      ACOUT(5) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT5,
      ACOUT(4) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT4,
      ACOUT(3) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT3,
      ACOUT(2) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT2,
      ACOUT(1) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT1,
      ACOUT(0) => n_NL_U1_U1_blk00000001_blk00000046_ACOUT0,
      CARRYOUT(3) => n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT3,
      CARRYOUT(2) => n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT2,
      CARRYOUT(1) => n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT1,
      CARRYOUT(0) => n_NL_U1_U1_blk00000001_blk00000046_CARRYOUT0,
      BCOUT(17) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT17,
      BCOUT(16) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT16,
      BCOUT(15) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT15,
      BCOUT(14) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT14,
      BCOUT(13) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT13,
      BCOUT(12) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT12,
      BCOUT(11) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT11,
      BCOUT(10) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT10,
      BCOUT(9) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT9,
      BCOUT(8) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT8,
      BCOUT(7) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT7,
      BCOUT(6) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT6,
      BCOUT(5) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT5,
      BCOUT(4) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT4,
      BCOUT(3) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT3,
      BCOUT(2) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT2,
      BCOUT(1) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT1,
      BCOUT(0) => n_NL_U1_U1_blk00000001_blk00000046_BCOUT0,
      P(47) => n_NL_U1_U1_blk00000001_blk00000046_P47,
      P(46) => n_NL_U1_U1_blk00000001_blk00000046_P46,
      P(45) => n_NL_U1_U1_blk00000001_blk00000046_P45,
      P(44) => n_NL_U1_U1_blk00000001_blk00000046_P44,
      P(43) => n_NL_U1_U1_blk00000001_blk00000046_P43,
      P(42) => n_NL_U1_U1_blk00000001_blk00000046_P42,
      P(41) => n_NL_U1_U1_blk00000001_blk00000046_P41,
      P(40) => n_NL_U1_U1_blk00000001_blk00000046_P40,
      P(39) => n_NL_U1_U1_blk00000001_blk00000046_P39,
      P(38) => n_NL_U1_U1_blk00000001_blk00000046_P38,
      P(37) => n_ACT_acc_b_in(19),
      P(36) => n_NL_U1_U1_blk00000001_blk00000046_P36,
      P(35) => n_NL_U1_U1_blk00000001_blk00000046_P35,
      P(34) => n_NL_U1_U1_blk00000001_blk00000046_P34,
      P(33) => n_NL_U1_U1_blk00000001_blk00000046_P33,
      P(32) => n_ACT_acc_b_in(18),
      P(31) => n_ACT_acc_b_in(17),
      P(30) => n_ACT_acc_b_in(16),
      P(29) => n_ACT_acc_b_in(15),
      P(28) => n_ACT_acc_b_in(14),
      P(27) => n_ACT_acc_b_in(13),
      P(26) => n_ACT_acc_b_in(12),
      P(25) => n_ACT_acc_b_in(11),
      P(24) => n_ACT_acc_b_in(10),
      P(23) => n_ACT_acc_b_in(9),
      P(22) => n_ACT_acc_b_in(8),
      P(21) => n_ACT_acc_b_in(7),
      P(20) => n_ACT_acc_b_in(6),
      P(19) => n_ACT_acc_b_in(5),
      P(18) => n_ACT_acc_b_in(4),
      P(17) => n_ACT_acc_b_in(3),
      P(16) => n_ACT_acc_b_in(2),
      P(15) => n_ACT_acc_b_in(1),
      P(14) => n_ACT_acc_b_in(0),
      P(13) => n_NL_U1_U1_blk00000001_blk00000046_P13,
      P(12) => n_NL_U1_U1_blk00000001_blk00000046_P12,
      P(11) => n_NL_U1_U1_blk00000001_blk00000046_P11,
      P(10) => n_NL_U1_U1_blk00000001_blk00000046_P10,
      P(9) => n_NL_U1_U1_blk00000001_blk00000046_P9,
      P(8) => n_NL_U1_U1_blk00000001_blk00000046_P8,
      P(7) => n_NL_U1_U1_blk00000001_blk00000046_P7,
      P(6) => n_NL_U1_U1_blk00000001_blk00000046_P6,
      P(5) => n_NL_U1_U1_blk00000001_blk00000046_P5,
      P(4) => n_NL_U1_U1_blk00000001_blk00000046_P4,
      P(3) => n_NL_U1_U1_blk00000001_blk00000046_P3,
      P(2) => n_NL_U1_U1_blk00000001_blk00000046_P2,
      P(1) => n_NL_U1_U1_blk00000001_blk00000046_P1,
      P(0) => n_NL_U1_U1_blk00000001_blk00000046_P0,
      PCOUT(47) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT47,
      PCOUT(46) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT46,
      PCOUT(45) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT45,
      PCOUT(44) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT44,
      PCOUT(43) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT43,
      PCOUT(42) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT42,
      PCOUT(41) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT41,
      PCOUT(40) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT40,
      PCOUT(39) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT39,
      PCOUT(38) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT38,
      PCOUT(37) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT37,
      PCOUT(36) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT36,
      PCOUT(35) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT35,
      PCOUT(34) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT34,
      PCOUT(33) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT33,
      PCOUT(32) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT32,
      PCOUT(31) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT31,
      PCOUT(30) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT30,
      PCOUT(29) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT29,
      PCOUT(28) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT28,
      PCOUT(27) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT27,
      PCOUT(26) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT26,
      PCOUT(25) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT25,
      PCOUT(24) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT24,
      PCOUT(23) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT23,
      PCOUT(22) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT22,
      PCOUT(21) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT21,
      PCOUT(20) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT20,
      PCOUT(19) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT19,
      PCOUT(18) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT18,
      PCOUT(17) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT17,
      PCOUT(16) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT16,
      PCOUT(15) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT15,
      PCOUT(14) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT14,
      PCOUT(13) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT13,
      PCOUT(12) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT12,
      PCOUT(11) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT11,
      PCOUT(10) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT10,
      PCOUT(9) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT9,
      PCOUT(8) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT8,
      PCOUT(7) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT7,
      PCOUT(6) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT6,
      PCOUT(5) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT5,
      PCOUT(4) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT4,
      PCOUT(3) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT3,
      PCOUT(2) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT2,
      PCOUT(1) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT1,
      PCOUT(0) => n_NL_U1_U1_blk00000001_blk00000046_PCOUT0
    );
  n_NL_mult_in_16_n_NL_mult_in_16_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_mult_in(17),
      O => n_NL_mult_in_17_0
    );
  n_NL_mult_in_16_n_NL_mult_in_16_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b,
      O => n_NL_U1_U1_blk00000001_sig0000006b_0
    );
  n_NL_mult_in_16_n_NL_mult_in_16_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006a,
      O => n_NL_U1_U1_blk00000001_sig0000006a_0
    );
  n_NL_Mmux_mult_in81 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"5500550055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => backward_IBUF_5476,
      ADR3 => n_NL_U2_cnt(16),
      ADR5 => '1',
      O => n_NL_mult_in(16)
    );
  n_NL_Mmux_mult_in91 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"55550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => n_NL_U2_cnt(17),
      ADR0 => backward_IBUF_5476,
      ADR2 => '1',
      O => n_NL_mult_in(17)
    );
  n_NL_U1_U1_blk00000001_blk00000004 : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y59"
    )
    port map (
      CI => n_NL_U1_U1_blk00000001_sig00000082,
      CYINIT => '0',
      CO(3) => NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_3_UNCONNECTED,
      CO(2) => NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_2_UNCONNECTED,
      CO(1) => NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_1_UNCONNECTED,
      CO(0) => NLW_n_NL_U1_U1_blk00000001_blk00000004_CO_0_UNCONNECTED,
      DI(3) => NLW_n_NL_U1_U1_blk00000001_blk00000004_DI_3_UNCONNECTED,
      DI(2) => NLW_n_NL_U1_U1_blk00000001_blk00000004_DI_2_UNCONNECTED,
      DI(1) => NLW_n_NL_U1_U1_blk00000001_blk00000004_DI_1_UNCONNECTED,
      DI(0) => n_NL_U1_U1_blk00000001_sig00000096,
      O(3) => NLW_n_NL_U1_U1_blk00000001_blk00000004_O_3_UNCONNECTED,
      O(2) => NLW_n_NL_U1_U1_blk00000001_blk00000004_O_2_UNCONNECTED,
      O(1) => n_NL_U1_U1_blk00000001_sig0000006b,
      O(0) => n_NL_U1_U1_blk00000001_sig0000006a,
      S(3) => NLW_n_NL_U1_U1_blk00000001_blk00000004_S_3_UNCONNECTED,
      S(2) => NLW_n_NL_U1_U1_blk00000001_blk00000004_S_2_UNCONNECTED,
      S(1) => n_NL_U1_U1_blk00000001_sig0000006c,
      S(0) => n_NL_U1_U1_blk00000001_sig0000006d
    );
  n_NL_U1_U1_blk00000001_blk0000004f : X_LUT6
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"2288228822882288"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => n_NL_mult_w_in(19),
      ADR3 => n_NL_mult_in(1),
      ADR1 => n_NL_mult_in(0),
      O => n_NL_U1_U1_blk00000001_sig0000006c
    );
  n_NL_U1_U1_blk00000001_blk00000050 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"00F0F00000F0F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => n_NL_mult_w_in(19),
      ADR4 => n_NL_mult_in(1),
      ADR3 => n_NL_mult_in(0),
      ADR5 => '1',
      O => n_NL_U1_U1_blk00000001_sig0000006d
    );
  n_NL_U1_U1_blk00000001_blk0000002f : X_LUT5
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => n_NL_mult_w_in(19),
      ADR4 => n_NL_mult_in(1),
      ADR3 => '1',
      O => n_NL_U1_U1_blk00000001_sig00000096
    );
  n_NL_Mmux_mult_w_in61 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => X"FFFF1111EEEE0000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR0 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(14),
      ADR5 => n_NL_U2_cnt(14),
      O => n_NL_mult_w_in(14)
    );
  n_NL_Mmux_mult_w_in71 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => X"FFFF000FFFF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(15),
      ADR5 => n_NL_U2_cnt(15),
      O => n_NL_mult_w_in(15)
    );
  n_NL_Mmux_mult_w_in41 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y58",
      INIT => X"FFFF0303FCFC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => update_IBUF_5466,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(12),
      ADR5 => n_NL_U2_cnt(12),
      O => n_NL_mult_w_in(12)
    );
  n_NL_Mmux_mult_w_in101 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y59",
      INIT => X"FFFF0303FCFC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => update_IBUF_5466,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(18),
      ADR5 => n_NL_U2_cnt(18),
      O => n_NL_mult_w_in(18)
    );
  n_NL_Mmux_mult_w_in91 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y59",
      INIT => X"FFFFFFAA00550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => update_IBUF_5466,
      ADR0 => forward_IBUF_5424,
      ADR5 => n_NL_U4_weight_reg(17),
      ADR4 => n_NL_U2_cnt(17),
      O => n_NL_mult_w_in(17)
    );
  n_NL_Mmux_mult_in111 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y59",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(19),
      O => n_NL_mult_in(19)
    );
  n_NL_Mmux_mult_w_in81 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y59",
      INIT => X"FFFF0303FCFC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => update_IBUF_5466,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(16),
      ADR5 => n_NL_U2_cnt(16),
      O => n_NL_mult_w_in(16)
    );
  n_NL_Mmux_mult_in101 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y60",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(18),
      O => n_NL_mult_in(18)
    );
  n_NL_Mmux_mult_w_in131 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y55",
      INIT => X"FFFF0505FAFA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(2),
      ADR5 => n_NL_U2_cnt(2),
      O => n_NL_mult_w_in(2)
    );
  n_NL_Mmux_mult_in151 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y55",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(4),
      O => n_NL_mult_in(4)
    );
  n_NL_Mmux_mult_w_in110 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y55",
      INIT => X"FFFF000FFFF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => update_IBUF_5466,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(0),
      ADR5 => n_NL_U2_cnt(0),
      O => n_NL_mult_w_in(0)
    );
  n_NL_Mmux_mult_w_in121 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y55",
      INIT => X"FFFF0505FAFA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR0 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(1),
      ADR5 => n_NL_U2_cnt(1),
      O => n_NL_mult_w_in(1)
    );
  n_NL_Mmux_mult_w_in171 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y56",
      INIT => X"FFFF000FFFF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => update_IBUF_5466,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(6),
      ADR5 => n_NL_U2_cnt(6),
      O => n_NL_mult_w_in(6)
    );
  n_NL_Mmux_mult_w_in151 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y56",
      INIT => X"FFFF1111EEEE0000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => update_IBUF_5466,
      ADR1 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(4),
      ADR5 => n_NL_U2_cnt(4),
      O => n_NL_mult_w_in(4)
    );
  n_NL_Mmux_mult_w_in181 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y56",
      INIT => X"FFFF1111EEEE0000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => update_IBUF_5466,
      ADR1 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(7),
      ADR5 => n_NL_U2_cnt(7),
      O => n_NL_mult_w_in(7)
    );
  n_NL_Mmux_mult_in171 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y56",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(6),
      O => n_NL_mult_in(6)
    );
  n_NL_Mmux_mult_w_in21 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y57",
      INIT => X"FFFF000FFFF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(10),
      ADR5 => n_NL_U2_cnt(10),
      O => n_NL_mult_w_in(10)
    );
  n_NL_Mmux_mult_in141 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y57",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(3),
      O => n_NL_mult_in(3)
    );
  n_NL_Mmux_mult_in131 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y57",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(2),
      O => n_NL_mult_in(2)
    );
  n_NL_Mmux_mult_in61 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y58",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => backward_IBUF_5476,
      ADR4 => n_NL_U2_cnt(14),
      O => n_NL_mult_in(14)
    );
  n_NL_Mmux_mult_in71 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y58",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(15),
      O => n_NL_mult_in(15)
    );
  n_NL_Mmux_mult_in121 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y59",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(1),
      O => n_NL_mult_in(1)
    );
  n_NL_Mmux_mult_w_in141 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y55",
      INIT => X"FFFF0505FAFA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(3),
      ADR5 => n_NL_U2_cnt(3),
      O => n_NL_mult_w_in(3)
    );
  n_NL_Mmux_mult_in161 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y56",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(5),
      O => n_NL_mult_in(5)
    );
  n_NL_Mmux_mult_in181 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y56",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(7),
      O => n_NL_mult_in(7)
    );
  n_NL_Mmux_mult_w_in161 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y56",
      INIT => X"FFFF0033FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(5),
      ADR5 => n_NL_U2_cnt(5),
      O => n_NL_mult_w_in(5)
    );
  n_NL_Mmux_mult_in110 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(0),
      O => n_NL_mult_in(0)
    );
  n_NL_Mmux_mult_in21 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(10),
      O => n_NL_mult_in(10)
    );
  n_NL_Mmux_mult_w_in31 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y57",
      INIT => X"FFFF0055FFAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(11),
      ADR5 => n_NL_U2_cnt(11),
      O => n_NL_mult_w_in(11)
    );
  n_NL_Mmux_mult_in41 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(12),
      O => n_NL_mult_in(12)
    );
  n_NL_Mmux_mult_in51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => backward_IBUF_5476,
      ADR4 => n_NL_U2_cnt(13),
      O => n_NL_mult_in(13)
    );
  n_NL_Mmux_mult_w_in51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y58",
      INIT => X"FFFF0033FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(13),
      ADR5 => n_NL_U2_cnt(13),
      O => n_NL_mult_w_in(13)
    );
  n_NL_Mmux_mult_w_in111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y59",
      INIT => X"FFFF0033FFCC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => update_IBUF_5466,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(19),
      ADR5 => n_NL_U2_cnt(19),
      O => n_NL_mult_w_in(19)
    );
  n_NL_Mmux_mult_in201 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y56",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(9),
      O => n_NL_mult_in(9)
    );
  n_NL_Mmux_mult_in191 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y56",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => backward_IBUF_5476,
      ADR5 => n_NL_U2_cnt(8),
      O => n_NL_mult_in(8)
    );
  n_NL_Mmux_mult_w_in201 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y56",
      INIT => X"FFFF0505FAFA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => update_IBUF_5466,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(9),
      ADR5 => n_NL_U2_cnt(9),
      O => n_NL_mult_w_in(9)
    );
  n_NL_Mmux_mult_w_in191 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => X"FFFF000FFFF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => update_IBUF_5466,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_NL_U4_weight_reg(8),
      ADR5 => n_NL_U2_cnt(8),
      O => n_NL_mult_w_in(8)
    );
  n_NL_Mmux_mult_in31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y57",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => backward_IBUF_5476,
      ADR4 => n_NL_U2_cnt(11),
      O => n_NL_mult_in(11)
    );
  n_EL_mult_enable_n_EL_mult_enable_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_EL_mult_reset,
      O => n_EL_mult_reset_0
    );
  n_NL_mult_enable1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y55",
      INIT => X"FFFFFAFAFFFFFAFA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => n_NL_U9_res_d_5467,
      ADR0 => n_NL_update_reg_5468,
      ADR4 => n_NL_U10_res_d_5469,
      ADR5 => '1',
      O => n_EL_mult_enable
    );
  n_NL_update_and_nupdate1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y55",
      INIT => X"55005500"
    )
    port map (
      ADR1 => '1',
      ADR3 => update_IBUF_5466,
      ADR2 => '1',
      ADR0 => n_NL_update_reg_5468,
      ADR4 => '1',
      O => n_EL_mult_reset
    );
  N72_N72_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N74,
      O => N74_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y66",
      INIT => X"3333555533335555"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_U9_d_2_Q,
      ADR1 => n_EL_acc_f_in(13),
      ADR0 => eastIn_13_IBUF_5442,
      ADR5 => '1',
      O => N72
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y66",
      INIT => X"00FF0F0F"
    )
    port map (
      ADR3 => n_EL_acc_f_in(12),
      ADR2 => eastIn_12_IBUF_5440,
      ADR4 => n_ACT_U9_d_2_Q,
      ADR0 => '1',
      ADR1 => '1',
      O => N74
    );
  N96_N96_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N100,
      O => N100_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y69",
      INIT => X"03CF03CF03CF03CF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => n_ACT_U9_d_2_Q,
      ADR3 => n_EL_acc_f_in(1),
      ADR2 => eastIn_1_IBUF_5482,
      ADR5 => '1',
      O => N96
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y69",
      INIT => X"44447777"
    )
    port map (
      ADR0 => n_EL_acc_f_in(19),
      ADR4 => eastIn_19_IBUF_5480,
      ADR1 => n_ACT_U9_d_2_Q,
      ADR3 => '1',
      ADR2 => '1',
      O => N100
    );
  N80_N80_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N82,
      O => N82_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y70",
      INIT => X"0F0F55550F0F5555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => n_ACT_U9_d_2_Q,
      ADR2 => n_EL_acc_f_in(9),
      ADR0 => eastIn_9_IBUF_5494,
      ADR5 => '1',
      O => N80
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y70",
      INIT => X"00FF3333"
    )
    port map (
      ADR3 => n_EL_acc_f_in(8),
      ADR1 => eastIn_8_IBUF_5492,
      ADR4 => n_ACT_U9_d_2_Q,
      ADR0 => '1',
      ADR2 => '1',
      O => N82
    );
  n_NL_update_reg : X_FF
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_NL_update_reg_CLK,
      I => NlwBufferSignal_n_NL_update_reg_IN,
      O => n_NL_update_reg_5468,
      RST => GND,
      SET => GND
    );
  n_ACT_U9_d_2_n_ACT_U9_d_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N62,
      O => N62_0
    );
  n_ACT_U9_d_2 : X_SFF
    generic map(
      LOC => "SLICE_X19Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U9_clr_e_AND_29_o_0,
      CLK => NlwBufferSignal_n_ACT_U9_d_2_CLK,
      I => '1',
      O => n_ACT_U9_d_2_Q,
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U9_d_0 : X_SFF
    generic map(
      LOC => "SLICE_X19Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U9_clr_e_AND_29_o_0,
      CLK => NlwBufferSignal_n_ACT_U9_d_0_CLK,
      I => n_ACT_U9_predand_3_d_3_or_3_OUT_0_Q,
      O => n_ACT_U9_d_0_Q,
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U9_predand_3_d_3_or_3_OUT_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y64",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => n_ACT_U9_d_0_Q,
      ADR3 => n_ACT_U9_d_2_Q,
      ADR5 => '1',
      O => n_ACT_U9_predand_3_d_3_or_3_OUT_0_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y64",
      INIT => X"0F330F33"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_EL_acc_f_in(18),
      ADR1 => eastIn_18_IBUF_5451,
      ADR4 => '1',
      ADR3 => n_ACT_U9_d_2_Q,
      O => N62
    );
  n_ACT_sel_fwd_en_accf_n_ACT_sel_fwd_en_accf_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U9_clr_e_AND_29_o,
      O => n_ACT_U9_clr_e_AND_29_o_0
    );
  n_ACT_U9_e1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y65",
      INIT => X"4C4C4C4C4C4C4C4C"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => forward_IBUF_5424,
      ADR0 => n_ACT_U9_d_2_Q,
      ADR2 => n_ACT_U9_d_0_Q,
      ADR5 => '1',
      O => n_ACT_sel_fwd_en_accf
    );
  n_ACT_U9_clr_e_AND_29_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y65",
      INIT => X"00004C4C"
    )
    port map (
      ADR3 => '1',
      ADR4 => reset_IBUF_5430,
      ADR1 => forward_IBUF_5424,
      ADR0 => n_ACT_U9_d_2_Q,
      ADR2 => n_ACT_U9_d_0_Q,
      O => n_ACT_U9_clr_e_AND_29_o
    );
  n_ACT_U2_n0042_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y65",
      INIT => X"DDFFCCFFCCEECCDD"
    )
    port map (
      ADR2 => '1',
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR5 => n_ACT_state_FSM_FFd2_5426,
      ADR0 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR1 => n_ACT_sel_fwd_en_accf,
      O => n_ACT_U2_n0042_inv
    );
  n_NL_U10_res_d_n_NL_U10_res_d_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U10_clr_inv_pack_1,
      O => n_NL_U10_clr_inv
    );
  n_NL_U10_res_d : X_SFF
    generic map(
      LOC => "SLICE_X20Y55",
      INIT => '0'
    )
    port map (
      CE => n_NL_U10_clr_inv,
      CLK => NlwBufferSignal_n_NL_U10_res_d_CLK,
      I => NlwBufferSignal_n_NL_U10_res_d_IN,
      O => n_NL_U10_res_d_5469,
      SRST => n_NL_acc_b_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_NL_acc_b_reset1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y55",
      INIT => X"FFCCFFCCFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => forward_IBUF_5424,
      ADR1 => reset_IBUF_5430,
      ADR5 => '1',
      O => n_NL_acc_b_reset
    );
  n_NL_U10_clr_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y55",
      INIT => X"00330033"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => forward_IBUF_5424,
      ADR1 => reset_IBUF_5430,
      O => n_NL_U10_clr_inv_pack_1
    );
  N64_N64_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N66,
      O => N66_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y62",
      INIT => X"00FF0F0F00FF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => n_ACT_U9_d_2_Q,
      ADR3 => n_EL_acc_f_in(17),
      ADR2 => eastIn_17_IBUF_5488,
      ADR5 => '1',
      O => N64
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y62",
      INIT => X"55553333"
    )
    port map (
      ADR0 => n_EL_acc_f_in(16),
      ADR1 => eastIn_16_IBUF_5486,
      ADR4 => n_ACT_U9_d_2_Q,
      ADR3 => '1',
      ADR2 => '1',
      O => N66
    );
  N68_N68_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N70,
      O => N70_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y64",
      INIT => X"0033CCFF0033CCFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => n_ACT_U9_d_2_Q,
      ADR4 => n_EL_acc_f_in(15),
      ADR3 => eastIn_15_IBUF_5457,
      ADR5 => '1',
      O => N68
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y64",
      INIT => X"47474747"
    )
    port map (
      ADR0 => n_EL_acc_f_in(14),
      ADR2 => eastIn_14_IBUF_5455,
      ADR1 => n_ACT_U9_d_2_Q,
      ADR3 => '1',
      ADR4 => '1',
      O => N70
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A131 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y66",
      INIT => X"F0F0FF00F0F0AAAA"
    )
    port map (
      ADR1 => '1',
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_U2_cnt(2),
      ADR5 => n_ACT_acc_f_reset1,
      ADR3 => n_ACT_omx_out_2_0,
      ADR2 => n_ACT_U4_weight_reg(2),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A61 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y66",
      INIT => X"CACFCAC0CACFCAC0"
    )
    port map (
      ADR5 => '1',
      ADR2 => n_ACT_acc_f_reset0_0,
      ADR4 => n_ACT_U2_cnt(14),
      ADR3 => n_ACT_acc_f_reset1,
      ADR0 => n_ACT_omx_out_14_0,
      ADR1 => n_ACT_U4_weight_reg(14),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q
    );
  n_ACT_U6_x_addr_032 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y66",
      INIT => X"8888000088880000"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => n_ACT_U2_cnt(7),
      ADR0 => n_ACT_U2_cnt(8),
      ADR4 => n_ACT_U2_cnt(9),
      O => n_ACT_U6_x_addr_031_5941
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A110 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y66",
      INIT => X"FF00AAAAFF00F0F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR2 => n_ACT_U2_cnt(0),
      ADR5 => n_ACT_acc_f_reset1,
      ADR0 => n_ACT_omx_out_0_0,
      ADR3 => n_ACT_U4_weight_reg(0),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A91 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y72",
      INIT => X"CCCCF0AACCCCF0AA"
    )
    port map (
      ADR5 => '1',
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_U2_cnt(17),
      ADR3 => n_ACT_acc_f_reset1,
      ADR2 => n_ACT_omx_out_17_0,
      ADR1 => n_ACT_U4_weight_reg(17),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A71 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y72",
      INIT => X"D8DDD888D8DDD888"
    )
    port map (
      ADR5 => '1',
      ADR0 => n_ACT_acc_f_reset0_0,
      ADR4 => n_ACT_U2_cnt(15),
      ADR3 => n_ACT_acc_f_reset1,
      ADR2 => n_ACT_omx_out_15_0,
      ADR1 => n_ACT_U4_weight_reg(15),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A101 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y72",
      INIT => X"CCAACCAACCF0CCF0"
    )
    port map (
      ADR4 => '1',
      ADR3 => n_ACT_acc_f_reset0_0,
      ADR2 => n_ACT_U2_cnt(18),
      ADR5 => n_ACT_acc_f_reset1,
      ADR0 => n_ACT_omx_out_18_0,
      ADR1 => n_ACT_U4_weight_reg(18),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q
    );
  N92_N92_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N94,
      O => N94_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"0505AFAF0505AFAF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => n_ACT_U9_d_2_Q,
      ADR4 => n_EL_acc_f_in(3),
      ADR2 => eastIn_3_IBUF_5516,
      ADR5 => '1',
      O => N92
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y76",
      INIT => X"11BB11BB"
    )
    port map (
      ADR3 => n_EL_acc_f_in(2),
      ADR1 => eastIn_2_IBUF_5514,
      ADR0 => n_ACT_U9_d_2_Q,
      ADR2 => '1',
      ADR4 => '1',
      O => N94
    );
  n_ACT_U6_x_addr_033 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y65",
      INIT => X"AA800000AA800000"
    )
    port map (
      ADR5 => '1',
      ADR0 => n_ACT_U2_cnt(4),
      ADR4 => n_ACT_U2_cnt(3),
      ADR2 => n_ACT_U2_cnt(0),
      ADR1 => n_ACT_U2_cnt(1),
      ADR3 => n_ACT_U2_cnt(2),
      O => n_ACT_U6_x_addr_032_5948
    );
  n_ACT_U6_x_addr_133 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y65",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => n_ACT_U2_cnt(8),
      ADR3 => n_ACT_U2_cnt(9),
      ADR4 => n_ACT_U2_cnt(6),
      ADR1 => n_ACT_U2_cnt(7),
      ADR0 => n_ACT_U2_cnt(4),
      ADR5 => n_ACT_U2_cnt(5),
      O => n_ACT_U6_x_addr_132_5942
    );
  n_ACT_U6_x_addr_034 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y65",
      INIT => X"F0A0F0A0F0A0E0A0"
    )
    port map (
      ADR0 => n_ACT_U2_cnt(10),
      ADR4 => n_ACT_U2_cnt(6),
      ADR5 => n_ACT_U2_cnt(5),
      ADR2 => n_ACT_U2_cnt(11),
      ADR3 => n_ACT_U6_x_addr_031_5941,
      ADR1 => n_ACT_U6_x_addr_032_5948,
      O => n_ACT_U6_x_addr_033_5922
    );
  n_ACT_U6_x_addr_035 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y65",
      INIT => X"00FF00FA00FE00FA"
    )
    port map (
      ADR3 => n_ACT_U2_cnt(19),
      ADR2 => n_ACT_U2_cnt(18),
      ADR0 => n_ACT_U2_cnt(17),
      ADR1 => n_ACT_U2_cnt(12),
      ADR4 => n_ACT_U6_x_addr_03,
      ADR5 => n_ACT_U6_x_addr_033_5922,
      O => n_ACT_U6_x_addr_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_add_ld_a,
      O => n_ACT_add_ld_a_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A31 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"EE22EE22FC30FC30"
    )
    port map (
      ADR4 => '1',
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR2 => n_ACT_U2_cnt(11),
      ADR5 => n_ACT_acc_f_reset1,
      ADR0 => n_ACT_omx_out_11_0,
      ADR3 => n_ACT_U4_weight_reg(11),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A41 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"AAAAFC30AAAAFC30"
    )
    port map (
      ADR5 => '1',
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR2 => n_ACT_U2_cnt(12),
      ADR1 => n_ACT_acc_f_reset1,
      ADR3 => n_ACT_omx_out_12_0,
      ADR0 => n_ACT_U4_weight_reg(12),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q
    );
  n_ACT_state_acc_f_reset11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"2020202020202020"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => '1',
      O => n_ACT_acc_f_reset1
    );
  n_ACT_state_add_ld_a1 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"10101010"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      O => n_ACT_add_ld_a
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_B110 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y71",
      INIT => X"AA00AA0054541010"
    )
    port map (
      ADR0 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_acc_f_reset1,
      ADR1 => n_ACT_U9_d_2_Q,
      ADR4 => n_EL_acc_f_in(0),
      ADR2 => eastIn_0_IBUF_5500,
      ADR3 => n_ACT_omx_out_0_0,
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_B_0_Q
    );
  N84_N84_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N86,
      O => N86_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y72",
      INIT => X"00CC33FF00CC33FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => n_ACT_U9_d_2_Q,
      ADR3 => n_EL_acc_f_in(7),
      ADR4 => eastIn_7_IBUF_5463,
      ADR5 => '1',
      O => N84
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y72",
      INIT => X"1D1D1D1D"
    )
    port map (
      ADR2 => n_EL_acc_f_in(6),
      ADR0 => eastIn_6_IBUF_5461,
      ADR1 => n_ACT_U9_d_2_Q,
      ADR3 => '1',
      ADR4 => '1',
      O => N86
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A21 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y72",
      INIT => X"AAFFAA33AACCAA00"
    )
    port map (
      ADR2 => '1',
      ADR3 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_U2_cnt(10),
      ADR1 => n_ACT_acc_f_reset1,
      ADR4 => n_ACT_omx_out_10_0,
      ADR0 => n_ACT_U4_weight_reg(10),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q
    );
  N88_N88_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N90,
      O => N90_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y74",
      INIT => X"0F550F550F550F55"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => n_ACT_U9_d_2_Q,
      ADR2 => n_EL_acc_f_in(5),
      ADR0 => eastIn_5_IBUF_5448,
      ADR5 => '1',
      O => N88
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y74",
      INIT => X"330033FF"
    )
    port map (
      ADR1 => n_EL_acc_f_in(4),
      ADR4 => eastIn_4_IBUF_5446,
      ADR3 => n_ACT_U9_d_2_Q,
      ADR2 => '1',
      ADR0 => '1',
      O => N90
    );
  n_ACT_U1_ready_n_ACT_U1_ready_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_enable,
      O => n_ACT_mult_enable_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A121 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y65",
      INIT => X"CCCCCCCCFFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR5 => n_ACT_acc_f_reset0_0,
      ADR3 => n_ACT_U2_cnt(1),
      ADR2 => n_ACT_acc_f_reset1,
      ADR4 => n_ACT_omx_out_1_0,
      ADR1 => n_ACT_U4_weight_reg(1),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q
    );
  n_ACT_Mmux_mult_in161 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y65",
      INIT => X"FFFFFCFF00000C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_U8_sum(5),
      ADR5 => n_ACT_U2_cnt(5),
      ADR3 => n_ACT_state_FSM_FFd1_5422,
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(5)
    );
  n_ACT_Mmux_mult_in141 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y65",
      INIT => X"FFFF0000FCFF0C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_U8_sum(3),
      ADR4 => n_ACT_U2_cnt(3),
      ADR3 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(3)
    );
  n_ACT_U1_ready : X_FF
    generic map(
      LOC => "SLICE_X22Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_U1_ready_CLK,
      I => n_ACT_mult_enable,
      O => n_ACT_U1_ready_5437,
      RST => GND,
      SET => GND
    );
  n_ACT_Mmux_cnt_en11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y65",
      INIT => X"0000000C0000000C"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => '1',
      O => n_ACT_cnt_en
    );
  n_ACT_Mmux_mult_enable11 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y65",
      INIT => X"00CF00CC"
    )
    port map (
      ADR0 => '1',
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd2_5426,
      O => n_ACT_mult_enable
    );
  n_ACT_Mmux_mult_w_in201 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => X"FECF04C0FECD04C8"
    )
    port map (
      ADR1 => n_ACT_U8_sum(9),
      ADR4 => n_ACT_U5_cnt(9),
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(9)
    );
  n_ACT_U6_coeff_19_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => X"F3F3F3F3FCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => n_ACT_U7_cnt(1),
      ADR5 => n_ACT_U6_x_addr_1,
      ADR2 => n_ACT_U6_x_addr_0,
      O => N37
    );
  n_ACT_U6_x_addr_2_x_addr_3_AND_10_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => X"FFFFFFFFFCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => n_ACT_U2_cnt(3),
      ADR2 => n_ACT_U2_cnt(4),
      ADR4 => n_ACT_U2_cnt(0),
      ADR1 => n_ACT_U2_cnt(1),
      ADR3 => n_ACT_U2_cnt(2),
      O => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o2_5935
    );
  n_ACT_U6_x_addr_2_x_addr_3_AND_10_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y66",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U2_cnt(7),
      ADR4 => n_ACT_U2_cnt(8),
      ADR5 => n_ACT_U2_cnt(9),
      O => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o1_5934
    );
  n_ACT_U10_d_0_n_ACT_U10_d_0_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U10_clr_e_AND_29_o_pack_2,
      O => n_ACT_U10_clr_e_AND_29_o
    );
  n_ACT_U10_d_0 : X_SFF
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U10_clr_e_AND_29_o,
      CLK => NlwBufferSignal_n_ACT_U10_d_0_CLK,
      I => '1',
      O => n_ACT_U10_d(0),
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U10_e1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => X"0000C0C00000C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => backward_IBUF_5476,
      ADR4 => n_ACT_U10_d(0),
      ADR1 => broadcast_IBUF_5477,
      ADR5 => '1',
      O => n_ACT_acc_b_en
    );
  n_ACT_U10_clr_e_AND_29_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => X"00004040"
    )
    port map (
      ADR3 => '1',
      ADR0 => reset_IBUF_5430,
      ADR2 => backward_IBUF_5476,
      ADR4 => n_ACT_U10_d(0),
      ADR1 => broadcast_IBUF_5477,
      O => n_ACT_U10_clr_e_AND_29_o_pack_2
    );
  n_ACT_Mmux_mult_in151 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y65",
      INIT => X"FF00FA0AFF00FF00"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_U8_sum(4),
      ADR3 => n_ACT_U2_cnt(4),
      ADR5 => n_ACT_state_FSM_FFd1_5422,
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(4)
    );
  n_ACT_Mmux_mult_in171 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"CCCCCCCCCFCCC0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_ACT_U8_sum(6),
      ADR1 => n_ACT_U2_cnt(6),
      ADR3 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(6)
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A141 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"FF00CFCFFF00C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_U2_cnt(3),
      ADR2 => n_ACT_acc_f_reset1,
      ADR1 => n_ACT_omx_out_3_0,
      ADR3 => n_ACT_U4_weight_reg(3),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q
    );
  n_ACT_U6_x_addr_332 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y66",
      INIT => X"0F0F0F7FFFFFFFFF"
    )
    port map (
      ADR4 => n_ACT_U2_cnt(4),
      ADR3 => n_ACT_U2_cnt(3),
      ADR1 => n_ACT_U2_cnt(1),
      ADR0 => n_ACT_U2_cnt(2),
      ADR2 => n_ACT_U2_cnt(6),
      ADR5 => n_ACT_U2_cnt(5),
      O => n_ACT_U6_x_addr_331_5944
    );
  n_ACT_U6_x_addr_132 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y67",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR5 => n_ACT_U2_cnt(2),
      ADR0 => n_ACT_U2_cnt(3),
      ADR3 => n_ACT_U2_cnt(18),
      ADR4 => n_ACT_U2_cnt(1),
      ADR1 => n_ACT_U2_cnt(16),
      ADR2 => n_ACT_U2_cnt(17),
      O => n_ACT_U6_x_addr_131_5943
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A201 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y67",
      INIT => X"FFAAFFCC00AA00CC"
    )
    port map (
      ADR2 => '1',
      ADR3 => n_ACT_acc_f_reset0_0,
      ADR1 => n_ACT_U2_cnt(9),
      ADR4 => n_ACT_acc_f_reset1,
      ADR0 => n_ACT_omx_out_9_0,
      ADR5 => n_ACT_U4_weight_reg(9),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A151 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y67",
      INIT => X"AAFFAA33AACCAA00"
    )
    port map (
      ADR2 => '1',
      ADR3 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_U2_cnt(4),
      ADR1 => n_ACT_acc_f_reset1,
      ADR4 => n_ACT_omx_out_4_0,
      ADR0 => n_ACT_U4_weight_reg(4),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A171 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y67",
      INIT => X"FF00FF00FAFA0A0A"
    )
    port map (
      ADR1 => '1',
      ADR5 => n_ACT_acc_f_reset0_0,
      ADR0 => n_ACT_U2_cnt(6),
      ADR2 => n_ACT_acc_f_reset1,
      ADR4 => n_ACT_omx_out_6_0,
      ADR3 => n_ACT_U4_weight_reg(6),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q
    );
  N76_N76_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N78,
      O => N78_0
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y68",
      INIT => X"5353535353535353"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => n_ACT_U9_d_2_Q,
      ADR0 => n_EL_acc_f_in(11),
      ADR1 => eastIn_11_IBUF_5508,
      ADR5 => '1',
      O => N76
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y68",
      INIT => X"00F00FFF"
    )
    port map (
      ADR3 => n_EL_acc_f_in(10),
      ADR4 => eastIn_10_IBUF_5506,
      ADR2 => n_ACT_U9_d_2_Q,
      ADR0 => '1',
      ADR1 => '1',
      O => N78
    );
  n_ACT_Mmux_mult_w_in51 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y68",
      INIT => X"AAACAAACCCAACCCA"
    )
    port map (
      ADR1 => n_ACT_U8_sum(13),
      ADR0 => n_ACT_U5_cnt(13),
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(13)
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A161 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y68",
      INIT => X"FF00DDDDFF008888"
    )
    port map (
      ADR2 => '1',
      ADR4 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_U2_cnt(5),
      ADR0 => n_ACT_acc_f_reset1,
      ADR1 => n_ACT_omx_out_5_0,
      ADR3 => n_ACT_U4_weight_reg(5),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A181 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y68",
      INIT => X"DD88DD88D8D8D8D8"
    )
    port map (
      ADR4 => '1',
      ADR0 => n_ACT_acc_f_reset0_0,
      ADR2 => n_ACT_U2_cnt(7),
      ADR5 => n_ACT_acc_f_reset1,
      ADR3 => n_ACT_omx_out_7_0,
      ADR1 => n_ACT_U4_weight_reg(7),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q
    );
  n_ACT_U6_x_addr_131 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y69",
      INIT => X"FFFFFFFEFFFFFFFE"
    )
    port map (
      ADR5 => '1',
      ADR4 => n_ACT_U2_cnt(0),
      ADR2 => n_ACT_U2_cnt(10),
      ADR0 => n_ACT_U2_cnt(11),
      ADR1 => n_ACT_U2_cnt(13),
      ADR3 => n_ACT_U2_cnt(12),
      O => n_ACT_U6_x_addr_13
    );
  n_ACT_U6_x_addr_134 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y69",
      INIT => X"5555555555555554"
    )
    port map (
      ADR4 => n_ACT_U2_cnt(14),
      ADR2 => n_ACT_U2_cnt(15),
      ADR0 => n_ACT_U2_cnt(19),
      ADR3 => n_ACT_U6_x_addr_132_5942,
      ADR5 => n_ACT_U6_x_addr_131_5943,
      ADR1 => n_ACT_U6_x_addr_13,
      O => n_ACT_U6_x_addr_1
    );
  n_ACT_U6_x_addr_2_x_addr_3_AND_10_o3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y69",
      INIT => X"FFFFFFFFFFFFFFEC"
    )
    port map (
      ADR5 => n_ACT_U2_cnt(16),
      ADR1 => n_ACT_U2_cnt(15),
      ADR4 => n_ACT_U2_cnt(14),
      ADR3 => n_ACT_U2_cnt(13),
      ADR0 => n_ACT_U2_cnt(11),
      ADR2 => n_ACT_U2_cnt(12),
      O => N24
    );
  n_ACT_U6_x_addr_2_x_addr_3_AND_10_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y69",
      INIT => X"FFEC004CFFCC00CC"
    )
    port map (
      ADR2 => n_ACT_U2_cnt(6),
      ADR0 => n_ACT_U2_cnt(5),
      ADR3 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o1_5934,
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o2_5935,
      ADR1 => N24,
      ADR4 => N25_0,
      O => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o4_5933
    );
  N45_N45_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  N45_N45_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N47,
      O => N47_0
    );
  n_ACT_U6_x_addr_2_x_addr_3_AND_10_o3_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X23Y70"
    )
    port map (
      IA => N98,
      IB => '1',
      O => N25,
      SEL => n_ACT_U2_cnt(16)
    );
  n_ACT_U6_x_addr_2_x_addr_3_AND_10_o3_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X23Y70",
      INIT => X"FFFFFFFEFFFFFCFC"
    )
    port map (
      ADR5 => n_ACT_U2_cnt(12),
      ADR3 => n_ACT_U2_cnt(11),
      ADR0 => n_ACT_U2_cnt(10),
      ADR2 => n_ACT_U2_cnt(15),
      ADR1 => n_ACT_U2_cnt(14),
      ADR4 => n_ACT_U2_cnt(13),
      O => N98
    );
  N0_7_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X23Y70",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_7_C6LUT_O_UNCONNECTED
    );
  n_ACT_U6_x_addr_334_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y70",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => n_ACT_U2_cnt(18),
      ADR3 => n_ACT_U2_cnt(17),
      ADR5 => '1',
      O => N45
    );
  n_ACT_U6_x_addr_334_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y70",
      INIT => X"CC000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => n_ACT_U2_cnt(12),
      ADR2 => n_ACT_U6_x_addr_33,
      ADR1 => n_ACT_U2_cnt(18),
      ADR3 => n_ACT_U2_cnt(17),
      O => N47
    );
  n_ACT_U6_x_addr_331 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y70",
      INIT => X"0000000500000005"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => n_ACT_U2_cnt(15),
      ADR2 => n_ACT_U2_cnt(16),
      ADR3 => n_ACT_U2_cnt(14),
      ADR4 => n_ACT_U2_cnt(13),
      O => n_ACT_U6_x_addr_33
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A81 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y71",
      INIT => X"F3F3C0C0F3C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR3 => n_ACT_U2_cnt(16),
      ADR5 => n_ACT_acc_f_reset1,
      ADR4 => n_ACT_omx_out_16_0,
      ADR2 => n_ACT_U4_weight_reg(16),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q
    );
  n_ACT_U6_x_addr_334_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y71",
      INIT => X"C0C0C0C0C0C0C080"
    )
    port map (
      ADR1 => n_ACT_U2_cnt(18),
      ADR2 => n_ACT_U2_cnt(17),
      ADR0 => n_ACT_U2_cnt(15),
      ADR4 => n_ACT_U2_cnt(16),
      ADR5 => n_ACT_U2_cnt(14),
      ADR3 => n_ACT_U2_cnt(13),
      O => N48
    );
  n_ACT_U6_coeff_5_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y71",
      INIT => X"5555FFEF5555AFEF"
    )
    port map (
      ADR2 => n_ACT_U2_cnt(19),
      ADR4 => n_ACT_U7_cnt(0),
      ADR5 => N48,
      ADR1 => N47_0,
      ADR3 => n_ACT_U6_x_addr_332_5919,
      ADR0 => n_ACT_U6_x_addr_1,
      O => N4
    );
  n_EL_F_SEL_CLR_n_EL_F_SEL_CLR_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U9_clr_inv,
      O => n_NL_U9_clr_inv_0
    );
  n_NL_F_SEL_CLR1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y56",
      INIT => X"FFFAFFFAFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => reset_IBUF_5430,
      ADR0 => still_fwd_IBUF_5519,
      ADR3 => backward_IBUF_5476,
      ADR5 => '1',
      O => n_EL_F_SEL_CLR
    );
  n_NL_U9_clr_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y56",
      INIT => X"00050005"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => reset_IBUF_5430,
      ADR0 => still_fwd_IBUF_5519,
      ADR3 => backward_IBUF_5476,
      O => n_NL_U9_clr_inv
    );
  n_NL_U9_d_0 : X_SFF
    generic map(
      LOC => "SLICE_X24Y57",
      INIT => '0'
    )
    port map (
      CE => n_NL_U9_clr_e_AND_29_o,
      CLK => NlwBufferSignal_n_NL_U9_d_0_CLK,
      I => '1',
      O => n_NL_U9_d(0),
      SRST => n_EL_F_SEL_CLR,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X24Y63",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd4_CLK,
      I => n_ACT_state_FSM_FFd4_In,
      O => n_ACT_state_FSM_FFd4_5423,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_state_FSM_FFd4_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y63",
      INIT => X"EEEEFFFFEEEE7777"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_U1_ready_5437,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      O => n_ACT_state_FSM_FFd4_In1_5954
    );
  n_ACT_state_FSM_FFd4_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y63",
      INIT => X"5000CCCC500FCCCC"
    )
    port map (
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_U9_res_d_0,
      ADR0 => forward_IBUF_5424,
      ADR1 => n_ACT_state_FSM_FFd4_In1_5954,
      O => n_ACT_state_FSM_FFd4_In
    );
  n_ACT_state_FSM_FFd3_n_ACT_state_FSM_FFd3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_t_en,
      O => n_ACT_acc_t_en_0
    );
  n_ACT_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd3_CLK,
      I => NlwBufferSignal_n_ACT_state_FSM_FFd3_IN,
      O => n_ACT_state_FSM_FFd3_5425,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_Mmux_mult_w_in151 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => X"FFCC00CCEEFD4408"
    )
    port map (
      ADR1 => n_ACT_U8_sum(4),
      ADR4 => n_ACT_U5_cnt(4),
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd2_5426,
      O => n_ACT_mult_w_in(4)
    );
  n_ACT_state_FSM_FFd2_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => X"F555F555F555F555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => backward_IBUF_5476,
      ADR3 => n_ACT_U10_res_d_5899,
      ADR0 => still_fwd_IBUF_5519,
      O => N2
    );
  n_ACT_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd2_CLK,
      I => n_ACT_state_FSM_FFd2_In_5917,
      O => n_ACT_state_FSM_FFd2_5426,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_state_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => X"7200728872007200"
    )
    port map (
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      ADR1 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => n_ACT_U7_f_5474,
      ADR2 => N2,
      O => n_ACT_state_FSM_FFd2_In_5917
    );
  n_ACT_state_FSM_FFd1_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd1_1_CLK,
      I => n_ACT_state_FSM_FFd1_In,
      O => n_ACT_state_FSM_FFd1_1_5926,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => X"FAFA2AAAFAFA2AAA"
    )
    port map (
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => forward_IBUF_5424,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => '1',
      O => n_ACT_state_FSM_FFd1_In
    );
  n_ACT_Mmux_acc_t_en11 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y64",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      O => n_ACT_acc_t_en
    );
  n_ACT_Mmux_mult_w_in61 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y65",
      INIT => X"FFF2FCF300D030C0"
    )
    port map (
      ADR2 => n_ACT_U8_sum(14),
      ADR5 => n_ACT_U5_cnt(14),
      ADR0 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(14)
    );
  n_ACT_Mmux_mult_w_in111 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y65",
      INIT => X"FFCBFFC934003600"
    )
    port map (
      ADR3 => n_ACT_U8_sum(19),
      ADR5 => n_ACT_U5_cnt(19),
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd2_5426,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(19)
    );
  n_ACT_Mmux_mult_in201 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y65",
      INIT => X"FFFFFFF500000A00"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_ACT_U8_sum(9),
      ADR5 => n_ACT_U2_cnt(9),
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(9)
    );
  n_ACT_Mmux_mult_in131 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y65",
      INIT => X"FFFCFFFF00300000"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_U8_sum(2),
      ADR5 => n_ACT_U2_cnt(2),
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(2)
    );
  n_ACT_U8_sum_12 : X_SFF
    generic map(
      LOC => "SLICE_X24Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_12_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_12_Q,
      O => n_ACT_U8_sum(12),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y66",
      INIT => X"FAE4FFF050E400F0"
    )
    port map (
      ADR1 => n_NL_acc_f_in(12),
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      ADR3 => n_ACT_add_ld_a_0,
      ADR5 => n_ACT_in1_10_Q,
      ADR2 => n_ACT_U8_a_19_b_19_add_0_OUT_12_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_12_Q
    );
  n_ACT_U6_coeff_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y66",
      INIT => X"00EE001100EE0000"
    )
    port map (
      ADR2 => '1',
      ADR0 => n_ACT_U7_cnt(0),
      ADR1 => n_ACT_U7_cnt(1),
      ADR4 => n_ACT_U6_x_addr_1,
      ADR5 => n_ACT_U6_x_addr_3,
      ADR3 => n_ACT_U6_x_addr_0,
      O => n_ACT_in1_11_Q
    );
  n_ACT_U8_sum_11 : X_SFF
    generic map(
      LOC => "SLICE_X24Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_11_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_11_Q,
      O => n_ACT_U8_sum(11),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y66",
      INIT => X"FF00F5A0F0F0D8D8"
    )
    port map (
      ADR1 => n_NL_acc_f_in(11),
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      ADR5 => n_ACT_add_ld_a_0,
      ADR3 => n_ACT_in1_11_Q,
      ADR2 => n_ACT_U8_a_19_b_19_add_0_OUT_11_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_11_Q
    );
  n_ACT_U6_coeff_7_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y66",
      INIT => X"003C330C14142626"
    )
    port map (
      ADR4 => n_ACT_U7_cnt(0),
      ADR1 => n_ACT_U7_cnt(1),
      ADR0 => N50,
      ADR3 => N51_0,
      ADR5 => n_ACT_U6_x_addr_033_5922,
      ADR2 => n_ACT_U6_x_addr_1,
      O => N19
    );
  n_ACT_Mmux_mult_in41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => X"FF00FF00FC0CFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_U8_sum(12),
      ADR3 => n_ACT_U2_cnt(12),
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(12)
    );
  n_ACT_U6_coeff_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => X"0066304400663045"
    )
    port map (
      ADR0 => n_ACT_U7_cnt(0),
      ADR3 => n_ACT_U7_cnt(1),
      ADR4 => n_ACT_U6_x_addr_1,
      ADR5 => n_ACT_U6_x_addr_3,
      ADR1 => n_ACT_U6_x_addr_0,
      ADR2 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_in1_14_Q
    );
  n_ACT_U8_sum_14 : X_SFF
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_14_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_14_Q,
      O => n_ACT_U8_sum(14),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => X"F0B8AAEEF0B8AA22"
    )
    port map (
      ADR5 => n_NL_acc_f_in(14),
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_add_ld_a_0,
      ADR2 => n_ACT_in1_14_Q,
      ADR0 => n_ACT_U8_a_19_b_19_add_0_OUT_14_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_14_Q
    );
  n_ACT_U8_sum_10 : X_SFF
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_10_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_10_Q,
      O => n_ACT_U8_sum(10),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => X"DFDD8588DADD8088"
    )
    port map (
      ADR5 => n_NL_acc_f_in(10),
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      ADR0 => n_ACT_add_ld_a_0,
      ADR1 => n_ACT_in1_10_Q,
      ADR4 => n_ACT_U8_a_19_b_19_add_0_OUT_10_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_10_Q
    );
  n_ACT_Mmux_mult_in51 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y68",
      INIT => X"F0F0F0F0F0F0FA50"
    )
    port map (
      ADR1 => '1',
      ADR3 => n_ACT_U8_sum(13),
      ADR2 => n_ACT_U2_cnt(13),
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(13)
    );
  n_ACT_Mmux_mult_in61 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y68",
      INIT => X"FF00FF00FF00F5A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_U8_sum(14),
      ADR3 => n_ACT_U2_cnt(14),
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(14)
    );
  n_ACT_U8_sum_13 : X_SFF
    generic map(
      LOC => "SLICE_X24Y68",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_13_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_13_Q,
      O => n_ACT_U8_sum(13),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y68",
      INIT => X"EE44D8D8EE44EE44"
    )
    port map (
      ADR2 => n_NL_acc_f_in(13),
      ADR5 => n_ACT_state_FSM_FFd2_5426,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      ADR0 => n_ACT_add_ld_a_0,
      ADR3 => n_ACT_in1_10_Q,
      ADR1 => n_ACT_U8_a_19_b_19_add_0_OUT_13_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_13_Q
    );
  n_ACT_Mmux_mult_in91 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y68",
      INIT => X"FFFCFFFF000C0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_U8_sum(17),
      ADR5 => n_ACT_U2_cnt(17),
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(17)
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A191 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"FD31FD31EC20EC20"
    )
    port map (
      ADR4 => '1',
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR5 => n_ACT_U2_cnt(8),
      ADR0 => n_ACT_acc_f_reset1,
      ADR2 => n_ACT_omx_out_8_0,
      ADR3 => n_ACT_U4_weight_reg(8),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q
    );
  n_ACT_Mmux_mult_w_in101 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"FE04FE04CFC0CDC8"
    )
    port map (
      ADR1 => n_ACT_U8_sum(18),
      ADR3 => n_ACT_U5_cnt(18),
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(18)
    );
  n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A51 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"F3F3F3C0C0C0F3C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_acc_f_reset0_0,
      ADR3 => n_ACT_U2_cnt(13),
      ADR4 => n_ACT_acc_f_reset1,
      ADR5 => n_ACT_omx_out_13_0,
      ADR2 => n_ACT_U4_weight_reg(13),
      O => n_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q
    );
  n_ACT_Mmux_mult_in31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y69",
      INIT => X"F0F0F0F0F0CCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_U8_sum(11),
      ADR2 => n_ACT_U2_cnt(11),
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(11)
    );
  n_ACT_Mmux_mult_in21 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => X"FFFFFFAF00500000"
    )
    port map (
      ADR1 => '1',
      ADR4 => n_ACT_U8_sum(10),
      ADR5 => n_ACT_U2_cnt(10),
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(10)
    );
  n_ACT_Mmux_mult_in71 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => X"FFFF0000FFAF00A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_U8_sum(15),
      ADR4 => n_ACT_U2_cnt(15),
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(15)
    );
  n_ACT_U8_sum_19 : X_SFF
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_19_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_19_Q,
      O => n_ACT_U8_sum(19),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => X"CFCFEFE5C0C04A40"
    )
    port map (
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_NL_acc_f_in(19),
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      ADR2 => n_ACT_add_ld_a_0,
      ADR1 => n_ACT_in1_16_Q,
      ADR5 => n_ACT_U8_a_19_b_19_add_0_OUT_19_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_19_Q
    );
  n_ACT_U8_sum_18 : X_SFF
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_18_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_18_Q,
      O => n_ACT_U8_sum(18),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => X"EE44FF00D8D8CCCC"
    )
    port map (
      ADR2 => n_NL_acc_f_in(18),
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      ADR5 => n_ACT_add_ld_a_0,
      ADR3 => n_ACT_in1_16_Q,
      ADR1 => n_ACT_U8_a_19_b_19_add_0_OUT_18_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_18_Q
    );
  n_ACT_Mmux_mult_in112 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y71",
      INIT => X"F0F0F0F0F0CCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_U8_sum(19),
      ADR2 => n_ACT_U2_cnt(19),
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(19)
    );
  n_ACT_Mmux_mult_in101 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y71",
      INIT => X"FFFCFFFF000C0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_U8_sum(18),
      ADR5 => n_ACT_U2_cnt(18),
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(18)
    );
  n_NL_U9_res_d : X_SFF
    generic map(
      LOC => "SLICE_X25Y56",
      INIT => '0'
    )
    port map (
      CE => n_NL_U9_clr_inv_0,
      CLK => NlwBufferSignal_n_NL_U9_res_d_CLK,
      I => NlwBufferSignal_n_NL_U9_res_d_IN,
      O => n_NL_U9_res_d_5467,
      SRST => n_EL_F_SEL_CLR,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_NL_U9_clr_e_AND_29_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y57",
      INIT => X"0000000000020000"
    )
    port map (
      ADR3 => backward_IBUF_5476,
      ADR0 => broadcast_IBUF_5477,
      ADR4 => forward_IBUF_5424,
      ADR2 => n_NL_U9_d(0),
      ADR1 => reset_IBUF_5430,
      ADR5 => still_fwd_IBUF_5519,
      O => n_NL_U9_clr_e_AND_29_o
    );
  n_NL_U2_n0042_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y58",
      INIT => X"FFFFFFFFFF00FFC0"
    )
    port map (
      ADR0 => '1',
      ADR5 => reset_IBUF_5430,
      ADR2 => forward_IBUF_5424,
      ADR4 => n_NL_U9_d(0),
      ADR1 => broadcast_IBUF_5477,
      ADR3 => update_IBUF_5466,
      O => n_NL_U2_n0042_inv
    );
  n_ACT_Mmux_mult_in181 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y62",
      INIT => X"FFFFFFF3000000C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_U8_sum(7),
      ADR5 => n_ACT_U2_cnt(7),
      ADR1 => n_ACT_state_FSM_FFd1_5422,
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(7)
    );
  n_ACT_Mmux_mult_w_in161 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y63",
      INIT => X"FEF310C0FEF110E0"
    )
    port map (
      ADR2 => n_ACT_U8_sum(5),
      ADR4 => n_ACT_U5_cnt(5),
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(5)
    );
  n_ACT_state_FSM_FFd2_1_n_ACT_state_FSM_FFd2_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_state_FSM_FFd3_In,
      O => n_ACT_state_FSM_FFd3_In_0
    );
  n_ACT_state_FSM_FFd3_In3 : X_MUX2
    generic map(
      LOC => "SLICE_X25Y64"
    )
    port map (
      IA => N102,
      IB => N103,
      O => n_ACT_state_FSM_FFd3_In,
      SEL => n_ACT_state_FSM_FFd3_5425
    );
  n_ACT_state_FSM_FFd2_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd2_1_CLK,
      I => n_ACT_state_FSM_FFd2_In_5917,
      O => n_ACT_state_FSM_FFd2_1_5927,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_state_FSM_FFd3_In3_F : X_LUT6
    generic map(
      LOC => "SLICE_X25Y64",
      INIT => X"FECCFA00FA00FA00"
    )
    port map (
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_U9_res_d_0,
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR1 => n_ACT_U10_res_d_5899,
      ADR5 => n_ACT_state_FSM_FFd2_5426,
      ADR4 => backward_IBUF_5476,
      O => N102
    );
  n_ACT_state_FSM_FFd3_In3_G : X_LUT6
    generic map(
      LOC => "SLICE_X25Y64",
      INIT => X"33FF33FF33337777"
    )
    port map (
      ADR2 => '1',
      ADR5 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => forward_IBUF_5424,
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR0 => n_ACT_U7_f_5474,
      ADR1 => n_ACT_state_FSM_FFd4_5423,
      O => N103
    );
  n_ACT_Mmux_mult_w_in141 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y64",
      INIT => X"FCFBFCF930403060"
    )
    port map (
      ADR2 => n_ACT_U8_sum(3),
      ADR5 => n_ACT_U5_cnt(3),
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd2_1_5927,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(3)
    );
  n_ACT_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X25Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd1_CLK,
      I => n_ACT_state_FSM_FFd1_In,
      O => n_ACT_state_FSM_FFd1_5422,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_Mmux_mult_w_in41 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y64",
      INIT => X"FFFC0300FF23DC00"
    )
    port map (
      ADR3 => n_ACT_U8_sum(12),
      ADR4 => n_ACT_U5_cnt(12),
      ADR0 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(12)
    );
  n_ACT_U6_coeff_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y65",
      INIT => X"0202020230300300"
    )
    port map (
      ADR4 => n_ACT_U7_cnt(0),
      ADR5 => n_ACT_U7_cnt(1),
      ADR2 => n_ACT_U6_x_addr_1,
      ADR3 => n_ACT_U6_x_addr_3,
      ADR1 => n_ACT_U6_x_addr_0,
      ADR0 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_in1_1_Q
    );
  n_ACT_U8_sum_9 : X_SFF
    generic map(
      LOC => "SLICE_X25Y65",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_9_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_9_Q,
      O => n_ACT_U8_sum(9),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT201 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y65",
      INIT => X"DFCFDACF85C080C0"
    )
    port map (
      ADR4 => n_NL_acc_f_in(9),
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      ADR2 => n_ACT_add_ld_a_0,
      ADR1 => n_ACT_in1_1_Q,
      ADR5 => n_ACT_U8_a_19_b_19_add_0_OUT_9_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_9_Q
    );
  n_ACT_U8_sum_4 : X_SFF
    generic map(
      LOC => "SLICE_X25Y65",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_4_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_4_Q,
      O => n_ACT_U8_sum(4),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT151 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y65",
      INIT => X"F0FAF050FFDD0088"
    )
    port map (
      ADR1 => n_NL_acc_f_in(4),
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR5 => n_ACT_add_ld_a_0,
      ADR2 => n_ACT_in1_11_Q,
      ADR4 => n_ACT_U8_a_19_b_19_add_0_OUT_4_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_4_Q
    );
  n_ACT_U8_sum_7 : X_SFF
    generic map(
      LOC => "SLICE_X25Y65",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_7_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_7_Q,
      O => n_ACT_U8_sum(7),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT181 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y65",
      INIT => X"F0CCCCAAF0F0CCCC"
    )
    port map (
      ADR0 => n_NL_acc_f_in(7),
      ADR5 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_add_ld_a_0,
      ADR2 => n_ACT_in1_14_Q,
      ADR1 => n_ACT_U8_a_19_b_19_add_0_OUT_7_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_7_Q
    );
  n_ACT_U8_sum_1 : X_SFF
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_1_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_1_Q,
      O => n_ACT_U8_sum(1),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => X"FF00AAAABB88E2E2"
    )
    port map (
      ADR2 => n_NL_acc_f_in(1),
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_add_ld_a_0,
      ADR3 => n_ACT_in1_1_Q,
      ADR0 => n_ACT_U8_a_19_b_19_add_0_OUT_1_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_1_Q
    );
  n_ACT_U8_sum_5 : X_SFF
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_5_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_5_Q,
      O => n_ACT_U8_sum(5),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => X"FCFCE2FC3030E230"
    )
    port map (
      ADR0 => n_NL_acc_f_in(5),
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      ADR1 => n_ACT_add_ld_a_0,
      ADR5 => n_ACT_in1_1_Q,
      ADR2 => n_ACT_U8_a_19_b_19_add_0_OUT_5_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_5_Q
    );
  n_ACT_U8_sum_8 : X_SFF
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_8_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_8_Q,
      O => n_ACT_U8_sum(8),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT191 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => X"FF33CC00FDB96420"
    )
    port map (
      ADR2 => n_NL_acc_f_in(8),
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => n_ACT_state_FSM_FFd3_5425,
      ADR1 => n_ACT_add_ld_a_0,
      ADR3 => n_ACT_in1_10_Q,
      ADR4 => n_ACT_U8_a_19_b_19_add_0_OUT_8_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_8_Q
    );
  n_ACT_U8_sum_3 : X_SFF
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_3_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_3_Q,
      O => n_ACT_U8_sum(3),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT141 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y66",
      INIT => X"D8F5D8D8D8A0D8D8"
    )
    port map (
      ADR5 => n_NL_acc_f_in(3),
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR0 => n_ACT_add_ld_a_0,
      ADR1 => n_ACT_in1_10_Q,
      ADR2 => n_ACT_U8_a_19_b_19_add_0_OUT_3_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_3_Q
    );
  n_ACT_Mmux_mult_w_in191 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y67",
      INIT => X"EFEEEDED40444848"
    )
    port map (
      ADR1 => n_ACT_U8_sum(8),
      ADR5 => n_ACT_U5_cnt(8),
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd2_5426,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(8)
    );
  n_ACT_Mmux_mult_w_in71 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y67",
      INIT => X"FCEF0C40FCED0C48"
    )
    port map (
      ADR1 => n_ACT_U8_sum(15),
      ADR4 => n_ACT_U5_cnt(15),
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR0 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(15)
    );
  n_ACT_Mmux_mult_w_in31 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y67",
      INIT => X"FE04DD88FE04CDC8"
    )
    port map (
      ADR1 => n_ACT_U8_sum(11),
      ADR3 => n_ACT_U5_cnt(11),
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(11)
    );
  n_ACT_Mmux_mult_w_in21 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y67",
      INIT => X"FB40F960FA50F960"
    )
    port map (
      ADR2 => n_ACT_U8_sum(10),
      ADR3 => n_ACT_U5_cnt(10),
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(10)
    );
  n_ACT_Mmux_mult_w_in91 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y68",
      INIT => X"FFCEFCCF00C40CC0"
    )
    port map (
      ADR1 => n_ACT_U8_sum(17),
      ADR5 => n_ACT_U5_cnt(17),
      ADR0 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR2 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(17)
    );
  n_ACT_Mmux_mult_w_in81 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y68",
      INIT => X"F0E2F0E2AAF0AAB8"
    )
    port map (
      ADR0 => n_ACT_U8_sum(16),
      ADR2 => n_ACT_U5_cnt(16),
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR5 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(16)
    );
  n_ACT_Mmux_mult_in121 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y68",
      INIT => X"FFFFFFAF000000A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_U8_sum(1),
      ADR5 => n_ACT_U2_cnt(1),
      ADR2 => n_ACT_state_FSM_FFd1_1_5926,
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_1_5928,
      O => n_ACT_mult_in(1)
    );
  n_ACT_U8_sum_16 : X_SFF
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_16_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_16_Q,
      O => n_ACT_U8_sum(16),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => X"FF2FFD2DD202D000"
    )
    port map (
      ADR4 => n_NL_acc_f_in(16),
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR1 => n_ACT_state_FSM_FFd3_5425,
      ADR2 => n_ACT_add_ld_a_0,
      ADR3 => n_ACT_in1_16_Q,
      ADR5 => n_ACT_U8_a_19_b_19_add_0_OUT_16_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_16_Q
    );
  n_ACT_U6_coeff_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => X"5656020256560203"
    )
    port map (
      ADR2 => n_ACT_U7_cnt(0),
      ADR1 => n_ACT_U7_cnt(1),
      ADR4 => n_ACT_U6_x_addr_1,
      ADR5 => n_ACT_U6_x_addr_3,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR3 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_in1_10_Q
    );
  n_ACT_U8_sum_15 : X_SFF
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_15_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_15_Q,
      O => n_ACT_U8_sum(15),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => X"FAE4FAFA50E45050"
    )
    port map (
      ADR1 => n_NL_acc_f_in(15),
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR0 => n_ACT_add_ld_a_0,
      ADR5 => n_ACT_in1_10_Q,
      ADR2 => n_ACT_U8_a_19_b_19_add_0_OUT_15_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_15_Q
    );
  n_ACT_U8_sum_17 : X_SFF
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_17_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_17_Q,
      O => n_ACT_U8_sum(17),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => X"CFFAC00ACFCFC0C0"
    )
    port map (
      ADR0 => n_NL_acc_f_in(17),
      ADR5 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR2 => n_ACT_add_ld_a_0,
      ADR1 => n_ACT_in1_16_Q,
      ADR4 => n_ACT_U8_a_19_b_19_add_0_OUT_17_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_17_Q
    );
  n_ACT_Mmux_mult_in81 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => X"F0F0F0F0F0F0AAF0"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_U8_sum(16),
      ADR2 => n_ACT_U2_cnt(16),
      ADR3 => n_ACT_state_FSM_FFd1_5422,
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR5 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(16)
    );
  n_ACT_U6_coeff_19_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => X"4141414040414040"
    )
    port map (
      ADR3 => n_ACT_U7_cnt(0),
      ADR1 => n_ACT_U7_cnt(1),
      ADR2 => n_ACT_U6_x_addr_1,
      ADR4 => n_ACT_U6_x_addr_3,
      ADR0 => n_ACT_U6_x_addr_0,
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_in1_16_Q
    );
  n_ACT_U6_x_addr_2_x_addr_3_AND_10_o5 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => X"33F3B3F333333333"
    )
    port map (
      ADR1 => n_ACT_U2_cnt(19),
      ADR0 => n_ACT_U2_cnt(12),
      ADR2 => N45,
      ADR3 => n_ACT_U6_x_addr_33,
      ADR4 => n_ACT_U6_x_addr_332_5919,
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o4_5933,
      O => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o
    );
  n_ACT_U6_x_addr_332_n_ACT_U6_x_addr_332_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  n_ACT_U6_x_addr_333 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"000100000F0F0F0F"
    )
    port map (
      ADR1 => n_ACT_U2_cnt(9),
      ADR0 => n_ACT_U2_cnt(8),
      ADR3 => n_ACT_U2_cnt(7),
      ADR5 => n_ACT_U2_cnt(10),
      ADR2 => n_ACT_U2_cnt(11),
      ADR4 => n_ACT_U6_x_addr_331_5944,
      O => n_ACT_U6_x_addr_332_5919
    );
  n_ACT_U6_x_addr_334 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"DFFF000055FF0000"
    )
    port map (
      ADR4 => n_ACT_U2_cnt(19),
      ADR3 => n_ACT_U2_cnt(18),
      ADR0 => n_ACT_U2_cnt(17),
      ADR2 => n_ACT_U2_cnt(12),
      ADR5 => n_ACT_U6_x_addr_33,
      ADR1 => n_ACT_U6_x_addr_332_5919,
      O => n_ACT_U6_x_addr_3
    );
  n_ACT_U6_x_addr_035_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"0000FFEC0000FFEC"
    )
    port map (
      ADR4 => n_ACT_U2_cnt(19),
      ADR1 => n_ACT_U2_cnt(18),
      ADR0 => n_ACT_U2_cnt(12),
      ADR3 => n_ACT_U2_cnt(17),
      ADR2 => n_ACT_U6_x_addr_03,
      ADR5 => '1',
      O => N50
    );
  n_ACT_U6_x_addr_035_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"0000FFFC"
    )
    port map (
      ADR4 => n_ACT_U2_cnt(19),
      ADR1 => n_ACT_U2_cnt(18),
      ADR0 => '1',
      ADR3 => n_ACT_U2_cnt(17),
      ADR2 => n_ACT_U6_x_addr_03,
      O => N51
    );
  n_ACT_U6_x_addr_031 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y71",
      INIT => X"A0A0000000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => n_ACT_U2_cnt(15),
      ADR0 => n_ACT_U2_cnt(16),
      ADR5 => n_ACT_U2_cnt(13),
      ADR4 => n_ACT_U2_cnt(14),
      O => n_ACT_U6_x_addr_03
    );
  n_ACT_state_FSM_FFd4_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y63",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd4_1_CLK,
      I => n_ACT_state_FSM_FFd4_In,
      O => n_ACT_state_FSM_FFd4_1_5925,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_U7_f_n_ACT_U7_f_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_add_en,
      O => n_ACT_add_en_0
    );
  n_ACT_U7_f_n_ACT_U7_f_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  n_ACT_Mmux_mult_w_in171 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y64",
      INIT => X"FAEFFAEB0A200A28"
    )
    port map (
      ADR0 => n_ACT_U8_sum(6),
      ADR5 => n_ACT_U5_cnt(6),
      ADR4 => n_ACT_state_FSM_FFd4_5423,
      ADR1 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(6)
    );
  n_ACT_Mmux_mult_w_in131 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y64",
      INIT => X"FDFC080CEDED4848"
    )
    port map (
      ADR1 => n_ACT_U8_sum(2),
      ADR4 => n_ACT_U5_cnt(2),
      ADR3 => n_ACT_state_FSM_FFd4_1_5925,
      ADR5 => n_ACT_state_FSM_FFd1_5422,
      ADR0 => n_ACT_state_FSM_FFd2_1_5927,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(2)
    );
  n_ACT_Mmux_acc_f_reset0111 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y64",
      INIT => X"5F5000055F500005"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd1_5422,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      ADR5 => '1',
      O => n_ACT_add_reset
    );
  n_ACT_Mmux_add_en11 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y64",
      INIT => X"555500F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd2_5426,
      ADR3 => n_ACT_state_FSM_FFd1_5422,
      ADR0 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_add_en
    );
  n_ACT_U7_f : X_FF
    generic map(
      LOC => "SLICE_X26Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_cnt_en,
      CLK => NlwBufferSignal_n_ACT_U7_f_CLK,
      I => n_ACT_U7_cnt_1_GND_17_o_equal_4_o,
      O => n_ACT_U7_f_5474,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_U7_cnt_1_GND_17_o_equal_4_o_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y64",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U7_cnt(0),
      ADR4 => n_ACT_U7_cnt(1),
      ADR5 => '1',
      O => n_ACT_U7_cnt_1_GND_17_o_equal_4_o
    );
  n_ACT_U6_coeff_6_1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y64",
      INIT => X"000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => n_ACT_U7_cnt(0),
      ADR4 => n_ACT_U7_cnt(1),
      O => N6
    );
  n_ACT_U8_sum_2 : X_SFF
    generic map(
      LOC => "SLICE_X26Y65",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_2_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_2_Q,
      O => n_ACT_U8_sum(2),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT131 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y65",
      INIT => X"FF00F5A0F0F0D8D8"
    )
    port map (
      ADR1 => n_NL_acc_f_in(2),
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      ADR5 => n_ACT_add_ld_a_0,
      ADR3 => n_ACT_in1_14_Q,
      ADR2 => n_ACT_U8_a_19_b_19_add_0_OUT_2_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_2_Q
    );
  n_ACT_U8_sum_6 : X_SFF
    generic map(
      LOC => "SLICE_X26Y65",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_6_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_6_Q,
      O => n_ACT_U8_sum(6),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT171 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y65",
      INIT => X"FBAE08AEFBA208A2"
    )
    port map (
      ADR5 => n_NL_acc_f_in(6),
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      ADR3 => n_ACT_add_ld_a_0,
      ADR4 => n_ACT_in1_10_Q,
      ADR0 => n_ACT_U8_a_19_b_19_add_0_OUT_6_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_6_Q
    );
  n_ACT_U6_Mmux_coeff11 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y65",
      INIT => X"0A0F5A5A0A005A55"
    )
    port map (
      ADR1 => '1',
      ADR4 => n_ACT_U7_cnt(0),
      ADR0 => n_ACT_U7_cnt(1),
      ADR3 => n_ACT_U6_x_addr_1,
      ADR2 => n_ACT_U6_x_addr_0,
      ADR5 => n_ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => n_ACT_in1_0_Q
    );
  n_ACT_U8_sum_0 : X_SFF
    generic map(
      LOC => "SLICE_X26Y65",
      INIT => '0'
    )
    port map (
      CE => n_ACT_add_en_0,
      CLK => NlwBufferSignal_n_ACT_U8_sum_0_CLK,
      I => n_ACT_U8_sum_19_a_19_mux_3_OUT_0_Q,
      O => n_ACT_U8_sum(0),
      SRST => n_ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_U8_Mmux_sum_19_a_19_mux_3_OUT110 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y65",
      INIT => X"EEEEB8EE2222B822"
    )
    port map (
      ADR2 => n_NL_acc_f_in(0),
      ADR3 => n_ACT_state_FSM_FFd2_5426,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      ADR1 => n_ACT_add_ld_a_0,
      ADR5 => n_ACT_in1_0_Q,
      ADR0 => n_ACT_U8_a_19_b_19_add_0_OUT_0_0,
      O => n_ACT_U8_sum_19_a_19_mux_3_OUT_0_Q
    );
  n_ACT_Mmux_mult_w_in121 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => X"FFF4FFA50B005A00"
    )
    port map (
      ADR3 => n_ACT_U8_sum(1),
      ADR5 => n_ACT_U5_cnt(1),
      ADR1 => n_ACT_state_FSM_FFd4_1_5925,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR0 => n_ACT_state_FSM_FFd2_1_5927,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(1)
    );
  n_ACT_Mmux_mult_w_in110 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y64",
      INIT => X"FFCEFFC331003C00"
    )
    port map (
      ADR3 => n_ACT_U8_sum(0),
      ADR5 => n_ACT_U5_cnt(0),
      ADR0 => n_ACT_state_FSM_FFd4_1_5925,
      ADR4 => n_ACT_state_FSM_FFd1_1_5926,
      ADR2 => n_ACT_state_FSM_FFd2_1_5927,
      ADR1 => n_ACT_state_FSM_FFd3_1_5928,
      O => n_ACT_mult_w_in(0)
    );
  n_ACT_Mmux_mult_in111 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y64",
      INIT => X"FFFF0000FAFF0A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_U8_sum(0),
      ADR4 => n_ACT_U2_cnt(0),
      ADR3 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => n_ACT_state_FSM_FFd4_5423,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(0)
    );
  n_ACT_Mmux_mult_w_in181 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y64",
      INIT => X"FDFCEDED080C4848"
    )
    port map (
      ADR1 => n_ACT_U8_sum(7),
      ADR5 => n_ACT_U5_cnt(7),
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR0 => n_ACT_state_FSM_FFd2_5426,
      ADR2 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_w_in(7)
    );
  n_ACT_state_FSM_FFd3_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_n_ACT_state_FSM_FFd3_1_CLK,
      I => n_ACT_state_FSM_FFd3_In_0,
      O => n_ACT_state_FSM_FFd3_1_5928,
      RST => reset_IBUF_5430,
      SET => GND
    );
  N36_N36_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b,
      O => n_ACT_U1_U1_blk00000001_sig0000006b_0
    );
  N36_N36_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006a,
      O => n_ACT_U1_U1_blk00000001_sig0000006a_0
    );
  n_ACT_U6_coeff_19_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y70",
      INIT => X"0000A0A00000A0A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => n_ACT_U7_cnt(1),
      ADR0 => n_ACT_U6_x_addr_1,
      ADR4 => n_ACT_U6_x_addr_0,
      O => N36
    );
  n_ACT_U1_U1_blk00000001_blk00000004 : X_CARRY4
    generic map(
      LOC => "SLICE_X27Y70"
    )
    port map (
      CI => n_ACT_U1_U1_blk00000001_sig00000082,
      CYINIT => '0',
      CO(3) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_3_UNCONNECTED,
      CO(2) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_2_UNCONNECTED,
      CO(1) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_1_UNCONNECTED,
      CO(0) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_CO_0_UNCONNECTED,
      DI(3) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_DI_3_UNCONNECTED,
      DI(2) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_DI_2_UNCONNECTED,
      DI(1) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_DI_1_UNCONNECTED,
      DI(0) => n_ACT_U1_U1_blk00000001_sig00000096,
      O(3) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_O_3_UNCONNECTED,
      O(2) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_O_2_UNCONNECTED,
      O(1) => n_ACT_U1_U1_blk00000001_sig0000006b,
      O(0) => n_ACT_U1_U1_blk00000001_sig0000006a,
      S(3) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_S_3_UNCONNECTED,
      S(2) => NLW_n_ACT_U1_U1_blk00000001_blk00000004_S_2_UNCONNECTED,
      S(1) => n_ACT_U1_U1_blk00000001_sig0000006c,
      S(0) => n_ACT_U1_U1_blk00000001_sig0000006d
    );
  n_ACT_U1_U1_blk00000001_blk0000004f : X_LUT6
    generic map(
      LOC => "SLICE_X27Y70",
      INIT => X"33330000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => n_ACT_mult_w_in(19),
      ADR5 => n_ACT_mult_in(1),
      ADR1 => n_ACT_mult_in(0),
      O => n_ACT_U1_U1_blk00000001_sig0000006c
    );
  n_ACT_U1_U1_blk00000001_blk00000050 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y70",
      INIT => X"0AA00AA00AA00AA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => n_ACT_mult_w_in(19),
      ADR3 => n_ACT_mult_in(1),
      ADR2 => n_ACT_mult_in(0),
      ADR5 => '1',
      O => n_ACT_U1_U1_blk00000001_sig0000006d
    );
  n_ACT_U1_U1_blk00000001_blk0000002f : X_LUT5
    generic map(
      LOC => "SLICE_X27Y70",
      INIT => X"AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => n_ACT_mult_w_in(19),
      ADR3 => n_ACT_mult_in(1),
      ADR4 => '1',
      O => n_ACT_U1_U1_blk00000001_sig00000096
    );
  n_ACT_U10_res_d_n_ACT_U10_res_d_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U9_res_d_5317,
      O => n_ACT_U9_res_d_0
    );
  n_ACT_U10_res_d : X_SFF
    generic map(
      LOC => "SLICE_X28Y63",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U10_clr_inv,
      CLK => NlwBufferSignal_n_ACT_U10_res_d_CLK,
      I => NlwBufferSignal_n_ACT_U10_res_d_IN,
      O => n_ACT_U10_res_d_5899,
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  forward_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X28Y63",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => forward_IBUF_5424,
      O => forward_IBUF_rt_5313
    );
  n_ACT_U9_res_d : X_SFF
    generic map(
      LOC => "SLICE_X28Y63",
      INIT => '0'
    )
    port map (
      CE => n_ACT_U10_clr_inv,
      CLK => NlwBufferSignal_n_ACT_U9_res_d_CLK,
      I => forward_IBUF_rt_5313,
      O => n_ACT_U9_res_d_5317,
      SRST => reset_IBUF_5430,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  n_ACT_Mmux_mult_in191 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y67",
      INIT => X"FFFFFFAF000000A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => n_ACT_U8_sum(8),
      ADR5 => n_ACT_U2_cnt(8),
      ADR2 => n_ACT_state_FSM_FFd1_5422,
      ADR3 => n_ACT_state_FSM_FFd4_5423,
      ADR4 => n_ACT_state_FSM_FFd3_5425,
      O => n_ACT_mult_in(8)
    );
  n_ACT_mult_reset_n_ACT_mult_reset_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_f_reset0,
      O => n_ACT_acc_f_reset0_0
    );
  n_ACT_Mmux_acc_f_reset0121 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y69",
      INIT => X"0CCC00F30CCC00F3"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      ADR5 => '1',
      O => n_ACT_mult_reset
    );
  n_ACT_Mmux_acc_f_reset011 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y69",
      INIT => X"0CCC00CF"
    )
    port map (
      ADR0 => '1',
      ADR1 => n_ACT_state_FSM_FFd2_5426,
      ADR2 => n_ACT_state_FSM_FFd4_5423,
      ADR3 => n_ACT_state_FSM_FFd3_5425,
      ADR4 => n_ACT_state_FSM_FFd1_5422,
      O => n_ACT_acc_f_reset0
    );
  n_ACT_U10_clr_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y63",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => reset_IBUF_5430,
      O => n_ACT_U10_clr_inv
    );
  n_ACT_U7_cnt_1_n_ACT_U7_cnt_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U7_cnt_0_pack_1,
      O => n_ACT_U7_cnt(0)
    );
  n_ACT_U7_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y64",
      INIT => '1'
    )
    port map (
      CE => n_ACT_cnt_en,
      CLK => NlwBufferSignal_n_ACT_U7_cnt_1_CLK,
      I => n_ACT_U7_GND_17_o_PWR_18_o_mux_2_OUT(1),
      O => n_ACT_U7_cnt(1),
      SET => reset_IBUF_5430,
      RST => GND
    );
  n_ACT_U7_Mmux_GND_17_o_PWR_18_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y64",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => n_ACT_U7_cnt(1),
      ADR2 => n_ACT_U7_cnt(0),
      ADR5 => '1',
      O => n_ACT_U7_GND_17_o_PWR_18_o_mux_2_OUT(1)
    );
  n_ACT_U7_Mmux_GND_17_o_PWR_18_o_mux_2_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y64",
      INIT => X"0F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => n_ACT_U7_cnt(1),
      ADR2 => n_ACT_U7_cnt(0),
      O => n_ACT_U7_GND_17_o_PWR_18_o_mux_2_OUT(0)
    );
  n_ACT_U7_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y64",
      INIT => '0'
    )
    port map (
      CE => n_ACT_cnt_en,
      CLK => NlwBufferSignal_n_ACT_U7_cnt_0_CLK,
      I => n_ACT_U7_GND_17_o_PWR_18_o_mux_2_OUT(0),
      O => n_ACT_U7_cnt_0_pack_1,
      RST => reset_IBUF_5430,
      SET => GND
    );
  n_ACT_U6_coeff_7_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y67",
      INIT => X"0303300003033003"
    )
    port map (
      ADR0 => '1',
      ADR2 => n_ACT_U7_cnt(0),
      ADR1 => n_ACT_U7_cnt(1),
      ADR3 => n_ACT_U6_x_addr_1,
      ADR5 => n_ACT_U6_x_addr_3,
      ADR4 => n_ACT_U6_x_addr_0,
      O => N18
    );
  n_ACT_U6_coeff_7_1_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y69",
      INIT => X"000000FF0F0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => n_ACT_U7_cnt(0),
      ADR5 => n_ACT_U7_cnt(1),
      ADR3 => n_ACT_U6_x_addr_1,
      ADR4 => n_ACT_U6_x_addr_0,
      O => N34
    );
  NlwBufferBlock_n_NL_U4_weight_reg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_3_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_2_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_1_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_0_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_7_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_6_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_5_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_4_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_11_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_10_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_9_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_8_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_15_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_14_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_13_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_12_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_19_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_18_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_17_CLK
    );
  NlwBufferBlock_n_NL_U4_weight_reg_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U4_weight_reg_16_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_3_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_2_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_1_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_0_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_7_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_6_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_5_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_4_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_11_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_10_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_9_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_8_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_15_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_14_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_13_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_12_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_19_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_18_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_17_CLK
    );
  NlwBufferBlock_n_NL_U2_cnt_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U2_cnt_16_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_3_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_2_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_1_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_0_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_7_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_6_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_5_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_4_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_11_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_10_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_9_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_8_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_15_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_14_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_13_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_12_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_19_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_18_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_17_CLK
    );
  NlwBufferBlock_n_ACT_U2_cnt_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U2_cnt_16_CLK
    );
  NlwBufferBlock_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_in1_10_Q,
      O => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q
    );
  NlwBufferBlock_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_in1_11_Q,
      O => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q
    );
  NlwBufferBlock_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_in1_14_Q,
      O => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_3_Q
    );
  NlwBufferBlock_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_in1_11_Q,
      O => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_3_Q
    );
  NlwBufferBlock_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_in1_14_Q,
      O => NlwBufferSignal_n_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_2_Q
    );
  NlwBufferBlock_n_ACT_U5_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_3_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_2_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_1_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_0_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_7_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_6_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_5_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_4_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_11_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_10_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_9_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_8_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_15_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_14_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_13_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_12_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_19_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_18_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_17_CLK
    );
  NlwBufferBlock_n_ACT_U5_cnt_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U5_cnt_16_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_3_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_2_CLK
    );
  NlwBufferBlock_n_ACT_U4_Maccum_weight_reg_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U4_weight_reg(0),
      O => NlwBufferSignal_n_ACT_U4_Maccum_weight_reg_cy_3_DI_0_Q
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_1_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_0_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_7_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_6_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_5_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_4_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_11_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_10_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_9_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_8_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_15_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_14_CLK
    );
  NlwBufferBlock_n_ACT_U4_Maccum_weight_reg_cy_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U4_weight_reg(12),
      O => NlwBufferSignal_n_ACT_U4_Maccum_weight_reg_cy_15_DI_0_Q
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_13_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_12_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_19_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_18_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_17_CLK
    );
  NlwBufferBlock_n_ACT_U4_weight_reg_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U4_weight_reg_16_CLK
    );
  NlwBufferBlock_output_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(10),
      O => NlwBufferSignal_output_10_OBUF_I
    );
  NlwBufferBlock_output_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(11),
      O => NlwBufferSignal_output_11_OBUF_I
    );
  NlwBufferBlock_output_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(12),
      O => NlwBufferSignal_output_12_OBUF_I
    );
  NlwBufferBlock_output_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(13),
      O => NlwBufferSignal_output_13_OBUF_I
    );
  NlwBufferBlock_output_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(14),
      O => NlwBufferSignal_output_14_OBUF_I
    );
  NlwBufferBlock_output_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(15),
      O => NlwBufferSignal_output_15_OBUF_I
    );
  NlwBufferBlock_output_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(16),
      O => NlwBufferSignal_output_16_OBUF_I
    );
  NlwBufferBlock_output_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(17),
      O => NlwBufferSignal_output_17_OBUF_I
    );
  NlwBufferBlock_output_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(18),
      O => NlwBufferSignal_output_18_OBUF_I
    );
  NlwBufferBlock_output_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(19),
      O => NlwBufferSignal_output_19_OBUF_I
    );
  NlwBufferBlock_output_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(0),
      O => NlwBufferSignal_output_0_OBUF_I
    );
  NlwBufferBlock_output_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(1),
      O => NlwBufferSignal_output_1_OBUF_I
    );
  NlwBufferBlock_output_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(2),
      O => NlwBufferSignal_output_2_OBUF_I
    );
  NlwBufferBlock_output_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(3),
      O => NlwBufferSignal_output_3_OBUF_I
    );
  NlwBufferBlock_output_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(4),
      O => NlwBufferSignal_output_4_OBUF_I
    );
  NlwBufferBlock_output_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(5),
      O => NlwBufferSignal_output_5_OBUF_I
    );
  NlwBufferBlock_output_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(6),
      O => NlwBufferSignal_output_6_OBUF_I
    );
  NlwBufferBlock_output_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(7),
      O => NlwBufferSignal_output_7_OBUF_I
    );
  NlwBufferBlock_output_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(8),
      O => NlwBufferSignal_output_8_OBUF_I
    );
  NlwBufferBlock_output_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_acc_b_in(9),
      O => NlwBufferSignal_output_9_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_5858,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_43_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_43_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_42_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_42_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_41_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_41_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_40_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_40_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_35_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_35_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_34_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_34_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_33_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_33_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_31_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_31_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_30_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_30_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_29_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_29_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_27_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_27_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_26_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_26_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_25_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_25_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_24_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_24_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_23_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_23_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_22_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_22_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_21_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_21_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_20_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_20_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_11_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000063_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_11_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_C_10_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_U1_U1_blk00000001_sig00000062_0,
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_C_10_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_B_15_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_in(17),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_15_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_B_10_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_in(12),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_10_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_B_5_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_in(7),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_5_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_B_4_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_in(6),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_4_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_B_2_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_in(4),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_B_2_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_A_13_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_w_in(13),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_13_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_A_9_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_w_in(9),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_9_Q
    );
  NlwBufferBlock_n_ACT_U1_U1_blk00000001_blk00000046_A_3_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_mult_w_in(3),
      O => NlwBufferSignal_n_ACT_U1_U1_blk00000001_blk00000046_A_3_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_43_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_43_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_42_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_42_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_41_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_41_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_40_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_40_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_39_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_39_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_35_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_35_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_34_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_34_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_33_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_33_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_31_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_31_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_30_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_30_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_29_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_29_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_26_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_26_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_25_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_25_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_24_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_24_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_23_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_23_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_22_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_22_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_21_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_21_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_C_20_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_C_20_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_B_14_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_mult_in(16),
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_B_14_Q
    );
  NlwBufferBlock_n_NL_U1_U1_blk00000001_blk00000046_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_NL_mult_in(2),
      O => NlwBufferSignal_n_NL_U1_U1_blk00000001_blk00000046_B_0_Q
    );
  NlwBufferBlock_n_NL_update_reg_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_update_reg_CLK
    );
  NlwBufferBlock_n_NL_update_reg_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => update_IBUF_5466,
      O => NlwBufferSignal_n_NL_update_reg_IN
    );
  NlwBufferBlock_n_ACT_U9_d_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U9_d_2_CLK
    );
  NlwBufferBlock_n_ACT_U9_d_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U9_d_0_CLK
    );
  NlwBufferBlock_n_NL_U10_res_d_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U10_res_d_CLK
    );
  NlwBufferBlock_n_NL_U10_res_d_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => backward_IBUF_5476,
      O => NlwBufferSignal_n_NL_U10_res_d_IN
    );
  NlwBufferBlock_n_ACT_U1_ready_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U1_ready_CLK
    );
  NlwBufferBlock_n_ACT_U10_d_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U10_d_0_CLK
    );
  NlwBufferBlock_n_NL_U9_d_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U9_d_0_CLK
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd4_CLK
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd3_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => n_ACT_state_FSM_FFd3_In_0,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd3_IN
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd1_1_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_12_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_11_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_14_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_10_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_13_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_19_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_18_CLK
    );
  NlwBufferBlock_n_NL_U9_res_d_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_NL_U9_res_d_CLK
    );
  NlwBufferBlock_n_NL_U9_res_d_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => forward_IBUF_5424,
      O => NlwBufferSignal_n_NL_U9_res_d_IN
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd2_1_CLK
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_9_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_4_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_7_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_1_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_5_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_8_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_3_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_16_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_15_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_17_CLK
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd4_1_CLK
    );
  NlwBufferBlock_n_ACT_U7_f_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U7_f_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_2_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_6_CLK
    );
  NlwBufferBlock_n_ACT_U8_sum_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U8_sum_0_CLK
    );
  NlwBufferBlock_n_ACT_state_FSM_FFd3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_state_FSM_FFd3_1_CLK
    );
  NlwBufferBlock_n_ACT_U10_res_d_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U10_res_d_CLK
    );
  NlwBufferBlock_n_ACT_U10_res_d_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => backward_IBUF_5476,
      O => NlwBufferSignal_n_ACT_U10_res_d_IN
    );
  NlwBufferBlock_n_ACT_U9_res_d_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U9_res_d_CLK
    );
  NlwBufferBlock_n_ACT_U7_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U7_cnt_1_CLK
    );
  NlwBufferBlock_n_ACT_U7_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_n_ACT_U7_cnt_0_CLK
    );
  NlwBlock_wrapper_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_wrapper_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

