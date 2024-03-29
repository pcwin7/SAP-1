library IEEE;
use IEEE.std_logic_1164.all;

entity MAR is
	generic(NumOfAddressLines: integer:=4);
	port(
		CLK, LM_Neg :in std_logic;
		InAddress	:in std_logic_vector(NumOfAddressLines - 1 downto 0);
		OutAddress	:out std_logic_vector(NumOfAddressLines - 1 downto 0)
	);
end MAR;

architecture RTL of MAR is
begin
	process(CLK)
	begin
		if(CLK'event and CLK = '1' and LM_Neg = '0') then
			OutAddress <= InAddress;
		end if;
	end process;
end RTL;
		