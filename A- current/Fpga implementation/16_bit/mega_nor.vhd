LIBRARY ieee ;
USE ieee.std_logic_1164.all ; 

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;




ENTITY mega_nor IS
PORT ( 


aa : IN STD_LOGIC_VECTOR (15 downto 0);
af : BUFFER STD_LOGIC_VECTOR (15 downto 0)

-- last port should not contain a semicolon 


);

end mega_nor;














ARCHITECTURE Behavioral OF mega_nor IS 
--declariative block, where you would put a variable if you had one. 
	
	
	--signal aaa: STD_LOGIC_VECTOR(15 downto 0);
	--signal aaf: STD_LOGIC_VECTOR(15 downto 0);
	
	
	--component wooh
	--port( 
	--aa : IN STD_LOGIC_VECTOR (15 downto 0);
	--af : OUT STD_LOGIC_VECTOR (15 downto 0)
	--);
	--end component;
	
	
	
	
	
	BEGIN
	

	
	


	test : PROCESS(aa,af)
	variable v : integer := 0;
	variable w : std_ulogic := '0';
	variable p : std_ulogic:='0';
	BEGIN
	

	   for x in 0 to 7 loop
		v:= x * 2;
		af(x) <= aa(v ) NOR aa( (v+1));
		
		END  LOOP;
		
		
		
		
		-- and test loop
		p:='1';
		
		
		
		
		
		for x in 0 to 6 loop
		
		--if a single value anded with its neighbor is not 1, v is turned to zero.
		
		w := ((af(x)) AND (af(x+1)));
		
		
		
		if w='0' then
		p:='0';
		end if;
		

	
		
		

		END LOOP;
		af(15)<=p;
		
		
		END PROCESS test;
		
		
		
		
	--stage0: wooh port map (aaa,aaf);
		
		
		
		
		
	END Behavioral;	
		











