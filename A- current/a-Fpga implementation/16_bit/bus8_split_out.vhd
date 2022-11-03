LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity bus8_split_out is

port(


c : out std_logic_vector(7 downto 0) ;

d0,d1,d2,d3,d4,d5,d6,d7 : in std_logic 


 

-- last item cannot have a semicolon 



);


end bus8_split_out ;




ARCHITECTURE LogicFunc of bus8_split_out is
Begin 


c(0)<=	d0; 
c(1)<=	d1; 
c(2)<=	d2; 
c(3)<=	d3; 
c(4)<=	d4; 
c(5)<=	d5; 
c(6)<=	d6; 
c(7)<=	d7; 










END LogicFunc ; 