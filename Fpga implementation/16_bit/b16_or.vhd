LIBRARY ieee; 
USE ieee.std_logic_1164.all ;





ENTITY b16_or is
port (



A : IN STD_LOGIC_VECTOR(15 downto 0) ;


B : IN STD_LOGIC_VECTOR (15 downto 0 );

F : OUT STD_LOGIC_VECTOR (15 downto 0) 



--last port musnt have a semi 

);

end b16_or;




ARCHITECTURE LogicFunc of b16_or IS
BEGIN 

f<= (A OR B);





END LogicFunc;