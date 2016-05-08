--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: act_wrapper_timesim.vhd
-- /___/   /\     Timestamp: Sun May 08 11:23:04 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter "C:/Users/Urs Mobile/Dropbox/Code/FPNNV1/iseconfig/filter.filter" -intstyle ise -s 2 -pcf act_wrapper.pcf -rpw 100 -tpw 0 -ar Structure -tm act_wrapper -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim act_wrapper.ncd act_wrapper_timesim.vhd 
-- Device	: 6vlx75tff484-2 (PRODUCTION 1.17 2013-10-13)
-- Input file	: act_wrapper.ncd
-- Output file	: C:\Users\Urs Mobile\Dropbox\Code\FPNNV1\netgen\par\act_wrapper_timesim.vhd
-- # of Entities	: 1
-- Design Name	: act_wrapper
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

entity act_wrapper is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    still_fwd : in STD_LOGIC := 'X'; 
    foward : in STD_LOGIC := 'X'; 
    backward : in STD_LOGIC := 'X'; 
    broadcast : in STD_LOGIC := 'X'; 
    fwd_pred : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    bck_succ : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    x_pred_0 : in STD_LOGIC_VECTOR ( 19 downto 0 ); 
    b_succ_0 : in STD_LOGIC_VECTOR ( 19 downto 0 ); 
    y : out STD_LOGIC_VECTOR ( 19 downto 0 ); 
    fwd_succ : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    back_pred : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end act_wrapper;

architecture Structure of act_wrapper is
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q : STD_LOGIC; 
  signal ACT_acc_f_reset0_0 : STD_LOGIC; 
  signal ACT_acc_f_reset1 : STD_LOGIC; 
  signal ACT_omx_out_0_0 : STD_LOGIC; 
  signal ACT_state_FSM_FFd4_4762 : STD_LOGIC; 
  signal ACT_state_FSM_FFd3_4763 : STD_LOGIC; 
  signal ACT_state_FSM_FFd1_4764 : STD_LOGIC; 
  signal ACT_add_ld_a_0 : STD_LOGIC; 
  signal ACT_cnt_en : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal ACT_U7_f_4772 : STD_LOGIC; 
  signal reset_IBUF_4773 : STD_LOGIC; 
  signal ACT_U10_clr_e_AND_29_o : STD_LOGIC; 
  signal bck_succ_2_IBUF_4776 : STD_LOGIC; 
  signal bck_succ_3_IBUF_4778 : STD_LOGIC; 
  signal ACT_U9_clr_e_AND_29_o_0 : STD_LOGIC; 
  signal fwd_pred_2_IBUF_4781 : STD_LOGIC; 
  signal fwd_pred_3_IBUF_4784 : STD_LOGIC; 
  signal ACT_mult_reset : STD_LOGIC; 
  signal ACT_state_FSM_FFd2_4786 : STD_LOGIC; 
  signal ACT_add_reset : STD_LOGIC; 
  signal ACT_add_en_0 : STD_LOGIC; 
  signal ACT_mult_enable_0 : STD_LOGIC; 
  signal ACT_state_FSM_FFd1_In : STD_LOGIC; 
  signal foward_IBUF_4791 : STD_LOGIC; 
  signal ACT_acc_t_en_0 : STD_LOGIC; 
  signal y_1_OBUF_4793 : STD_LOGIC; 
  signal y_2_OBUF_4795 : STD_LOGIC; 
  signal y_3_OBUF_4797 : STD_LOGIC; 
  signal ACT_U4_Maccum_weight_reg_cy_3_Q_4798 : STD_LOGIC; 
  signal y_4_OBUF_4800 : STD_LOGIC; 
  signal y_5_OBUF_4802 : STD_LOGIC; 
  signal y_6_OBUF_4804 : STD_LOGIC; 
  signal y_7_OBUF_4806 : STD_LOGIC; 
  signal ACT_U4_Maccum_weight_reg_cy_7_Q_4807 : STD_LOGIC; 
  signal y_8_OBUF_4809 : STD_LOGIC; 
  signal y_9_OBUF_4811 : STD_LOGIC; 
  signal y_10_OBUF_4813 : STD_LOGIC; 
  signal y_11_OBUF_4815 : STD_LOGIC; 
  signal ACT_U4_Maccum_weight_reg_cy_11_Q_4816 : STD_LOGIC; 
  signal y_12_OBUF_4818 : STD_LOGIC; 
  signal y_13_OBUF_4820 : STD_LOGIC; 
  signal y_14_OBUF_4822 : STD_LOGIC; 
  signal y_15_OBUF_4824 : STD_LOGIC; 
  signal ACT_U4_Maccum_weight_reg_cy_15_Q_4825 : STD_LOGIC; 
  signal y_16_OBUF_4827 : STD_LOGIC; 
  signal y_17_OBUF_4829 : STD_LOGIC; 
  signal y_18_OBUF_4831 : STD_LOGIC; 
  signal y_19_OBUF_4833 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000058_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000092 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000059_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005a_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005b_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005c_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000008e : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005d_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005e_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005f_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000060_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000008a : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000061_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000062_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000063_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000064_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000086 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000065_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000066_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000067_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000068_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000082 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000069_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006a_0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006b_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_B_0_Q : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal ACT_omx_out_1_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal ACT_omx_out_2_0 : STD_LOGIC; 
  signal ACT_U2_n0042_inv : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_4891 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal ACT_omx_out_3_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal ACT_omx_out_4_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal ACT_omx_out_5_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal ACT_omx_out_6_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_4908 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal ACT_omx_out_7_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal ACT_omx_out_8_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal ACT_omx_out_9_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal ACT_omx_out_10_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_4925 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal ACT_omx_out_11_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal ACT_omx_out_12_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal ACT_omx_out_13_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal ACT_omx_out_14_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_4942 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal ACT_omx_out_15_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal ACT_omx_out_16_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal ACT_omx_out_17_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal ACT_omx_out_18_0 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal ACT_omx_out_19_0 : STD_LOGIC; 
  signal y_0_OBUF_4963 : STD_LOGIC; 
  signal ACT_U6_x_addr_1 : STD_LOGIC; 
  signal ACT_U6_x_addr_0 : STD_LOGIC; 
  signal ACT_U6_x_addr_2_x_addr_3_AND_10_o : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_0_0 : STD_LOGIC; 
  signal ACT_in1_0_Q : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_1_0 : STD_LOGIC; 
  signal ACT_in1_1_Q : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_2_0 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q_4975 : STD_LOGIC; 
  signal ACT_in1_14_Q : STD_LOGIC; 
  signal ACT_U6_x_addr_3 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_3_0 : STD_LOGIC; 
  signal ACT_in1_10_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_4_0 : STD_LOGIC; 
  signal ACT_in1_11_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_5_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_6_0 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q_4984 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_7_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_8_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_9_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_10_0 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q_4989 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_11_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_12_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_13_0 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_14_0 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q_4995 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_15_0 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_16_0 : STD_LOGIC; 
  signal ACT_in1_16_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_17_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_18_0 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_19_0 : STD_LOGIC; 
  signal b_succ_0_0_IBUF_5004 : STD_LOGIC; 
  signal b_succ_0_1_IBUF_5007 : STD_LOGIC; 
  signal b_succ_0_2_IBUF_5009 : STD_LOGIC; 
  signal ACT_acc_b_en : STD_LOGIC; 
  signal ACT_U5_Maccum_cnt_cy_3_Q_5012 : STD_LOGIC; 
  signal b_succ_0_3_IBUF_5013 : STD_LOGIC; 
  signal b_succ_0_4_IBUF_5015 : STD_LOGIC; 
  signal b_succ_0_5_IBUF_5017 : STD_LOGIC; 
  signal b_succ_0_6_IBUF_5019 : STD_LOGIC; 
  signal ACT_U5_Maccum_cnt_cy_7_Q_5021 : STD_LOGIC; 
  signal b_succ_0_7_IBUF_5022 : STD_LOGIC; 
  signal b_succ_0_8_IBUF_5024 : STD_LOGIC; 
  signal b_succ_0_9_IBUF_5026 : STD_LOGIC; 
  signal b_succ_0_10_IBUF_5028 : STD_LOGIC; 
  signal ACT_U5_Maccum_cnt_cy_11_Q_5030 : STD_LOGIC; 
  signal b_succ_0_11_IBUF_5031 : STD_LOGIC; 
  signal b_succ_0_12_IBUF_5033 : STD_LOGIC; 
  signal b_succ_0_13_IBUF_5035 : STD_LOGIC; 
  signal b_succ_0_14_IBUF_5037 : STD_LOGIC; 
  signal ACT_U5_Maccum_cnt_cy_15_Q_5039 : STD_LOGIC; 
  signal b_succ_0_15_IBUF_5040 : STD_LOGIC; 
  signal b_succ_0_16_IBUF_5042 : STD_LOGIC; 
  signal b_succ_0_17_IBUF_5044 : STD_LOGIC; 
  signal b_succ_0_18_IBUF_5046 : STD_LOGIC; 
  signal b_succ_0_19_IBUF_5048 : STD_LOGIC; 
  signal ACT_U3_Msub_Output_cy_3_Q_5050 : STD_LOGIC; 
  signal ACT_U3_Msub_Output_cy_7_Q_5051 : STD_LOGIC; 
  signal ACT_U3_Msub_Output_cy_11_Q_5052 : STD_LOGIC; 
  signal ACT_U3_Msub_Output_cy_15_Q_5053 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_5054 : STD_LOGIC; 
  signal broadcast_IBUF_5055 : STD_LOGIC; 
  signal x_pred_0_10_IBUF_5056 : STD_LOGIC; 
  signal x_pred_0_11_IBUF_5057 : STD_LOGIC; 
  signal x_pred_0_12_IBUF_5058 : STD_LOGIC; 
  signal x_pred_0_13_IBUF_5059 : STD_LOGIC; 
  signal x_pred_0_14_IBUF_5060 : STD_LOGIC; 
  signal x_pred_0_15_IBUF_5061 : STD_LOGIC; 
  signal x_pred_0_16_IBUF_5062 : STD_LOGIC; 
  signal x_pred_0_17_IBUF_5063 : STD_LOGIC; 
  signal x_pred_0_18_IBUF_5064 : STD_LOGIC; 
  signal x_pred_0_19_IBUF_5065 : STD_LOGIC; 
  signal bck_succ_0_IBUF_5066 : STD_LOGIC; 
  signal bck_succ_1_IBUF_5067 : STD_LOGIC; 
  signal backward_IBUF_5068 : STD_LOGIC; 
  signal x_pred_0_0_IBUF_5069 : STD_LOGIC; 
  signal x_pred_0_1_IBUF_5070 : STD_LOGIC; 
  signal x_pred_0_2_IBUF_5071 : STD_LOGIC; 
  signal x_pred_0_3_IBUF_5072 : STD_LOGIC; 
  signal x_pred_0_4_IBUF_5073 : STD_LOGIC; 
  signal x_pred_0_5_IBUF_5074 : STD_LOGIC; 
  signal x_pred_0_6_IBUF_5075 : STD_LOGIC; 
  signal x_pred_0_7_IBUF_5076 : STD_LOGIC; 
  signal x_pred_0_8_IBUF_5077 : STD_LOGIC; 
  signal x_pred_0_9_IBUF_5078 : STD_LOGIC; 
  signal fwd_pred_0_IBUF_5079 : STD_LOGIC; 
  signal fwd_pred_1_IBUF_5080 : STD_LOGIC; 
  signal still_fwd_IBUF_5081 : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG : STD_LOGIC; 
  signal ACT_state_FSM_FFd3_In : STD_LOGIC; 
  signal ACT_U9_res_d_5103 : STD_LOGIC; 
  signal ACT_U10_res_d_5104 : STD_LOGIC; 
  signal ACT_state_FSM_FFd2_In_5124 : STD_LOGIC; 
  signal ACT_state_FSM_FFd4_In : STD_LOGIC; 
  signal ACT_state_FSM_FFd1_1_5131 : STD_LOGIC; 
  signal ACT_state_FSM_FFd3_1_5132 : STD_LOGIC; 
  signal ACT_state_FSM_FFd2_1_5133 : STD_LOGIC; 
  signal ACT_state_FSM_FFd4_1_5134 : STD_LOGIC; 
  signal ACT_sel_fwd_en_accf : STD_LOGIC; 
  signal ACT_U6_x_addr_2_x_addr_3_AND_10_o4_5137 : STD_LOGIC; 
  signal ACT_U6_x_addr_2_x_addr_3_AND_10_o1_5138 : STD_LOGIC; 
  signal ACT_U6_x_addr_2_x_addr_3_AND_10_o2_5139 : STD_LOGIC; 
  signal ACT_U10_clr_inv : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal ACT_U6_x_addr_33 : STD_LOGIC; 
  signal ACT_U6_x_addr_332_5143 : STD_LOGIC; 
  signal ACT_U6_x_addr_03 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal ACT_U6_x_addr_031_5147 : STD_LOGIC; 
  signal ACT_U6_x_addr_032_5148 : STD_LOGIC; 
  signal ACT_U6_x_addr_033_5149 : STD_LOGIC; 
  signal ACT_U6_x_addr_132_5150 : STD_LOGIC; 
  signal ACT_U6_x_addr_131_5151 : STD_LOGIC; 
  signal N47_0 : STD_LOGIC; 
  signal ACT_U6_x_addr_331_5153 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal ACT_U6_x_addr_13 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal ACT_state_FSM_FFd4_In1_5159 : STD_LOGIC; 
  signal ACT_U1_ready_5160 : STD_LOGIC; 
  signal ACT_Result_0_1 : STD_LOGIC; 
  signal ACT_Result_1_1 : STD_LOGIC; 
  signal ACT_Result_2_1 : STD_LOGIC; 
  signal ACT_Result_3_1 : STD_LOGIC; 
  signal ACT_Result_4_1 : STD_LOGIC; 
  signal ACT_Result_5_1 : STD_LOGIC; 
  signal ACT_Result_6_1 : STD_LOGIC; 
  signal ACT_Result_7_1 : STD_LOGIC; 
  signal ACT_Result_8_1 : STD_LOGIC; 
  signal ACT_Result_9_1 : STD_LOGIC; 
  signal ACT_Result_10_1 : STD_LOGIC; 
  signal ACT_Result_11_1 : STD_LOGIC; 
  signal ACT_Result_12_1 : STD_LOGIC; 
  signal ACT_Result_13_1 : STD_LOGIC; 
  signal ACT_Result_14_1 : STD_LOGIC; 
  signal ACT_Result_15_1 : STD_LOGIC; 
  signal ACT_Result_16_1 : STD_LOGIC; 
  signal ACT_Result_17_1 : STD_LOGIC; 
  signal ACT_Result_18_1 : STD_LOGIC; 
  signal ACT_Result_19_1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000aa : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000ab : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000080 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000007f : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000058 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000059 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000007e : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000007d : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000007c : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000007b : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005a : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005b : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005c : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005d : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000007a : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000079 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000078 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig000000a0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000077 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005e : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000005f : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000060 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000061 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000009f : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000076 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000009e : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000075 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000009d : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000074 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000009c : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000073 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000062 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000063 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000064 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000065 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000009b : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000072 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000009a : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000071 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000099 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000070 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000098 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006f : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000066 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000067 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000068 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000069 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000097 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006e : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_341 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_332 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_323 : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_0_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_1_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_2_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_3_Q : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_306 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_385 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_376 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_367 : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_4_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_5_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_6_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_7_Q : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_350 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_429 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_420 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_411 : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_8_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_9_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_10_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_11_Q : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_394 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_473 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_464 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_455 : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_12_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_13_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_14_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_15_Q : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_438 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_515 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_506 : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_497 : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_16_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_17_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_18_Q : STD_LOGIC; 
  signal ACT_U2_cnt_19_init0_19_mux_6_OUT_19_Q : STD_LOGIC; 
  signal ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_481 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q_551 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q_543 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q_537 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_0_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_1_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_2_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_3_Q : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q_523 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q_587 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q_579 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q_571 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_4_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_5_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_6_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_7_Q : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q_559 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q_625 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q_617 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q_609 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_8_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_9_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_10_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_11_Q : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q_595 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q_661 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q_653 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q_647 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_12_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_13_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_14_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_15_Q : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q_633 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q_693 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q_685 : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q_677 : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_16_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_17_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_18_Q : STD_LOGIC; 
  signal ACT_U8_a_19_b_19_add_0_OUT_19_Q : STD_LOGIC; 
  signal ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q_668 : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_0_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_1_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_2_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_3_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_4_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_5_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_6_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_7_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_8_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_9_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_10_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_11_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_12_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_13_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_14_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_15_Q : STD_LOGIC; 
  signal y_16_OBUF_rt_984 : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_17_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_18_Q : STD_LOGIC; 
  signal ACT_U3_Msub_Output_lut_19_Q : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT10 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT11 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT12 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT13 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT14 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT15 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT16 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT17 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT18 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT19 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT20 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT21 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT22 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT23 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT24 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT25 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT26 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT27 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT28 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT29 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT30 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT31 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT32 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT33 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT34 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT35 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT36 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT37 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT38 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT39 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT40 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT41 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT42 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT43 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT44 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT45 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT46 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCOUT47 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P10 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P11 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P12 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P13 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P33 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P34 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P35 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P36 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P38 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P39 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P40 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P41 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P42 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P43 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P44 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P45 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P46 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_P47 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT10 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT11 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT12 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT13 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT14 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT15 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT16 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCOUT17 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CARRYOUT0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CARRYOUT1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CARRYOUT2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CARRYOUT3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT10 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT11 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT12 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT13 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT14 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT15 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT16 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT17 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT18 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT19 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT20 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT21 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT22 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT23 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT24 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT25 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT26 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT27 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT28 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACOUT29 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OVERFLOW : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PATTERNDETECT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_UNDERFLOW : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CARRYCASCOUT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_MULTSIGNOUT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PATTERNBDETECT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN10 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN11 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN12 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN13 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN14 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN15 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN16 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN17 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN18 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN19 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN20 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN21 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN22 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN23 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN24 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN25 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN26 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN27 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN28 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ACIN29 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN10 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN11 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN12 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN13 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN14 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN15 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN16 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_BCIN17 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_INMODE0_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_INMODE1_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_INMODE2_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_INMODE3_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_INMODE4_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ALUMODE0_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ALUMODE1_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ALUMODE2_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_ALUMODE3_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN0 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN1 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN2 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN3 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN4 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN5 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN6 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN7 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN8 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN9 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN10 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN11 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN12 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN13 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN14 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN15 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN16 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN17 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN18 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN19 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN20 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN21 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN22 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN23 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN24 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN25 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN26 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN27 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN28 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN29 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN30 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN31 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN32 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN33 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN34 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN35 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN36 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN37 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN38 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN39 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN40 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN41 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN42 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN43 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN44 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN45 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN46 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_PCIN47 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OPMODE0_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OPMODE1_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OPMODE2_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OPMODE3_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OPMODE4_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OPMODE5_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_OPMODE6_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CARRYCASCIN : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CARRYIN_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_CLK_INT : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_blk00000046_MULTSIGNIN : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_EOS : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_DINSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_PREQ : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_TCKSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_CFGCLK : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N25_pack_8 : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_15_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_19_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_2_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_8_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_1_Q : STD_LOGIC; 
  signal ACT_acc_f_reset0 : STD_LOGIC; 
  signal ACT_add_ld_a : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal ACT_add_en : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_16_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_7_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_17_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_18_Q : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig00000096 : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006d : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006c : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006b : STD_LOGIC; 
  signal ACT_U1_U1_blk00000001_sig0000006a : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_0_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_11_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_13_Q : STD_LOGIC; 
  signal ACT_acc_t_en : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal ACT_state_FSM_FFd3_In_pack_4 : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_9_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_3_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_10_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_5_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_4_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_6_Q : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_12_Q : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal ACT_U7_cnt_1_GND_16_o_equal_4_o : STD_LOGIC; 
  signal ACT_mult_enable : STD_LOGIC; 
  signal ACT_U8_sum_19_a_19_mux_3_OUT_14_Q : STD_LOGIC; 
  signal ACT_U7_cnt_0_pack_1 : STD_LOGIC; 
  signal ACT_U9_clr_e_AND_29_o : STD_LOGIC; 
  signal ACT_U10_predand_3_d_3_or_3_OUT_3_Q : STD_LOGIC; 
  signal ACT_U9_predand_3_d_3_or_3_OUT_0_Q : STD_LOGIC; 
  signal ACT_U9_predand_3_d_3_or_3_OUT_1_Q : STD_LOGIC; 
  signal ACT_U9_predand_3_d_3_or_3_OUT_2_Q : STD_LOGIC; 
  signal ACT_U9_predand_3_d_3_or_3_OUT_3_Q : STD_LOGIC; 
  signal ACT_U10_predand_3_d_3_or_3_OUT_0_Q : STD_LOGIC; 
  signal ACT_U10_predand_3_d_3_or_3_OUT_1_Q : STD_LOGIC; 
  signal ACT_U10_predand_3_d_3_or_3_OUT_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U4_weight_reg_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U2_cnt_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U5_cnt_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_y_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_y_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_back_pred_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_back_pred_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_back_pred_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_back_pred_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_fwd_succ_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_fwd_succ_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_fwd_succ_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_fwd_succ_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_43_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_42_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_41_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_40_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_36_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_27_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_26_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_25_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_23_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_22_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_21_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_14_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_17_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_15_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_14_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_13_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd4_IN : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_state_FSM_FFd4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U7_f_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U1_ready_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U8_sum_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U7_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U7_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U10_d_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U9_d_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U9_d_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U9_d_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U9_d_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U9_res_d_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U9_res_d_IN : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U10_res_d_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U10_res_d_IN : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U10_d_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U10_d_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ACT_U10_d_0_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ProtoComp8_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U4_Maccum_weight_reg_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp12_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000002a_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000002a_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000002a_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000002a_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000002a_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000026_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000026_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000026_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000022_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000022_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000022_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000001e_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000001e_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000001e_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000001a_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000001a_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk0000001a_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp16_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp19_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp24_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U5_Maccum_cnt_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp27_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_18_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_19_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_14_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_16_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_10_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_12_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_6_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_8_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U3_Msub_Output_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_N0_4_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_ACT_U1_U1_blk00000001_blk00000004_S_3_UNCONNECTED : STD_LOGIC; 
  signal ACT_U2_cnt : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_U4_weight_reg : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_U7_cnt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ACT_b_sel : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ACT_U10_d : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ACT_f_sel : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ACT_U9_d : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ACT_mult_w_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_mult_in : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_U5_cnt : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_U8_sum : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_U4_Maccum_weight_reg_lut : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_U5_Maccum_cnt_lut : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_omx_out : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal ACT_U7_GND_16_o_PWR_17_o_mux_2_OUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_A : STD_LOGIC_VECTOR ( 8 downto 8 ); 
