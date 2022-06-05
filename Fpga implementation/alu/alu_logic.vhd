LIBRARY ieee ;
USE ieee.std_logic_1164.all ; 

ENTITY alu_logic IS 
PORT ( 

a : IN  STD_LOGIC_VECTOR (15 downto 0);
b : IN  STD_LOGIC_VECTOR (15 downto 0);

ap : IN  STD_LOGIC_VECTOR (15 downto 0);
bp : IN  STD_LOGIC_VECTOR (15 downto 0);
  

fp : IN  STD_LOGIC_VECTOR (15 downto 0);
  
  

f : OUT  STD_LOGIC_VECTOR (15 downto 0)	






	); 

-- note that the last item in the port list does not have an associated ;, keep this in mind or face errors. 


		

		
		
		
end alu_logic;



ARCHITECTURE LogicFunc OF alu_logic IS


 


BEGIN 

--f <= (a AND b ) ;    this would make it so that all f outputs would be equal to its respective A[x] AND B[x]












END LogicFunc ;











