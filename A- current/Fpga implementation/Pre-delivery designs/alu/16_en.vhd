LIBRARY ieee ;
USE ieee.std_logic_1164.all ;




--let this be a lesson ; entity names cannot begin with a number :(





ENTITY  16_en IS

PORT(

a : IN std_Logic_Vector(15 downto 0) ;

en : IN std_logic_vector(15 downto 0) ;

f : OUT std_logic_VEctor(15 downto 0) 



-- last port should not contain a semicolon. :)

) ;

END 16_en; 









ARCHITECTURE LogicFunc of 16_en is

BEGIN 


f <= (a AND en)




end LogicFunc;
