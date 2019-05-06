 -- Title: Binary-to-BCD Converter
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;
 
entity bin_bcd_two_nested_loops is
generic( width_B: positive := 16;
         width_P: positive := 19);
    port (
        B: in std_logic_vector (width_B - 1 downto 0);
        P: out std_logic_vector (width_P - 1 downto 0)
    );
end bin_bcd_two_nested_loops;

architecture behavior of bin_bcd_two_nested_loops is
begin
  process(B)
	variable z: unsigned (width_B + width_P - 1 downto 0);
	
	--variable loop_max_i : integer range 0 to width_B - 4;
	--variable loop_max_j : integer range 0 to (width_P / 4) - 1;
	--variable loop_max_i := width_B - 4;
	--variable loop_max_j := (width_P / 4) - 1;
	 
	 begin
    z := (others=>'0');
	 
    z(width_B + 2 downto 3) := unsigned(B);
 
    for i in 0 to width_B - 4 loop
		for j in 0 to ((width_P / 4) - 1) loop
			if z(width_B + j * 4 + 3 downto width_B + j * 4) > 4 then	
				z(width_B + j * 4 + 3 downto width_B + j * 4) := z(width_B + j * 4 + 3 downto width_B + j * 4) + 3;
				else
					z(width_B + j * 4 + 3 downto width_B + j * 4) := z(width_B + j * 4 + 3 downto width_B + j * 4);
			end if;
			
		end loop;
		z(width_B + width_P - 1 downto 1) := z(width_B + width_P - 2 downto 0);		-- shift left
	 end loop;
    P <= std_logic_vector(z(width_B + width_P - 1 downto width_B));	
  end process;
end behavior; 