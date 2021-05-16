
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity comparator is
    Port ( A : in  STD_LOGIC_vector (2 downto 0);
           B : in  STD_LOGIC_vector (2 downto 0);
           CLK : in  STD_LOGIC;
           C : out  STD_LOGIC;
           D : out  STD_LOGIC;
           EQUAL : out  STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin
pro1:process(CLK,A,B)
begin
if(rising_edge(CLK)) then
if (A>B) then 
C<='1'; D<='0'; EQUAL<='0';
elsif (B>A) then
C<='0'; D<='1'; EQUAL<='0';
else
C<='0'; D<='0'; EQUAL<='1';
end if;
end if;
end process;
end Behavioral;
