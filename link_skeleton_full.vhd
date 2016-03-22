----------------------------------------------------------------------------------
-- Company: ECAL
-- Engineer: Urs Evora
-- 
-- Create Date:    18:08:01 03/04/2016 
-- Design Name: 	
-- Module Name:    link_skeleton - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity link_skeleton is
PORT(
--Input
--Forward Control Signals
clk: IN STD_LOGIC;
reset: IN STD_LOGIC;
--rand_W : IN STD_LOGIC -- not implemented 
--NOTE: Not sure where these signals originate from
rp_pred: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if pred connections exist
rn_succ: IN STD_LOGIC_VECTOR(3 DOWNTO 0 ); -- Vector determining if succ connections exist
fwd_pred: IN STD_LOGIC_VECTOR( 3 DOWNTO 0 ); -- Forward pred request signals
foward: IN STD_LOGIC;  -- Forward activation mode

--Backwards Control Signals
bck_succ: IN STD_LOGIC_VECTOR( 3 DOWNTO 0); -- backward successors request signals
backward: IN STD_LOGIC; -- backward activation mode
update: IN STD_LOGIC; -- update weight control signal

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
end link_skeleton;

architecture Behavioral of link_skeleton is

component fixedpointmult
 port (
 A   : IN std_logic_VECTOR(19 downto 0);
 B   : IN std_logic_VECTOR(19 downto 0);
 clk : IN std_logic;
 CE  : IN std_logic;
 SCLR: IN std_logic;
 P   : OUT std_logic_VECTOR(39 downto 0)
 );
end component;
--ACC_B
SIGNAL acc_b_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_b
SIGNAL acc_b_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- input of accumulate B
signal cntb: std_logic_vector(19 downto 0);
--ACC_F
SIGNAL acc_f_out: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_f
SIGNAL acc_f_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- output of mux into ACC_F
signal cntf: std_logic_vector(19 downto 0);
--ACC_W
SIGNAL acc_w_out, mult_in: STD_LOGIC_VECTOR(19 DOWNTO 0 ); -- output of acc_w
signal write_w: std_logic;
SIGNAL weight_reg: STD_LOGIC_VECTOR( 19 DOWNTO 0 ):= X"004A4"; -- Stores the weight of link
--Sel_fwd
SIGNAL f_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- Select signal for forward input MUX
SIGNAL sel_fwd_reset_m: STD_LOGIC;
SIGNAL sel_fwd_en_m: STD_LOGIC; 
signal r_regf, df, qf, reqsorqf, nqrf, predandf: std_logic_vector(3 downto 0);
signal res_mf, pre_resf, res_df, res_qf, ef, r01orf, r23orf, triorf: std_logic;
signal en_af, forward: std_logic; 
signal rf, reqsf: std_logic_vector(3 downto 0);
--Sel bck
SIGNAL sel_bck_en_m: STD_LOGIC;
SIGNAL sel_bck_reset_m: STD_LOGIC;
SIGNAL b_sel: STD_LOGIC_VECTOR( 1 DOWNTO 0 ); -- selection from select back
signal r_reg, d, q, reqsorq, nqr, predand: std_logic_vector(3 downto 0);
signal res_m, pre_res, res_d, res_q, e, r01or, r23or, trior: std_logic;
signal en_ab, bckwrd: std_logic;
signal r, reqs: std_logic_vector(3 downto 0);
--Mult
SIGNAL mult_end: STD_LOGIC; -- Result when multiply is finished
SIGNAL mult_out: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Output for multiplier
SIGNAL mult_w_in: STD_LOGIC_VECTOR( 19 DOWNTO 0 ); -- Weight or acc_f input for mult
SIGNAL mult_enable: STD_LOGIC; -- result of ORing sel_fwd_en_in, update_reg, sel_bck_m
SIGNAL mult_reset: STD_LOGIC;
signal mult_ready: std_logic:='0';
signal A   :  std_logic_VECTOR(19 downto 0);
signal B   :  std_logic_VECTOR(19 downto 0);
--signal clk :  std_logic;
signal CE  :  std_logic;
signal SCLR:  std_logic;
signal P   :  std_logic_VECTOR(39 downto 0);
--Other
SIGNAL is_back_prop: STD_LOGIC; -- Result of ANDing backwards and mult_end
SIGNAL update_reg: STD_LOGIC; -- stores input of update in register for synchronization
SIGNAL update_and_nupdate: STD_LOGIC; -- output of OR gate for mult reset


begin
FXPM: fixedpointmult PORT MAP(
A=>A, B=>B, clk=>clk, CE=>CE, SCLR=>SCLR, P=>P);


--MULT
A <= mult_in;
B <= mult_w_in;
CE <= mult_enable;
--clk <= clk;
SCLR <= mult_reset;
mult_out <= P(29 downto 10);
Process (mult_reset, clk)
begin
if(clk'EVENT AND clk='1') THEN
	if (mult_reset = '1') THEN
		mult_ready <= '1';
	else
		mult_ready <= '0';
		end if;
	end if;
end Process;


-- Bck_pred 
is_back_prop <= mult_end AND backward; -- To signal pred for back prop
back_pred(0) <= rp_pred(0) AND is_back_prop;
back_pred(1) <= rp_pred(1) AND is_back_prop;
back_pred(2) <= rp_pred(2) AND is_back_prop;
back_pred(3) <= rp_pred(3) AND is_back_prop;

-- Forward input MUX
WITH f_sel( 1 DOWNTO 0 ) SELECT
	acc_f_in <= x_pred_0 WHEN "00",
	x_pred_1 WHEN "01",
	x_pred_2 WHEN "10",
	x_pred_3 WHEN "11",
	x_pred_0 WHEN others;

-- Backward input MUX
WITH b_sel( 1 DOWNTO 0 ) SELECT
	acc_b_in <= b_succ_0 WHEN "00",
	b_succ_1 WHEN "01",
	b_succ_2 WHEN "10",
	b_succ_3 WHEN "11",
	b_succ_0 WHEN others;
	
--Multiply input MUX
WITH backward SELECT
	mult_in <= acc_f_out WHEN '0',
	acc_b_out WHEN '1',
	acc_f_out WHEN others;
	
--Multiply enable control
	mult_enable <= sel_fwd_en_m OR sel_bck_en_m OR update_reg;
	
--Multiply W input MUX
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

--SEL_FWD
process (reset, clk) begin
if (clk'EVENT AND clk = '1') then
reqsorqf (0) <= NOT reqsf(0) OR qf(0);
reqsorqf (1) <= NOT reqsf(1) OR qf(1);
reqsorqf (2) <= NOT reqsf(2) OR qf(2);
reqsorqf (3) <= NOT reqsf(3) OR qf(3);

pre_resf <= reqsorqf(0) AND reqsorqf(1) AND reqsorqf(2) AND reqsorqf(3); --4 Input AND Gate

res_df <= pre_resf AND forward; --AND Gate following 4 input AND Gate
res_qf <= res_df;
sel_fwd_en_m <= res_df; --MULT Enable signal
res_mf <= res_df AND res_qf;

nqrf <= NOT qf AND rf; --AND Gate following each of the four flip flops


r23orf <= nqrf(2) OR nqrf(3);
r01orf <= nqrf(0) OR nqrf(1) OR r23orf; --3 Input OR gate 

predandf(3) <= r23orf AND (nqrf(3) OR (NOT nqrf(2) AND nqrf(1)));
predandf(2) <= NOT (nqrf(3) OR (NOT nqrf(2) AND nqrf(1))) AND r23orf;
predandf(1) <= (nqrf(3) OR (NOT nqrf(2) AND nqrf(1))) AND NOT r23orf;
predandf(0) <= NOT (nqrf(3) OR (NOT nqrf(2) AND nqrf(1))) AND NOT r23orf; --AND Gate preceding OR gate to d


qf <= df;
df <= predandf OR qf;

en_af <= r01orf AND forward; --ACC_F Enable signal
ef <= en_af;
end if;
end process;
process(reset, clk) begin
if (reset = '0') then
rf<= (OTHERS=>'0');
elsif (clk'EVENT AND clk = '1') then
r_regf <= rf;
end if;
end process;

--SEL_BCK
process (reset, clk) begin
if (clk'EVENT AND clk = '1') then
reqsorq (0) <= NOT reqs(0) OR q(0);
reqsorq (1) <= NOT reqs(1) OR q(1);
reqsorq (2) <= NOT reqs(2) OR q(2);
reqsorq (3) <= NOT reqs(3) OR q(3);

pre_res <= reqsorq(0) AND reqsorq(1) AND reqsorq(2) AND reqsorq(3); --4 Input AND Gate

res_d <= pre_res AND bckwrd; --AND Gate following 4 input AND Gate
res_q <= res_d;
sel_bck_en_m <= res_d; --MULT Enable signal from SEL_BCK
res_m <= res_d AND res_q;

nqr <= NOT q AND r; --AND Gate following each of the four flip flops


r23or <= nqr(2) OR nqr(3);
r01or <= nqr(0) OR nqr(1) OR r23or; --3 Input OR gate 

predand(3) <= r23or AND (nqr(3) OR (NOT nqr(2) AND nqr(1)));
predand(2) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND r23or;
predand(1) <= (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND NOT r23or;
predand(0) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND NOT r23or; --AND Gate preceding OR gate to d


q <= d;
d <= predand OR q;

en_ab <= r01or AND forward; --ACC_B Enable signal
e <= en_ab;
end if;
end process;
process(reset, clk) begin
if (reset = '0') then
r <= (OTHERS=>'0');
elsif (clk'EVENT AND clk = '1') then
r_reg <= r;
end if;
end process;

--ACC_B
add_b: process(clk, reset, acc_b_in)
	begin
		if (clk'event and clk =  '1') then	--Enable on Clock Tick
			if (reset = '1') then	--Reset
				cntb <= (others => '0');	--Reset Counter Register
			else
				if (en_ab = '1') then	--Accumulator Input Enable
					cntb <= cntb + acc_b_in;	--Sum of Counter Value and Input
				end if;
			end if;
		end if;
	end process add_b;
	acc_b_out <= cntb;	--Output Current Counter Value
	
--ACC_F
add_f: process(clk, reset, acc_f_in)
	begin
		if (clk'event and clk =  '1') then	--Enable on Clock Tick
			if (reset = '1') then	--Reset
				cntf <= (others => '0');	--Reset Counter Register
			else
				if (en_af = '1') then	--Accumulator Input Enable
					cntf <= cntf + acc_f_in;	--Sum of Counter Value and Input
				end if;
			end if;
		end if;
	end process add_f;
	acc_f_out <= cntb;	--Output Current Counter Value
	
--ACC_W
PROCESS( clk, mult_in)
	BEGIN
	IF( clk'EVENT AND clk = '1') THEN
		IF( write_w = '1') THEN
			weight_reg <= weight_reg + mult_in;
		END IF;
	END IF;
END PROCESS;

acc_w_out <= weight_reg; -- Output the weight	
end Behavioral;


