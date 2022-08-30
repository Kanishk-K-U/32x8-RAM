library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL; //numeric library is imported

entity RAM_32X8 is //entity is declared
port(
 address: in std_logic_vector(4 downto 0); 
 data_in: in std_logic_vector(7 downto 0);
 write_in: in std_logic; 
 clock: in std_logic; 
 data_out: out std_logic_vector(7 downto 0)
);
end RAM_32X8;

architecture Behavioral of RAM_32X8 is //architecture definition
type ram_array is array (0 to 31 ) of std_logic_vector (7 downto 0);
signal ram_data: ram_array :=( //ram_array will be mapped to the signal ram_data
   b"10000000",b"01001101",x"77",x"67",
   x"99",x"25",x"00",x"1A", 
   x"00",x"00",x"00",x"00",
   x"00",x"00",x"00",x"00",
   x"00",x"0F",x"00",x"00",
   x"00",x"00",b"00111100",x"00",
   x"00",x"00",x"00",x"00",
   x"00",x"00",x"00",x"1F"
   ); 

begin
process(clock)

begin
  if(rising_edge(clock)) then //transition of signal from low to high
 if(write_in='1') then 
 ram_data(to_integer(unsigned(address))) <= data_in;
  end if;
 end if;
end process;

 data_out <= ram_data(to_integer(unsigned(address)));
end Behavioral;
