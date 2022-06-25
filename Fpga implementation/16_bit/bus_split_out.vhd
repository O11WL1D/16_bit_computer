LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity bus_split_out is

port(


c : out std_logic_vector(15 downto 0) ;

d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15 : in std_logic 


 

-- last item cannot have a semicolon 



);


end bus_split_out ;




ARCHITECTURE LogicFunc of bus_split_out is
Begin 


c(0)<=	d0; 
c(1)<=	d1; 
c(2)<=	d2; 
c(3)<=	d3; 
c(4)<=	d4; 
c(5)<=	d5; 
c(6)<=	d6; 
c(7)<=	d7; 
c(8)<=	d8; 
c(9)<=	d9; 
c(10)<=	d10; 
c(11)<=	d11; 
c(12)<=	d12; 
c(13)<=	d13; 
c(14)<=	d14; 
c(15)<=	d15; 









END LogicFunc ; 