LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity bus4_split is

port(


b : in std_logic_vector(3 downto 0) ;

a0,a1,a2,a3 : out std_logic 


 

-- last item cannot have a semicolon 



);


end bus4_split ;




ARCHITECTURE LogicFunc of bus4_split is
Begin 


a0<=	b(0); 
a1<=	b(1); 
a2<=	b(2); 
a3<=	b(3); 












END LogicFunc ; 