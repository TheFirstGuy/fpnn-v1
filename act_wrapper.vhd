----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:49 05/08/2016 
-- Design Name: 
-- Module Name:    act_wrapper - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity act_wrapper is
PORT(
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
still_fwd: IN STD_LOGIC; --tells activator to go back to forward active. (we are done with back prop)
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
broadcast: IN STD_LOGIC; -- Broadcase connections
x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 ); 
fwd_succ: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0);
back_pred: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 )
);
end act_wrapper;

architecture Behavioral of act_wrapper is

component activator_skeleton is
generic (rand: STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"08000");
PORT(
--Input
--Forward Control Signals
--debug: OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 );
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
still_fwd: IN STD_LOGIC; --tells activator to go back to forward active. (we are done with back prop)
--rand_T : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
--rp_pred: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
--sn_succ: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
broadcast: IN STD_LOGIC; -- Broadcase connections

--Forward Data Input Signals
--Data values from pred for forward activation

x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );

--Backward Data Input Signals
--Data values from succ for back prop

b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );

--Output Signals
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output for both forward and back prob

--Forward Control Signals
fwd_succ: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0); -- Sends request to successors that forward value is ready

--Backwards Control 
back_pred: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ) -- Sends request to preds that back propagation value is ready
);
end component;

begin

ACT: activator_skeleton 
	GENERIC MAP (rand => X"08000")
	PORT MAP( clk=>clk, reset=>reset, still_fwd=>still_fwd, 
		fwd_pred=>fwd_pred,foward=>foward, bck_succ=>bck_succ, backward=>backward,
		broadcast=>broadcast, x_pred_0=>x_pred_0, x_pred_1=>X"00000",
		x_pred_2=>X"00000", x_pred_3=>X"00000", b_succ_0=>b_succ_0,b_succ_1=>X"00000", b_succ_2=>X"00000", b_succ_3=>X"00000", y=>y, fwd_succ=>fwd_succ,
		back_pred=>back_pred);

end Behavioral;

