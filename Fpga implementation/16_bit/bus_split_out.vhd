LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity bus_split_out is

port(


b : out std_logic_vector(15 downto 0) ;

a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 : in std_logic 


 

-- last item cannot have a semicolon 



);


end bus_split_out ;




ARCHITECTURE LogicFunc of bus_split_out is
Begin 

b(0)<=	a0; 
b(1)<=	a1; 
b(2)<=	a2; 
b(3)<=	a3; 
b(4)<=	a4; 
b(5)<=	a5; 
b(6)<=	a6; 
b(7)<=	a7; 
b(8)<=	a8; 
b(9)<=	a9; 
b(10)<=	a10; 
b(11)<=	a11; 
b(12)<=	a12; 
b(13)<=	a13; 
b(14)<=	a14; 
b(15)<=	a15; 









END LogicFunc ; 