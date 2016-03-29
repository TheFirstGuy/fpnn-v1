----------------------------------------------------------------------------------
-- Company: ECAL
-- Engineer: Urs Evora
-- 
-- Create Date:    18:08:01 03/04/2016 
-- Design Name: 	
-- Module Name:    activator_skeleton - Behavioral 
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

entity activator_skeleton is
PORT(
--Input
--Forward Control Signals
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
--rand_T : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
---rp_pred: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
sn_succ: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 1 ); -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
update: IN STD_LOGIC; -- update weight control signal

--Forward Data Input Signals
--Data values from pred for forward activation

---x_pred_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
x_pred_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );

--Backward Data Input Signals
--Data values from succ for back prop

---b_succ_0: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_1: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_2: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );
b_succ_3: IN STD_LOGIC_VECTOR( 19 DOWNTO 0 );

--Output Signals
y : OUT STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output for both forward and back prob

--Forward Control Signals
fwd_succ: OUT STD_LOGIC_VECTOR( 3 DOWNTO 1); -- Sends request to successors that forward value is ready

--Backwards Control 
back_pred: OUT STD_LOGIC_VECTOR( 3 DOWNTO 1 ) -- Sends request to preds that back propagation value is ready

);
end activator_skeleton;

architecture Behavioral of activator_skeleton is
--ACC_B
SIGNAL acc_b_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_b
SIGNAL acc_b_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- input of accumulate B
--ACC_F
SIGNAL acc_f_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_f
SIGNAL acc_f_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output of mux into ACC_F
--ACC_W
SIGNAL acc_w_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_w
--Sel_fwd
SIGNAL f_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- Select signal for forward input MUX
SIGNAL sel_fwd_reset_m: STD_LOGIC;
SIGNAL sel_fwd_en_m: STD_LOGIC;  
--Sel bck
SIGNAL sel_bck_en_m: STD_LOGIC;
SIGNAL sel_bck_reset_m: STD_LOGIC;
SIGNAL b_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- selection from select back
--Mult
SIGNAL mult_end: STD_LOGIC; -- Result when multiply is finished
SIGNAL mult_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Input for multiplier
SIGNAL mult_w_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Weight or acc_f input for mult
SIGNAL mult_enable: STD_LOGIC; -- result of ORing sel_fwd_en_in, update_reg, sel_bck_m
SIGNAL mult_reset: STD_LOGIC;
--CNT
SIGNAL fin: STD_LOGIC; -- when last degree is given
--Other
SIGNAL is_back_prop: STD_LOGIC; -- Result of ANDing backwards and mult_end
SIGNAL update_reg: STD_LOGIC; -- stores input of update in register for synchronization
SIGNAL update_and_nupdate: STD_LOGIC; -- output of OR gate for mult reset
SIGNAL is_fwd: STD_LOGIC; -- Result of ANDING foward and end
SIGNAL back_ack_all: STD_LOGIC; -- When all pred send ack signal
--State Machine
type s_type is (init, accumulate, fa0, fa1, fa2, fa3, th0, th1, bp0, bp1, bp2, bp3);
signal state, nextstate: s_type;

begin

--State Machine
	stateFSM: PROCESS(clk, reset)
		BEGIN
			IF( reset = '1' ) THEN
				state <= init;
			ELSE
				IF( clk'EVENT and clk = '1') THEN
					state <= nextstate;
				ELSE
					state <= state;
				END IF;
			END IF;
	END PROCESS stateFSM;
	
	outputFSM: PROCESS( state, mult_end, sel_fwd_en_m, fin, backward )
		BEGIN
			nextstate <= init;
			CASE state is
				WHEN init => nextstate <= accumulate;
				WHEN accumulate => IF(sel_fwd_en_m = '1') THEN nextstate <= fa0; ELSE nextstate <= accumulate; END IF;
				WHEN fa0 => nextstate <= fa1;
				WHEN fa1 => IF(fin = '1') THEN nextstate <= fa2; ELSE nextstate <= fa1; END IF;
				WHEN fa2 => IF(mult_end = '1') THEN nextstate <= fa3; ELSE nextstate <= fa2; END IF;
				WHEN fa3 => IF(backward = '1') THEN nextstate <= th0; ELSE nextstate <= fa3; END IF;
				WHEN th0 => nextstate <= th1; 
				WHEN th1 => nextstate <= bp0;
				WHEN bp0 => nextstate <= bp1;
				WHEN bp1 => nextstate <= bp2;
				WHEN bp2 => IF( mult_end = '1') THEN nextstate <= bp3; ELSE nextstate <= bp2; END IF; 
				WHEN bp3 => IF( back_ack_all = '1') THEN nextstate <= init; ELSE nextstate <= bp3; END IF; 
			END CASE;
	END PROCESS outputFSM;
	

	

-- Bck_pred 
is_back_prop <= mult_end AND backward; -- To signal pred for back prop
back_pred(0) <= rp_pred(0) AND is_back_prop;
back_pred(1) <= rp_pred(1) AND is_back_prop;
back_pred(2) <= rp_pred(2) AND is_back_prop;
back_pred(3) <= rp_pred(3) AND is_back_prop;

--fwd_succ
is_fwd <= foward AND mult_end;
fwd_succ(0) <= rn_succ(0) AND is_fwd;
fwd_succ(1) <= rn_succ(1) AND is_fwd;
fwd_succ(2) <= rn_succ(2) AND is_fwd;
fwd_succ(3) <= rn_succ(3) AND is_fwd;

-- Forward input MUX
WITH f_sel( 1 DOWNTO 0 ) SELECT
	acc_f_in <= x_pred_0 WHEN "00",
	x_pred_1 WHEN "01",
	x_pred_2 WHEN "10",
	x_pred_3 WHEN "11",
	x_pred_0 WHEN others;

-- Backward input MUX
WITH b_sel( 1 DOWNTO 0 ) SELECT
	acc_b <= b_succ_0 WHEN "00",
	b_succ_1 WHEN "01",
	b_succ_2 WHEN "10",
	b_succ_3 WHEN "11",
	b_succ_0 WHEN others;
	
--Multiply input MUX
--input ACC_F when foward
--input ADDout when done activating
--input ACC_F when updating threshold & backprop
WITH backward SELECT -- NEEDS TO BE MODIFIED
	mult_in <= acc_f_out WHEN '0',
	acc_b_out WHEN '1',
	acc_f_out WHEN others;
	
--Multiply enable control
	mult_enable <= sel_fwd_en_m OR sel_bck_en_m OR update_reg;
	
--Multiply W input MUX
-- input addout when forward
-- input addout when done activating
-- input acc_b when updating threshold & backprop
WITH update SELECT
	mult_w_in <= acc_w_out WHEN '0',
	acc_f_out WHEN '1',
	acc_w_out WHEN others;
	
--Mutliply reset control
update_and_nupdate <= NOT update_reg AND update;
mult_reset <= sel_fwd_reset_m OR sel_bck_reset_m OR update_and_nupdate;
	
--Update register
PROCESS(clk, update)
	BEGIN
	IF(clk'EVENT AND clk = '1') THEN
		update_reg <= update;
	END IF;
END PROCESS;



end Behavioral;
