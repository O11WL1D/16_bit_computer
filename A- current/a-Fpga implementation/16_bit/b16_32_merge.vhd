LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity b16_32_merge is

port(


b : in std_logic_vector(15 downto 0) ;
a : in std_logic_vector(15 downto 0) ;
f : buffer std_logic_vector(31 downto 0) 
 


 

-- last item cannot have a semicolon 



);


end b16_32_merge ;







ARCHITECTURE Behavioral OF b16_32_merge IS 
--declariative block, where you would put a variable if you had one. 
		
	
	BEGIN
	
	

	
	
	
	
	
	
	
	

	test : PROCESS(a,b,f)
	
	
	BEGIN
	

	
		
		
		for x in 0 to 15 loop
		
		f(x)<=a(x);
		

			
		--if w='0' then
		--p:='0';
		--end if;
		
		END LOOP;

		
		
		
	  for x in 0 to 15 loop
		
		f((x+15))<=b(x);
		

			
		--if w='0' then
		--p:='0';
		--end if;
		
		END LOOP;

		
		
		
		
		
	END PROCESS test;
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	END Behavioral;	
		