begin
  ACT_U4_weight_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_3_CLK,
      I => ACT_Result_3_1,
      O => ACT_U4_weight_reg(3),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => ACT_U4_weight_reg(3),
      ADR4 => '1',
      ADR2 => y_4_OBUF_4800,
      O => ACT_U4_Maccum_weight_reg_lut(3)
    );
  ProtoComp8_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X20Y28"
    )
    port map (
      O => NLW_ProtoComp8_CYINITGND_O_UNCONNECTED
    );
  ACT_U4_weight_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_2_CLK,
      I => ACT_Result_2_1,
      O => ACT_U4_weight_reg(2),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y28"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ACT_U4_Maccum_weight_reg_cy_3_Q_4798,
      CO(2) => NLW_ACT_U4_Maccum_weight_reg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U4_Maccum_weight_reg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U4_Maccum_weight_reg_cy_3_CO_0_UNCONNECTED,
      DI(3) => ACT_U4_weight_reg(3),
      DI(2) => ACT_U4_weight_reg(2),
      DI(1) => ACT_U4_weight_reg(1),
      DI(0) => ACT_U4_weight_reg(0),
      O(3) => ACT_Result_3_1,
      O(2) => ACT_Result_2_1,
      O(1) => ACT_Result_1_1,
      O(0) => ACT_Result_0_1,
      S(3) => ACT_U4_Maccum_weight_reg_lut(3),
      S(2) => ACT_U4_Maccum_weight_reg_lut(2),
      S(1) => ACT_U4_Maccum_weight_reg_lut(1),
      S(0) => ACT_U4_Maccum_weight_reg_lut(0)
    );
  ACT_U4_Maccum_weight_reg_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ACT_U4_weight_reg(2),
      ADR5 => '1',
      ADR3 => y_3_OBUF_4797,
      O => ACT_U4_Maccum_weight_reg_lut(2)
    );
  ACT_U4_weight_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_1_CLK,
      I => ACT_Result_1_1,
      O => ACT_U4_weight_reg(1),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(1),
      ADR4 => '1',
      ADR1 => y_2_OBUF_4795,
      O => ACT_U4_Maccum_weight_reg_lut(1)
    );
  ACT_U4_weight_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_0_CLK,
      I => ACT_Result_0_1,
      O => ACT_U4_weight_reg(0),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y28",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => ACT_U4_weight_reg(0),
      ADR3 => '1',
      ADR2 => y_1_OBUF_4793,
      O => ACT_U4_Maccum_weight_reg_lut(0)
    );
  ACT_U4_weight_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_7_CLK,
      I => ACT_Result_7_1,
      O => ACT_U4_weight_reg(7),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => ACT_U4_weight_reg(7),
      ADR4 => '1',
      ADR2 => y_8_OBUF_4809,
      O => ACT_U4_Maccum_weight_reg_lut(7)
    );
  ACT_U4_weight_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_6_CLK,
      I => ACT_Result_6_1,
      O => ACT_U4_weight_reg(6),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y29"
    )
    port map (
      CI => ACT_U4_Maccum_weight_reg_cy_3_Q_4798,
      CYINIT => '0',
      CO(3) => ACT_U4_Maccum_weight_reg_cy_7_Q_4807,
      CO(2) => NLW_ACT_U4_Maccum_weight_reg_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U4_Maccum_weight_reg_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U4_Maccum_weight_reg_cy_7_CO_0_UNCONNECTED,
      DI(3) => ACT_U4_weight_reg(7),
      DI(2) => ACT_U4_weight_reg(6),
      DI(1) => ACT_U4_weight_reg(5),
      DI(0) => ACT_U4_weight_reg(4),
      O(3) => ACT_Result_7_1,
      O(2) => ACT_Result_6_1,
      O(1) => ACT_Result_5_1,
      O(0) => ACT_Result_4_1,
      S(3) => ACT_U4_Maccum_weight_reg_lut(7),
      S(2) => ACT_U4_Maccum_weight_reg_lut(6),
      S(1) => ACT_U4_Maccum_weight_reg_lut(5),
      S(0) => ACT_U4_Maccum_weight_reg_lut(4)
    );
  ACT_U4_Maccum_weight_reg_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => ACT_U4_weight_reg(6),
      ADR3 => '1',
      ADR2 => y_7_OBUF_4806,
      O => ACT_U4_Maccum_weight_reg_lut(6)
    );
  ACT_U4_weight_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_5_CLK,
      I => ACT_Result_5_1,
      O => ACT_U4_weight_reg(5),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(5),
      ADR4 => '1',
      ADR1 => y_6_OBUF_4804,
      O => ACT_U4_Maccum_weight_reg_lut(5)
    );
  ACT_U4_weight_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_4_CLK,
      I => ACT_Result_4_1,
      O => ACT_U4_weight_reg(4),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => ACT_U4_weight_reg(4),
      ADR3 => '1',
      ADR2 => y_5_OBUF_4802,
      O => ACT_U4_Maccum_weight_reg_lut(4)
    );
  ACT_U4_weight_reg_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_11_CLK,
      I => ACT_Result_11_1,
      O => ACT_U4_weight_reg(11),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => ACT_U4_weight_reg(11),
      ADR4 => '1',
      ADR2 => y_12_OBUF_4818,
      O => ACT_U4_Maccum_weight_reg_lut(11)
    );
  ACT_U4_weight_reg_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_10_CLK,
      I => ACT_Result_10_1,
      O => ACT_U4_weight_reg(10),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y30"
    )
    port map (
      CI => ACT_U4_Maccum_weight_reg_cy_7_Q_4807,
      CYINIT => '0',
      CO(3) => ACT_U4_Maccum_weight_reg_cy_11_Q_4816,
      CO(2) => NLW_ACT_U4_Maccum_weight_reg_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U4_Maccum_weight_reg_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U4_Maccum_weight_reg_cy_11_CO_0_UNCONNECTED,
      DI(3) => ACT_U4_weight_reg(11),
      DI(2) => ACT_U4_weight_reg(10),
      DI(1) => ACT_U4_weight_reg(9),
      DI(0) => ACT_U4_weight_reg(8),
      O(3) => ACT_Result_11_1,
      O(2) => ACT_Result_10_1,
      O(1) => ACT_Result_9_1,
      O(0) => ACT_Result_8_1,
      S(3) => ACT_U4_Maccum_weight_reg_lut(11),
      S(2) => ACT_U4_Maccum_weight_reg_lut(10),
      S(1) => ACT_U4_Maccum_weight_reg_lut(9),
      S(0) => ACT_U4_Maccum_weight_reg_lut(8)
    );
  ACT_U4_Maccum_weight_reg_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ACT_U4_weight_reg(10),
      ADR5 => '1',
      ADR4 => y_11_OBUF_4815,
      O => ACT_U4_Maccum_weight_reg_lut(10)
    );
  ACT_U4_weight_reg_9 : X_FF
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_9_CLK,
      I => ACT_Result_9_1,
      O => ACT_U4_weight_reg(9),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(9),
      ADR4 => '1',
      ADR1 => y_10_OBUF_4813,
      O => ACT_U4_Maccum_weight_reg_lut(9)
    );
  ACT_U4_weight_reg_8 : X_FF
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_8_CLK,
      I => ACT_Result_8_1,
      O => ACT_U4_weight_reg(8),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(8),
      ADR5 => '1',
      ADR4 => y_9_OBUF_4811,
      O => ACT_U4_Maccum_weight_reg_lut(8)
    );
  ACT_U4_weight_reg_15 : X_FF
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => '1'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_15_CLK,
      I => ACT_Result_15_1,
      O => ACT_U4_weight_reg(15),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(15),
      ADR4 => '1',
      ADR5 => y_16_OBUF_4827,
      O => ACT_U4_Maccum_weight_reg_lut(15)
    );
  ACT_U4_weight_reg_14 : X_FF
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_14_CLK,
      I => ACT_Result_14_1,
      O => ACT_U4_weight_reg(14),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y31"
    )
    port map (
      CI => ACT_U4_Maccum_weight_reg_cy_11_Q_4816,
      CYINIT => '0',
      CO(3) => ACT_U4_Maccum_weight_reg_cy_15_Q_4825,
      CO(2) => NLW_ACT_U4_Maccum_weight_reg_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U4_Maccum_weight_reg_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U4_Maccum_weight_reg_cy_15_CO_0_UNCONNECTED,
      DI(3) => ACT_U4_weight_reg(15),
      DI(2) => ACT_U4_weight_reg(14),
      DI(1) => ACT_U4_weight_reg(13),
      DI(0) => ACT_U4_weight_reg(12),
      O(3) => ACT_Result_15_1,
      O(2) => ACT_Result_14_1,
      O(1) => ACT_Result_13_1,
      O(0) => ACT_Result_12_1,
      S(3) => ACT_U4_Maccum_weight_reg_lut(15),
      S(2) => ACT_U4_Maccum_weight_reg_lut(14),
      S(1) => ACT_U4_Maccum_weight_reg_lut(13),
      S(0) => ACT_U4_Maccum_weight_reg_lut(12)
    );
  ACT_U4_Maccum_weight_reg_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ACT_U4_weight_reg(14),
      ADR3 => '1',
      ADR0 => y_15_OBUF_4824,
      O => ACT_U4_Maccum_weight_reg_lut(14)
    );
  ACT_U4_weight_reg_13 : X_FF
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_13_CLK,
      I => ACT_Result_13_1,
      O => ACT_U4_weight_reg(13),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(13),
      ADR5 => '1',
      ADR4 => y_14_OBUF_4822,
      O => ACT_U4_Maccum_weight_reg_lut(13)
    );
  ACT_U4_weight_reg_12 : X_FF
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_12_CLK,
      I => ACT_Result_12_1,
      O => ACT_U4_weight_reg(12),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(12),
      ADR5 => '1',
      ADR4 => y_13_OBUF_4820,
      O => ACT_U4_Maccum_weight_reg_lut(12)
    );
  ACT_U4_weight_reg_19 : X_FF
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_19_CLK,
      I => ACT_Result_19_1,
      O => ACT_U4_weight_reg(19),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ACT_U4_weight_reg(19),
      ADR5 => '1',
      ADR3 => y_19_OBUF_4833,
      O => ACT_U4_Maccum_weight_reg_lut(19)
    );
  ACT_U4_weight_reg_18 : X_FF
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_18_CLK,
      I => ACT_Result_18_1,
      O => ACT_U4_weight_reg(18),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y32"
    )
    port map (
      CI => ACT_U4_Maccum_weight_reg_cy_15_Q_4825,
      CYINIT => '0',
      CO(3) => NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U4_Maccum_weight_reg_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_ACT_U4_Maccum_weight_reg_xor_19_DI_3_UNCONNECTED,
      DI(2) => ACT_U4_weight_reg(18),
      DI(1) => ACT_U4_weight_reg(17),
      DI(0) => ACT_U4_weight_reg(16),
      O(3) => ACT_Result_19_1,
      O(2) => ACT_Result_18_1,
      O(1) => ACT_Result_17_1,
      O(0) => ACT_Result_16_1,
      S(3) => ACT_U4_Maccum_weight_reg_lut(19),
      S(2) => ACT_U4_Maccum_weight_reg_lut(18),
      S(1) => ACT_U4_Maccum_weight_reg_lut(17),
      S(0) => ACT_U4_Maccum_weight_reg_lut(16)
    );
  ACT_U4_Maccum_weight_reg_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => ACT_U4_weight_reg(18),
      ADR3 => '1',
      ADR1 => y_19_OBUF_4833,
      O => ACT_U4_Maccum_weight_reg_lut(18)
    );
  ACT_U4_weight_reg_17 : X_FF
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_17_CLK,
      I => ACT_Result_17_1,
      O => ACT_U4_weight_reg(17),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"33CC33CC33CC33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(17),
      ADR4 => '1',
      ADR1 => y_18_OBUF_4831,
      O => ACT_U4_Maccum_weight_reg_lut(17)
    );
  ACT_U4_weight_reg_16 : X_FF
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_t_en_0,
      CLK => NlwBufferSignal_ACT_U4_weight_reg_16_CLK,
      I => ACT_Result_16_1,
      O => ACT_U4_weight_reg(16),
      RST => GND,
      SET => GND
    );
  ACT_U4_Maccum_weight_reg_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U4_weight_reg(16),
      ADR5 => '1',
      ADR4 => y_17_OBUF_4829,
      O => ACT_U4_Maccum_weight_reg_lut(16)
    );
  ACT_U1_U1_blk00000001_sig00000092_ACT_U1_U1_blk00000001_sig00000092_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000059,
      O => ACT_U1_U1_blk00000001_sig00000059_0
    );
  ACT_U1_U1_blk00000001_sig00000092_ACT_U1_U1_blk00000001_sig00000092_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000058,
      O => ACT_U1_U1_blk00000001_sig00000058_0
    );
  ACT_U1_U1_blk00000001_blk0000004d : X_LUT6
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(2),
      ADR4 => ACT_mult_in(1),
      ADR3 => ACT_mult_w_in(3),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000007e
    );
  ACT_U1_U1_blk00000001_blk00000040 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(2),
      ADR4 => ACT_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a7
    );
  ProtoComp12_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X19Y53"
    )
    port map (
      O => NLW_ProtoComp12_CYINITGND_O_UNCONNECTED
    );
  ACT_U1_U1_blk00000001_blk0000002a : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y53"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ACT_U1_U1_blk00000001_sig00000092,
      CO(2) => NLW_ACT_U1_U1_blk00000001_blk0000002a_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U1_U1_blk00000001_blk0000002a_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U1_U1_blk00000001_blk0000002a_CO_0_UNCONNECTED,
      DI(3) => ACT_U1_U1_blk00000001_sig000000a7,
      DI(2) => ACT_U1_U1_blk00000001_sig000000a8,
      DI(1) => ACT_U1_U1_blk00000001_sig000000a9,
      DI(0) => ACT_U1_U1_blk00000001_sig000000aa,
      O(3) => ACT_U1_U1_blk00000001_sig00000059,
      O(2) => ACT_U1_U1_blk00000001_sig00000058,
      O(1) => NLW_ACT_U1_U1_blk00000001_blk0000002a_O_1_UNCONNECTED,
      O(0) => NLW_ACT_U1_U1_blk00000001_blk0000002a_O_0_UNCONNECTED,
      S(3) => ACT_U1_U1_blk00000001_sig0000007e,
      S(2) => ACT_U1_U1_blk00000001_sig0000007f,
      S(1) => ACT_U1_U1_blk00000001_sig00000080,
      S(0) => ACT_U1_U1_blk00000001_sig000000ab
    );
  ACT_U1_U1_blk00000001_blk0000004e : X_LUT6
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_mult_w_in(1),
      ADR4 => ACT_mult_in(1),
      ADR1 => ACT_mult_w_in(2),
      ADR3 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000007f
    );
  ACT_U1_U1_blk00000001_blk00000041 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_mult_w_in(1),
      ADR4 => ACT_mult_in(1),
      ADR3 => '1',
      ADR1 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a8
    );
  ACT_U1_U1_blk00000001_blk00000051 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ACT_mult_w_in(0),
      ADR4 => ACT_mult_in(1),
      ADR0 => ACT_mult_w_in(1),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000080
    );
  ACT_U1_U1_blk00000001_blk00000042 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => ACT_mult_w_in(0),
      ADR4 => ACT_mult_in(1),
      ADR1 => '1',
      ADR2 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a9
    );
  ACT_U1_U1_blk00000001_blk0000005c : X_LUT6
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ACT_mult_w_in(0),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig000000ab
    );
  ACT_U1_U1_blk00000001_blk00000043 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y53",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ACT_mult_w_in(0),
      ADR4 => ACT_mult_in(0),
      O => ACT_U1_U1_blk00000001_sig000000aa
    );
  ACT_U1_U1_blk00000001_sig0000008e_ACT_U1_U1_blk00000001_sig0000008e_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000005d,
      O => ACT_U1_U1_blk00000001_sig0000005d_0
    );
  ACT_U1_U1_blk00000001_sig0000008e_ACT_U1_U1_blk00000001_sig0000008e_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000005c,
      O => ACT_U1_U1_blk00000001_sig0000005c_0
    );
  ACT_U1_U1_blk00000001_sig0000008e_ACT_U1_U1_blk00000001_sig0000008e_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000005b,
      O => ACT_U1_U1_blk00000001_sig0000005b_0
    );
  ACT_U1_U1_blk00000001_sig0000008e_ACT_U1_U1_blk00000001_sig0000008e_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000005a,
      O => ACT_U1_U1_blk00000001_sig0000005a_0
    );
  ACT_U1_U1_blk00000001_blk00000049 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"3FC0C0C03FC0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => ACT_mult_w_in(6),
      ADR3 => ACT_mult_in(1),
      ADR1 => ACT_mult_w_in(7),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000007a
    );
  ACT_U1_U1_blk00000001_blk0000003c : X_LUT5
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => ACT_mult_w_in(6),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR1 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a3
    );
  ACT_U1_U1_blk00000001_blk00000026 : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y54"
    )
    port map (
      CI => ACT_U1_U1_blk00000001_sig00000092,
      CYINIT => '0',
      CO(3) => ACT_U1_U1_blk00000001_sig0000008e,
      CO(2) => NLW_ACT_U1_U1_blk00000001_blk00000026_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U1_U1_blk00000001_blk00000026_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U1_U1_blk00000001_blk00000026_CO_0_UNCONNECTED,
      DI(3) => ACT_U1_U1_blk00000001_sig000000a3,
      DI(2) => ACT_U1_U1_blk00000001_sig000000a4,
      DI(1) => ACT_U1_U1_blk00000001_sig000000a5,
      DI(0) => ACT_U1_U1_blk00000001_sig000000a6,
      O(3) => ACT_U1_U1_blk00000001_sig0000005d,
      O(2) => ACT_U1_U1_blk00000001_sig0000005c,
      O(1) => ACT_U1_U1_blk00000001_sig0000005b,
      O(0) => ACT_U1_U1_blk00000001_sig0000005a,
      S(3) => ACT_U1_U1_blk00000001_sig0000007a,
      S(2) => ACT_U1_U1_blk00000001_sig0000007b,
      S(1) => ACT_U1_U1_blk00000001_sig0000007c,
      S(0) => ACT_U1_U1_blk00000001_sig0000007d
    );
  ACT_U1_U1_blk00000001_blk0000004a : X_LUT6
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(5),
      ADR3 => ACT_mult_in(1),
      ADR2 => ACT_mult_w_in(6),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000007b
    );
  ACT_U1_U1_blk00000001_blk0000003d : X_LUT5
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(5),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a4
    );
  ACT_U1_U1_blk00000001_blk0000004b : X_LUT6
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(4),
      ADR3 => ACT_mult_in(1),
      ADR2 => ACT_mult_w_in(5),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000007c
    );
  ACT_U1_U1_blk00000001_blk0000003e : X_LUT5
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(4),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a5
    );
  ACT_U1_U1_blk00000001_blk0000004c : X_LUT6
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"3FC0C0C03FC0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => ACT_mult_w_in(3),
      ADR3 => ACT_mult_in(1),
      ADR1 => ACT_mult_w_in(4),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000007d
    );
  ACT_U1_U1_blk00000001_blk0000003f : X_LUT5
    generic map(
      LOC => "SLICE_X19Y54",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => ACT_mult_w_in(3),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR1 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a6
    );
  ACT_U1_U1_blk00000001_sig0000008a_ACT_U1_U1_blk00000001_sig0000008a_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000061,
      O => ACT_U1_U1_blk00000001_sig00000061_0
    );
  ACT_U1_U1_blk00000001_sig0000008a_ACT_U1_U1_blk00000001_sig0000008a_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000060,
      O => ACT_U1_U1_blk00000001_sig00000060_0
    );
  ACT_U1_U1_blk00000001_sig0000008a_ACT_U1_U1_blk00000001_sig0000008a_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000005f,
      O => ACT_U1_U1_blk00000001_sig0000005f_0
    );
  ACT_U1_U1_blk00000001_sig0000008a_ACT_U1_U1_blk00000001_sig0000008a_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000005e,
      O => ACT_U1_U1_blk00000001_sig0000005e_0
    );
  ACT_U1_U1_blk00000001_blk0000005a : X_LUT6
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"5AAAF0005AAAF000"
    )
    port map (
      ADR1 => '1',
      ADR2 => ACT_mult_w_in(10),
      ADR3 => ACT_mult_in(1),
      ADR0 => ACT_mult_w_in(11),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000076
    );
  ACT_U1_U1_blk00000001_blk00000038 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_mult_w_in(10),
      ADR3 => ACT_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig0000009f
    );
  ACT_U1_U1_blk00000001_blk00000022 : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y55"
    )
    port map (
      CI => ACT_U1_U1_blk00000001_sig0000008e,
      CYINIT => '0',
      CO(3) => ACT_U1_U1_blk00000001_sig0000008a,
      CO(2) => NLW_ACT_U1_U1_blk00000001_blk00000022_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U1_U1_blk00000001_blk00000022_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U1_U1_blk00000001_blk00000022_CO_0_UNCONNECTED,
      DI(3) => ACT_U1_U1_blk00000001_sig0000009f,
      DI(2) => ACT_U1_U1_blk00000001_sig000000a0,
      DI(1) => ACT_U1_U1_blk00000001_sig000000a1,
      DI(0) => ACT_U1_U1_blk00000001_sig000000a2,
      O(3) => ACT_U1_U1_blk00000001_sig00000061,
      O(2) => ACT_U1_U1_blk00000001_sig00000060,
      O(1) => ACT_U1_U1_blk00000001_sig0000005f,
      O(0) => ACT_U1_U1_blk00000001_sig0000005e,
      S(3) => ACT_U1_U1_blk00000001_sig00000076,
      S(2) => ACT_U1_U1_blk00000001_sig00000077,
      S(1) => ACT_U1_U1_blk00000001_sig00000078,
      S(0) => ACT_U1_U1_blk00000001_sig00000079
    );
  ACT_U1_U1_blk00000001_blk0000005b : X_LUT6
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"5AAAF0005AAAF000"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_mult_w_in(10),
      ADR4 => ACT_mult_in(0),
      ADR2 => ACT_mult_w_in(9),
      ADR3 => ACT_mult_in(1),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000077
    );
  ACT_U1_U1_blk00000001_blk00000039 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ACT_mult_w_in(9),
      ADR3 => ACT_mult_in(1),
      O => ACT_U1_U1_blk00000001_sig000000a0
    );
  ACT_U1_U1_blk00000001_blk00000047 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_mult_w_in(8),
      ADR3 => ACT_mult_in(1),
      ADR2 => ACT_mult_w_in(9),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000078
    );
  ACT_U1_U1_blk00000001_blk0000003a : X_LUT5
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"AA00AA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_mult_w_in(8),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a1
    );
  ACT_U1_U1_blk00000001_blk00000048 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(7),
      ADR3 => ACT_mult_in(1),
      ADR2 => ACT_mult_w_in(8),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000079
    );
  ACT_U1_U1_blk00000001_blk0000003b : X_LUT5
    generic map(
      LOC => "SLICE_X19Y55",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(7),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig000000a2
    );
  ACT_U1_U1_blk00000001_sig00000086_ACT_U1_U1_blk00000001_sig00000086_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000065,
      O => ACT_U1_U1_blk00000001_sig00000065_0
    );
  ACT_U1_U1_blk00000001_sig00000086_ACT_U1_U1_blk00000001_sig00000086_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000064,
      O => ACT_U1_U1_blk00000001_sig00000064_0
    );
  ACT_U1_U1_blk00000001_sig00000086_ACT_U1_U1_blk00000001_sig00000086_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000063,
      O => ACT_U1_U1_blk00000001_sig00000063_0
    );
  ACT_U1_U1_blk00000001_sig00000086_ACT_U1_U1_blk00000001_sig00000086_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000062,
      O => ACT_U1_U1_blk00000001_sig00000062_0
    );
  ACT_U1_U1_blk00000001_blk00000056 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"5AF0AA005AF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_mult_w_in(14),
      ADR3 => ACT_mult_in(1),
      ADR2 => ACT_mult_w_in(15),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000072
    );
  ACT_U1_U1_blk00000001_blk00000034 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"AA00AA00"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_mult_w_in(14),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig0000009b
    );
  ACT_U1_U1_blk00000001_blk0000001e : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y56"
    )
    port map (
      CI => ACT_U1_U1_blk00000001_sig0000008a,
      CYINIT => '0',
      CO(3) => ACT_U1_U1_blk00000001_sig00000086,
      CO(2) => NLW_ACT_U1_U1_blk00000001_blk0000001e_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U1_U1_blk00000001_blk0000001e_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U1_U1_blk00000001_blk0000001e_CO_0_UNCONNECTED,
      DI(3) => ACT_U1_U1_blk00000001_sig0000009b,
      DI(2) => ACT_U1_U1_blk00000001_sig0000009c,
      DI(1) => ACT_U1_U1_blk00000001_sig0000009d,
      DI(0) => ACT_U1_U1_blk00000001_sig0000009e,
      O(3) => ACT_U1_U1_blk00000001_sig00000065,
      O(2) => ACT_U1_U1_blk00000001_sig00000064,
      O(1) => ACT_U1_U1_blk00000001_sig00000063,
      O(0) => ACT_U1_U1_blk00000001_sig00000062,
      S(3) => ACT_U1_U1_blk00000001_sig00000072,
      S(2) => ACT_U1_U1_blk00000001_sig00000073,
      S(1) => ACT_U1_U1_blk00000001_sig00000074,
      S(0) => ACT_U1_U1_blk00000001_sig00000075
    );
  ACT_U1_U1_blk00000001_blk00000057 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"3CF0CC003CF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(13),
      ADR3 => ACT_mult_in(1),
      ADR2 => ACT_mult_w_in(14),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000073
    );
  ACT_U1_U1_blk00000001_blk00000035 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(13),
      ADR3 => ACT_mult_in(1),
      ADR2 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig0000009c
    );
  ACT_U1_U1_blk00000001_blk00000058 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"5AAAF0005AAAF000"
    )
    port map (
      ADR1 => '1',
      ADR2 => ACT_mult_w_in(12),
      ADR3 => ACT_mult_in(1),
      ADR0 => ACT_mult_w_in(13),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000074
    );
  ACT_U1_U1_blk00000001_blk00000036 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_mult_w_in(12),
      ADR3 => ACT_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig0000009d
    );
  ACT_U1_U1_blk00000001_blk00000059 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_mult_w_in(11),
      ADR3 => ACT_mult_in(1),
      ADR1 => ACT_mult_w_in(12),
      ADR4 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000075
    );
  ACT_U1_U1_blk00000001_blk00000037 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y56",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_mult_w_in(11),
      ADR3 => ACT_mult_in(1),
      ADR1 => '1',
      ADR4 => '1',
      O => ACT_U1_U1_blk00000001_sig0000009e
    );
  ACT_U1_U1_blk00000001_sig00000082_ACT_U1_U1_blk00000001_sig00000082_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000069,
      O => ACT_U1_U1_blk00000001_sig00000069_0
    );
  ACT_U1_U1_blk00000001_sig00000082_ACT_U1_U1_blk00000001_sig00000082_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000068,
      O => ACT_U1_U1_blk00000001_sig00000068_0
    );
  ACT_U1_U1_blk00000001_sig00000082_ACT_U1_U1_blk00000001_sig00000082_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000067,
      O => ACT_U1_U1_blk00000001_sig00000067_0
    );
  ACT_U1_U1_blk00000001_sig00000082_ACT_U1_U1_blk00000001_sig00000082_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000066,
      O => ACT_U1_U1_blk00000001_sig00000066_0
    );
  ACT_U1_U1_blk00000001_blk00000052 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ACT_mult_w_in(18),
      ADR4 => ACT_mult_in(1),
      ADR0 => ACT_mult_w_in(19),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000006e
    );
  ACT_U1_U1_blk00000001_blk00000030 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => ACT_mult_w_in(18),
      ADR4 => ACT_mult_in(1),
      ADR1 => '1',
      ADR2 => '1',
      O => ACT_U1_U1_blk00000001_sig00000097
    );
  ACT_U1_U1_blk00000001_blk0000001a : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y57"
    )
    port map (
      CI => ACT_U1_U1_blk00000001_sig00000086,
      CYINIT => '0',
      CO(3) => ACT_U1_U1_blk00000001_sig00000082,
      CO(2) => NLW_ACT_U1_U1_blk00000001_blk0000001a_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U1_U1_blk00000001_blk0000001a_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U1_U1_blk00000001_blk0000001a_CO_0_UNCONNECTED,
      DI(3) => ACT_U1_U1_blk00000001_sig00000097,
      DI(2) => ACT_U1_U1_blk00000001_sig00000098,
      DI(1) => ACT_U1_U1_blk00000001_sig00000099,
      DI(0) => ACT_U1_U1_blk00000001_sig0000009a,
      O(3) => ACT_U1_U1_blk00000001_sig00000069,
      O(2) => ACT_U1_U1_blk00000001_sig00000068,
      O(1) => ACT_U1_U1_blk00000001_sig00000067,
      O(0) => ACT_U1_U1_blk00000001_sig00000066,
      S(3) => ACT_U1_U1_blk00000001_sig0000006e,
      S(2) => ACT_U1_U1_blk00000001_sig0000006f,
      S(1) => ACT_U1_U1_blk00000001_sig00000070,
      S(0) => ACT_U1_U1_blk00000001_sig00000071
    );
  ACT_U1_U1_blk00000001_blk00000053 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(17),
      ADR4 => ACT_mult_in(1),
      ADR3 => ACT_mult_w_in(18),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000006f
    );
  ACT_U1_U1_blk00000001_blk00000031 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(17),
      ADR4 => ACT_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => ACT_U1_U1_blk00000001_sig00000098
    );
  ACT_U1_U1_blk00000001_blk00000054 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(16),
      ADR4 => ACT_mult_in(1),
      ADR3 => ACT_mult_w_in(17),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000070
    );
  ACT_U1_U1_blk00000001_blk00000032 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_mult_w_in(16),
      ADR4 => ACT_mult_in(1),
      ADR3 => '1',
      ADR2 => '1',
      O => ACT_U1_U1_blk00000001_sig00000099
    );
  ACT_U1_U1_blk00000001_blk00000055 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"3FC0C0C03FC0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => ACT_mult_w_in(15),
      ADR4 => ACT_mult_in(1),
      ADR1 => ACT_mult_w_in(16),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig00000071
    );
  ACT_U1_U1_blk00000001_blk00000033 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y57",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => ACT_mult_w_in(15),
      ADR4 => ACT_mult_in(1),
      ADR1 => '1',
      ADR2 => '1',
      O => ACT_U1_U1_blk00000001_sig0000009a
    );
  ACT_U2_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_3_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_3_Q,
      O => ACT_U2_cnt(3),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"777788888DD88DD8"
    )
    port map (
      ADR0 => ACT_acc_f_reset0_0,
      ADR5 => ACT_acc_f_reset1,
      ADR2 => N92,
      ADR3 => ACT_U2_cnt(3),
      ADR4 => ACT_omx_out_3_0,
      ADR1 => ACT_U4_weight_reg(3),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_306
    );
  ProtoComp16_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X16Y34"
    )
    port map (
      O => NLW_ProtoComp16_CYINITGND_O_UNCONNECTED
    );
  ACT_U2_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_2_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_2_Q,
      O => ACT_U2_cnt(2),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y34"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_4891,
      CO(2) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q,
      DI(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q,
      DI(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q,
      DI(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q,
      O(3) => ACT_U2_cnt_19_init0_19_mux_6_OUT_3_Q,
      O(2) => ACT_U2_cnt_19_init0_19_mux_6_OUT_2_Q,
      O(1) => ACT_U2_cnt_19_init0_19_mux_6_OUT_1_Q,
      O(0) => ACT_U2_cnt_19_init0_19_mux_6_OUT_0_Q,
      S(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_Q_306,
      S(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_323,
      S(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_332,
      S(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_341
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"6C6CA0AF6C6CAFA0"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR4 => ACT_acc_f_reset1,
      ADR3 => N94,
      ADR5 => ACT_U2_cnt(2),
      ADR1 => ACT_omx_out_2_0,
      ADR0 => ACT_U4_weight_reg(2),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_Q_323
    );
  ACT_U2_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_1_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_1_Q,
      O => ACT_U2_cnt(1),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"0FF0F0F0FF660066"
    )
    port map (
      ADR5 => ACT_acc_f_reset0_0,
      ADR3 => ACT_acc_f_reset1,
      ADR0 => N96,
      ADR1 => ACT_U2_cnt(1),
      ADR4 => ACT_omx_out_1_0,
      ADR2 => ACT_U4_weight_reg(1),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_Q_332
    );
  ACT_U2_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_0_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_0_Q,
      O => ACT_U2_cnt(0),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y34",
      INIT => X"0305F3F5FCFA0C0A"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR3 => ACT_acc_f_reset1,
      ADR1 => ACT_omx_out_0_0,
      ADR0 => ACT_U2_cnt(0),
      ADR4 => ACT_U4_weight_reg(0),
      ADR5 => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_B_0_Q,
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_0_Q_341
    );
  ACT_U2_cnt_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_7_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_7_Q,
      O => ACT_U2_cnt(7),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"787B888B7B788B88"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR1 => ACT_acc_f_reset1,
      ADR5 => N84,
      ADR3 => ACT_U2_cnt(7),
      ADR0 => ACT_omx_out_7_0,
      ADR4 => ACT_U4_weight_reg(7),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_350
    );
  ACT_U2_cnt_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_6_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_6_Q,
      O => ACT_U2_cnt(6),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y35"
    )
    port map (
      CI => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_3_Q_4891,
      CYINIT => '0',
      CO(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_4908,
      CO(2) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_CO_0_UNCONNECTED,
      DI(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q,
      DI(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q,
      DI(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q,
      DI(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q,
      O(3) => ACT_U2_cnt_19_init0_19_mux_6_OUT_7_Q,
      O(2) => ACT_U2_cnt_19_init0_19_mux_6_OUT_6_Q,
      O(1) => ACT_U2_cnt_19_init0_19_mux_6_OUT_5_Q,
      O(0) => ACT_U2_cnt_19_init0_19_mux_6_OUT_4_Q,
      S(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_Q_350,
      S(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_367,
      S(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_376,
      S(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_385
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"67AB76BACD01DC10"
    )
    port map (
      ADR1 => ACT_acc_f_reset0_0,
      ADR0 => ACT_acc_f_reset1,
      ADR2 => N86,
      ADR4 => ACT_U2_cnt(6),
      ADR5 => ACT_omx_out_6_0,
      ADR3 => ACT_U4_weight_reg(6),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_Q_367
    );
  ACT_U2_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_5_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_5_Q,
      O => ACT_U2_cnt(5),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"5A5AF0F0BBEE1144"
    )
    port map (
      ADR5 => ACT_acc_f_reset0_0,
      ADR0 => ACT_acc_f_reset1,
      ADR1 => N88,
      ADR3 => ACT_U2_cnt(5),
      ADR4 => ACT_omx_out_5_0,
      ADR2 => ACT_U4_weight_reg(5),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_Q_376
    );
  ACT_U2_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_4_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_4_Q,
      O => ACT_U2_cnt(4),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y35",
      INIT => X"3C3CCCCCF5FA050A"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR5 => ACT_acc_f_reset1,
      ADR3 => N90,
      ADR0 => ACT_U2_cnt(4),
      ADR1 => ACT_omx_out_4_0,
      ADR4 => ACT_U4_weight_reg(4),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_Q_385
    );
  ACT_U2_cnt_11 : X_FF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_11_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_11_Q,
      O => ACT_U2_cnt(11),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"7878787888DDDD88"
    )
    port map (
      ADR0 => ACT_acc_f_reset0_0,
      ADR5 => ACT_acc_f_reset1,
      ADR3 => N76,
      ADR4 => ACT_U2_cnt(11),
      ADR2 => ACT_omx_out_11_0,
      ADR1 => ACT_U4_weight_reg(11),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_394
    );
  ACT_U2_cnt_10 : X_FF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_10_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_10_Q,
      O => ACT_U2_cnt(10),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y36"
    )
    port map (
      CI => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_7_Q_4908,
      CYINIT => '0',
      CO(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_4925,
      CO(2) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_CO_0_UNCONNECTED,
      DI(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q,
      DI(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q,
      DI(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q,
      DI(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q,
      O(3) => ACT_U2_cnt_19_init0_19_mux_6_OUT_11_Q,
      O(2) => ACT_U2_cnt_19_init0_19_mux_6_OUT_10_Q,
      O(1) => ACT_U2_cnt_19_init0_19_mux_6_OUT_9_Q,
      O(0) => ACT_U2_cnt_19_init0_19_mux_6_OUT_8_Q,
      S(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_Q_394,
      S(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_411,
      S(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_420,
      S(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_429
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"67CD76DCAB01BA10"
    )
    port map (
      ADR0 => ACT_acc_f_reset0_0,
      ADR1 => ACT_acc_f_reset1,
      ADR2 => N78,
      ADR4 => ACT_U2_cnt(10),
      ADR5 => ACT_omx_out_10_0,
      ADR3 => ACT_U4_weight_reg(10),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_Q_411
    );
  ACT_U2_cnt_9 : X_FF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_9_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_9_Q,
      O => ACT_U2_cnt(9),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"5F5FA0A0B1E4B1E4"
    )
    port map (
      ADR0 => ACT_acc_f_reset0_0,
      ADR5 => ACT_acc_f_reset1,
      ADR1 => N80,
      ADR3 => ACT_U2_cnt(9),
      ADR4 => ACT_omx_out_9_0,
      ADR2 => ACT_U4_weight_reg(9),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_Q_420
    );
  ACT_U2_cnt_8 : X_FF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_8_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_8_Q,
      O => ACT_U2_cnt(8),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"5FB15FE4A0B1A0E4"
    )
    port map (
      ADR0 => ACT_acc_f_reset0_0,
      ADR3 => ACT_acc_f_reset1,
      ADR1 => N82,
      ADR4 => ACT_U2_cnt(8),
      ADR5 => ACT_omx_out_8_0,
      ADR2 => ACT_U4_weight_reg(8),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_Q_429
    );
  ACT_U2_cnt_15 : X_FF
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_15_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_15_Q,
      O => ACT_U2_cnt(15),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"5A5AAAAAF3FC030C"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR5 => ACT_acc_f_reset1,
      ADR1 => N68,
      ADR3 => ACT_U2_cnt(15),
      ADR0 => ACT_omx_out_15_0,
      ADR4 => ACT_U4_weight_reg(15),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_438
    );
  ACT_U2_cnt_14 : X_FF
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_14_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_14_Q,
      O => ACT_U2_cnt(14),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y37"
    )
    port map (
      CI => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_11_Q_4925,
      CYINIT => '0',
      CO(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_4942,
      CO(2) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_CO_0_UNCONNECTED,
      DI(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q,
      DI(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q,
      DI(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q,
      DI(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q,
      O(3) => ACT_U2_cnt_19_init0_19_mux_6_OUT_15_Q,
      O(2) => ACT_U2_cnt_19_init0_19_mux_6_OUT_14_Q,
      O(1) => ACT_U2_cnt_19_init0_19_mux_6_OUT_13_Q,
      O(0) => ACT_U2_cnt_19_init0_19_mux_6_OUT_12_Q,
      S(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_Q_438,
      S(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_455,
      S(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_464,
      S(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_473
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"5AF35AFCAA03AA0C"
    )
    port map (
      ADR3 => ACT_acc_f_reset0_0,
      ADR2 => ACT_acc_f_reset1,
      ADR1 => N70,
      ADR4 => ACT_U2_cnt(14),
      ADR5 => ACT_omx_out_14_0,
      ADR0 => ACT_U4_weight_reg(14),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_Q_455
    );
  ACT_U2_cnt_13 : X_FF
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_13_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_13_Q,
      O => ACT_U2_cnt(13),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"6C6CA0AF6C6CAFA0"
    )
    port map (
      ADR4 => ACT_acc_f_reset0_0,
      ADR2 => ACT_acc_f_reset1,
      ADR3 => N72,
      ADR5 => ACT_U2_cnt(13),
      ADR0 => ACT_omx_out_13_0,
      ADR1 => ACT_U4_weight_reg(13),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_Q_464
    );
  ACT_U2_cnt_12 : X_FF
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_12_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_12_Q,
      O => ACT_U2_cnt(12),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"78887D8D7D8D7888"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR0 => ACT_acc_f_reset1,
      ADR5 => N74,
      ADR4 => ACT_U2_cnt(12),
      ADR1 => ACT_omx_out_12_0,
      ADR3 => ACT_U4_weight_reg(12),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_Q_473
    );
  ACT_U2_cnt_19 : X_FF
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_19_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_19_Q,
      O => ACT_U2_cnt(19),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"5A5AF3FCAAAA030C"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR4 => ACT_acc_f_reset1,
      ADR1 => N100,
      ADR3 => ACT_U2_cnt(19),
      ADR0 => ACT_omx_out_19_0,
      ADR5 => ACT_U4_weight_reg(19),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_481
    );
  ACT_U2_cnt_18 : X_FF
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_18_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_18_Q,
      O => ACT_U2_cnt(18),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y38"
    )
    port map (
      CI => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_cy_15_Q_4942,
      CYINIT => '0',
      CO(3) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_2_Q,
      DI(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q,
      DI(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q,
      O(3) => ACT_U2_cnt_19_init0_19_mux_6_OUT_19_Q,
      O(2) => ACT_U2_cnt_19_init0_19_mux_6_OUT_18_Q,
      O(1) => ACT_U2_cnt_19_init0_19_mux_6_OUT_17_Q,
      O(0) => ACT_U2_cnt_19_init0_19_mux_6_OUT_16_Q,
      S(3) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_Q_481,
      S(2) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_497,
      S(1) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_506,
      S(0) => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_515
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"55AAFF3CAAAA003C"
    )
    port map (
      ADR4 => ACT_acc_f_reset0_0,
      ADR3 => ACT_acc_f_reset1,
      ADR1 => N62,
      ADR2 => ACT_U2_cnt(18),
      ADR5 => ACT_omx_out_18_0,
      ADR0 => ACT_U4_weight_reg(18),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_Q_497
    );
  ACT_U2_cnt_17 : X_FF
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_17_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_17_Q,
      O => ACT_U2_cnt(17),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"5A5AF0F0BBEE1144"
    )
    port map (
      ADR5 => ACT_acc_f_reset0_0,
      ADR0 => ACT_acc_f_reset1,
      ADR1 => N64,
      ADR3 => ACT_U2_cnt(17),
      ADR4 => ACT_omx_out_17_0,
      ADR2 => ACT_U4_weight_reg(17),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_Q_506
    );
  ACT_U2_cnt_16 : X_FF
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => '0'
    )
    port map (
      CE => ACT_U2_n0042_inv,
      CLK => NlwBufferSignal_ACT_U2_cnt_16_CLK,
      I => ACT_U2_cnt_19_init0_19_mux_6_OUT_16_Q,
      O => ACT_U2_cnt(16),
      RST => GND,
      SET => GND
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"3F3FC5CAC0C0C5CA"
    )
    port map (
      ADR2 => ACT_acc_f_reset0_0,
      ADR4 => ACT_acc_f_reset1,
      ADR3 => N66,
      ADR0 => ACT_U2_cnt(16),
      ADR5 => ACT_omx_out_16_0,
      ADR1 => ACT_U4_weight_reg(16),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_Q_515
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_3_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_3_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_2_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_2_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_1_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_1_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_0_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_0_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => X"3C3C3F3BC3C3C0C4"
    )
    port map (
      ADR5 => y_3_OBUF_4797,
      ADR1 => N6_0,
      ADR4 => ACT_U6_x_addr_1,
      ADR0 => ACT_U6_x_addr_3,
      ADR2 => ACT_U6_x_addr_0,
      ADR3 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q_523
    );
  ProtoComp19_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      O => NLW_ProtoComp19_CYINITGND_O_UNCONNECTED
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y38"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q_4975,
      CO(2) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q,
      DI(2) => ACT_in1_14_Q,
      DI(1) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_1_Q,
      DI(0) => ACT_in1_0_Q,
      O(3) => ACT_U8_a_19_b_19_add_0_OUT_3_Q,
      O(2) => ACT_U8_a_19_b_19_add_0_OUT_2_Q,
      O(1) => ACT_U8_a_19_b_19_add_0_OUT_1_Q,
      O(0) => ACT_U8_a_19_b_19_add_0_OUT_0_Q,
      S(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_3_Q_523,
      S(2) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q_537,
      S(1) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q_543,
      S(0) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q_551
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => X"0FF00F0F0FF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR2 => y_2_OBUF_4795,
      ADR3 => N19,
      ADR5 => N18,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_2_Q_537
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => X"F0A5F0F0F0C3F0C3"
    )
    port map (
      ADR5 => ACT_U7_cnt(1),
      ADR2 => y_1_OBUF_4793,
      ADR0 => ACT_U6_x_addr_1,
      ADR3 => ACT_U6_x_addr_0,
      ADR1 => N4,
      ADR4 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_1_Q_543
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y38",
      INIT => X"A6A6A5AA96969699"
    )
    port map (
      ADR5 => ACT_U7_cnt(0),
      ADR1 => ACT_U7_cnt(1),
      ADR0 => y_0_OBUF_4963,
      ADR4 => ACT_U6_x_addr_1,
      ADR2 => ACT_U6_x_addr_0,
      ADR3 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_0_Q_551
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_7_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_7_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_6_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_6_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_5_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_5_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_4_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_4_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y39",
      INIT => X"0FF00FF000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR3 => y_7_OBUF_4806,
      ADR2 => N19,
      ADR4 => N18,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q_559
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y39"
    )
    port map (
      CI => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_Q_4975,
      CYINIT => '0',
      CO(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q_4984,
      CO(2) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => ACT_in1_14_Q,
      DI(2) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q,
      O(3) => ACT_U8_a_19_b_19_add_0_OUT_7_Q,
      O(2) => ACT_U8_a_19_b_19_add_0_OUT_6_Q,
      O(1) => ACT_U8_a_19_b_19_add_0_OUT_5_Q,
      O(0) => ACT_U8_a_19_b_19_add_0_OUT_4_Q,
      S(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_7_Q_559,
      S(2) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q_571,
      S(1) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q_579,
      S(0) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q_587
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y39",
      INIT => X"5A5AA6A65A5AA696"
    )
    port map (
      ADR0 => y_6_OBUF_4804,
      ADR2 => N6_0,
      ADR1 => ACT_U6_x_addr_1,
      ADR3 => ACT_U6_x_addr_3,
      ADR4 => ACT_U6_x_addr_0,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_6_Q_571
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y39",
      INIT => X"F0F0F0A5B4F0B4A5"
    )
    port map (
      ADR3 => ACT_U7_cnt(1),
      ADR2 => y_5_OBUF_4802,
      ADR5 => ACT_U6_x_addr_1,
      ADR0 => ACT_U6_x_addr_0,
      ADR4 => N4,
      ADR1 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_5_Q_579
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y39",
      INIT => X"F0F01EE1F0F01EF0"
    )
    port map (
      ADR0 => ACT_U7_cnt(0),
      ADR1 => ACT_U7_cnt(1),
      ADR2 => y_4_OBUF_4800,
      ADR3 => ACT_U6_x_addr_1,
      ADR5 => ACT_U6_x_addr_3,
      ADR4 => ACT_U6_x_addr_0,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_4_Q_587
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_11_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_11_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_10_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_10_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_9_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_9_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_8_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_8_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => X"CCCCCCCC3C3C3CC6"
    )
    port map (
      ADR4 => ACT_U7_cnt(0),
      ADR3 => ACT_U7_cnt(1),
      ADR1 => y_11_OBUF_4815,
      ADR2 => ACT_U6_x_addr_1,
      ADR0 => ACT_U6_x_addr_3,
      ADR5 => ACT_U6_x_addr_0,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q_595
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y40"
    )
    port map (
      CI => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_Q_4984,
      CYINIT => '0',
      CO(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q_4989,
      CO(2) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => ACT_in1_11_Q,
      DI(2) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_2_Q,
      DI(1) => ACT_in1_1_Q,
      DI(0) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_0_Q,
      O(3) => ACT_U8_a_19_b_19_add_0_OUT_11_Q,
      O(2) => ACT_U8_a_19_b_19_add_0_OUT_10_Q,
      O(1) => ACT_U8_a_19_b_19_add_0_OUT_9_Q,
      O(0) => ACT_U8_a_19_b_19_add_0_OUT_8_Q,
      S(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_11_Q_595,
      S(2) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q_609,
      S(1) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q_617,
      S(0) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q_625
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => X"6699669966AA66A6"
    )
    port map (
      ADR0 => y_10_OBUF_4813,
      ADR1 => N6_0,
      ADR5 => ACT_U6_x_addr_1,
      ADR2 => ACT_U6_x_addr_3,
      ADR3 => ACT_U6_x_addr_0,
      ADR4 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_10_Q_609
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => X"AAAAAA6AAA99AA59"
    )
    port map (
      ADR1 => ACT_U7_cnt(1),
      ADR0 => y_9_OBUF_4811,
      ADR4 => ACT_U6_x_addr_1,
      ADR3 => ACT_U6_x_addr_0,
      ADR5 => N4,
      ADR2 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_9_Q_617
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y40",
      INIT => X"667799886673998C"
    )
    port map (
      ADR4 => y_8_OBUF_4809,
      ADR1 => N6_0,
      ADR3 => ACT_U6_x_addr_1,
      ADR5 => ACT_U6_x_addr_3,
      ADR0 => ACT_U6_x_addr_0,
      ADR2 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_8_Q_625
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_15_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_15_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_14_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_14_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_13_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_13_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_12_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_12_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"669C669C669C639C"
    )
    port map (
      ADR1 => y_15_OBUF_4824,
      ADR3 => N6_0,
      ADR2 => ACT_U6_x_addr_1,
      ADR5 => ACT_U6_x_addr_3,
      ADR0 => ACT_U6_x_addr_0,
      ADR4 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q_633
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y41"
    )
    port map (
      CI => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_Q_4989,
      CYINIT => '0',
      CO(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q_4995,
      CO(2) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_3_Q,
      DI(2) => ACT_in1_14_Q,
      DI(1) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_1_Q,
      DI(0) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_0_Q,
      O(3) => ACT_U8_a_19_b_19_add_0_OUT_15_Q,
      O(2) => ACT_U8_a_19_b_19_add_0_OUT_14_Q,
      O(1) => ACT_U8_a_19_b_19_add_0_OUT_13_Q,
      O(0) => ACT_U8_a_19_b_19_add_0_OUT_12_Q,
      S(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_15_Q_633,
      S(2) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q_647,
      S(1) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q_653,
      S(0) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q_661
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"550F550FAAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR5 => y_14_OBUF_4822,
      ADR0 => N34,
      ADR2 => N18,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_14_Q_647
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"0F0FF0E1F0F03C3C"
    )
    port map (
      ADR2 => y_13_OBUF_4820,
      ADR5 => N6_0,
      ADR1 => ACT_U6_x_addr_1,
      ADR3 => ACT_U6_x_addr_3,
      ADR4 => ACT_U6_x_addr_0,
      ADR0 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_13_Q_653
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y41",
      INIT => X"669C669C669C639C"
    )
    port map (
      ADR1 => y_12_OBUF_4818,
      ADR3 => N6_0,
      ADR2 => ACT_U6_x_addr_1,
      ADR5 => ACT_U6_x_addr_3,
      ADR0 => ACT_U6_x_addr_0,
      ADR4 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_12_Q_661
    );
  ACT_U8_a_19_b_19_add_0_OUT_19_ACT_U8_a_19_b_19_add_0_OUT_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_19_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_19_0
    );
  ACT_U8_a_19_b_19_add_0_OUT_19_ACT_U8_a_19_b_19_add_0_OUT_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_18_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_18_0
    );
  ACT_U8_a_19_b_19_add_0_OUT_19_ACT_U8_a_19_b_19_add_0_OUT_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_17_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_17_0
    );
  ACT_U8_a_19_b_19_add_0_OUT_19_ACT_U8_a_19_b_19_add_0_OUT_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U8_a_19_b_19_add_0_OUT_16_Q,
      O => ACT_U8_a_19_b_19_add_0_OUT_16_0
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y42",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => y_19_OBUF_4833,
      ADR4 => ACT_in1_16_Q,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q_668
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y42"
    )
    port map (
      CI => ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_Q_4995,
      CYINIT => '0',
      CO(3) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_2_Q,
      DI(1) => ACT_in1_16_Q,
      DI(0) => ACT_in1_16_Q,
      O(3) => ACT_U8_a_19_b_19_add_0_OUT_19_Q,
      O(2) => ACT_U8_a_19_b_19_add_0_OUT_18_Q,
      O(1) => ACT_U8_a_19_b_19_add_0_OUT_17_Q,
      O(0) => ACT_U8_a_19_b_19_add_0_OUT_16_Q,
      S(3) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_19_Q_668,
      S(2) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q_677,
      S(1) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q_685,
      S(0) => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q_693
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y42",
      INIT => X"AA2E8B0F55D174F0"
    )
    port map (
      ADR1 => ACT_U7_cnt(0),
      ADR5 => y_18_OBUF_4831,
      ADR4 => ACT_U6_x_addr_3,
      ADR3 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR2 => N36,
      ADR0 => N37,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_18_Q_677
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y42",
      INIT => X"993C993C99993C3C"
    )
    port map (
      ADR5 => ACT_U7_cnt(0),
      ADR1 => y_17_OBUF_4829,
      ADR4 => ACT_U6_x_addr_3,
      ADR3 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR2 => N36,
      ADR0 => N37,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_17_Q_685
    );
  ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y42",
      INIT => X"AA9A55566A5A595A"
    )
    port map (
      ADR1 => ACT_U7_cnt(0),
      ADR0 => y_16_OBUF_4827,
      ADR3 => ACT_U6_x_addr_3,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      ADR2 => N36,
      ADR4 => N37,
      O => ACT_U8_Madd_a_19_b_19_add_0_OUT_lut_16_Q_693
    );
  ACT_U5_cnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_3_CLK,
      I => ACT_Result(3),
      O => ACT_U5_cnt(3),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => X"EE11FF00EE11FF00"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => b_succ_0_3_IBUF_5013,
      ADR3 => ACT_U5_cnt(3),
      ADR1 => ACT_b_sel(1),
      ADR0 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(3)
    );
  ProtoComp24_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X17Y56"
    )
    port map (
      O => NLW_ProtoComp24_CYINITGND_O_UNCONNECTED
    );
  ACT_U5_cnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_2_CLK,
      I => ACT_Result(2),
      O => ACT_U5_cnt(2),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X17Y56"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => ACT_U5_Maccum_cnt_cy_3_Q_5012,
      CO(2) => NLW_ACT_U5_Maccum_cnt_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U5_Maccum_cnt_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U5_Maccum_cnt_cy_3_CO_0_UNCONNECTED,
      DI(3) => ACT_U5_cnt(3),
      DI(2) => ACT_U5_cnt(2),
      DI(1) => ACT_U5_cnt(1),
      DI(0) => ACT_U5_cnt(0),
      O(3) => ACT_Result(3),
      O(2) => ACT_Result(2),
      O(1) => ACT_Result(1),
      O(0) => ACT_Result(0),
      S(3) => ACT_U5_Maccum_cnt_lut(3),
      S(2) => ACT_U5_Maccum_cnt_lut(2),
      S(1) => ACT_U5_Maccum_cnt_lut(1),
      S(0) => ACT_U5_Maccum_cnt_lut(0)
    );
  ACT_U5_Maccum_cnt_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => X"FFCF0030FFCF0030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => b_succ_0_2_IBUF_5009,
      ADR4 => ACT_U5_cnt(2),
      ADR1 => ACT_b_sel(1),
      ADR3 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(2)
    );
  ACT_U5_cnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_1_CLK,
      I => ACT_Result(1),
      O => ACT_U5_cnt(1),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => X"FF00FF00F00FFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => b_succ_0_1_IBUF_5007,
      ADR3 => ACT_U5_cnt(1),
      ADR2 => ACT_b_sel(1),
      ADR5 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(1)
    );
  ACT_U5_cnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_0_CLK,
      I => ACT_Result(0),
      O => ACT_U5_cnt(0),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => X"FFFF0000AAFF5500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => b_succ_0_0_IBUF_5004,
      ADR4 => ACT_U5_cnt(0),
      ADR5 => ACT_b_sel(1),
      ADR0 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(0)
    );
  ACT_U5_cnt_7 : X_SFF
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_7_CLK,
      I => ACT_Result(7),
      O => ACT_U5_cnt(7),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => X"FC03FF00FC03FF00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => b_succ_0_7_IBUF_5022,
      ADR3 => ACT_U5_cnt(7),
      ADR2 => ACT_b_sel(1),
      ADR1 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(7)
    );
  ACT_U5_cnt_6 : X_SFF
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_6_CLK,
      I => ACT_Result(6),
      O => ACT_U5_cnt(6),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X17Y57"
    )
    port map (
      CI => ACT_U5_Maccum_cnt_cy_3_Q_5012,
      CYINIT => '0',
      CO(3) => ACT_U5_Maccum_cnt_cy_7_Q_5021,
      CO(2) => NLW_ACT_U5_Maccum_cnt_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U5_Maccum_cnt_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U5_Maccum_cnt_cy_7_CO_0_UNCONNECTED,
      DI(3) => ACT_U5_cnt(7),
      DI(2) => ACT_U5_cnt(6),
      DI(1) => ACT_U5_cnt(5),
      DI(0) => ACT_U5_cnt(4),
      O(3) => ACT_Result(7),
      O(2) => ACT_Result(6),
      O(1) => ACT_Result(5),
      O(0) => ACT_Result(4),
      S(3) => ACT_U5_Maccum_cnt_lut(7),
      S(2) => ACT_U5_Maccum_cnt_lut(6),
      S(1) => ACT_U5_Maccum_cnt_lut(5),
      S(0) => ACT_U5_Maccum_cnt_lut(4)
    );
  ACT_U5_Maccum_cnt_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => X"FCFF0300FCFF0300"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => b_succ_0_6_IBUF_5019,
      ADR4 => ACT_U5_cnt(6),
      ADR1 => ACT_b_sel(1),
      ADR2 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(6)
    );
  ACT_U5_cnt_5 : X_SFF
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_5_CLK,
      I => ACT_Result(5),
      O => ACT_U5_cnt(5),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => X"FF00FF00F50AF50A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => b_succ_0_5_IBUF_5017,
      ADR3 => ACT_U5_cnt(5),
      ADR5 => ACT_b_sel(1),
      ADR2 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(5)
    );
  ACT_U5_cnt_4 : X_SFF
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_4_CLK,
      I => ACT_Result(4),
      O => ACT_U5_cnt(4),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y57",
      INIT => X"FFFF0000FF3300CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => b_succ_0_4_IBUF_5015,
      ADR4 => ACT_U5_cnt(4),
      ADR3 => ACT_b_sel(1),
      ADR5 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(4)
    );
  ACT_U5_cnt_11 : X_SFF
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_11_CLK,
      I => ACT_Result(11),
      O => ACT_U5_cnt(11),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => X"CCC3CCCCCCC3CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => b_succ_0_11_IBUF_5031,
      ADR1 => ACT_U5_cnt(11),
      ADR3 => ACT_b_sel(1),
      ADR2 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(11)
    );
  ACT_U5_cnt_10 : X_SFF
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_10_CLK,
      I => ACT_Result(10),
      O => ACT_U5_cnt(10),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X17Y58"
    )
    port map (
      CI => ACT_U5_Maccum_cnt_cy_7_Q_5021,
      CYINIT => '0',
      CO(3) => ACT_U5_Maccum_cnt_cy_11_Q_5030,
      CO(2) => NLW_ACT_U5_Maccum_cnt_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U5_Maccum_cnt_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U5_Maccum_cnt_cy_11_CO_0_UNCONNECTED,
      DI(3) => ACT_U5_cnt(11),
      DI(2) => ACT_U5_cnt(10),
      DI(1) => ACT_U5_cnt(9),
      DI(0) => ACT_U5_cnt(8),
      O(3) => ACT_Result(11),
      O(2) => ACT_Result(10),
      O(1) => ACT_Result(9),
      O(0) => ACT_Result(8),
      S(3) => ACT_U5_Maccum_cnt_lut(11),
      S(2) => ACT_U5_Maccum_cnt_lut(10),
      S(1) => ACT_U5_Maccum_cnt_lut(9),
      S(0) => ACT_U5_Maccum_cnt_lut(8)
    );
  ACT_U5_Maccum_cnt_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => X"FFFF0000CFCF3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => b_succ_0_10_IBUF_5028,
      ADR4 => ACT_U5_cnt(10),
      ADR1 => ACT_b_sel(1),
      ADR5 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(10)
    );
  ACT_U5_cnt_9 : X_SFF
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_9_CLK,
      I => ACT_Result(9),
      O => ACT_U5_cnt(9),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => X"FF00FF00CC33FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => b_succ_0_9_IBUF_5026,
      ADR3 => ACT_U5_cnt(9),
      ADR5 => ACT_b_sel(1),
      ADR1 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(9)
    );
  ACT_U5_cnt_8 : X_SFF
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_8_CLK,
      I => ACT_Result(8),
      O => ACT_U5_cnt(8),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y58",
      INIT => X"FFF0000FFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => b_succ_0_8_IBUF_5024,
      ADR4 => ACT_U5_cnt(8),
      ADR3 => ACT_b_sel(1),
      ADR2 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(8)
    );
  ACT_U5_cnt_15 : X_SFF
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_15_CLK,
      I => ACT_Result(15),
      O => ACT_U5_cnt(15),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => X"EE11FF00EE11FF00"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => b_succ_0_15_IBUF_5040,
      ADR3 => ACT_U5_cnt(15),
      ADR1 => ACT_b_sel(1),
      ADR0 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(15)
    );
  ACT_U5_cnt_14 : X_SFF
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_14_CLK,
      I => ACT_Result(14),
      O => ACT_U5_cnt(14),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X17Y59"
    )
    port map (
      CI => ACT_U5_Maccum_cnt_cy_11_Q_5030,
      CYINIT => '0',
      CO(3) => ACT_U5_Maccum_cnt_cy_15_Q_5039,
      CO(2) => NLW_ACT_U5_Maccum_cnt_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U5_Maccum_cnt_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U5_Maccum_cnt_cy_15_CO_0_UNCONNECTED,
      DI(3) => ACT_U5_cnt(15),
      DI(2) => ACT_U5_cnt(14),
      DI(1) => ACT_U5_cnt(13),
      DI(0) => ACT_U5_cnt(12),
      O(3) => ACT_Result(15),
      O(2) => ACT_Result(14),
      O(1) => ACT_Result(13),
      O(0) => ACT_Result(12),
      S(3) => ACT_U5_Maccum_cnt_lut(15),
      S(2) => ACT_U5_Maccum_cnt_lut(14),
      S(1) => ACT_U5_Maccum_cnt_lut(13),
      S(0) => ACT_U5_Maccum_cnt_lut(12)
    );
  ACT_U5_Maccum_cnt_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => X"AA99AAAAAA99AAAA"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => b_succ_0_14_IBUF_5037,
      ADR0 => ACT_U5_cnt(14),
      ADR1 => ACT_b_sel(1),
      ADR3 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(14)
    );
  ACT_U5_cnt_13 : X_SFF
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_13_CLK,
      I => ACT_Result(13),
      O => ACT_U5_cnt(13),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => X"FF00FF00FF0033CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => b_succ_0_13_IBUF_5035,
      ADR3 => ACT_U5_cnt(13),
      ADR5 => ACT_b_sel(1),
      ADR4 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(13)
    );
  ACT_U5_cnt_12 : X_SFF
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_12_CLK,
      I => ACT_Result(12),
      O => ACT_U5_cnt(12),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => X"FFAF0050FFAF0050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => b_succ_0_12_IBUF_5033,
      ADR4 => ACT_U5_cnt(12),
      ADR3 => ACT_b_sel(1),
      ADR0 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(12)
    );
  ACT_U5_cnt_19 : X_SFF
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_19_CLK,
      I => ACT_Result(19),
      O => ACT_U5_cnt(19),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => X"FF00FF00BB44BB44"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => b_succ_0_19_IBUF_5048,
      ADR3 => ACT_U5_cnt(19),
      ADR0 => ACT_b_sel(1),
      ADR5 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(19)
    );
  ACT_U5_cnt_18 : X_SFF
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_18_CLK,
      I => ACT_Result(18),
      O => ACT_U5_cnt(18),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X17Y60"
    )
    port map (
      CI => ACT_U5_Maccum_cnt_cy_15_Q_5039,
      CYINIT => '0',
      CO(3) => NLW_ACT_U5_Maccum_cnt_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_ACT_U5_Maccum_cnt_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U5_Maccum_cnt_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U5_Maccum_cnt_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_ACT_U5_Maccum_cnt_xor_19_DI_3_UNCONNECTED,
      DI(2) => ACT_U5_cnt(18),
      DI(1) => ACT_U5_cnt(17),
      DI(0) => ACT_U5_cnt(16),
      O(3) => ACT_Result(19),
      O(2) => ACT_Result(18),
      O(1) => ACT_Result(17),
      O(0) => ACT_Result(16),
      S(3) => ACT_U5_Maccum_cnt_lut(19),
      S(2) => ACT_U5_Maccum_cnt_lut(18),
      S(1) => ACT_U5_Maccum_cnt_lut(17),
      S(0) => ACT_U5_Maccum_cnt_lut(16)
    );
  ACT_U5_Maccum_cnt_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => X"FDFD0202FDFD0202"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => b_succ_0_18_IBUF_5046,
      ADR4 => ACT_U5_cnt(18),
      ADR1 => ACT_b_sel(1),
      ADR2 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(18)
    );
  ACT_U5_cnt_17 : X_SFF
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_17_CLK,
      I => ACT_Result(17),
      O => ACT_U5_cnt(17),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => X"EE11EE11FF00FF00"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => b_succ_0_17_IBUF_5044,
      ADR3 => ACT_U5_cnt(17),
      ADR1 => ACT_b_sel(1),
      ADR0 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(17)
    );
  ACT_U5_cnt_16 : X_SFF
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => '0'
    )
    port map (
      CE => ACT_acc_b_en,
      CLK => NlwBufferSignal_ACT_U5_cnt_16_CLK,
      I => ACT_Result(16),
      O => ACT_U5_cnt(16),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U5_Maccum_cnt_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X17Y60",
      INIT => X"FFFF0000FF3300CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => b_succ_0_16_IBUF_5042,
      ADR4 => ACT_U5_cnt(16),
      ADR3 => ACT_b_sel(1),
      ADR5 => ACT_b_sel(0),
      O => ACT_U5_Maccum_cnt_lut(16)
    );
  ACT_U3_Msub_Output_cy_3_ACT_U3_Msub_Output_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(3),
      O => ACT_omx_out_3_0
    );
  ACT_U3_Msub_Output_cy_3_ACT_U3_Msub_Output_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(2),
      O => ACT_omx_out_2_0
    );
  ACT_U3_Msub_Output_cy_3_ACT_U3_Msub_Output_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(1),
      O => ACT_omx_out_1_0
    );
  ACT_U3_Msub_Output_cy_3_ACT_U3_Msub_Output_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(0),
      O => ACT_omx_out_0_0
    );
  ACT_U3_Msub_Output_lut_3_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_3_OBUF_4797,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_3_Q
    );
  N1_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_17_D5LUT_O_UNCONNECTED
    );
  ProtoComp27_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X20Y34"
    )
    port map (
      O => NLW_ProtoComp27_CYINITVCC_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y34"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => ACT_U3_Msub_Output_cy_3_Q_5050,
      CO(2) => NLW_ACT_U3_Msub_Output_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U3_Msub_Output_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U3_Msub_Output_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ACT_omx_out(3),
      O(2) => ACT_omx_out(2),
      O(1) => ACT_omx_out(1),
      O(0) => ACT_omx_out(0),
      S(3) => ACT_U3_Msub_Output_lut_3_Q,
      S(2) => ACT_U3_Msub_Output_lut_2_Q,
      S(1) => ACT_U3_Msub_Output_lut_1_Q,
      S(0) => ACT_U3_Msub_Output_lut_0_Q
    );
  ACT_U3_Msub_Output_lut_2_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_2_OBUF_4795,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_2_Q
    );
  N1_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_18_C5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => y_1_OBUF_4793,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_1_Q
    );
  N1_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_19_B5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => y_0_OBUF_4963,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_0_Q
    );
  N1_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_20_A5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_cy_7_ACT_U3_Msub_Output_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(7),
      O => ACT_omx_out_7_0
    );
  ACT_U3_Msub_Output_cy_7_ACT_U3_Msub_Output_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(6),
      O => ACT_omx_out_6_0
    );
  ACT_U3_Msub_Output_cy_7_ACT_U3_Msub_Output_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(5),
      O => ACT_omx_out_5_0
    );
  ACT_U3_Msub_Output_cy_7_ACT_U3_Msub_Output_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(4),
      O => ACT_omx_out_4_0
    );
  ACT_U3_Msub_Output_lut_7_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => y_7_OBUF_4806,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_7_Q
    );
  N1_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_13_D5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y35"
    )
    port map (
      CI => ACT_U3_Msub_Output_cy_3_Q_5050,
      CYINIT => '0',
      CO(3) => ACT_U3_Msub_Output_cy_7_Q_5051,
      CO(2) => NLW_ACT_U3_Msub_Output_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U3_Msub_Output_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U3_Msub_Output_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ACT_omx_out(7),
      O(2) => ACT_omx_out(6),
      O(1) => ACT_omx_out(5),
      O(0) => ACT_omx_out(4),
      S(3) => ACT_U3_Msub_Output_lut_7_Q,
      S(2) => ACT_U3_Msub_Output_lut_6_Q,
      S(1) => ACT_U3_Msub_Output_lut_5_Q,
      S(0) => ACT_U3_Msub_Output_lut_4_Q
    );
  ACT_U3_Msub_Output_lut_6_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_6_OBUF_4804,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_6_Q
    );
  N1_14_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_14_C5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_5_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => y_5_OBUF_4802,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_5_Q
    );
  N1_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_15_B5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_4_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => y_4_OBUF_4800,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_4_Q
    );
  N1_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_16_A5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_cy_11_ACT_U3_Msub_Output_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(11),
      O => ACT_omx_out_11_0
    );
  ACT_U3_Msub_Output_cy_11_ACT_U3_Msub_Output_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(10),
      O => ACT_omx_out_10_0
    );
  ACT_U3_Msub_Output_cy_11_ACT_U3_Msub_Output_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(9),
      O => ACT_omx_out_9_0
    );
  ACT_U3_Msub_Output_cy_11_ACT_U3_Msub_Output_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(8),
      O => ACT_omx_out_8_0
    );
  ACT_U3_Msub_Output_lut_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => y_11_OBUF_4815,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_11_Q
    );
  N1_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_9_D5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y36"
    )
    port map (
      CI => ACT_U3_Msub_Output_cy_7_Q_5051,
      CYINIT => '0',
      CO(3) => ACT_U3_Msub_Output_cy_11_Q_5052,
      CO(2) => NLW_ACT_U3_Msub_Output_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U3_Msub_Output_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U3_Msub_Output_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ACT_omx_out(11),
      O(2) => ACT_omx_out(10),
      O(1) => ACT_omx_out(9),
      O(0) => ACT_omx_out(8),
      S(3) => ACT_U3_Msub_Output_lut_11_Q,
      S(2) => ACT_U3_Msub_Output_lut_10_Q,
      S(1) => ACT_U3_Msub_Output_lut_9_Q,
      S(0) => ACT_U3_Msub_Output_lut_8_Q
    );
  ACT_U3_Msub_Output_lut_10_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_10_OBUF_4813,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_10_Q
    );
  N1_10_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_10_C5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_9_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => y_9_OBUF_4811,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_9_Q
    );
  N1_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_11_B5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_8_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => y_8_OBUF_4809,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_8_Q
    );
  N1_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_12_A5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_cy_15_ACT_U3_Msub_Output_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(15),
      O => ACT_omx_out_15_0
    );
  ACT_U3_Msub_Output_cy_15_ACT_U3_Msub_Output_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(14),
      O => ACT_omx_out_14_0
    );
  ACT_U3_Msub_Output_cy_15_ACT_U3_Msub_Output_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(13),
      O => ACT_omx_out_13_0
    );
  ACT_U3_Msub_Output_cy_15_ACT_U3_Msub_Output_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(12),
      O => ACT_omx_out_12_0
    );
  ACT_U3_Msub_Output_lut_15_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => y_15_OBUF_4824,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_15_Q
    );
  N1_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_5_D5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y37"
    )
    port map (
      CI => ACT_U3_Msub_Output_cy_11_Q_5052,
      CYINIT => '0',
      CO(3) => ACT_U3_Msub_Output_cy_15_Q_5053,
      CO(2) => NLW_ACT_U3_Msub_Output_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U3_Msub_Output_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U3_Msub_Output_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => ACT_omx_out(15),
      O(2) => ACT_omx_out(14),
      O(1) => ACT_omx_out(13),
      O(0) => ACT_omx_out(12),
      S(3) => ACT_U3_Msub_Output_lut_15_Q,
      S(2) => ACT_U3_Msub_Output_lut_14_Q,
      S(1) => ACT_U3_Msub_Output_lut_13_Q,
      S(0) => ACT_U3_Msub_Output_lut_12_Q
    );
  ACT_U3_Msub_Output_lut_14_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => y_14_OBUF_4822,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_14_Q
    );
  N1_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_6_C5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_13_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_13_OBUF_4820,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_13_Q
    );
  N1_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_7_B5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_12_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => y_12_OBUF_4818,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_12_Q
    );
  N1_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_8_A5LUT_O_UNCONNECTED
    );
  ACT_omx_out_19_ACT_omx_out_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(19),
      O => ACT_omx_out_19_0
    );
  ACT_omx_out_19_ACT_omx_out_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(18),
      O => ACT_omx_out_18_0
    );
  ACT_omx_out_19_ACT_omx_out_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(17),
      O => ACT_omx_out_17_0
    );
  ACT_omx_out_19_ACT_omx_out_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_omx_out(16),
      O => ACT_omx_out_16_0
    );
  ACT_U3_Msub_Output_lut_19_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y38",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => y_19_OBUF_4833,
      O => ACT_U3_Msub_Output_lut_19_Q
    );
  ACT_U3_Msub_Output_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y38"
    )
    port map (
      CI => ACT_U3_Msub_Output_cy_15_Q_5053,
      CYINIT => '0',
      CO(3) => NLW_ACT_U3_Msub_Output_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_ACT_U3_Msub_Output_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U3_Msub_Output_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U3_Msub_Output_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_ACT_U3_Msub_Output_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => ACT_omx_out(19),
      O(2) => ACT_omx_out(18),
      O(1) => ACT_omx_out(17),
      O(0) => ACT_omx_out(16),
      S(3) => ACT_U3_Msub_Output_lut_19_Q,
      S(2) => ACT_U3_Msub_Output_lut_18_Q,
      S(1) => ACT_U3_Msub_Output_lut_17_Q,
      S(0) => y_16_OBUF_rt_984
    );
  ACT_U3_Msub_Output_lut_18_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y38",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_18_OBUF_4831,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_18_Q
    );
  N1_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_3_C5LUT_O_UNCONNECTED
    );
  ACT_U3_Msub_Output_lut_17_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y38",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_17_OBUF_4829,
      ADR5 => '1',
      O => ACT_U3_Msub_Output_lut_17_Q
    );
  N1_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_B5LUT_O_UNCONNECTED
    );
  y_16_OBUF_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y38",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => y_16_OBUF_4827,
      ADR5 => '1',
      O => y_16_OBUF_rt_984
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y38",
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
  b_succ_0_10_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y69",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_10_IBUF_5028,
      I => b_succ_0(10)
    );
  b_succ_0_11_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y66",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_11_IBUF_5031,
      I => b_succ_0(11)
    );
  b_succ_0_12_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y63",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_12_IBUF_5033,
      I => b_succ_0(12)
    );
  b_succ_0_13_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y59",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_13_IBUF_5035,
      I => b_succ_0(13)
    );
  b_succ_0_14_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y61",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_14_IBUF_5037,
      I => b_succ_0(14)
    );
  b_succ_0_15_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y60",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_15_IBUF_5040,
      I => b_succ_0(15)
    );
  b_succ_0_16_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y67",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_16_IBUF_5042,
      I => b_succ_0(16)
    );
  b_succ_0_17_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y64",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_17_IBUF_5044,
      I => b_succ_0(17)
    );
  b_succ_0_18_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y65",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_18_IBUF_5046,
      I => b_succ_0(18)
    );
  b_succ_0_19_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y62",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_19_IBUF_5048,
      I => b_succ_0(19)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X2Y43",
      PATHPULSE => 450 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_5054,
      I => clk
    );
  y_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y39"
    )
    port map (
      I => NlwBufferSignal_y_0_OBUF_I,
      O => y(0)
    );
  y_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y35"
    )
    port map (
      I => NlwBufferSignal_y_1_OBUF_I,
      O => y(1)
    );
  y_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y34"
    )
    port map (
      I => NlwBufferSignal_y_2_OBUF_I,
      O => y(2)
    );
  y_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y38"
    )
    port map (
      I => NlwBufferSignal_y_3_OBUF_I,
      O => y(3)
    );
  y_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y35"
    )
    port map (
      I => NlwBufferSignal_y_4_OBUF_I,
      O => y(4)
    );
  y_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y40"
    )
    port map (
      I => NlwBufferSignal_y_5_OBUF_I,
      O => y(5)
    );
  y_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y36"
    )
    port map (
      I => NlwBufferSignal_y_6_OBUF_I,
      O => y(6)
    );
  y_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y29"
    )
    port map (
      I => NlwBufferSignal_y_7_OBUF_I,
      O => y(7)
    );
  y_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y28"
    )
    port map (
      I => NlwBufferSignal_y_8_OBUF_I,
      O => y(8)
    );
  y_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y30"
    )
    port map (
      I => NlwBufferSignal_y_9_OBUF_I,
      O => y(9)
    );
  y_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y32"
    )
    port map (
      I => NlwBufferSignal_y_10_OBUF_I,
      O => y(10)
    );
  y_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y31"
    )
    port map (
      I => NlwBufferSignal_y_11_OBUF_I,
      O => y(11)
    );
  y_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y39"
    )
    port map (
      I => NlwBufferSignal_y_12_OBUF_I,
      O => y(12)
    );
  y_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y38"
    )
    port map (
      I => NlwBufferSignal_y_13_OBUF_I,
      O => y(13)
    );
  y_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y37"
    )
    port map (
      I => NlwBufferSignal_y_14_OBUF_I,
      O => y(14)
    );
  y_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y36"
    )
    port map (
      I => NlwBufferSignal_y_15_OBUF_I,
      O => y(15)
    );
  y_16_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y42"
    )
    port map (
      I => NlwBufferSignal_y_16_OBUF_I,
      O => y(16)
    );
  y_17_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y33"
    )
    port map (
      I => NlwBufferSignal_y_17_OBUF_I,
      O => y(17)
    );
  y_18_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y33"
    )
    port map (
      I => NlwBufferSignal_y_18_OBUF_I,
      O => y(18)
    );
  y_19_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y32"
    )
    port map (
      I => NlwBufferSignal_y_19_OBUF_I,
      O => y(19)
    );
  broadcast_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y79",
      PATHPULSE => 450 ps
    )
    port map (
      O => broadcast_IBUF_5055,
      I => broadcast
    );
  x_pred_0_10_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y49",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_10_IBUF_5056,
      I => x_pred_0(10)
    );
  x_pred_0_11_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y48",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_11_IBUF_5057,
      I => x_pred_0(11)
    );
  x_pred_0_12_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y47",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_12_IBUF_5058,
      I => x_pred_0(12)
    );
  x_pred_0_13_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y46",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_13_IBUF_5059,
      I => x_pred_0(13)
    );
  x_pred_0_14_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y45",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_14_IBUF_5060,
      I => x_pred_0(14)
    );
  x_pred_0_15_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y44",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_15_IBUF_5061,
      I => x_pred_0(15)
    );
  x_pred_0_16_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y43",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_16_IBUF_5062,
      I => x_pred_0(16)
    );
  x_pred_0_17_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y42",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_17_IBUF_5063,
      I => x_pred_0(17)
    );
  x_pred_0_18_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y41",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_18_IBUF_5064,
      I => x_pred_0(18)
    );
  x_pred_0_19_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y40",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_19_IBUF_5065,
      I => x_pred_0(19)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y70",
      PATHPULSE => 450 ps
    )
    port map (
      O => reset_IBUF_4773,
      I => reset
    );
  back_pred_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y78"
    )
    port map (
      I => NlwBufferSignal_back_pred_0_OBUF_I,
      O => back_pred(0)
    );
  back_pred_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y77"
    )
    port map (
      I => NlwBufferSignal_back_pred_1_OBUF_I,
      O => back_pred(1)
    );
  back_pred_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y76"
    )
    port map (
      I => NlwBufferSignal_back_pred_2_OBUF_I,
      O => back_pred(2)
    );
  back_pred_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y75"
    )
    port map (
      I => NlwBufferSignal_back_pred_3_OBUF_I,
      O => back_pred(3)
    );
  bck_succ_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y66",
      PATHPULSE => 450 ps
    )
    port map (
      O => bck_succ_0_IBUF_5066,
      I => bck_succ(0)
    );
  bck_succ_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y67",
      PATHPULSE => 450 ps
    )
    port map (
      O => bck_succ_1_IBUF_5067,
      I => bck_succ(1)
    );
  bck_succ_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y64",
      PATHPULSE => 450 ps
    )
    port map (
      O => bck_succ_2_IBUF_4776,
      I => bck_succ(2)
    );
  bck_succ_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y65",
      PATHPULSE => 450 ps
    )
    port map (
      O => bck_succ_3_IBUF_4778,
      I => bck_succ(3)
    );
  b_succ_0_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y79",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_0_IBUF_5004,
      I => b_succ_0(0)
    );
  b_succ_0_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y76",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_1_IBUF_5007,
      I => b_succ_0(1)
    );
  b_succ_0_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y77",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_2_IBUF_5009,
      I => b_succ_0(2)
    );
  b_succ_0_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y74",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_3_IBUF_5013,
      I => b_succ_0(3)
    );
  b_succ_0_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y75",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_4_IBUF_5015,
      I => b_succ_0(4)
    );
  b_succ_0_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y72",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_5_IBUF_5017,
      I => b_succ_0(5)
    );
  b_succ_0_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y73",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_6_IBUF_5019,
      I => b_succ_0(6)
    );
  b_succ_0_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y70",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_7_IBUF_5022,
      I => b_succ_0(7)
    );
  b_succ_0_8_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y71",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_8_IBUF_5024,
      I => b_succ_0(8)
    );
  b_succ_0_9_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y68",
      PATHPULSE => 450 ps
    )
    port map (
      O => b_succ_0_9_IBUF_5026,
      I => b_succ_0(9)
    );
  backward_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y71",
      PATHPULSE => 450 ps
    )
    port map (
      O => backward_IBUF_5068,
      I => backward
    );
  x_pred_0_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y47",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_0_IBUF_5069,
      I => x_pred_0(0)
    );
  x_pred_0_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y58",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_1_IBUF_5070,
      I => x_pred_0(1)
    );
  x_pred_0_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y57",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_2_IBUF_5071,
      I => x_pred_0(2)
    );
  x_pred_0_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y56",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_3_IBUF_5072,
      I => x_pred_0(3)
    );
  x_pred_0_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y55",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_4_IBUF_5073,
      I => x_pred_0(4)
    );
  x_pred_0_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y54",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_5_IBUF_5074,
      I => x_pred_0(5)
    );
  x_pred_0_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y53",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_6_IBUF_5075,
      I => x_pred_0(6)
    );
  x_pred_0_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y52",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_7_IBUF_5076,
      I => x_pred_0(7)
    );
  x_pred_0_8_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y51",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_8_IBUF_5077,
      I => x_pred_0(8)
    );
  x_pred_0_9_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y50",
      PATHPULSE => 450 ps
    )
    port map (
      O => x_pred_0_9_IBUF_5078,
      I => x_pred_0(9)
    );
  fwd_pred_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y62",
      PATHPULSE => 450 ps
    )
    port map (
      O => fwd_pred_0_IBUF_5079,
      I => fwd_pred(0)
    );
  fwd_pred_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y63",
      PATHPULSE => 450 ps
    )
    port map (
      O => fwd_pred_1_IBUF_5080,
      I => fwd_pred(1)
    );
  fwd_pred_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y53",
      PATHPULSE => 450 ps
    )
    port map (
      O => fwd_pred_2_IBUF_4781,
      I => fwd_pred(2)
    );
  fwd_pred_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y51",
      PATHPULSE => 450 ps
    )
    port map (
      O => fwd_pred_3_IBUF_4784,
      I => fwd_pred(3)
    );
  foward_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y69",
      PATHPULSE => 450 ps
    )
    port map (
      O => foward_IBUF_4791,
      I => foward
    );
  fwd_succ_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y31"
    )
    port map (
      I => NlwBufferSignal_fwd_succ_0_OBUF_I,
      O => fwd_succ(0)
    );
  fwd_succ_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y30"
    )
    port map (
      I => NlwBufferSignal_fwd_succ_1_OBUF_I,
      O => fwd_succ(1)
    );
  fwd_succ_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y29"
    )
    port map (
      I => NlwBufferSignal_fwd_succ_2_OBUF_I,
      O => fwd_succ(2)
    );
  fwd_succ_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y28"
    )
    port map (
      I => NlwBufferSignal_fwd_succ_3_OBUF_I,
      O => fwd_succ(3)
    );
  still_fwd_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y68",
      PATHPULSE => 450 ps
    )
    port map (
      O => still_fwd_IBUF_5081,
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
  ACT_U1_U1_blk00000001_blk00000046_INMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_INMODE0_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_INMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_INMODE1_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_INMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_INMODE2_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_INMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_INMODE3_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_INMODE4INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_INMODE4_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_ALUMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_ALUMODE0_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_ALUMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_ALUMODE1_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_ALUMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_ALUMODE2_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_ALUMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_ALUMODE3_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_OPMODE0INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => ACT_U1_U1_blk00000001_blk00000046_OPMODE0_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_OPMODE1INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_OPMODE1_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_OPMODE2INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => ACT_U1_U1_blk00000001_blk00000046_OPMODE2_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_OPMODE3INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_OPMODE3_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_OPMODE4INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => ACT_U1_U1_blk00000001_blk00000046_OPMODE4_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_OPMODE5INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => VCC,
      O => ACT_U1_U1_blk00000001_blk00000046_OPMODE5_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_OPMODE6INV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_OPMODE6_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_CARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => GND,
      O => ACT_U1_U1_blk00000001_blk00000046_CARRYIN_INT
    );
  ACT_U1_U1_blk00000001_blk00000046_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X1Y22",
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => ACT_U1_U1_blk00000001_blk00000046_CLK_INT
    );
  ACT_U1_U1_blk00000001_blk00000046 : X_DSP48E1
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
      LOC => "DSP48_X1Y22"
    )
    port map (
      RSTC => GND,
      CEB1 => GND,
      CEAD => GND,
      CEC => GND,
      RSTM => GND,
      MULTSIGNIN => ACT_U1_U1_blk00000001_blk00000046_MULTSIGNIN,
      CEB2 => GND,
      RSTCTRL => GND,
      CEP => ACT_mult_enable_0,
      RSTA => GND,
      CECARRYIN => GND,
      RSTALUMODE => GND,
      RSTALLCARRYIN => GND,
      CED => GND,
      RSTD => GND,
      CEALUMODE => GND,
      CEA2 => GND,
      CLK => ACT_U1_U1_blk00000001_blk00000046_CLK_INT,
      CEA1 => GND,
      RSTB => GND,
      CECTRL => GND,
      CEM => GND,
      CARRYIN => ACT_U1_U1_blk00000001_blk00000046_CARRYIN_INT,
      CARRYCASCIN => ACT_U1_U1_blk00000001_blk00000046_CARRYCASCIN,
      RSTINMODE => GND,
      CEINMODE => GND,
      RSTP => ACT_mult_reset,
      PATTERNBDETECT => ACT_U1_U1_blk00000001_blk00000046_PATTERNBDETECT,
      MULTSIGNOUT => ACT_U1_U1_blk00000001_blk00000046_MULTSIGNOUT,
      CARRYCASCOUT => ACT_U1_U1_blk00000001_blk00000046_CARRYCASCOUT,
      UNDERFLOW => ACT_U1_U1_blk00000001_blk00000046_UNDERFLOW,
      PATTERNDETECT => ACT_U1_U1_blk00000001_blk00000046_PATTERNDETECT,
      OVERFLOW => ACT_U1_U1_blk00000001_blk00000046_OVERFLOW,
      OPMODE(6) => ACT_U1_U1_blk00000001_blk00000046_OPMODE6_INT,
      OPMODE(5) => ACT_U1_U1_blk00000001_blk00000046_OPMODE5_INT,
      OPMODE(4) => ACT_U1_U1_blk00000001_blk00000046_OPMODE4_INT,
      OPMODE(3) => ACT_U1_U1_blk00000001_blk00000046_OPMODE3_INT,
      OPMODE(2) => ACT_U1_U1_blk00000001_blk00000046_OPMODE2_INT,
      OPMODE(1) => ACT_U1_U1_blk00000001_blk00000046_OPMODE1_INT,
      OPMODE(0) => ACT_U1_U1_blk00000001_blk00000046_OPMODE0_INT,
      PCIN(47) => ACT_U1_U1_blk00000001_blk00000046_PCIN47,
      PCIN(46) => ACT_U1_U1_blk00000001_blk00000046_PCIN46,
      PCIN(45) => ACT_U1_U1_blk00000001_blk00000046_PCIN45,
      PCIN(44) => ACT_U1_U1_blk00000001_blk00000046_PCIN44,
      PCIN(43) => ACT_U1_U1_blk00000001_blk00000046_PCIN43,
      PCIN(42) => ACT_U1_U1_blk00000001_blk00000046_PCIN42,
      PCIN(41) => ACT_U1_U1_blk00000001_blk00000046_PCIN41,
      PCIN(40) => ACT_U1_U1_blk00000001_blk00000046_PCIN40,
      PCIN(39) => ACT_U1_U1_blk00000001_blk00000046_PCIN39,
      PCIN(38) => ACT_U1_U1_blk00000001_blk00000046_PCIN38,
      PCIN(37) => ACT_U1_U1_blk00000001_blk00000046_PCIN37,
      PCIN(36) => ACT_U1_U1_blk00000001_blk00000046_PCIN36,
      PCIN(35) => ACT_U1_U1_blk00000001_blk00000046_PCIN35,
      PCIN(34) => ACT_U1_U1_blk00000001_blk00000046_PCIN34,
      PCIN(33) => ACT_U1_U1_blk00000001_blk00000046_PCIN33,
      PCIN(32) => ACT_U1_U1_blk00000001_blk00000046_PCIN32,
      PCIN(31) => ACT_U1_U1_blk00000001_blk00000046_PCIN31,
      PCIN(30) => ACT_U1_U1_blk00000001_blk00000046_PCIN30,
      PCIN(29) => ACT_U1_U1_blk00000001_blk00000046_PCIN29,
      PCIN(28) => ACT_U1_U1_blk00000001_blk00000046_PCIN28,
      PCIN(27) => ACT_U1_U1_blk00000001_blk00000046_PCIN27,
      PCIN(26) => ACT_U1_U1_blk00000001_blk00000046_PCIN26,
      PCIN(25) => ACT_U1_U1_blk00000001_blk00000046_PCIN25,
      PCIN(24) => ACT_U1_U1_blk00000001_blk00000046_PCIN24,
      PCIN(23) => ACT_U1_U1_blk00000001_blk00000046_PCIN23,
      PCIN(22) => ACT_U1_U1_blk00000001_blk00000046_PCIN22,
      PCIN(21) => ACT_U1_U1_blk00000001_blk00000046_PCIN21,
      PCIN(20) => ACT_U1_U1_blk00000001_blk00000046_PCIN20,
      PCIN(19) => ACT_U1_U1_blk00000001_blk00000046_PCIN19,
      PCIN(18) => ACT_U1_U1_blk00000001_blk00000046_PCIN18,
      PCIN(17) => ACT_U1_U1_blk00000001_blk00000046_PCIN17,
      PCIN(16) => ACT_U1_U1_blk00000001_blk00000046_PCIN16,
      PCIN(15) => ACT_U1_U1_blk00000001_blk00000046_PCIN15,
      PCIN(14) => ACT_U1_U1_blk00000001_blk00000046_PCIN14,
      PCIN(13) => ACT_U1_U1_blk00000001_blk00000046_PCIN13,
      PCIN(12) => ACT_U1_U1_blk00000001_blk00000046_PCIN12,
      PCIN(11) => ACT_U1_U1_blk00000001_blk00000046_PCIN11,
      PCIN(10) => ACT_U1_U1_blk00000001_blk00000046_PCIN10,
      PCIN(9) => ACT_U1_U1_blk00000001_blk00000046_PCIN9,
      PCIN(8) => ACT_U1_U1_blk00000001_blk00000046_PCIN8,
      PCIN(7) => ACT_U1_U1_blk00000001_blk00000046_PCIN7,
      PCIN(6) => ACT_U1_U1_blk00000001_blk00000046_PCIN6,
      PCIN(5) => ACT_U1_U1_blk00000001_blk00000046_PCIN5,
      PCIN(4) => ACT_U1_U1_blk00000001_blk00000046_PCIN4,
      PCIN(3) => ACT_U1_U1_blk00000001_blk00000046_PCIN3,
      PCIN(2) => ACT_U1_U1_blk00000001_blk00000046_PCIN2,
      PCIN(1) => ACT_U1_U1_blk00000001_blk00000046_PCIN1,
      PCIN(0) => ACT_U1_U1_blk00000001_blk00000046_PCIN0,
      ALUMODE(3) => ACT_U1_U1_blk00000001_blk00000046_ALUMODE3_INT,
      ALUMODE(2) => ACT_U1_U1_blk00000001_blk00000046_ALUMODE2_INT,
      ALUMODE(1) => ACT_U1_U1_blk00000001_blk00000046_ALUMODE1_INT,
      ALUMODE(0) => ACT_U1_U1_blk00000001_blk00000046_ALUMODE0_INT,
      C(47) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(46) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(45) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(44) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(43) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_43_Q,
      C(42) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_42_Q,
      C(41) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_41_Q,
      C(40) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_40_Q,
      C(39) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(38) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(37) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(36) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_36_Q,
      C(35) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(34) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(33) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(32) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(31) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(30) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(29) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(28) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(27) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_27_Q,
      C(26) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_26_Q,
      C(25) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_25_Q,
      C(24) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(23) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_23_Q,
      C(22) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_22_Q,
      C(21) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_21_Q,
      C(20) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(19) => ACT_U1_U1_blk00000001_sig0000006b_0,
      C(18) => ACT_U1_U1_blk00000001_sig0000006a_0,
      C(17) => ACT_U1_U1_blk00000001_sig00000069_0,
      C(16) => ACT_U1_U1_blk00000001_sig00000068_0,
      C(15) => ACT_U1_U1_blk00000001_sig00000067_0,
      C(14) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_14_Q,
      C(13) => ACT_U1_U1_blk00000001_sig00000065_0,
      C(12) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_12_Q,
      C(11) => ACT_U1_U1_blk00000001_sig00000063_0,
      C(10) => ACT_U1_U1_blk00000001_sig00000062_0,
      C(9) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_9_Q,
      C(8) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_8_Q,
      C(7) => ACT_U1_U1_blk00000001_sig0000005f_0,
      C(6) => ACT_U1_U1_blk00000001_sig0000005e_0,
      C(5) => ACT_U1_U1_blk00000001_sig0000005d_0,
      C(4) => ACT_U1_U1_blk00000001_sig0000005c_0,
      C(3) => ACT_U1_U1_blk00000001_sig0000005b_0,
      C(2) => ACT_U1_U1_blk00000001_sig0000005a_0,
      C(1) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_1_Q,
      C(0) => ACT_U1_U1_blk00000001_sig00000058_0,
      INMODE(4) => ACT_U1_U1_blk00000001_blk00000046_INMODE4_INT,
      INMODE(3) => ACT_U1_U1_blk00000001_blk00000046_INMODE3_INT,
      INMODE(2) => ACT_U1_U1_blk00000001_blk00000046_INMODE2_INT,
      INMODE(1) => ACT_U1_U1_blk00000001_blk00000046_INMODE1_INT,
      INMODE(0) => ACT_U1_U1_blk00000001_blk00000046_INMODE0_INT,
      BCIN(17) => ACT_U1_U1_blk00000001_blk00000046_BCIN17,
      BCIN(16) => ACT_U1_U1_blk00000001_blk00000046_BCIN16,
      BCIN(15) => ACT_U1_U1_blk00000001_blk00000046_BCIN15,
      BCIN(14) => ACT_U1_U1_blk00000001_blk00000046_BCIN14,
      BCIN(13) => ACT_U1_U1_blk00000001_blk00000046_BCIN13,
      BCIN(12) => ACT_U1_U1_blk00000001_blk00000046_BCIN12,
      BCIN(11) => ACT_U1_U1_blk00000001_blk00000046_BCIN11,
      BCIN(10) => ACT_U1_U1_blk00000001_blk00000046_BCIN10,
      BCIN(9) => ACT_U1_U1_blk00000001_blk00000046_BCIN9,
      BCIN(8) => ACT_U1_U1_blk00000001_blk00000046_BCIN8,
      BCIN(7) => ACT_U1_U1_blk00000001_blk00000046_BCIN7,
      BCIN(6) => ACT_U1_U1_blk00000001_blk00000046_BCIN6,
      BCIN(5) => ACT_U1_U1_blk00000001_blk00000046_BCIN5,
      BCIN(4) => ACT_U1_U1_blk00000001_blk00000046_BCIN4,
      BCIN(3) => ACT_U1_U1_blk00000001_blk00000046_BCIN3,
      BCIN(2) => ACT_U1_U1_blk00000001_blk00000046_BCIN2,
      BCIN(1) => ACT_U1_U1_blk00000001_blk00000046_BCIN1,
      BCIN(0) => ACT_U1_U1_blk00000001_blk00000046_BCIN0,
      B(17) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_17_Q,
      B(16) => ACT_mult_in(18),
      B(15) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_15_Q,
      B(14) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_14_Q,
      B(13) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_13_Q,
      B(12) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_12_Q,
      B(11) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_11_Q,
      B(10) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_10_Q,
      B(9) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_9_Q,
      B(8) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_8_Q,
      B(7) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_7_Q,
      B(6) => ACT_mult_in(8),
      B(5) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_5_Q,
      B(4) => ACT_mult_in(6),
      B(3) => ACT_mult_in(5),
      B(2) => ACT_mult_in(4),
      B(1) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_1_Q,
      B(0) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_0_Q,
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
      A(24) => ACT_mult_w_in(19),
      A(23) => ACT_mult_w_in(19),
      A(22) => ACT_mult_w_in(19),
      A(21) => ACT_mult_w_in(19),
      A(20) => ACT_mult_w_in(19),
      A(19) => ACT_mult_w_in(19),
      A(18) => ACT_mult_w_in(18),
      A(17) => ACT_mult_w_in(17),
      A(16) => ACT_mult_w_in(16),
      A(15) => ACT_mult_w_in(15),
      A(14) => ACT_mult_w_in(14),
      A(13) => ACT_mult_w_in(13),
      A(12) => ACT_mult_w_in(12),
      A(11) => ACT_mult_w_in(11),
      A(10) => ACT_mult_w_in(10),
      A(9) => ACT_mult_w_in(9),
      A(8) => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_A(8),
      A(7) => ACT_mult_w_in(7),
      A(6) => ACT_mult_w_in(6),
      A(5) => ACT_mult_w_in(5),
      A(4) => ACT_mult_w_in(4),
      A(3) => ACT_mult_w_in(3),
      A(2) => ACT_mult_w_in(2),
      A(1) => ACT_mult_w_in(1),
      A(0) => ACT_mult_w_in(0),
      ACIN(29) => ACT_U1_U1_blk00000001_blk00000046_ACIN29,
      ACIN(28) => ACT_U1_U1_blk00000001_blk00000046_ACIN28,
      ACIN(27) => ACT_U1_U1_blk00000001_blk00000046_ACIN27,
      ACIN(26) => ACT_U1_U1_blk00000001_blk00000046_ACIN26,
      ACIN(25) => ACT_U1_U1_blk00000001_blk00000046_ACIN25,
      ACIN(24) => ACT_U1_U1_blk00000001_blk00000046_ACIN24,
      ACIN(23) => ACT_U1_U1_blk00000001_blk00000046_ACIN23,
      ACIN(22) => ACT_U1_U1_blk00000001_blk00000046_ACIN22,
      ACIN(21) => ACT_U1_U1_blk00000001_blk00000046_ACIN21,
      ACIN(20) => ACT_U1_U1_blk00000001_blk00000046_ACIN20,
      ACIN(19) => ACT_U1_U1_blk00000001_blk00000046_ACIN19,
      ACIN(18) => ACT_U1_U1_blk00000001_blk00000046_ACIN18,
      ACIN(17) => ACT_U1_U1_blk00000001_blk00000046_ACIN17,
      ACIN(16) => ACT_U1_U1_blk00000001_blk00000046_ACIN16,
      ACIN(15) => ACT_U1_U1_blk00000001_blk00000046_ACIN15,
      ACIN(14) => ACT_U1_U1_blk00000001_blk00000046_ACIN14,
      ACIN(13) => ACT_U1_U1_blk00000001_blk00000046_ACIN13,
      ACIN(12) => ACT_U1_U1_blk00000001_blk00000046_ACIN12,
      ACIN(11) => ACT_U1_U1_blk00000001_blk00000046_ACIN11,
      ACIN(10) => ACT_U1_U1_blk00000001_blk00000046_ACIN10,
      ACIN(9) => ACT_U1_U1_blk00000001_blk00000046_ACIN9,
      ACIN(8) => ACT_U1_U1_blk00000001_blk00000046_ACIN8,
      ACIN(7) => ACT_U1_U1_blk00000001_blk00000046_ACIN7,
      ACIN(6) => ACT_U1_U1_blk00000001_blk00000046_ACIN6,
      ACIN(5) => ACT_U1_U1_blk00000001_blk00000046_ACIN5,
      ACIN(4) => ACT_U1_U1_blk00000001_blk00000046_ACIN4,
      ACIN(3) => ACT_U1_U1_blk00000001_blk00000046_ACIN3,
      ACIN(2) => ACT_U1_U1_blk00000001_blk00000046_ACIN2,
      ACIN(1) => ACT_U1_U1_blk00000001_blk00000046_ACIN1,
      ACIN(0) => ACT_U1_U1_blk00000001_blk00000046_ACIN0,
      CARRYINSEL(2) => GND,
      CARRYINSEL(1) => GND,
      CARRYINSEL(0) => GND,
      ACOUT(29) => ACT_U1_U1_blk00000001_blk00000046_ACOUT29,
      ACOUT(28) => ACT_U1_U1_blk00000001_blk00000046_ACOUT28,
      ACOUT(27) => ACT_U1_U1_blk00000001_blk00000046_ACOUT27,
      ACOUT(26) => ACT_U1_U1_blk00000001_blk00000046_ACOUT26,
      ACOUT(25) => ACT_U1_U1_blk00000001_blk00000046_ACOUT25,
      ACOUT(24) => ACT_U1_U1_blk00000001_blk00000046_ACOUT24,
      ACOUT(23) => ACT_U1_U1_blk00000001_blk00000046_ACOUT23,
      ACOUT(22) => ACT_U1_U1_blk00000001_blk00000046_ACOUT22,
      ACOUT(21) => ACT_U1_U1_blk00000001_blk00000046_ACOUT21,
      ACOUT(20) => ACT_U1_U1_blk00000001_blk00000046_ACOUT20,
      ACOUT(19) => ACT_U1_U1_blk00000001_blk00000046_ACOUT19,
      ACOUT(18) => ACT_U1_U1_blk00000001_blk00000046_ACOUT18,
      ACOUT(17) => ACT_U1_U1_blk00000001_blk00000046_ACOUT17,
      ACOUT(16) => ACT_U1_U1_blk00000001_blk00000046_ACOUT16,
      ACOUT(15) => ACT_U1_U1_blk00000001_blk00000046_ACOUT15,
      ACOUT(14) => ACT_U1_U1_blk00000001_blk00000046_ACOUT14,
      ACOUT(13) => ACT_U1_U1_blk00000001_blk00000046_ACOUT13,
      ACOUT(12) => ACT_U1_U1_blk00000001_blk00000046_ACOUT12,
      ACOUT(11) => ACT_U1_U1_blk00000001_blk00000046_ACOUT11,
      ACOUT(10) => ACT_U1_U1_blk00000001_blk00000046_ACOUT10,
      ACOUT(9) => ACT_U1_U1_blk00000001_blk00000046_ACOUT9,
      ACOUT(8) => ACT_U1_U1_blk00000001_blk00000046_ACOUT8,
      ACOUT(7) => ACT_U1_U1_blk00000001_blk00000046_ACOUT7,
      ACOUT(6) => ACT_U1_U1_blk00000001_blk00000046_ACOUT6,
      ACOUT(5) => ACT_U1_U1_blk00000001_blk00000046_ACOUT5,
      ACOUT(4) => ACT_U1_U1_blk00000001_blk00000046_ACOUT4,
      ACOUT(3) => ACT_U1_U1_blk00000001_blk00000046_ACOUT3,
      ACOUT(2) => ACT_U1_U1_blk00000001_blk00000046_ACOUT2,
      ACOUT(1) => ACT_U1_U1_blk00000001_blk00000046_ACOUT1,
      ACOUT(0) => ACT_U1_U1_blk00000001_blk00000046_ACOUT0,
      CARRYOUT(3) => ACT_U1_U1_blk00000001_blk00000046_CARRYOUT3,
      CARRYOUT(2) => ACT_U1_U1_blk00000001_blk00000046_CARRYOUT2,
      CARRYOUT(1) => ACT_U1_U1_blk00000001_blk00000046_CARRYOUT1,
      CARRYOUT(0) => ACT_U1_U1_blk00000001_blk00000046_CARRYOUT0,
      BCOUT(17) => ACT_U1_U1_blk00000001_blk00000046_BCOUT17,
      BCOUT(16) => ACT_U1_U1_blk00000001_blk00000046_BCOUT16,
      BCOUT(15) => ACT_U1_U1_blk00000001_blk00000046_BCOUT15,
      BCOUT(14) => ACT_U1_U1_blk00000001_blk00000046_BCOUT14,
      BCOUT(13) => ACT_U1_U1_blk00000001_blk00000046_BCOUT13,
      BCOUT(12) => ACT_U1_U1_blk00000001_blk00000046_BCOUT12,
      BCOUT(11) => ACT_U1_U1_blk00000001_blk00000046_BCOUT11,
      BCOUT(10) => ACT_U1_U1_blk00000001_blk00000046_BCOUT10,
      BCOUT(9) => ACT_U1_U1_blk00000001_blk00000046_BCOUT9,
      BCOUT(8) => ACT_U1_U1_blk00000001_blk00000046_BCOUT8,
      BCOUT(7) => ACT_U1_U1_blk00000001_blk00000046_BCOUT7,
      BCOUT(6) => ACT_U1_U1_blk00000001_blk00000046_BCOUT6,
      BCOUT(5) => ACT_U1_U1_blk00000001_blk00000046_BCOUT5,
      BCOUT(4) => ACT_U1_U1_blk00000001_blk00000046_BCOUT4,
      BCOUT(3) => ACT_U1_U1_blk00000001_blk00000046_BCOUT3,
      BCOUT(2) => ACT_U1_U1_blk00000001_blk00000046_BCOUT2,
      BCOUT(1) => ACT_U1_U1_blk00000001_blk00000046_BCOUT1,
      BCOUT(0) => ACT_U1_U1_blk00000001_blk00000046_BCOUT0,
      P(47) => ACT_U1_U1_blk00000001_blk00000046_P47,
      P(46) => ACT_U1_U1_blk00000001_blk00000046_P46,
      P(45) => ACT_U1_U1_blk00000001_blk00000046_P45,
      P(44) => ACT_U1_U1_blk00000001_blk00000046_P44,
      P(43) => ACT_U1_U1_blk00000001_blk00000046_P43,
      P(42) => ACT_U1_U1_blk00000001_blk00000046_P42,
      P(41) => ACT_U1_U1_blk00000001_blk00000046_P41,
      P(40) => ACT_U1_U1_blk00000001_blk00000046_P40,
      P(39) => ACT_U1_U1_blk00000001_blk00000046_P39,
      P(38) => ACT_U1_U1_blk00000001_blk00000046_P38,
      P(37) => y_19_OBUF_4833,
      P(36) => ACT_U1_U1_blk00000001_blk00000046_P36,
      P(35) => ACT_U1_U1_blk00000001_blk00000046_P35,
      P(34) => ACT_U1_U1_blk00000001_blk00000046_P34,
      P(33) => ACT_U1_U1_blk00000001_blk00000046_P33,
      P(32) => y_18_OBUF_4831,
      P(31) => y_17_OBUF_4829,
      P(30) => y_16_OBUF_4827,
      P(29) => y_15_OBUF_4824,
      P(28) => y_14_OBUF_4822,
      P(27) => y_13_OBUF_4820,
      P(26) => y_12_OBUF_4818,
      P(25) => y_11_OBUF_4815,
      P(24) => y_10_OBUF_4813,
      P(23) => y_9_OBUF_4811,
      P(22) => y_8_OBUF_4809,
      P(21) => y_7_OBUF_4806,
      P(20) => y_6_OBUF_4804,
      P(19) => y_5_OBUF_4802,
      P(18) => y_4_OBUF_4800,
      P(17) => y_3_OBUF_4797,
      P(16) => y_2_OBUF_4795,
      P(15) => y_1_OBUF_4793,
      P(14) => y_0_OBUF_4963,
      P(13) => ACT_U1_U1_blk00000001_blk00000046_P13,
      P(12) => ACT_U1_U1_blk00000001_blk00000046_P12,
      P(11) => ACT_U1_U1_blk00000001_blk00000046_P11,
      P(10) => ACT_U1_U1_blk00000001_blk00000046_P10,
      P(9) => ACT_U1_U1_blk00000001_blk00000046_P9,
      P(8) => ACT_U1_U1_blk00000001_blk00000046_P8,
      P(7) => ACT_U1_U1_blk00000001_blk00000046_P7,
      P(6) => ACT_U1_U1_blk00000001_blk00000046_P6,
      P(5) => ACT_U1_U1_blk00000001_blk00000046_P5,
      P(4) => ACT_U1_U1_blk00000001_blk00000046_P4,
      P(3) => ACT_U1_U1_blk00000001_blk00000046_P3,
      P(2) => ACT_U1_U1_blk00000001_blk00000046_P2,
      P(1) => ACT_U1_U1_blk00000001_blk00000046_P1,
      P(0) => ACT_U1_U1_blk00000001_blk00000046_P0,
      PCOUT(47) => ACT_U1_U1_blk00000001_blk00000046_PCOUT47,
      PCOUT(46) => ACT_U1_U1_blk00000001_blk00000046_PCOUT46,
      PCOUT(45) => ACT_U1_U1_blk00000001_blk00000046_PCOUT45,
      PCOUT(44) => ACT_U1_U1_blk00000001_blk00000046_PCOUT44,
      PCOUT(43) => ACT_U1_U1_blk00000001_blk00000046_PCOUT43,
      PCOUT(42) => ACT_U1_U1_blk00000001_blk00000046_PCOUT42,
      PCOUT(41) => ACT_U1_U1_blk00000001_blk00000046_PCOUT41,
      PCOUT(40) => ACT_U1_U1_blk00000001_blk00000046_PCOUT40,
      PCOUT(39) => ACT_U1_U1_blk00000001_blk00000046_PCOUT39,
      PCOUT(38) => ACT_U1_U1_blk00000001_blk00000046_PCOUT38,
      PCOUT(37) => ACT_U1_U1_blk00000001_blk00000046_PCOUT37,
      PCOUT(36) => ACT_U1_U1_blk00000001_blk00000046_PCOUT36,
      PCOUT(35) => ACT_U1_U1_blk00000001_blk00000046_PCOUT35,
      PCOUT(34) => ACT_U1_U1_blk00000001_blk00000046_PCOUT34,
      PCOUT(33) => ACT_U1_U1_blk00000001_blk00000046_PCOUT33,
      PCOUT(32) => ACT_U1_U1_blk00000001_blk00000046_PCOUT32,
      PCOUT(31) => ACT_U1_U1_blk00000001_blk00000046_PCOUT31,
      PCOUT(30) => ACT_U1_U1_blk00000001_blk00000046_PCOUT30,
      PCOUT(29) => ACT_U1_U1_blk00000001_blk00000046_PCOUT29,
      PCOUT(28) => ACT_U1_U1_blk00000001_blk00000046_PCOUT28,
      PCOUT(27) => ACT_U1_U1_blk00000001_blk00000046_PCOUT27,
      PCOUT(26) => ACT_U1_U1_blk00000001_blk00000046_PCOUT26,
      PCOUT(25) => ACT_U1_U1_blk00000001_blk00000046_PCOUT25,
      PCOUT(24) => ACT_U1_U1_blk00000001_blk00000046_PCOUT24,
      PCOUT(23) => ACT_U1_U1_blk00000001_blk00000046_PCOUT23,
      PCOUT(22) => ACT_U1_U1_blk00000001_blk00000046_PCOUT22,
      PCOUT(21) => ACT_U1_U1_blk00000001_blk00000046_PCOUT21,
      PCOUT(20) => ACT_U1_U1_blk00000001_blk00000046_PCOUT20,
      PCOUT(19) => ACT_U1_U1_blk00000001_blk00000046_PCOUT19,
      PCOUT(18) => ACT_U1_U1_blk00000001_blk00000046_PCOUT18,
      PCOUT(17) => ACT_U1_U1_blk00000001_blk00000046_PCOUT17,
      PCOUT(16) => ACT_U1_U1_blk00000001_blk00000046_PCOUT16,
      PCOUT(15) => ACT_U1_U1_blk00000001_blk00000046_PCOUT15,
      PCOUT(14) => ACT_U1_U1_blk00000001_blk00000046_PCOUT14,
      PCOUT(13) => ACT_U1_U1_blk00000001_blk00000046_PCOUT13,
      PCOUT(12) => ACT_U1_U1_blk00000001_blk00000046_PCOUT12,
      PCOUT(11) => ACT_U1_U1_blk00000001_blk00000046_PCOUT11,
      PCOUT(10) => ACT_U1_U1_blk00000001_blk00000046_PCOUT10,
      PCOUT(9) => ACT_U1_U1_blk00000001_blk00000046_PCOUT9,
      PCOUT(8) => ACT_U1_U1_blk00000001_blk00000046_PCOUT8,
      PCOUT(7) => ACT_U1_U1_blk00000001_blk00000046_PCOUT7,
      PCOUT(6) => ACT_U1_U1_blk00000001_blk00000046_PCOUT6,
      PCOUT(5) => ACT_U1_U1_blk00000001_blk00000046_PCOUT5,
      PCOUT(4) => ACT_U1_U1_blk00000001_blk00000046_PCOUT4,
      PCOUT(3) => ACT_U1_U1_blk00000001_blk00000046_PCOUT3,
      PCOUT(2) => ACT_U1_U1_blk00000001_blk00000046_PCOUT2,
      PCOUT(1) => ACT_U1_U1_blk00000001_blk00000046_PCOUT1,
      PCOUT(0) => ACT_U1_U1_blk00000001_blk00000046_PCOUT0
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_19_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y40",
      INIT => X"00000000C040CC44"
    )
    port map (
      ADR1 => x_pred_0_19_IBUF_5065,
      ADR3 => ACT_U9_d(3),
      ADR0 => fwd_pred_3_IBUF_4784,
      ADR2 => ACT_U9_d(2),
      ADR4 => fwd_pred_2_IBUF_4781,
      ADR5 => ACT_f_sel(0),
      O => N100
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_15_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"00CF004500000000"
    )
    port map (
      ADR5 => x_pred_0_15_IBUF_5061,
      ADR4 => ACT_U9_d(2),
      ADR0 => fwd_pred_2_IBUF_4781,
      ADR1 => ACT_U9_d(3),
      ADR2 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N68
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_17_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"080008080C000C0C"
    )
    port map (
      ADR1 => x_pred_0_17_IBUF_5063,
      ADR0 => ACT_U9_d(2),
      ADR5 => fwd_pred_2_IBUF_4781,
      ADR3 => ACT_U9_d(3),
      ADR4 => fwd_pred_3_IBUF_4784,
      ADR2 => ACT_f_sel(0),
      O => N64
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y44",
      INIT => X"00000000C040CC44"
    )
    port map (
      ADR1 => x_pred_0_13_IBUF_5059,
      ADR2 => ACT_U9_d(2),
      ADR4 => fwd_pred_2_IBUF_4781,
      ADR3 => ACT_U9_d(3),
      ADR0 => fwd_pred_3_IBUF_4784,
      ADR5 => ACT_f_sel(0),
      O => N72
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_10_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y45",
      INIT => X"00F3005100000000"
    )
    port map (
      ADR5 => x_pred_0_10_IBUF_5056,
      ADR2 => ACT_U9_d(2),
      ADR1 => fwd_pred_2_IBUF_4781,
      ADR4 => ACT_U9_d(3),
      ADR0 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N78
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => X"00F3005100000000"
    )
    port map (
      ADR5 => x_pred_0_7_IBUF_5076,
      ADR2 => ACT_U9_d(2),
      ADR1 => fwd_pred_2_IBUF_4781,
      ADR4 => ACT_U9_d(3),
      ADR0 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N84
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y47",
      INIT => X"000080880000A0AA"
    )
    port map (
      ADR0 => x_pred_0_2_IBUF_5071,
      ADR2 => ACT_U9_d(2),
      ADR3 => fwd_pred_2_IBUF_4781,
      ADR1 => ACT_U9_d(3),
      ADR5 => fwd_pred_3_IBUF_4784,
      ADR4 => ACT_f_sel(0),
      O => N94
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y47",
      INIT => X"00F3005100000000"
    )
    port map (
      ADR5 => x_pred_0_4_IBUF_5073,
      ADR2 => ACT_U9_d(2),
      ADR1 => fwd_pred_2_IBUF_4781,
      ADR4 => ACT_U9_d(3),
      ADR0 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N90
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y48",
      INIT => X"00C400C4000000C4"
    )
    port map (
      ADR1 => x_pred_0_1_IBUF_5070,
      ADR5 => ACT_U9_d(2),
      ADR4 => fwd_pred_2_IBUF_4781,
      ADR2 => ACT_U9_d(3),
      ADR0 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N96
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_18_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y40",
      INIT => X"000080C00000A0F0"
    )
    port map (
      ADR2 => x_pred_0_18_IBUF_5064,
      ADR0 => ACT_U9_d(2),
      ADR3 => fwd_pred_2_IBUF_4781,
      ADR1 => ACT_U9_d(3),
      ADR5 => fwd_pred_3_IBUF_4784,
      ADR4 => ACT_f_sel(0),
      O => N62
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_14_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y42",
      INIT => X"2202000033030000"
    )
    port map (
      ADR4 => x_pred_0_14_IBUF_5060,
      ADR0 => ACT_U9_d(2),
      ADR5 => fwd_pred_2_IBUF_4781,
      ADR3 => ACT_U9_d(3),
      ADR2 => fwd_pred_3_IBUF_4784,
      ADR1 => ACT_f_sel(0),
      O => N70
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_16_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y42",
      INIT => X"4400040055000500"
    )
    port map (
      ADR3 => x_pred_0_16_IBUF_5062,
      ADR1 => ACT_U9_d(2),
      ADR5 => fwd_pred_2_IBUF_4781,
      ADR4 => ACT_U9_d(3),
      ADR2 => fwd_pred_3_IBUF_4784,
      ADR0 => ACT_f_sel(0),
      O => N66
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y44",
      INIT => X"2202000033030000"
    )
    port map (
      ADR4 => x_pred_0_11_IBUF_5057,
      ADR0 => ACT_U9_d(2),
      ADR5 => fwd_pred_2_IBUF_4781,
      ADR3 => ACT_U9_d(3),
      ADR2 => fwd_pred_3_IBUF_4784,
      ADR1 => ACT_f_sel(0),
      O => N76
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y44",
      INIT => X"4400040044440404"
    )
    port map (
      ADR1 => x_pred_0_12_IBUF_5058,
      ADR3 => ACT_U9_d(2),
      ADR5 => fwd_pred_2_IBUF_4781,
      ADR4 => ACT_U9_d(3),
      ADR2 => fwd_pred_3_IBUF_4784,
      ADR0 => ACT_f_sel(0),
      O => N74
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_8_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y45",
      INIT => X"080008080C000C0C"
    )
    port map (
      ADR1 => x_pred_0_8_IBUF_5077,
      ADR0 => ACT_U9_d(2),
      ADR5 => fwd_pred_2_IBUF_4781,
      ADR3 => ACT_U9_d(3),
      ADR4 => fwd_pred_3_IBUF_4784,
      ADR2 => ACT_f_sel(0),
      O => N82
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y45",
      INIT => X"2020222200200022"
    )
    port map (
      ADR0 => x_pred_0_9_IBUF_5078,
      ADR5 => ACT_U9_d(2),
      ADR3 => fwd_pred_2_IBUF_4781,
      ADR2 => ACT_U9_d(3),
      ADR4 => fwd_pred_3_IBUF_4784,
      ADR1 => ACT_f_sel(0),
      O => N80
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y46",
      INIT => X"00BB000B00000000"
    )
    port map (
      ADR5 => x_pred_0_5_IBUF_5074,
      ADR0 => ACT_U9_d(2),
      ADR1 => fwd_pred_2_IBUF_4781,
      ADR4 => ACT_U9_d(3),
      ADR2 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N88
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y46",
      INIT => X"00F3005100000000"
    )
    port map (
      ADR5 => x_pred_0_6_IBUF_5075,
      ADR2 => ACT_U9_d(2),
      ADR1 => fwd_pred_2_IBUF_4781,
      ADR4 => ACT_U9_d(3),
      ADR0 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N86
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_lut_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y47",
      INIT => X"00CC0044000C0004"
    )
    port map (
      ADR1 => x_pred_0_3_IBUF_5072,
      ADR4 => ACT_U9_d(2),
      ADR0 => fwd_pred_2_IBUF_4781,
      ADR5 => ACT_U9_d(3),
      ADR2 => fwd_pred_3_IBUF_4784,
      ADR3 => ACT_f_sel(0),
      O => N92
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A131 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y33",
      INIT => X"FEBA5410FEBA5410"
    )
    port map (
      ADR5 => '1',
      ADR0 => ACT_acc_f_reset0_0,
      ADR2 => ACT_U2_cnt(2),
      ADR1 => ACT_acc_f_reset1,
      ADR3 => ACT_omx_out_2_0,
      ADR4 => ACT_U4_weight_reg(2),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_2_Q
    );
  ACT_U6_x_addr_2_x_addr_3_AND_10_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => X"FFFFFFFFFFFFC000"
    )
    port map (
      ADR0 => '1',
      ADR5 => ACT_U2_cnt(3),
      ADR4 => ACT_U2_cnt(4),
      ADR2 => ACT_U2_cnt(0),
      ADR1 => ACT_U2_cnt(1),
      ADR3 => ACT_U2_cnt(2),
      O => ACT_U6_x_addr_2_x_addr_3_AND_10_o2_5139
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A121 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => X"AAAAFFF0AAAA00F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => ACT_acc_f_reset0_0,
      ADR2 => ACT_U2_cnt(1),
      ADR3 => ACT_acc_f_reset1,
      ADR5 => ACT_omx_out_1_0,
      ADR0 => ACT_U4_weight_reg(1),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_1_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A101 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y34",
      INIT => X"FFF5FFA000F500A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ACT_acc_f_reset0_0,
      ADR4 => ACT_U2_cnt(18),
      ADR0 => ACT_acc_f_reset1,
      ADR2 => ACT_omx_out_18_0,
      ADR5 => ACT_U4_weight_reg(18),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A181 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"FEAEFEAE54045404"
    )
    port map (
      ADR4 => '1',
      ADR0 => ACT_acc_f_reset0_0,
      ADR1 => ACT_U2_cnt(7),
      ADR2 => ACT_acc_f_reset1,
      ADR3 => ACT_omx_out_7_0,
      ADR5 => ACT_U4_weight_reg(7),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_7_Q
    );
  ACT_U6_x_addr_2_x_addr_3_AND_10_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ACT_U2_cnt(7),
      ADR4 => ACT_U2_cnt(8),
      ADR3 => ACT_U2_cnt(9),
      O => ACT_U6_x_addr_2_x_addr_3_AND_10_o1_5138
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A161 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"BBBBB8B88B8B8888"
    )
    port map (
      ADR3 => '1',
      ADR1 => ACT_acc_f_reset0_0,
      ADR4 => ACT_U2_cnt(5),
      ADR2 => ACT_acc_f_reset1,
      ADR5 => ACT_omx_out_5_0,
      ADR0 => ACT_U4_weight_reg(5),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_5_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A151 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y35",
      INIT => X"FFFFB8B80000B8B8"
    )
    port map (
      ADR3 => '1',
      ADR4 => ACT_acc_f_reset0_0,
      ADR2 => ACT_U2_cnt(4),
      ADR1 => ACT_acc_f_reset1,
      ADR0 => ACT_omx_out_4_0,
      ADR5 => ACT_U4_weight_reg(4),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_4_Q
    );
  N24_N24_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N25_pack_8,
      O => N25
    );
  ACT_U6_x_addr_2_x_addr_3_AND_10_o3_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X17Y36"
    )
    port map (
      IA => N98,
      IB => '1',
      O => N25_pack_8,
      SEL => ACT_U2_cnt(16)
    );
  ACT_U6_x_addr_2_x_addr_3_AND_10_o3_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"FFFFFFEEFFFEFFEE"
    )
    port map (
      ADR4 => ACT_U2_cnt(12),
      ADR5 => ACT_U2_cnt(11),
      ADR2 => ACT_U2_cnt(10),
      ADR3 => ACT_U2_cnt(15),
      ADR0 => ACT_U2_cnt(14),
      ADR1 => ACT_U2_cnt(13),
      O => N98
    );
  N0_4_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_4_C6LUT_O_UNCONNECTED
    );
  ACT_U6_x_addr_2_x_addr_3_AND_10_o3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"FFFFFFFFFFFFFEEE"
    )
    port map (
      ADR0 => ACT_U2_cnt(16),
      ADR5 => ACT_U2_cnt(15),
      ADR4 => ACT_U2_cnt(14),
      ADR1 => ACT_U2_cnt(13),
      ADR2 => ACT_U2_cnt(11),
      ADR3 => ACT_U2_cnt(12),
      O => N24
    );
  ACT_U6_x_addr_2_x_addr_3_AND_10_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y36",
      INIT => X"FEFCFCFC040C0C0C"
    )
    port map (
      ADR0 => ACT_U2_cnt(6),
      ADR4 => ACT_U2_cnt(5),
      ADR2 => ACT_U6_x_addr_2_x_addr_3_AND_10_o1_5138,
      ADR3 => ACT_U6_x_addr_2_x_addr_3_AND_10_o2_5139,
      ADR1 => N24,
      ADR5 => N25,
      O => ACT_U6_x_addr_2_x_addr_3_AND_10_o4_5137
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A71 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => X"F0F0DDDDF0F08888"
    )
    port map (
      ADR3 => '1',
      ADR4 => ACT_acc_f_reset0_0,
      ADR5 => ACT_U2_cnt(15),
      ADR0 => ACT_acc_f_reset1,
      ADR1 => ACT_omx_out_15_0,
      ADR2 => ACT_U4_weight_reg(15),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_15_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A61 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y37",
      INIT => X"FEDCFEDC32103210"
    )
    port map (
      ADR4 => '1',
      ADR1 => ACT_acc_f_reset0_0,
      ADR2 => ACT_U2_cnt(14),
      ADR0 => ACT_acc_f_reset1,
      ADR3 => ACT_omx_out_14_0,
      ADR5 => ACT_U4_weight_reg(14),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_14_Q
    );
  ACT_U6_x_addr_132 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => ACT_U2_cnt(2),
      ADR5 => ACT_U2_cnt(3),
      ADR0 => ACT_U2_cnt(18),
      ADR3 => ACT_U2_cnt(1),
      ADR1 => ACT_U2_cnt(16),
      ADR2 => ACT_U2_cnt(17),
      O => ACT_U6_x_addr_131_5151
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A91 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"FBFB5151EAEA4040"
    )
    port map (
      ADR3 => '1',
      ADR0 => ACT_acc_f_reset0_0,
      ADR5 => ACT_U2_cnt(17),
      ADR1 => ACT_acc_f_reset1,
      ADR2 => ACT_omx_out_17_0,
      ADR4 => ACT_U4_weight_reg(17),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_17_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A81 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => X"FC0CFC0CFF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_acc_f_reset0_0,
      ADR4 => ACT_U2_cnt(16),
      ADR5 => ACT_acc_f_reset1,
      ADR1 => ACT_omx_out_16_0,
      ADR3 => ACT_U4_weight_reg(16),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_16_Q
    );
  ACT_Mmux_mult_in141 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y48",
      INIT => X"FFFFFFF3000000C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_U8_sum(3),
      ADR5 => ACT_U2_cnt(3),
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(3)
    );
  ACT_Mmux_mult_in91 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y49",
      INIT => X"FFFFFCFF00000C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U8_sum(17),
      ADR5 => ACT_U2_cnt(17),
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(17)
    );
  ACT_Mmux_mult_in171 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y52",
      INIT => X"FFFAFFFF000A0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_U8_sum(6),
      ADR5 => ACT_U2_cnt(6),
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR3 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(6)
    );
  ACT_Mmux_mult_w_in21 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y55",
      INIT => X"CCDDFFCECC8800C4"
    )
    port map (
      ADR5 => ACT_U8_sum(10),
      ADR1 => ACT_U5_cnt(10),
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR0 => ACT_state_FSM_FFd1_4764,
      ADR3 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(10)
    );
  ACT_U6_x_addr_332 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"0F1F0F3FFFFFFFFF"
    )
    port map (
      ADR3 => ACT_U2_cnt(4),
      ADR1 => ACT_U2_cnt(3),
      ADR0 => ACT_U2_cnt(1),
      ADR4 => ACT_U2_cnt(2),
      ADR2 => ACT_U2_cnt(6),
      ADR5 => ACT_U2_cnt(5),
      O => ACT_U6_x_addr_331_5153
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A171 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"FFFAF0FA0F0A000A"
    )
    port map (
      ADR1 => '1',
      ADR2 => ACT_acc_f_reset0_0,
      ADR0 => ACT_U2_cnt(6),
      ADR3 => ACT_acc_f_reset1,
      ADR4 => ACT_omx_out_6_0,
      ADR5 => ACT_U4_weight_reg(6),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_6_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A31 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"AAAACFCFAAAAC0C0"
    )
    port map (
      ADR3 => '1',
      ADR4 => ACT_acc_f_reset0_0,
      ADR5 => ACT_U2_cnt(11),
      ADR2 => ACT_acc_f_reset1,
      ADR1 => ACT_omx_out_11_0,
      ADR0 => ACT_U4_weight_reg(11),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_11_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A191 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"CCCCCCCCFFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR5 => ACT_acc_f_reset0_0,
      ADR3 => ACT_U2_cnt(8),
      ADR2 => ACT_acc_f_reset1,
      ADR4 => ACT_omx_out_8_0,
      ADR1 => ACT_U4_weight_reg(8),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_8_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A41 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y37",
      INIT => X"AFA0AFAFAFA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => ACT_acc_f_reset0_0,
      ADR5 => ACT_U2_cnt(12),
      ADR4 => ACT_acc_f_reset1,
      ADR3 => ACT_omx_out_12_0,
      ADR0 => ACT_U4_weight_reg(12),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_12_Q
    );
  ACT_U6_x_addr_032 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y39",
      INIT => X"AA000000AA000000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U2_cnt(7),
      ADR0 => ACT_U2_cnt(8),
      ADR4 => ACT_U2_cnt(9),
      O => ACT_U6_x_addr_031_5147
    );
  ACT_U6_coeff_19_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y40",
      INIT => X"00F0000E00F00002"
    )
    port map (
      ADR1 => ACT_U7_cnt(0),
      ADR2 => ACT_U7_cnt(1),
      ADR4 => ACT_U6_x_addr_1,
      ADR0 => ACT_U6_x_addr_3,
      ADR3 => ACT_U6_x_addr_0,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_in1_16_Q
    );
  ACT_U6_x_addr_2_x_addr_3_AND_10_o5 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y40",
      INIT => X"7F33773333333333"
    )
    port map (
      ADR1 => ACT_U2_cnt(19),
      ADR4 => ACT_U2_cnt(12),
      ADR3 => N45,
      ADR0 => ACT_U6_x_addr_33,
      ADR2 => ACT_U6_x_addr_332_5143,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o4_5137,
      O => ACT_U6_x_addr_2_x_addr_3_AND_10_o
    );
  ACT_U6_coeff_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y44",
      INIT => X"11EE110011EE1101"
    )
    port map (
      ADR0 => ACT_U7_cnt(0),
      ADR1 => ACT_U7_cnt(1),
      ADR4 => ACT_U6_x_addr_1,
      ADR2 => ACT_U6_x_addr_3,
      ADR3 => ACT_U6_x_addr_0,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_in1_10_Q
    );
  ACT_U8_sum_15 : X_SFF
    generic map(
      LOC => "SLICE_X18Y44",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_15_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_15_Q,
      O => ACT_U8_sum(15),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y44",
      INIT => X"DFDACFCF8580C0C0"
    )
    port map (
      ADR3 => y_15_OBUF_4824,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR0 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR1 => ACT_in1_10_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_15_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_15_Q
    );
  ACT_Mmux_mult_in81 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y45",
      INIT => X"FFFF0000FCFF0C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U8_sum(16),
      ADR4 => ACT_U2_cnt(16),
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR5 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(16)
    );
  ACT_Mmux_mult_in51 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y47",
      INIT => X"FFFFFFF300000C00"
    )
    port map (
      ADR0 => '1',
      ADR3 => ACT_U8_sum(13),
      ADR5 => ACT_U2_cnt(13),
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(13)
    );
  ACT_U8_sum_19 : X_SFF
    generic map(
      LOC => "SLICE_X18Y48",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_19_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_19_Q,
      O => ACT_U8_sum(19),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y48",
      INIT => X"BFBCAFAF8380A0A0"
    )
    port map (
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR3 => y_19_OBUF_4833,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_16_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_19_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_19_Q
    );
  ACT_U8_sum_2 : X_SFF
    generic map(
      LOC => "SLICE_X18Y49",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_2_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_2_Q,
      O => ACT_U8_sum(2),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT131 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y49",
      INIT => X"AFAFEFE3A0A02C20"
    )
    port map (
      ADR3 => y_2_OBUF_4795,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_14_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_2_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_2_Q
    );
  ACT_U8_sum_8 : X_SFF
    generic map(
      LOC => "SLICE_X18Y49",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_8_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_8_Q,
      O => ACT_U8_sum(8),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT191 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y49",
      INIT => X"AFAFA0A0EFE32C20"
    )
    port map (
      ADR3 => y_8_OBUF_4809,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_10_Q,
      ADR4 => ACT_U8_a_19_b_19_add_0_OUT_8_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_8_Q
    );
  ACT_U8_sum_1 : X_SFF
    generic map(
      LOC => "SLICE_X18Y52",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_1_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_1_Q,
      O => ACT_U8_sum(1),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y52",
      INIT => X"FFAAAFCA00AAA0CA"
    )
    port map (
      ADR1 => y_1_OBUF_4793,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR3 => ACT_add_ld_a_0,
      ADR5 => ACT_in1_1_Q,
      ADR0 => ACT_U8_a_19_b_19_add_0_OUT_1_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_1_Q
    );
  ACT_Mmux_mult_in111 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y52",
      INIT => X"FFFFFFAF00500000"
    )
    port map (
      ADR1 => '1',
      ADR4 => ACT_U8_sum(0),
      ADR5 => ACT_U2_cnt(0),
      ADR2 => ACT_state_FSM_FFd1_4764,
      ADR0 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(0)
    );
  ACT_Mmux_mult_in191 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y53",
      INIT => X"FFFFFFF3000000C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_U8_sum(8),
      ADR5 => ACT_U2_cnt(8),
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(8)
    );
  ACT_Mmux_mult_w_in191 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y53",
      INIT => X"FEF5FEF110A010E0"
    )
    port map (
      ADR2 => ACT_U8_sum(8),
      ADR5 => ACT_U5_cnt(8),
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR0 => ACT_state_FSM_FFd2_4786,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(8)
    );
  ACT_mult_in_1_ACT_mult_in_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_acc_f_reset0,
      O => ACT_acc_f_reset0_0
    );
  ACT_Mmux_mult_in121 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y54",
      INIT => X"FFFFFFCF00003000"
    )
    port map (
      ADR0 => '1',
      ADR3 => ACT_U8_sum(1),
      ADR5 => ACT_U2_cnt(1),
      ADR2 => ACT_state_FSM_FFd1_1_5131,
      ADR1 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd3_1_5132,
      O => ACT_mult_in(1)
    );
  ACT_Mmux_acc_f_reset0121 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y54",
      INIT => X"0C00CCF30C00CCF3"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR5 => '1',
      O => ACT_mult_reset
    );
  ACT_Mmux_acc_f_reset011 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y54",
      INIT => X"0C00CCCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR3 => ACT_state_FSM_FFd1_4764,
      O => ACT_acc_f_reset0
    );
  ACT_Mmux_mult_w_in151 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y55",
      INIT => X"ABFAABFEA80AA802"
    )
    port map (
      ADR5 => ACT_U8_sum(4),
      ADR0 => ACT_U5_cnt(4),
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(4)
    );
  ACT_Mmux_mult_w_in131 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y55",
      INIT => X"CCFDCC08CFFCC00C"
    )
    port map (
      ADR4 => ACT_U8_sum(2),
      ADR1 => ACT_U5_cnt(2),
      ADR0 => ACT_state_FSM_FFd4_1_5134,
      ADR5 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd2_1_5133,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(2)
    );
  ACT_Mmux_mult_w_in121 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y55",
      INIT => X"AAAAF0F0AAF0B8AA"
    )
    port map (
      ADR2 => ACT_U8_sum(1),
      ADR0 => ACT_U5_cnt(1),
      ADR1 => ACT_state_FSM_FFd4_1_5134,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR5 => ACT_state_FSM_FFd2_1_5133,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(1)
    );
  ACT_Mmux_mult_w_in111 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y56",
      INIT => X"F0F0F5A0FF00F2D0"
    )
    port map (
      ADR3 => ACT_U8_sum(19),
      ADR2 => ACT_U5_cnt(19),
      ADR1 => ACT_state_FSM_FFd4_4762,
      ADR0 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(19)
    );
  ACT_Mmux_mult_w_in161 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y56",
      INIT => X"AABBFFAEAA8800A2"
    )
    port map (
      ADR5 => ACT_U8_sum(5),
      ADR0 => ACT_U5_cnt(5),
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR3 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(5)
    );
  ACT_Mmux_mult_w_in181 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y56",
      INIT => X"CCCCDD88EF40EE44"
    )
    port map (
      ADR3 => ACT_U8_sum(7),
      ADR1 => ACT_U5_cnt(7),
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR0 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(7)
    );
  ACT_Mmux_mult_w_in31 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y56",
      INIT => X"CCCFCCC0FDFC080C"
    )
    port map (
      ADR4 => ACT_U8_sum(11),
      ADR1 => ACT_U5_cnt(11),
      ADR0 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(11)
    );
  ACT_Mmux_mult_w_in101 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => X"AAAACCCCAACCACAA"
    )
    port map (
      ADR1 => ACT_U8_sum(18),
      ADR0 => ACT_U5_cnt(18),
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR5 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(18)
    );
  ACT_Mmux_mult_w_in71 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => X"CEC4DE84CFC0DE84"
    )
    port map (
      ADR3 => ACT_U8_sum(15),
      ADR1 => ACT_U5_cnt(15),
      ADR5 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR0 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(15)
    );
  ACT_Mmux_mult_w_in41 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => X"CCCAACACCCCAAAAC"
    )
    port map (
      ADR0 => ACT_U8_sum(12),
      ADR1 => ACT_U5_cnt(12),
      ADR5 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(12)
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A141 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => X"FFAA00AAFFF000F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => ACT_acc_f_reset0_0,
      ADR2 => ACT_U2_cnt(3),
      ADR5 => ACT_acc_f_reset1,
      ADR0 => ACT_omx_out_3_0,
      ADR4 => ACT_U4_weight_reg(3),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_3_Q
    );
  ACT_acc_f_reset1_ACT_acc_f_reset1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_add_ld_a,
      O => ACT_add_ld_a_0
    );
  ACT_state_acc_f_reset11 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"4444000044440000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR0 => ACT_state_FSM_FFd3_4763,
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR5 => '1',
      O => ACT_acc_f_reset1
    );
  ACT_state_add_ld_a1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"11110000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR0 => ACT_state_FSM_FFd3_4763,
      ADR1 => ACT_state_FSM_FFd1_4764,
      O => ACT_add_ld_a
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A110 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"CACACACACFCFC0C0"
    )
    port map (
      ADR3 => '1',
      ADR2 => ACT_acc_f_reset0_0,
      ADR4 => ACT_U2_cnt(0),
      ADR5 => ACT_acc_f_reset1,
      ADR0 => ACT_omx_out_0_0,
      ADR1 => ACT_U4_weight_reg(0),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_0_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A21 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => X"FF00E4E4FF00E4E4"
    )
    port map (
      ADR5 => '1',
      ADR4 => ACT_acc_f_reset0_0,
      ADR1 => ACT_U2_cnt(10),
      ADR0 => ACT_acc_f_reset1,
      ADR2 => ACT_omx_out_10_0,
      ADR3 => ACT_U4_weight_reg(10),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_10_Q
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A201 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => X"FFAAFAFA55005050"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_acc_f_reset0_0,
      ADR2 => ACT_U2_cnt(9),
      ADR4 => ACT_acc_f_reset1,
      ADR3 => ACT_omx_out_9_0,
      ADR5 => ACT_U4_weight_reg(9),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_9_Q
    );
  ACT_U6_x_addr_133 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y37",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => ACT_U2_cnt(8),
      ADR1 => ACT_U2_cnt(9),
      ADR2 => ACT_U2_cnt(6),
      ADR0 => ACT_U2_cnt(7),
      ADR3 => ACT_U2_cnt(4),
      ADR5 => ACT_U2_cnt(5),
      O => ACT_U6_x_addr_132_5150
    );
  ACT_U6_x_addr_033 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y38",
      INIT => X"AAAA000080800000"
    )
    port map (
      ADR3 => '1',
      ADR0 => ACT_U2_cnt(4),
      ADR4 => ACT_U2_cnt(3),
      ADR1 => ACT_U2_cnt(0),
      ADR2 => ACT_U2_cnt(1),
      ADR5 => ACT_U2_cnt(2),
      O => ACT_U6_x_addr_032_5148
    );
  ACT_U6_x_addr_034 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y39",
      INIT => X"FF00AA00FE00AA00"
    )
    port map (
      ADR0 => ACT_U2_cnt(10),
      ADR2 => ACT_U2_cnt(6),
      ADR1 => ACT_U2_cnt(5),
      ADR3 => ACT_U2_cnt(11),
      ADR4 => ACT_U6_x_addr_031_5147,
      ADR5 => ACT_U6_x_addr_032_5148,
      O => ACT_U6_x_addr_033_5149
    );
  ACT_U6_x_addr_035 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y39",
      INIT => X"0F0F0F0E0F0F0F00"
    )
    port map (
      ADR2 => ACT_U2_cnt(19),
      ADR4 => ACT_U2_cnt(18),
      ADR3 => ACT_U2_cnt(17),
      ADR0 => ACT_U2_cnt(12),
      ADR5 => ACT_U6_x_addr_03,
      ADR1 => ACT_U6_x_addr_033_5149,
      O => ACT_U6_x_addr_0
    );
  ACT_U6_x_addr_333 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y39",
      INIT => X"0001333300003333"
    )
    port map (
      ADR3 => ACT_U2_cnt(9),
      ADR2 => ACT_U2_cnt(8),
      ADR0 => ACT_U2_cnt(7),
      ADR4 => ACT_U2_cnt(10),
      ADR1 => ACT_U2_cnt(11),
      ADR5 => ACT_U6_x_addr_331_5153,
      O => ACT_U6_x_addr_332_5143
    );
  ACT_U6_x_addr_334 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y39",
      INIT => X"CCCC44CC4CCC44CC"
    )
    port map (
      ADR1 => ACT_U2_cnt(19),
      ADR0 => ACT_U2_cnt(18),
      ADR3 => ACT_U2_cnt(17),
      ADR2 => ACT_U2_cnt(12),
      ADR4 => ACT_U6_x_addr_33,
      ADR5 => ACT_U6_x_addr_332_5143,
      O => ACT_U6_x_addr_3
    );
  ACT_U6_x_addr_13_ACT_U6_x_addr_13_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N47,
      O => N47_0
    );
  ACT_U6_x_addr_131 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y40",
      INIT => X"FFFFFFFEFFFFFFFE"
    )
    port map (
      ADR5 => '1',
      ADR4 => ACT_U2_cnt(0),
      ADR0 => ACT_U2_cnt(10),
      ADR2 => ACT_U2_cnt(11),
      ADR1 => ACT_U2_cnt(13),
      ADR3 => ACT_U2_cnt(12),
      O => ACT_U6_x_addr_13
    );
  ACT_U6_x_addr_134 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y40",
      INIT => X"5555555555555554"
    )
    port map (
      ADR1 => ACT_U2_cnt(14),
      ADR3 => ACT_U2_cnt(15),
      ADR0 => ACT_U2_cnt(19),
      ADR4 => ACT_U6_x_addr_132_5150,
      ADR2 => ACT_U6_x_addr_131_5151,
      ADR5 => ACT_U6_x_addr_13,
      O => ACT_U6_x_addr_1
    );
  ACT_U6_x_addr_334_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y40",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ACT_U2_cnt(18),
      ADR3 => ACT_U2_cnt(17),
      ADR5 => '1',
      O => N45
    );
  ACT_U6_x_addr_334_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y40",
      INIT => X"CF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U2_cnt(12),
      ADR2 => ACT_U6_x_addr_33,
      ADR4 => ACT_U2_cnt(18),
      ADR3 => ACT_U2_cnt(17),
      O => N47
    );
  ACT_U6_x_addr_331 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y40",
      INIT => X"000000000000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ACT_U2_cnt(15),
      ADR4 => ACT_U2_cnt(16),
      ADR2 => ACT_U2_cnt(14),
      ADR5 => ACT_U2_cnt(13),
      O => ACT_U6_x_addr_33
    );
  N50_N50_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  ACT_U6_x_addr_035_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y41",
      INIT => X"00FE00EE00FE00EE"
    )
    port map (
      ADR3 => ACT_U2_cnt(19),
      ADR0 => ACT_U2_cnt(18),
      ADR4 => ACT_U2_cnt(12),
      ADR1 => ACT_U2_cnt(17),
      ADR2 => ACT_U6_x_addr_03,
      ADR5 => '1',
      O => N50
    );
  ACT_U6_x_addr_035_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y41",
      INIT => X"00FE00FE"
    )
    port map (
      ADR3 => ACT_U2_cnt(19),
      ADR0 => ACT_U2_cnt(18),
      ADR4 => '1',
      ADR1 => ACT_U2_cnt(17),
      ADR2 => ACT_U6_x_addr_03,
      O => N51
    );
  ACT_U6_x_addr_031 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y41",
      INIT => X"8000800080008000"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => ACT_U2_cnt(15),
      ADR2 => ACT_U2_cnt(16),
      ADR3 => ACT_U2_cnt(13),
      ADR0 => ACT_U2_cnt(14),
      O => ACT_U6_x_addr_03
    );
  ACT_mult_in_14_ACT_mult_in_14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_add_en,
      O => ACT_add_en_0
    );
  ACT_Mmux_mult_in61 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y44",
      INIT => X"FFFFFAFF00000A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_U8_sum(14),
      ADR5 => ACT_U2_cnt(14),
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(14)
    );
  ACT_Mmux_acc_f_reset0111 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y44",
      INIT => X"5000F0A55000F0A5"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR5 => '1',
      O => ACT_add_reset
    );
  ACT_Mmux_add_en11 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y44",
      INIT => X"000AF0FA"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_add_en
    );
  ACT_Mmux_mult_in71 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y45",
      INIT => X"FFFCFFFF000C0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U8_sum(15),
      ADR5 => ACT_U2_cnt(15),
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(15)
    );
  ACT_U8_sum_16 : X_SFF
    generic map(
      LOC => "SLICE_X19Y46",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_16_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_16_Q,
      O => ACT_U8_sum(16),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y46",
      INIT => X"BFBCAFAF8380A0A0"
    )
    port map (
      ADR3 => y_16_OBUF_4827,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_16_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_16_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_16_Q
    );
  ACT_Mmux_mult_in31 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y46",
      INIT => X"FFFFFFF3000C0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => ACT_U8_sum(11),
      ADR5 => ACT_U2_cnt(11),
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(11)
    );
  ACT_Mmux_mult_in181 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y47",
      INIT => X"FFFAFFFF000A0000"
    )
    port map (
      ADR1 => '1',
      ADR0 => ACT_U8_sum(7),
      ADR5 => ACT_U2_cnt(7),
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR3 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(7)
    );
  ACT_U8_sum_7 : X_SFF
    generic map(
      LOC => "SLICE_X19Y47",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_7_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_7_Q,
      O => ACT_U8_sum(7),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT181 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y47",
      INIT => X"BBFCAAFF8830AA00"
    )
    port map (
      ADR2 => y_7_OBUF_4806,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR3 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_14_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_7_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_7_Q
    );
  ACT_Mmux_mult_in131 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y47",
      INIT => X"FFFCFFFF000C0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U8_sum(2),
      ADR5 => ACT_U2_cnt(2),
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR3 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(2)
    );
  ACT_U8_sum_17 : X_SFF
    generic map(
      LOC => "SLICE_X19Y49",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_17_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_17_Q,
      O => ACT_U8_sum(17),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y49",
      INIT => X"BFBCAFAF8380A0A0"
    )
    port map (
      ADR3 => y_17_OBUF_4829,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_16_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_17_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_17_Q
    );
  ACT_Mmux_mult_in161 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y49",
      INIT => X"FFFFFFF3000000C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_U8_sum(5),
      ADR5 => ACT_U2_cnt(5),
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(5)
    );
  ACT_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X19Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd1_CLK,
      I => ACT_state_FSM_FFd1_In,
      O => ACT_state_FSM_FFd1_4764,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X19Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd4_CLK,
      I => NlwBufferSignal_ACT_state_FSM_FFd4_IN,
      O => ACT_state_FSM_FFd4_4762,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_Mmux_mult_in41 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y50",
      INIT => X"FFFFFCFF00003000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_U8_sum(12),
      ADR5 => ACT_U2_cnt(12),
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR1 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(12)
    );
  ACT_Mmux_mult_in112 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y50",
      INIT => X"FFFFFFF3000000C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => ACT_U8_sum(19),
      ADR5 => ACT_U2_cnt(19),
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(19)
    );
  ACT_U8_sum_18 : X_SFF
    generic map(
      LOC => "SLICE_X19Y51",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_18_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_18_Q,
      O => ACT_U8_sum(18),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y51",
      INIT => X"BFBCAFAF8380A0A0"
    )
    port map (
      ADR3 => y_18_OBUF_4831,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_16_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_18_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_18_Q
    );
  ACT_Mmux_mult_in101 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y52",
      INIT => X"FFFFFCFF00000C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U8_sum(18),
      ADR5 => ACT_U2_cnt(18),
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(18)
    );
  ACT_Mmux_mult_in151 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y52",
      INIT => X"FFFFFFF300000C00"
    )
    port map (
      ADR0 => '1',
      ADR3 => ACT_U8_sum(4),
      ADR5 => ACT_U2_cnt(4),
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(4)
    );
  ACT_mult_w_in_16_ACT_mult_w_in_16_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b,
      O => ACT_U1_U1_blk00000001_sig0000006b_0
    );
  ACT_mult_w_in_16_ACT_mult_w_in_16_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006a,
      O => ACT_U1_U1_blk00000001_sig0000006a_0
    );
  ACT_Mmux_mult_w_in81 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y58",
      INIT => X"CCCFCCC0FDFC080C"
    )
    port map (
      ADR4 => ACT_U8_sum(16),
      ADR1 => ACT_U5_cnt(16),
      ADR0 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(16)
    );
  ACT_U1_U1_blk00000001_blk00000004 : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y58"
    )
    port map (
      CI => ACT_U1_U1_blk00000001_sig00000082,
      CYINIT => '0',
      CO(3) => NLW_ACT_U1_U1_blk00000001_blk00000004_CO_3_UNCONNECTED,
      CO(2) => NLW_ACT_U1_U1_blk00000001_blk00000004_CO_2_UNCONNECTED,
      CO(1) => NLW_ACT_U1_U1_blk00000001_blk00000004_CO_1_UNCONNECTED,
      CO(0) => NLW_ACT_U1_U1_blk00000001_blk00000004_CO_0_UNCONNECTED,
      DI(3) => NLW_ACT_U1_U1_blk00000001_blk00000004_DI_3_UNCONNECTED,
      DI(2) => NLW_ACT_U1_U1_blk00000001_blk00000004_DI_2_UNCONNECTED,
      DI(1) => NLW_ACT_U1_U1_blk00000001_blk00000004_DI_1_UNCONNECTED,
      DI(0) => ACT_U1_U1_blk00000001_sig00000096,
      O(3) => NLW_ACT_U1_U1_blk00000001_blk00000004_O_3_UNCONNECTED,
      O(2) => NLW_ACT_U1_U1_blk00000001_blk00000004_O_2_UNCONNECTED,
      O(1) => ACT_U1_U1_blk00000001_sig0000006b,
      O(0) => ACT_U1_U1_blk00000001_sig0000006a,
      S(3) => NLW_ACT_U1_U1_blk00000001_blk00000004_S_3_UNCONNECTED,
      S(2) => NLW_ACT_U1_U1_blk00000001_blk00000004_S_2_UNCONNECTED,
      S(1) => ACT_U1_U1_blk00000001_sig0000006c,
      S(0) => ACT_U1_U1_blk00000001_sig0000006d
    );
  ACT_U1_U1_blk00000001_blk0000004f : X_LUT6
    generic map(
      LOC => "SLICE_X19Y58",
      INIT => X"4444888844448888"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ACT_mult_w_in(19),
      ADR0 => ACT_mult_in(1),
      ADR4 => ACT_mult_in(0),
      O => ACT_U1_U1_blk00000001_sig0000006c
    );
  ACT_U1_U1_blk00000001_blk00000050 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y58",
      INIT => X"0F00F0000F00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ACT_mult_w_in(19),
      ADR4 => ACT_mult_in(1),
      ADR2 => ACT_mult_in(0),
      ADR5 => '1',
      O => ACT_U1_U1_blk00000001_sig0000006d
    );
  ACT_U1_U1_blk00000001_blk0000002f : X_LUT5
    generic map(
      LOC => "SLICE_X19Y58",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ACT_mult_w_in(19),
      ADR4 => ACT_mult_in(1),
      ADR2 => '1',
      O => ACT_U1_U1_blk00000001_sig00000096
    );
  ACT_Mmux_mult_w_in91 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y59",
      INIT => X"AABBFFAEAA8800A2"
    )
    port map (
      ADR5 => ACT_U8_sum(17),
      ADR0 => ACT_U5_cnt(17),
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR1 => ACT_state_FSM_FFd1_4764,
      ADR3 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(17)
    );
  ACT_U6_coeff_7_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y39",
      INIT => X"05410589145026AA"
    )
    port map (
      ADR2 => ACT_U7_cnt(0),
      ADR0 => ACT_U7_cnt(1),
      ADR5 => N50,
      ADR3 => N51_0,
      ADR1 => ACT_U6_x_addr_033_5149,
      ADR4 => ACT_U6_x_addr_1,
      O => N19
    );
  ACT_U6_coeff_5_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => X"3F3E3D3C3F3F3F3F"
    )
    port map (
      ADR5 => ACT_U2_cnt(19),
      ADR1 => ACT_U7_cnt(0),
      ADR4 => N48,
      ADR3 => N47_0,
      ADR0 => ACT_U6_x_addr_332_5143,
      ADR2 => ACT_U6_x_addr_1,
      O => N4
    );
  ACT_U6_Mmux_coeff11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => X"0033FF0C0033F003"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U7_cnt(0),
      ADR3 => ACT_U7_cnt(1),
      ADR2 => ACT_U6_x_addr_1,
      ADR4 => ACT_U6_x_addr_0,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_in1_0_Q
    );
  ACT_U8_sum_0 : X_SFF
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_0_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_0_Q,
      O => ACT_U8_sum(0),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT110 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => X"DFDA8580DDDD8888"
    )
    port map (
      ADR3 => y_0_OBUF_4963,
      ADR5 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd3_4763,
      ADR0 => ACT_add_ld_a_0,
      ADR1 => ACT_in1_0_Q,
      ADR4 => ACT_U8_a_19_b_19_add_0_OUT_0_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_0_Q
    );
  ACT_Mmux_mult_in201 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y43",
      INIT => X"FFFFFCFF00000C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U8_sum(9),
      ADR5 => ACT_U2_cnt(9),
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(9)
    );
  ACT_U2_n0042_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y44",
      INIT => X"FFFFFFFF5F0F0A05"
    )
    port map (
      ADR1 => '1',
      ADR2 => ACT_state_FSM_FFd3_4763,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR0 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR5 => ACT_sel_fwd_en_accf,
      O => ACT_U2_n0042_inv
    );
  ACT_U6_coeff_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y45",
      INIT => X"00000000FAFA0500"
    )
    port map (
      ADR1 => '1',
      ADR2 => ACT_U7_cnt(0),
      ADR0 => ACT_U7_cnt(1),
      ADR4 => ACT_U6_x_addr_1,
      ADR3 => ACT_U6_x_addr_3,
      ADR5 => ACT_U6_x_addr_0,
      O => ACT_in1_11_Q
    );
  ACT_U8_sum_11 : X_SFF
    generic map(
      LOC => "SLICE_X20Y45",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_11_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_11_Q,
      O => ACT_U8_sum(11),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y45",
      INIT => X"DF85DA80DD88DD88"
    )
    port map (
      ADR4 => y_11_OBUF_4815,
      ADR5 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd3_4763,
      ADR0 => ACT_add_ld_a_0,
      ADR1 => ACT_in1_11_Q,
      ADR3 => ACT_U8_a_19_b_19_add_0_OUT_11_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_11_Q
    );
  ACT_U8_sum_13 : X_SFF
    generic map(
      LOC => "SLICE_X20Y47",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_13_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_13_Q,
      O => ACT_U8_sum(13),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y47",
      INIT => X"AFAFEFE3A0A02C20"
    )
    port map (
      ADR3 => y_13_OBUF_4820,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_10_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_13_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_13_Q
    );
  ACT_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X20Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd3_CLK,
      I => ACT_state_FSM_FFd3_In,
      O => ACT_state_FSM_FFd3_4763,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_state_FSM_FFd1_1_ACT_state_FSM_FFd1_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_acc_t_en,
      O => ACT_acc_t_en_0
    );
  ACT_state_FSM_FFd1_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd1_1_CLK,
      I => ACT_state_FSM_FFd1_In,
      O => ACT_state_FSM_FFd1_1_5131,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y52",
      INIT => X"BFA0FFA0BFA0FFA0"
    )
    port map (
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR1 => foward_IBUF_4791,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR0 => ACT_state_FSM_FFd2_4786,
      ADR5 => '1',
      O => ACT_state_FSM_FFd1_In
    );
  ACT_Mmux_acc_t_en11 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y52",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR1 => '1',
      ADR3 => '1',
      ADR0 => ACT_state_FSM_FFd2_4786,
      O => ACT_acc_t_en
    );
  ACT_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X20Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd2_CLK,
      I => ACT_state_FSM_FFd2_In_5124,
      O => ACT_state_FSM_FFd2_4786,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_Mmux_mult_w_in110 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y53",
      INIT => X"FF05FA00FFBA4500"
    )
    port map (
      ADR4 => ACT_U8_sum(0),
      ADR3 => ACT_U5_cnt(0),
      ADR1 => ACT_state_FSM_FFd4_1_5134,
      ADR2 => ACT_state_FSM_FFd1_1_5131,
      ADR0 => ACT_state_FSM_FFd2_1_5133,
      ADR5 => ACT_state_FSM_FFd3_1_5132,
      O => ACT_mult_w_in(0)
    );
  ACT_state_FSM_FFd2_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd2_1_CLK,
      I => ACT_state_FSM_FFd2_In_5124,
      O => ACT_state_FSM_FFd2_1_5133,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_state_FSM_FFd3_1_ACT_state_FSM_FFd3_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_state_FSM_FFd3_In_pack_4,
      O => ACT_state_FSM_FFd3_In
    );
  ACT_state_FSM_FFd3_In3 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y54"
    )
    port map (
      IA => N102,
      IB => N103,
      O => ACT_state_FSM_FFd3_In_pack_4,
      SEL => ACT_state_FSM_FFd3_4763
    );
  ACT_state_FSM_FFd3_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd3_1_CLK,
      I => ACT_state_FSM_FFd3_In,
      O => ACT_state_FSM_FFd3_1_5132,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_state_FSM_FFd3_In3_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y54",
      INIT => X"F8F8F0F0F888F000"
    )
    port map (
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR5 => ACT_U9_res_d_5103,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR1 => ACT_U10_res_d_5104,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR0 => backward_IBUF_5068,
      O => N102
    );
  ACT_state_FSM_FFd3_In3_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y54",
      INIT => X"3333FFFF000FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => ACT_state_FSM_FFd1_4764,
      ADR1 => foward_IBUF_4791,
      ADR3 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_U7_f_4772,
      ADR4 => ACT_state_FSM_FFd4_4762,
      O => N103
    );
  ACT_state_FSM_FFd2_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y55",
      INIT => X"F0FF00FFF0FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => backward_IBUF_5068,
      ADR4 => ACT_U10_res_d_5104,
      ADR3 => still_fwd_IBUF_5081,
      O => N2
    );
  ACT_state_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X20Y55",
      INIT => X"4040E0E04A40E0E0"
    )
    port map (
      ADR0 => ACT_state_FSM_FFd3_4763,
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR5 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR3 => ACT_U7_f_4772,
      ADR1 => N2,
      O => ACT_state_FSM_FFd2_In_5124
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_A51 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y37",
      INIT => X"DD88DD88DDDD8888"
    )
    port map (
      ADR2 => '1',
      ADR0 => ACT_acc_f_reset0_0,
      ADR4 => ACT_U2_cnt(13),
      ADR5 => ACT_acc_f_reset1,
      ADR3 => ACT_omx_out_13_0,
      ADR1 => ACT_U4_weight_reg(13),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_13_Q
    );
  ACT_U9_nqr_3_nqr_2_OR_17_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => X"40FF44FF40404444"
    )
    port map (
      ADR0 => ACT_U9_d(1),
      ADR1 => fwd_pred_1_IBUF_5080,
      ADR2 => ACT_U9_d(2),
      ADR4 => fwd_pred_2_IBUF_4781,
      ADR3 => ACT_U9_d(3),
      ADR5 => fwd_pred_3_IBUF_4784,
      O => ACT_f_sel(0)
    );
  ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_B110 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => X"AA000000AA100010"
    )
    port map (
      ADR3 => ACT_acc_f_reset0_0,
      ADR0 => ACT_acc_f_reset1,
      ADR4 => ACT_omx_out_0_0,
      ADR2 => x_pred_0_0_IBUF_5069,
      ADR5 => ACT_f_sel(1),
      ADR1 => ACT_f_sel(0),
      O => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_B_0_Q
    );
  ACT_U6_x_addr_334_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => X"8888888888888880"
    )
    port map (
      ADR0 => ACT_U2_cnt(18),
      ADR1 => ACT_U2_cnt(17),
      ADR3 => ACT_U2_cnt(15),
      ADR4 => ACT_U2_cnt(16),
      ADR2 => ACT_U2_cnt(14),
      ADR5 => ACT_U2_cnt(13),
      O => N48
    );
  ACT_U6_coeff_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y43",
      INIT => X"0606050402020100"
    )
    port map (
      ADR4 => ACT_U7_cnt(0),
      ADR1 => ACT_U7_cnt(1),
      ADR0 => ACT_U6_x_addr_1,
      ADR3 => ACT_U6_x_addr_3,
      ADR2 => ACT_U6_x_addr_0,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_in1_1_Q
    );
  ACT_U8_sum_9 : X_SFF
    generic map(
      LOC => "SLICE_X21Y43",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_9_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_9_Q,
      O => ACT_U8_sum(9),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT201 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y43",
      INIT => X"CEFFCEF5C40AC400"
    )
    port map (
      ADR4 => y_9_OBUF_4811,
      ADR0 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd3_4763,
      ADR3 => ACT_add_ld_a_0,
      ADR1 => ACT_in1_1_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_9_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_9_Q
    );
  ACT_Mmux_mult_in21 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y47",
      INIT => X"FFFCFFFF000C0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => ACT_U8_sum(10),
      ADR5 => ACT_U2_cnt(10),
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_in(10)
    );
  ACT_U8_sum_10 : X_SFF
    generic map(
      LOC => "SLICE_X21Y49",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_10_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_10_Q,
      O => ACT_U8_sum(10),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y49",
      INIT => X"AFAFA0A0EFE32C20"
    )
    port map (
      ADR3 => y_10_OBUF_4813,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_10_Q,
      ADR4 => ACT_U8_a_19_b_19_add_0_OUT_10_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_10_Q
    );
  ACT_U8_sum_3 : X_SFF
    generic map(
      LOC => "SLICE_X21Y49",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_3_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_3_Q,
      O => ACT_U8_sum(3),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT141 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y49",
      INIT => X"E4E4E4E4DDE488E4"
    )
    port map (
      ADR4 => y_3_OBUF_4797,
      ADR3 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      ADR0 => ACT_add_ld_a_0,
      ADR2 => ACT_in1_10_Q,
      ADR1 => ACT_U8_a_19_b_19_add_0_OUT_3_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_3_Q
    );
  ACT_U8_sum_4 : X_SFF
    generic map(
      LOC => "SLICE_X21Y51",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_4_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_4_Q,
      O => ACT_U8_sum(4),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT151 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y51",
      INIT => X"BFBCAFAF8380A0A0"
    )
    port map (
      ADR3 => y_4_OBUF_4800,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_11_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_4_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_4_Q
    );
  ACT_U8_sum_5 : X_SFF
    generic map(
      LOC => "SLICE_X21Y51",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_5_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_5_Q,
      O => ACT_U8_sum(5),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y51",
      INIT => X"BFBCAFAF8380A0A0"
    )
    port map (
      ADR3 => y_5_OBUF_4802,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_1_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_5_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_5_Q
    );
  ACT_U8_sum_6 : X_SFF
    generic map(
      LOC => "SLICE_X21Y52",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_6_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_6_Q,
      O => ACT_U8_sum(6),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT171 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y52",
      INIT => X"BFBC8380AFAFA0A0"
    )
    port map (
      ADR3 => y_6_OBUF_4804,
      ADR5 => ACT_state_FSM_FFd2_4786,
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_10_Q,
      ADR4 => ACT_U8_a_19_b_19_add_0_OUT_6_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_6_Q
    );
  ACT_state_FSM_FFd4_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_state_FSM_FFd4_1_CLK,
      I => ACT_state_FSM_FFd4_In,
      O => ACT_state_FSM_FFd4_1_5134,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_U8_sum_12 : X_SFF
    generic map(
      LOC => "SLICE_X21Y54",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_12_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_12_Q,
      O => ACT_U8_sum(12),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y54",
      INIT => X"AFAFEFE3A0A02C20"
    )
    port map (
      ADR3 => y_12_OBUF_4818,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      ADR2 => ACT_add_ld_a_0,
      ADR0 => ACT_in1_10_Q,
      ADR5 => ACT_U8_a_19_b_19_add_0_OUT_12_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_12_Q
    );
  ACT_Mmux_mult_w_in141 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y55",
      INIT => X"CCCCD8D8E4F0E4E4"
    )
    port map (
      ADR2 => ACT_U8_sum(3),
      ADR1 => ACT_U5_cnt(3),
      ADR3 => ACT_state_FSM_FFd4_4762,
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR0 => ACT_state_FSM_FFd2_1_5133,
      ADR5 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(3)
    );
  ACT_Mmux_mult_w_in61 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y56",
      INIT => X"AABBEFEEAA882022"
    )
    port map (
      ADR5 => ACT_U8_sum(14),
      ADR0 => ACT_U5_cnt(14),
      ADR2 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR4 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(14)
    );
  ACT_Mmux_mult_w_in171 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y56",
      INIT => X"FD08FC0CED48ED48"
    )
    port map (
      ADR1 => ACT_U8_sum(6),
      ADR3 => ACT_U5_cnt(6),
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR5 => ACT_state_FSM_FFd1_4764,
      ADR0 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(6)
    );
  ACT_Mmux_mult_w_in51 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y57",
      INIT => X"D8D8CCE4D8D8D8E4"
    )
    port map (
      ADR2 => ACT_U8_sum(13),
      ADR1 => ACT_U5_cnt(13),
      ADR5 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR4 => ACT_state_FSM_FFd2_4786,
      ADR0 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(13)
    );
  ACT_Mmux_mult_w_in201 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y57",
      INIT => X"CEDECFDEC484C084"
    )
    port map (
      ADR5 => ACT_U8_sum(9),
      ADR1 => ACT_U5_cnt(9),
      ADR4 => ACT_state_FSM_FFd4_4762,
      ADR3 => ACT_state_FSM_FFd1_4764,
      ADR0 => ACT_state_FSM_FFd2_4786,
      ADR2 => ACT_state_FSM_FFd3_4763,
      O => ACT_mult_w_in(9)
    );
  ACT_U6_coeff_19_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y43",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => ACT_U7_cnt(1),
      ADR2 => ACT_U6_x_addr_1,
      ADR3 => ACT_U6_x_addr_0,
      O => N36
    );
  ACT_U7_f_ACT_U7_f_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  ACT_U7_f : X_FF
    generic map(
      LOC => "SLICE_X22Y48",
      INIT => '0'
    )
    port map (
      CE => ACT_cnt_en,
      CLK => NlwBufferSignal_ACT_U7_f_CLK,
      I => ACT_U7_cnt_1_GND_16_o_equal_4_o,
      O => ACT_U7_f_4772,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_U7_cnt_1_GND_16_o_equal_4_o_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y48",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U7_cnt(0),
      ADR4 => ACT_U7_cnt(1),
      ADR5 => '1',
      O => ACT_U7_cnt_1_GND_16_o_equal_4_o
    );
  ACT_U6_coeff_6_1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y48",
      INIT => X"000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ACT_U7_cnt(0),
      ADR4 => ACT_U7_cnt(1),
      O => N6
    );
  ACT_U1_ready_ACT_U1_ready_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_enable,
      O => ACT_mult_enable_0
    );
  ACT_U1_ready : X_FF
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ACT_U1_ready_CLK,
      I => ACT_mult_enable,
      O => ACT_U1_ready_5160,
      RST => GND,
      SET => GND
    );
  ACT_Mmux_cnt_en11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => X"0000002200000022"
    )
    port map (
      ADR2 => '1',
      ADR3 => ACT_state_FSM_FFd4_4762,
      ADR0 => ACT_state_FSM_FFd3_4763,
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR5 => '1',
      O => ACT_cnt_en
    );
  ACT_Mmux_mult_enable11 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => X"00BB00AA"
    )
    port map (
      ADR2 => '1',
      ADR3 => ACT_state_FSM_FFd4_4762,
      ADR0 => ACT_state_FSM_FFd3_4763,
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR1 => ACT_state_FSM_FFd2_4786,
      O => ACT_mult_enable
    );
  ACT_state_FSM_FFd4_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => X"EFE7EFE7EEE6EEE6"
    )
    port map (
      ADR4 => '1',
      ADR1 => ACT_state_FSM_FFd3_4763,
      ADR0 => ACT_state_FSM_FFd1_4764,
      ADR2 => ACT_state_FSM_FFd2_4786,
      ADR3 => ACT_U1_ready_5160,
      ADR5 => foward_IBUF_4791,
      O => ACT_state_FSM_FFd4_In1_5159
    );
  ACT_state_FSM_FFd4_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => X"0ACC00CC0ACC55CC"
    )
    port map (
      ADR3 => ACT_state_FSM_FFd4_4762,
      ADR0 => ACT_state_FSM_FFd3_4763,
      ADR4 => ACT_state_FSM_FFd1_4764,
      ADR5 => ACT_U9_res_d_5103,
      ADR2 => foward_IBUF_4791,
      ADR1 => ACT_state_FSM_FFd4_In1_5159,
      O => ACT_state_FSM_FFd4_In
    );
  ACT_U6_coeff_7_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y40",
      INIT => X"1410141114101411"
    )
    port map (
      ADR5 => '1',
      ADR1 => ACT_U7_cnt(0),
      ADR0 => ACT_U7_cnt(1),
      ADR3 => ACT_U6_x_addr_1,
      ADR4 => ACT_U6_x_addr_3,
      ADR2 => ACT_U6_x_addr_0,
      O => N18
    );
  ACT_U6_coeff_7_1_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y41",
      INIT => X"000F0F0000F00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => ACT_U7_cnt(0),
      ADR3 => ACT_U7_cnt(1),
      ADR4 => ACT_U6_x_addr_1,
      ADR2 => ACT_U6_x_addr_0,
      O => N34
    );
  ACT_U6_coeff_19_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y42",
      INIT => X"AFFAAFFAAFFAAFFA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => ACT_U7_cnt(1),
      ADR2 => ACT_U6_x_addr_1,
      ADR0 => ACT_U6_x_addr_0,
      O => N37
    );
  ACT_U6_coeff_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y44",
      INIT => X"0066334400223301"
    )
    port map (
      ADR4 => ACT_U7_cnt(0),
      ADR1 => ACT_U7_cnt(1),
      ADR0 => ACT_U6_x_addr_1,
      ADR2 => ACT_U6_x_addr_3,
      ADR3 => ACT_U6_x_addr_0,
      ADR5 => ACT_U6_x_addr_2_x_addr_3_AND_10_o,
      O => ACT_in1_14_Q
    );
  ACT_U8_sum_14 : X_SFF
    generic map(
      LOC => "SLICE_X23Y44",
      INIT => '0'
    )
    port map (
      CE => ACT_add_en_0,
      CLK => NlwBufferSignal_ACT_U8_sum_14_CLK,
      I => ACT_U8_sum_19_a_19_mux_3_OUT_14_Q,
      O => ACT_U8_sum(14),
      SRST => ACT_add_reset,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U8_Mmux_sum_19_a_19_mux_3_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y44",
      INIT => X"F0AAF0AAB8EEB822"
    )
    port map (
      ADR4 => y_14_OBUF_4822,
      ADR1 => ACT_state_FSM_FFd2_4786,
      ADR5 => ACT_state_FSM_FFd3_4763,
      ADR3 => ACT_add_ld_a_0,
      ADR2 => ACT_in1_14_Q,
      ADR0 => ACT_U8_a_19_b_19_add_0_OUT_14_0,
      O => ACT_U8_sum_19_a_19_mux_3_OUT_14_Q
    );
  ACT_U7_cnt_1_ACT_U7_cnt_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U7_cnt_0_pack_1,
      O => ACT_U7_cnt(0)
    );
  ACT_U7_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y48",
      INIT => '1'
    )
    port map (
      CE => ACT_cnt_en,
      CLK => NlwBufferSignal_ACT_U7_cnt_1_CLK,
      I => ACT_U7_GND_16_o_PWR_17_o_mux_2_OUT(1),
      O => ACT_U7_cnt(1),
      SET => reset_IBUF_4773,
      RST => GND
    );
  ACT_U7_Mmux_GND_16_o_PWR_17_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y48",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => ACT_U7_cnt(1),
      ADR1 => ACT_U7_cnt(0),
      ADR5 => '1',
      O => ACT_U7_GND_16_o_PWR_17_o_mux_2_OUT(1)
    );
  ACT_U7_Mmux_GND_16_o_PWR_17_o_mux_2_OUT11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y48",
      INIT => X"33330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => ACT_U7_cnt(1),
      ADR1 => ACT_U7_cnt(0),
      O => ACT_U7_GND_16_o_PWR_17_o_mux_2_OUT(0)
    );
  ACT_U7_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y48",
      INIT => '0'
    )
    port map (
      CE => ACT_cnt_en,
      CLK => NlwBufferSignal_ACT_U7_cnt_0_CLK,
      I => ACT_U7_GND_16_o_PWR_17_o_mux_2_OUT(0),
      O => ACT_U7_cnt_0_pack_1,
      RST => reset_IBUF_4773,
      SET => GND
    );
  ACT_U10_clr_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y56",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => reset_IBUF_4773,
      O => ACT_U10_clr_inv
    );
  ACT_U10_clr_e_AND_29_o_ACT_U10_clr_e_AND_29_o_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U9_clr_e_AND_29_o,
      O => ACT_U9_clr_e_AND_29_o_0
    );
  ACT_U10_clr_e_AND_29_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y61",
      INIT => X"4444444444444444"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ACT_acc_b_en,
      ADR0 => reset_IBUF_4773,
      ADR5 => '1',
      O => ACT_U10_clr_e_AND_29_o
    );
  ACT_U9_clr_e_AND_29_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y61",
      INIT => X"50505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => ACT_sel_fwd_en_accf,
      ADR3 => '1',
      ADR0 => reset_IBUF_4773,
      O => ACT_U9_clr_e_AND_29_o
    );
  ACT_U10_e1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y61",
      INIT => X"88A8AAAA88A888A8"
    )
    port map (
      ADR0 => backward_IBUF_5068,
      ADR3 => ACT_U10_d(0),
      ADR2 => bck_succ_0_IBUF_5066,
      ADR4 => ACT_U10_d(1),
      ADR5 => bck_succ_1_IBUF_5067,
      ADR1 => ACT_b_sel(1),
      O => ACT_acc_b_en
    );
  ACT_U9_e1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y61",
      INIT => X"C0C0CCC0C8C8CCC8"
    )
    port map (
      ADR1 => foward_IBUF_4791,
      ADR4 => ACT_U9_d(0),
      ADR3 => fwd_pred_0_IBUF_5079,
      ADR5 => ACT_U9_d(1),
      ADR0 => fwd_pred_1_IBUF_5080,
      ADR2 => ACT_f_sel(1),
      O => ACT_sel_fwd_en_accf
    );
  ACT_U10_d_3 : X_SFF
    generic map(
      LOC => "SLICE_X26Y63",
      INIT => '0'
    )
    port map (
      CE => ACT_U10_clr_e_AND_29_o,
      CLK => NlwBufferSignal_ACT_U10_d_3_CLK,
      I => ACT_U10_predand_3_d_3_or_3_OUT_3_Q,
      O => ACT_U10_d(3),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U10_predand_3_d_3_or_3_OUT_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y63",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => ACT_U10_d(3),
      ADR3 => '1',
      ADR2 => bck_succ_3_IBUF_4778,
      O => ACT_U10_predand_3_d_3_or_3_OUT_3_Q
    );
  ACT_U9_d_3 : X_SFF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => ACT_U9_clr_e_AND_29_o_0,
      CLK => NlwBufferSignal_ACT_U9_d_3_CLK,
      I => ACT_U9_predand_3_d_3_or_3_OUT_3_Q,
      O => ACT_U9_d(3),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U9_predand_3_d_3_or_3_OUT_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"FFCCFFCCFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => ACT_U9_d(3),
      ADR4 => '1',
      ADR1 => fwd_pred_3_IBUF_4784,
      O => ACT_U9_predand_3_d_3_or_3_OUT_3_Q
    );
  ACT_U9_d_2 : X_SFF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => ACT_U9_clr_e_AND_29_o_0,
      CLK => NlwBufferSignal_ACT_U9_d_2_CLK,
      I => ACT_U9_predand_3_d_3_or_3_OUT_2_Q,
      O => ACT_U9_d(2),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U9_r23or1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"0C0CAEAE0C0CAEAE"
    )
    port map (
      ADR3 => '1',
      ADR0 => fwd_pred_2_IBUF_4781,
      ADR2 => ACT_U9_d(3),
      ADR4 => ACT_U9_d(2),
      ADR1 => fwd_pred_3_IBUF_4784,
      ADR5 => '1',
      O => ACT_f_sel(1)
    );
  ACT_U9_predand_3_d_3_or_3_OUT_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"FFFFA2A2"
    )
    port map (
      ADR3 => '1',
      ADR0 => fwd_pred_2_IBUF_4781,
      ADR2 => ACT_U9_d(3),
      ADR4 => ACT_U9_d(2),
      ADR1 => fwd_pred_3_IBUF_4784,
      O => ACT_U9_predand_3_d_3_or_3_OUT_2_Q
    );
  ACT_U9_d_1 : X_SFF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => ACT_U9_clr_e_AND_29_o_0,
      CLK => NlwBufferSignal_ACT_U9_d_1_CLK,
      I => ACT_U9_predand_3_d_3_or_3_OUT_1_Q,
      O => ACT_U9_d(1),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U9_predand_3_d_3_or_3_OUT_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"FFC0FF40FFCCFF44"
    )
    port map (
      ADR1 => fwd_pred_1_IBUF_5080,
      ADR4 => ACT_U9_d(2),
      ADR0 => fwd_pred_2_IBUF_4781,
      ADR3 => ACT_U9_d(1),
      ADR2 => ACT_U9_d(3),
      ADR5 => fwd_pred_3_IBUF_4784,
      O => ACT_U9_predand_3_d_3_or_3_OUT_1_Q
    );
  ACT_U9_d_0 : X_SFF
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => '0'
    )
    port map (
      CE => ACT_U9_clr_e_AND_29_o_0,
      CLK => NlwBufferSignal_ACT_U9_d_0_CLK,
      I => ACT_U9_predand_3_d_3_or_3_OUT_0_Q,
      O => ACT_U9_d(0),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U9_predand_3_d_3_or_3_OUT_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y50",
      INIT => X"FFFF00AFFFFF0023"
    )
    port map (
      ADR3 => ACT_f_sel(0),
      ADR5 => ACT_U9_d(3),
      ADR1 => fwd_pred_3_IBUF_4784,
      ADR4 => ACT_U9_d(0),
      ADR0 => ACT_U9_d(2),
      ADR2 => fwd_pred_2_IBUF_4781,
      O => ACT_U9_predand_3_d_3_or_3_OUT_0_Q
    );
  ACT_U9_res_d : X_SFF
    generic map(
      LOC => "SLICE_X27Y55",
      INIT => '0'
    )
    port map (
      CE => ACT_U10_clr_inv,
      CLK => NlwBufferSignal_ACT_U9_res_d_CLK,
      I => NlwBufferSignal_ACT_U9_res_d_IN,
      O => ACT_U9_res_d_5103,
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U10_res_d : X_SFF
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => '0'
    )
    port map (
      CE => ACT_U10_clr_inv,
      CLK => NlwBufferSignal_ACT_U10_res_d_CLK,
      I => NlwBufferSignal_ACT_U10_res_d_IN,
      O => ACT_U10_res_d_5104,
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U10_d_2 : X_SFF
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => '0'
    )
    port map (
      CE => ACT_U10_clr_e_AND_29_o,
      CLK => NlwBufferSignal_ACT_U10_d_2_CLK,
      I => ACT_U10_predand_3_d_3_or_3_OUT_2_Q,
      O => ACT_U10_d(2),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U10_r23or1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => X"3B0A3B0A3B0A3B0A"
    )
    port map (
      ADR4 => '1',
      ADR3 => bck_succ_2_IBUF_4776,
      ADR2 => ACT_U10_d(3),
      ADR1 => ACT_U10_d(2),
      ADR0 => bck_succ_3_IBUF_4778,
      ADR5 => '1',
      O => ACT_b_sel(1)
    );
  ACT_U10_predand_3_d_3_or_3_OUT_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => X"FDCCFDCC"
    )
    port map (
      ADR4 => '1',
      ADR3 => bck_succ_2_IBUF_4776,
      ADR2 => ACT_U10_d(3),
      ADR1 => ACT_U10_d(2),
      ADR0 => bck_succ_3_IBUF_4778,
      O => ACT_U10_predand_3_d_3_or_3_OUT_2_Q
    );
  ACT_U10_d_1 : X_SFF
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => '0'
    )
    port map (
      CE => ACT_U10_clr_e_AND_29_o,
      CLK => NlwBufferSignal_ACT_U10_d_1_CLK,
      I => ACT_U10_predand_3_d_3_or_3_OUT_1_Q,
      O => ACT_U10_d(1),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U10_predand_3_d_3_or_3_OUT_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => X"FFFFA2A2FFFF00A2"
    )
    port map (
      ADR0 => bck_succ_1_IBUF_5067,
      ADR2 => ACT_U10_d(2),
      ADR1 => bck_succ_2_IBUF_4776,
      ADR4 => ACT_U10_d(1),
      ADR5 => ACT_U10_d(3),
      ADR3 => bck_succ_3_IBUF_4778,
      O => ACT_U10_predand_3_d_3_or_3_OUT_1_Q
    );
  ACT_U10_d_0 : X_SFF
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => '0'
    )
    port map (
      CE => ACT_U10_clr_e_AND_29_o,
      CLK => NlwBufferSignal_ACT_U10_d_0_CLK,
      I => ACT_U10_predand_3_d_3_or_3_OUT_0_Q,
      O => ACT_U10_d(0),
      SRST => reset_IBUF_4773,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ACT_U10_predand_3_d_3_or_3_OUT_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => X"FF0BFF0BFF00FF0B"
    )
    port map (
      ADR2 => ACT_b_sel(0),
      ADR5 => ACT_U10_d(3),
      ADR4 => bck_succ_3_IBUF_4778,
      ADR3 => ACT_U10_d(0),
      ADR0 => ACT_U10_d(2),
      ADR1 => bck_succ_2_IBUF_4776,
      O => ACT_U10_predand_3_d_3_or_3_OUT_0_Q
    );
  ACT_U10_nqr_3_nqr_2_OR_17_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y63",
      INIT => X"0A0ACE0A0A0ACECE"
    )
    port map (
      ADR4 => ACT_U10_d(1),
      ADR1 => bck_succ_1_IBUF_5067,
      ADR3 => ACT_U10_d(2),
      ADR5 => bck_succ_2_IBUF_4776,
      ADR2 => ACT_U10_d(3),
      ADR0 => bck_succ_3_IBUF_4778,
      O => ACT_b_sel(0)
    );
  NlwBufferBlock_ACT_U4_weight_reg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_3_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_2_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_1_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_0_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_7_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_6_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_5_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_4_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_11_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_10_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_9_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_8_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_15_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_14_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_13_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_12_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_19_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_18_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_17_CLK
    );
  NlwBufferBlock_ACT_U4_weight_reg_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U4_weight_reg_16_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_3_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_2_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_1_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_0_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_7_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_6_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_5_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_4_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_11_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_10_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_9_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_8_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_15_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_14_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_13_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_12_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_19_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_18_CLK
    );
  NlwBufferBlock_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_A_18_Q,
      O => NlwBufferSignal_ACT_U2_Mmux_cnt_19_init0_19_mux_6_OUT_rs_xor_19_DI_2_Q
    );
  NlwBufferBlock_ACT_U2_cnt_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_17_CLK
    );
  NlwBufferBlock_ACT_U2_cnt_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U2_cnt_16_CLK
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_1_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_1_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_10_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_3_DI_3_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_11_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_0_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_1_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_1_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_10_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_7_DI_2_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_10_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_0_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_10_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_11_DI_2_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_10_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_0_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_10_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_1_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_10_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_cy_15_DI_3_Q
    );
  NlwBufferBlock_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_in1_16_Q,
      O => NlwBufferSignal_ACT_U8_Madd_a_19_b_19_add_0_OUT_xor_19_DI_2_Q
    );
  NlwBufferBlock_ACT_U5_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_3_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_2_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_1_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_0_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_7_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_6_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_5_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_4_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_11_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_10_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_9_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_8_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_15_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_14_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_13_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_12_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_19_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_18_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_17_CLK
    );
  NlwBufferBlock_ACT_U5_cnt_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U5_cnt_16_CLK
    );
  NlwBufferBlock_y_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_0_OBUF_4963,
      O => NlwBufferSignal_y_0_OBUF_I
    );
  NlwBufferBlock_y_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_1_OBUF_4793,
      O => NlwBufferSignal_y_1_OBUF_I
    );
  NlwBufferBlock_y_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_2_OBUF_4795,
      O => NlwBufferSignal_y_2_OBUF_I
    );
  NlwBufferBlock_y_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_3_OBUF_4797,
      O => NlwBufferSignal_y_3_OBUF_I
    );
  NlwBufferBlock_y_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_4_OBUF_4800,
      O => NlwBufferSignal_y_4_OBUF_I
    );
  NlwBufferBlock_y_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_5_OBUF_4802,
      O => NlwBufferSignal_y_5_OBUF_I
    );
  NlwBufferBlock_y_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_6_OBUF_4804,
      O => NlwBufferSignal_y_6_OBUF_I
    );
  NlwBufferBlock_y_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_7_OBUF_4806,
      O => NlwBufferSignal_y_7_OBUF_I
    );
  NlwBufferBlock_y_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_8_OBUF_4809,
      O => NlwBufferSignal_y_8_OBUF_I
    );
  NlwBufferBlock_y_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_9_OBUF_4811,
      O => NlwBufferSignal_y_9_OBUF_I
    );
  NlwBufferBlock_y_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_10_OBUF_4813,
      O => NlwBufferSignal_y_10_OBUF_I
    );
  NlwBufferBlock_y_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_11_OBUF_4815,
      O => NlwBufferSignal_y_11_OBUF_I
    );
  NlwBufferBlock_y_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_12_OBUF_4818,
      O => NlwBufferSignal_y_12_OBUF_I
    );
  NlwBufferBlock_y_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_13_OBUF_4820,
      O => NlwBufferSignal_y_13_OBUF_I
    );
  NlwBufferBlock_y_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_14_OBUF_4822,
      O => NlwBufferSignal_y_14_OBUF_I
    );
  NlwBufferBlock_y_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_15_OBUF_4824,
      O => NlwBufferSignal_y_15_OBUF_I
    );
  NlwBufferBlock_y_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_16_OBUF_4827,
      O => NlwBufferSignal_y_16_OBUF_I
    );
  NlwBufferBlock_y_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_17_OBUF_4829,
      O => NlwBufferSignal_y_17_OBUF_I
    );
  NlwBufferBlock_y_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_18_OBUF_4831,
      O => NlwBufferSignal_y_18_OBUF_I
    );
  NlwBufferBlock_y_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => y_19_OBUF_4833,
      O => NlwBufferSignal_y_19_OBUF_I
    );
  NlwBufferBlock_back_pred_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_back_pred_0_OBUF_I
    );
  NlwBufferBlock_back_pred_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_back_pred_1_OBUF_I
    );
  NlwBufferBlock_back_pred_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_back_pred_2_OBUF_I
    );
  NlwBufferBlock_back_pred_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_back_pred_3_OBUF_I
    );
  NlwBufferBlock_fwd_succ_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_fwd_succ_0_OBUF_I
    );
  NlwBufferBlock_fwd_succ_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_fwd_succ_1_OBUF_I
    );
  NlwBufferBlock_fwd_succ_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_fwd_succ_2_OBUF_I
    );
  NlwBufferBlock_fwd_succ_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => broadcast_IBUF_5055,
      O => NlwBufferSignal_fwd_succ_3_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_5054,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_43_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_43_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_42_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_42_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_41_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_41_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_40_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_40_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_36_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_36_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_27_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_27_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_26_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_26_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_25_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_25_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_23_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_23_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_22_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_22_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_21_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig0000006b_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_21_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_14_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000066_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_14_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_12_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000064_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_12_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_9_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000061_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_9_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_8_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000060_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_8_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_C_1_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_U1_U1_blk00000001_sig00000059_0,
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_C_1_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_17_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(19),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_17_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_15_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(17),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_15_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_14_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(16),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_14_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_13_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(15),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_13_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_12_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(14),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_12_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_11_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(13),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_11_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_10_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(12),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_10_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_9_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(11),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_9_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_8_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(10),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_8_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_7_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(9),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_7_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_5_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(7),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_5_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_1_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(3),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_1_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_in(2),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_B_0_Q
    );
  NlwBufferBlock_ACT_U1_U1_blk00000001_blk00000046_A_8_Q : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_mult_w_in(8),
      O => NlwBufferSignal_ACT_U1_U1_blk00000001_blk00000046_A(8)
    );
  NlwBufferBlock_ACT_U8_sum_15_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_15_CLK
    );
  NlwBufferBlock_ACT_U8_sum_19_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_19_CLK
    );
  NlwBufferBlock_ACT_U8_sum_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_2_CLK
    );
  NlwBufferBlock_ACT_U8_sum_8_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_8_CLK
    );
  NlwBufferBlock_ACT_U8_sum_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_1_CLK
    );
  NlwBufferBlock_ACT_U8_sum_16_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_16_CLK
    );
  NlwBufferBlock_ACT_U8_sum_7_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_7_CLK
    );
  NlwBufferBlock_ACT_U8_sum_17_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_17_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd4_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd4_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => ACT_state_FSM_FFd4_In,
      O => NlwBufferSignal_ACT_state_FSM_FFd4_IN
    );
  NlwBufferBlock_ACT_U8_sum_18_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_18_CLK
    );
  NlwBufferBlock_ACT_U8_sum_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_0_CLK
    );
  NlwBufferBlock_ACT_U8_sum_11_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_11_CLK
    );
  NlwBufferBlock_ACT_U8_sum_13_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_13_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd1_1_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd2_1_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd3_1_CLK
    );
  NlwBufferBlock_ACT_U8_sum_9_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_9_CLK
    );
  NlwBufferBlock_ACT_U8_sum_10_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_10_CLK
    );
  NlwBufferBlock_ACT_U8_sum_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_3_CLK
    );
  NlwBufferBlock_ACT_U8_sum_4_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_4_CLK
    );
  NlwBufferBlock_ACT_U8_sum_5_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_5_CLK
    );
  NlwBufferBlock_ACT_U8_sum_6_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_6_CLK
    );
  NlwBufferBlock_ACT_state_FSM_FFd4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_state_FSM_FFd4_1_CLK
    );
  NlwBufferBlock_ACT_U8_sum_12_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_12_CLK
    );
  NlwBufferBlock_ACT_U7_f_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U7_f_CLK
    );
  NlwBufferBlock_ACT_U1_ready_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U1_ready_CLK
    );
  NlwBufferBlock_ACT_U8_sum_14_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U8_sum_14_CLK
    );
  NlwBufferBlock_ACT_U7_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U7_cnt_1_CLK
    );
  NlwBufferBlock_ACT_U7_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U7_cnt_0_CLK
    );
  NlwBufferBlock_ACT_U10_d_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U10_d_3_CLK
    );
  NlwBufferBlock_ACT_U9_d_3_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U9_d_3_CLK
    );
  NlwBufferBlock_ACT_U9_d_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U9_d_2_CLK
    );
  NlwBufferBlock_ACT_U9_d_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U9_d_1_CLK
    );
  NlwBufferBlock_ACT_U9_d_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U9_d_0_CLK
    );
  NlwBufferBlock_ACT_U9_res_d_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U9_res_d_CLK
    );
  NlwBufferBlock_ACT_U9_res_d_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => foward_IBUF_4791,
      O => NlwBufferSignal_ACT_U9_res_d_IN
    );
  NlwBufferBlock_ACT_U10_res_d_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U10_res_d_CLK
    );
  NlwBufferBlock_ACT_U10_res_d_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => backward_IBUF_5068,
      O => NlwBufferSignal_ACT_U10_res_d_IN
    );
  NlwBufferBlock_ACT_U10_d_2_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U10_d_2_CLK
    );
  NlwBufferBlock_ACT_U10_d_1_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U10_d_1_CLK
    );
  NlwBufferBlock_ACT_U10_d_0_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_ACT_U10_d_0_CLK
    );
  NlwBlock_act_wrapper_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_act_wrapper_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

