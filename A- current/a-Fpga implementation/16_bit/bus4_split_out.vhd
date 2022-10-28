LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity bus4_split_out is

port(


c : out std_logic_vector(3 downto 0) ;

d0,d1,d2,d3 : in std_logic 


 

-- last item cannot have a semicolon 



);


end bus4_split_out ;




ARCHITECTURE LogicFunc of bus4_split_out is
Begin 


c(0)<=	d0; 
c(1)<=	d1; 
c(2)<=	d2; 
c(3)<=	d3; 









END LogicFunc ; 