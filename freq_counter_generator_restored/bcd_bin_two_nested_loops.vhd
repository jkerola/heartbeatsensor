-- Title: BCD-to-BinaryConverter
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;
 
entity bcd_bin_two_nested_loops is
generic( width_B: positive := 19;
         width_P: positive := 16);
    port (
        B: in std_logic_vector (width_B - 1 downto 0);
        P: out std_logic_vector (width_P - 1 downto 0)
    );
end bcd_bin_two_nested_loops;

architecture behavior of bcd_bin_two_nested_loops is
begin
  process(B)
	variable z: unsigned (width_B + width_P - 4 downto 0);
	variable zz: unsigned (width_B + width_P - 4 downto 0);
		
	 begin
    z := (others=>'0');
    z(width_B + width_P - 4 downto width_P - 3) := unsigned(B);
	 zz := z;
 
    for i in 0 to width_P - 4 loop
		for j in 0 to (((width_B + width_P) / 8) - 1) loop
			if z((width_P + 1) + j * 4 downto (width_P + 1) + j * 4 - 3) > 7 then	
				z((width_P + 1) + j * 4 downto (width_P + 1) + j * 4 - 3) := z((width_P + 1) + j * 4 downto (width_P + 1) + j * 4 - 3) - 3;
				else
					z((width_P + 1) + j * 4 downto (width_P + 1) + j * 4 - 3) := z((width_P + 1) + j * 4 downto (width_P + 1) + j * 4 - 3);
			end if;
			
		end loop;
		z := z srl 1; 
	 end loop;
    P <= std_logic_vector(z(width_P - 1 downto 0));	
  end process;
end behavior; 

