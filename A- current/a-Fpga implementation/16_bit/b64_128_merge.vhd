LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity b64_128_merge is

port(


b : in std_logic_vector(63 downto 0) ;
a : in std_logic_vector(63 downto 0) ;
f : buffer std_logic_vector(127 downto 0) 
 


 

-- last item cannot have a semicolon 



);


end b64_128_merge ;







ARCHITECTURE Behavioral OF b64_128_merge IS 
--declariative block, where you would put a variable if you had one. 
		
	
	BEGIN
	
	

	
	
	
	
	
	
	
	

	test : PROCESS(a,b,f)
	
	
	BEGIN
	

	
		
		
		for x in 0 to 63 loop
		
		f(x)<=a(x);
		

			
		--if w='0' then
		--p:='0';
		--end if;
		
		END LOOP;

		
		
		
	  for x in 0 to 63 loop
		
		f((x+15))<=b(x);
		

			
		--if w='0' then
		--p:='0';
		--end if;
		
		END LOOP;

		
		
		
		
		
	END PROCESS test;
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	END Behavioral;	
		



