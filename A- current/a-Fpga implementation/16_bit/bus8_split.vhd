LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity bus8_split is

port(


b : in std_logic_vector(7 downto 0) ;

a0,a1,a2,a3,a4,a5,a6,a7: out std_logic 


 

-- last item cannot have a semicolon 



);


end bus8_split ;




ARCHITECTURE LogicFunc of bus8_split is
Begin 


a0<=	b(0); 
a1<=	b(1); 
a2<=	b(2); 
a3<=	b(3); 
a4<=	b(4); 
a5<=	b(5); 
a6<=	b(6); 
a7<=	b(7); 











END LogicFunc ; 