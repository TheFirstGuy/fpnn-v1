--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: link_bcast_timesim.vhd
-- /___/   /\     Timestamp: Sun May 08 13:13:02 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter "C:/Users/Urs Mobile/Dropbox/Code/FPNNV1/iseconfig/filter.filter" -intstyle ise -s 2 -pcf link_bcast.pcf -rpw 100 -tpw 0 -ar Structure -tm link_bcast -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim link_bcast.ncd link_bcast_timesim.vhd 
-- Device	: 6vlx75tff484-2 (PRODUCTION 1.17 2013-10-13)
-- Input file	: link_bcast.ncd
-- Output file	: C:\Users\Urs Mobile\Dropbox\Code\FPNNV1\netgen\par\link_bcast_timesim.vhd
-- # of Entities	: 1
-- Design Name	: link_bcast
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

entity link_bcast is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    en : in STD_LOGIC := 'X'; 
    p0 : in STD_LOGIC := 'X'; 
    p1 : in STD_LOGIC := 'X'; 
    p2 : in STD_LOGIC := 'X'; 
    p3 : in STD_LOGIC := 'X'; 
    p0_val : out STD_LOGIC; 
    p1_val : out STD_LOGIC; 
    p2_val : out STD_LOGIC; 
    p3_val : out STD_LOGIC 
  );
end link_bcast;

architecture Structure of link_bcast is
  signal en_IBUF_2205 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2206 : STD_LOGIC; 
  signal p0_r_2207 : STD_LOGIC; 
  signal p1_r_2208 : STD_LOGIC; 
  signal p2_r_2209 : STD_LOGIC; 
  signal p0_IBUF_2210 : STD_LOGIC; 
  signal p1_IBUF_2211 : STD_LOGIC; 
  signal p2_IBUF_2212 : STD_LOGIC; 
  signal p3_IBUF_2213 : STD_LOGIC; 
  signal p3_r_2214 : STD_LOGIC; 
  signal rst_IBUF_2215 : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_EOS : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_DINSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_PREQ : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_TCKSPI : STD_LOGIC; 
  signal STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_CFGCLK : STD_LOGIC; 
  signal p3_r_rstpot_2166 : STD_LOGIC; 
  signal p2_r_rstpot_2175 : STD_LOGIC; 
  signal p0_r_rstpot_2182 : STD_LOGIC; 
  signal p1_r_rstpot_2190 : STD_LOGIC; 
  signal NlwBufferSignal_p0_val_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_p1_val_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_p2_val_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_p3_val_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p3_r_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p2_r_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p0_r_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p1_r_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  en_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y72",
      PATHPULSE => 450 ps
    )
    port map (
      O => en_IBUF_2205,
      I => en
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X2Y43",
      PATHPULSE => 450 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_2206,
      I => clk
    );
  p0_val_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y73"
    )
    port map (
      I => NlwBufferSignal_p0_val_OBUF_I,
      O => p0_val
    );
  p1_val_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y77"
    )
    port map (
      I => NlwBufferSignal_p1_val_OBUF_I,
      O => p1_val
    );
  p2_val_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y68"
    )
    port map (
      I => NlwBufferSignal_p2_val_OBUF_I,
      O => p2_val
    );
  p0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y70",
      PATHPULSE => 450 ps
    )
    port map (
      O => p0_IBUF_2210,
      I => p0
    );
  p1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y75",
      PATHPULSE => 450 ps
    )
    port map (
      O => p1_IBUF_2211,
      I => p1
    );
  p2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y69",
      PATHPULSE => 450 ps
    )
    port map (
      O => p2_IBUF_2212,
      I => p2
    );
  p3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y74",
      PATHPULSE => 450 ps
    )
    port map (
      O => p3_IBUF_2213,
      I => p3
    );
  p3_val_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y76"
    )
    port map (
      I => NlwBufferSignal_p3_val_OBUF_I,
      O => p3_val
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y79",
      PATHPULSE => 450 ps
    )
    port map (
      O => rst_IBUF_2215,
      I => rst
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
  p3_r : X_SFF
    generic map(
      LOC => "SLICE_X0Y74",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p3_r_CLK,
      I => p3_r_rstpot_2166,
      O => p3_r_2214,
      SRST => rst_IBUF_2215,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  p3_r_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y74",
      INIT => X"FFFF0C0CFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => en_IBUF_2205,
      ADR4 => p3_r_2214,
      ADR2 => rst_IBUF_2215,
      ADR5 => p3_IBUF_2213,
      O => p3_r_rstpot_2166
    );
  p2_r : X_SFF
    generic map(
      LOC => "SLICE_X1Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p2_r_CLK,
      I => p2_r_rstpot_2175,
      O => p2_r_2209,
      SRST => rst_IBUF_2215,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  p2_r_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y68",
      INIT => X"FFFFFFFF0C000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => en_IBUF_2205,
      ADR5 => p2_r_2209,
      ADR2 => rst_IBUF_2215,
      ADR3 => p2_IBUF_2212,
      O => p2_r_rstpot_2175
    );
  p0_r : X_SFF
    generic map(
      LOC => "SLICE_X1Y72",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p0_r_CLK,
      I => p0_r_rstpot_2182,
      O => p0_r_2207,
      SRST => rst_IBUF_2215,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  p0_r_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y72",
      INIT => X"FF00FF00FFAAFF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => en_IBUF_2205,
      ADR3 => p0_r_2207,
      ADR5 => rst_IBUF_2215,
      ADR0 => p0_IBUF_2210,
      O => p0_r_rstpot_2182
    );
  p1_r : X_SFF
    generic map(
      LOC => "SLICE_X1Y74",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p1_r_CLK,
      I => p1_r_rstpot_2190,
      O => p1_r_2208,
      SRST => rst_IBUF_2215,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  p1_r_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y74",
      INIT => X"FFFF0F00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => en_IBUF_2205,
      ADR4 => p1_r_2208,
      ADR2 => rst_IBUF_2215,
      ADR3 => p1_IBUF_2211,
      O => p1_r_rstpot_2190
    );
  NlwBufferBlock_p0_val_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => p0_r_2207,
      O => NlwBufferSignal_p0_val_OBUF_I
    );
  NlwBufferBlock_p1_val_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => p1_r_2208,
      O => NlwBufferSignal_p1_val_OBUF_I
    );
  NlwBufferBlock_p2_val_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => p2_r_2209,
      O => NlwBufferSignal_p2_val_OBUF_I
    );
  NlwBufferBlock_p3_val_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => p3_r_2214,
      O => NlwBufferSignal_p3_val_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_2206,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_p3_r_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_p3_r_CLK
    );
  NlwBufferBlock_p2_r_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_p2_r_CLK
    );
  NlwBufferBlock_p0_r_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_p0_r_CLK
    );
  NlwBufferBlock_p1_r_CLK : X_BUF
    generic map(
      PATHPULSE => 450 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_p1_r_CLK
    );
  NlwBlock_link_bcast_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_link_bcast_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

