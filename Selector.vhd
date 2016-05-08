library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SELECTOR is
PORT( clr, clk : std_logic;

forward: std_logic;
r, reqs: in std_logic_vector(3 downto 0);
en_a: out std_logic;
sel: out std_logic_vector(1 downto 0);
en_m : out std_logic;
res_m: out std_logic
);
end SELECTOR;

architecture Behavioral of SELECTOR is
signal r_reg, d, q, reqsorq, nqr, predand: std_logic_vector(3 downto 0) := "0000";
signal pre_res_d, pre_res, e, r01or, r23or, trior: std_logic := '0';
signal res_d: std_logic := '0';
--signal en_m: std_logic;
begin

--process (clr, clk) begin
--if (clk'EVENT AND clk = '1') then
reqsorq (0) <= NOT reqs(0) OR q(0);
reqsorq (1) <= NOT reqs(1) OR q(1);
reqsorq (2) <= NOT reqs(2) OR q(2);
reqsorq (3) <= NOT reqs(3) OR q(3);

pre_res <= reqsorq(0) AND reqsorq(1) AND reqsorq(2) AND reqsorq(3); --4 Input AND Gate
pre_res_d <= pre_res AND forward;
process(clk, clr, res_d, forward) begin
	if(clk'EVENT AND clk = '1')then
		if(forward = '1')then
			res_d <= pre_res_d;
		else
			res_d <= '0';
		end if;
	end if;
end process;

en_m <= res_d; --MULT Enable signal
--res_m <= res_d AND pre_res AND forward;
res_m <= '0';

nqr <= NOT d AND r; --AND Gate following each of the four flip flops


r23or <= nqr(2) OR nqr(3);
r01or <= nqr(0) OR nqr(1) OR r23or; --3 Input OR gate 

predand(3) <= r23or AND (nqr(3) OR (NOT nqr(2) AND nqr(1)));
predand(2) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND r23or;
predand(1) <= (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND NOT r23or;
predand(0) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1))) AND NOT r23or; --AND Gate preceding OR gate to d

--Select signal
with predand select
	sel <= "00" when "0001",
	"01" when "0010",
	"10" when "0100",
	"11" when "1000",
	"00" when others;

process(clk, clr, e, d) begin
	if(clk'EVENT AND clk = '1')then
		IF( e = '1') then
			d <= predand OR d;
		else
			d <= d;
		end if;
	end if;
end process;

q <= d;
en_a <= e;
e <= r01or AND forward; --ACC Enable signal

--sel <= reqs;
--end if;
--end process;
--process(clr, clk) begin
--if (clr = '1') then
--r <= (OTHERS=>'0');
--elsif (clk'EVENT AND clk = '1') then
--r_reg <= r;
--end if;
--end process;
end Behavioral;