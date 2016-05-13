----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:10:49 05/07/2016 
-- Design Name: 
-- Module Name:    linkwrapper - Behavioral 
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

entity linkwrapper is
port(
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
forward: IN STD_LOGIC;
backward: IN STD_LOGIC;
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 );
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 );
--broadcast: IN STD_LOGIC;
--back_success: IN STD_LOGIC_VECTOR(3 downto 0);
update: IN STD_LOGIC;
x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 );
fwd_succ :OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ); back_pred :OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ));
end linkwrapper;

architecture Behavioral of linkwrapper is
component link_skeleton
PORT(
--Input
--Forward Control Signals
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
--rand_W : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
--rp_pred: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
--rn_succ: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ) := "0000"; -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
update: IN STD_LOGIC; -- update weight control signal
broadcast: IN STD_LOGIC; -- Broadcase connections

still_fwd: IN STD_LOGIC;

--Forward Data Input Signals
--Data values from pred for forward activation
x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
x_pred_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";

--Backward Data Input Signals
--Data values from succ for back prop
b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";
b_succ_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 ) := X"00000";

--Output Signals
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output for both forward and back prob

--Forward Control Signals
fwd_succ: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0); -- Sends request to successors that forward value is ready

--Backwards Control 
back_pred: OUT STD_LOGIC_VECTOR( 3 DOWNTO 0 ) -- Sends request to preds that back propagation value is ready

);
end component;
SIGNAL ground: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
WL: link_skeleton 
	PORT MAP( clk=>clk, reset=>reset,fwd_pred=>fwd_pred, foward=>forward, 
		bck_succ=>bck_succ, backward=>backward, update=>update,
		broadcast=>'0', still_fwd=>'0', x_pred_0=>x_pred_0, x_pred_1=>X"00000", x_pred_2=>X"00000", x_pred_3=>X"00000",
		b_succ_0=>b_succ_0, b_succ_1=>x"00000", b_succ_2=>x"00000",
		b_succ_3=>x"00000", y=>y, fwd_succ=>fwd_succ, back_pred=>back_pred);

end Behavioral;

