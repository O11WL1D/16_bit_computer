LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity b32_64merge is

port(


b : in std_logic_vector(31 downto 0) ;
a : in std_logic_vector(31 downto 0) ;
f : buffer std_logic_vector(63 downto 0) 
 


 

-- last item cannot have a semicolon 



);


end b32_64merge ;







ARCHITECTURE Behavioral OF b32_64merge IS 
--declariative block, where you would put a variable if you had one. 
		
	
	BEGIN
	
	

	
	
	
	
	
	
	
	

	test : PROCESS(a,b,f)
	
	
	BEGIN
	

	
		
		
		for x in 0 to 31 loop
		
		f(x)<=a(x);
		

			
		--if w='0' then
		--p:='0';
		--end if;
		
		END LOOP;

		
		
		
	  for x in 0 to 31 loop
		
		f((x+15))<=b(x);
		

			
		--if w='0' then
		--p:='0';
		--end if;
		
		END LOOP;

		
		
		
		
		
	END PROCESS test;
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	END Behavioral;	
		



