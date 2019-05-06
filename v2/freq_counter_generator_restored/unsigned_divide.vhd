-- Quartus II VHDL Template
-- Unsigned Divide

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity unsigned_divide is

	generic
	(
		DATA_WIDTH_NUMER : natural := 8;
		DATA_WIDTH_DENOM : natural := 8
	);

	port 
	(
		NUMER	   : in unsigned ((DATA_WIDTH_NUMER - 1) downto 0);
		DENOM	   : in unsigned ((DATA_WIDTH_DENOM - 1) downto 0);
		QUOT  : out unsigned ((DATA_WIDTH_NUMER - 1) downto 0)
	);

end entity;

architecture rtl of unsigned_divide is
begin

	QUOT <= NUMER / DENOM;

end rtl;
