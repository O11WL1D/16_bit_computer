LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity bus_split is

port(


b : in std_logic_vector(15 downto 0) ;

a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 : out std_logic 


 

-- last item cannot have a semicolon 



);


end bus_split ;




ARCHITECTURE LogicFunc of bus_split is
Begin 


a0<=	b(0); 
a1<=	b(1); 
a2<=	b(2); 
a3<=	b(3); 
a4<=	b(4); 
a5<=	b(5); 
a6<=	b(6); 
a7<=	b(7); 
a8<=	b(8); 
a9<=	b(9); 
a10<=	b(10); 
a11<=	b(11); 
a12<=	b(12); 
a13<=	b(13); 
a14<=	b(14); 
a15<=	b(15); 











END LogicFunc ; 