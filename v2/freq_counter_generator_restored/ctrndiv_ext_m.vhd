LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;
use IEEE.MATH_REAL.all;

-- N-bit counter with division ratio set by an external word m

Entity ctrndiv_ext_m is

generic (
	N : natural := 8);

port (
	clk, resetn, enable: in std_logic;
	m : in unsigned(N - 1 downto 0);
	tc: out std_logic;								-- overflow flag
	ct: out std_logic_vector(N - 1 downto 0)	-- output bits
	);	
	
end entity ctrndiv_ext_m;
--
architecture RTL of ctrndiv_ext_m is
	signal count: unsigned(N - 1 downto 0);	-- counter bits
begin
process (clk, resetn, enable, m) is
	begin
		if resetn = '0' then
			count <= (others=>'0');				-- all bits zeroed
		elsif rising_edge(clk) and enable = '1' then
				if count < m-1 then			-- normal counting
						count <= count + 1;
					else 
					count <= (others=>'0');		-- overflow
				end if;
		end if;
end process;

process (count) is
	begin
		if (count = m-1) and enable = '1' then	-- overflow?
			tc <= '1';										-- yes
		else
			tc <= '0';										-- no
		end if;
		ct <= STD_LOGIC_VECTOR(count);
end process;
		
end architecture RTL;