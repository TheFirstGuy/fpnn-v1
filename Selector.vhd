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
r, reqs: inout std_logic_vector(3 downto 0)
);
end SELECTOR;

architecture Behavioral of SELECTOR is
r_reg, d, q, reqsorq, nqr, predand: std_logic_vector(3 downto 0);
res_m, pre_res, res_d, res_q, e, r01or, r23or, trior: std_logic;
en_m, en_a: std_logic;
begin
process (clr, clk) begin
if (clk'EVENT AND clk = '1') then
reqsorq (0) <= NOT reqs(0) OR q(0);
reqsorq (1) <= NOT reqs(1) OR q(1);
reqsorq (2) <= NOT reqs(2) OR q(2);
reqsorq (3) <= NOT reqs(3) OR q(3);
pre_res <= reqsorq(0) AND reqsorq(1) AND reqsorq(2) AND reqsorq(3);
res_d <= pre_res AND forward;
res_q <= res_d;
en_m <= res_q;
res_m <= res_d AND res_q;

nqr <= NOT q AND r;


r23or <= nqr(2) OR nqr(3);
r01or <= nqr(0) OR nqr(1) OR r23or;

predand(3) <= r23or AND (nqr(3) OR (NOT nqr(2) AND nqr(1));
predand(2) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1)) AND r23or;
predand(1) <= (nqr(3) OR (NOT nqr(2) AND nqr(1)) AND NOT r23or;
predand(0) <= NOT (nqr(3) OR (NOT nqr(2) AND nqr(1)) AND NOT r23or;


q <= d;
d <= predand OR q;

en_a <= r01or AND forward;
e <= en_a;
end if;
end process;
process(clr, clk) begin
if (clr = '0') then
r <= (OTHERS=>'0');
elsif (clk'EVENT AND clk = '1') then
r_reg <= r;
end if;
end process;






end Behavioral;