library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fulladdervhdl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           COUT : out  STD_LOGIC);
end fulladdervhdl;

architecture Behavioral of fulladdervhdl is

begin
SUM<= A xor B xor C;
COUT<=(A AND B) OR (C AND A) OR (B AND C); 

end Behavioral;


