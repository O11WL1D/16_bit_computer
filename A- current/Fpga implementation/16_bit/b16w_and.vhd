LIBRARY ieee ;
USE ieee.std_logic_1164.all ;




--let this be a lesson ; entity names cannot begin with a number :(





ENTITY  b16w_and IS

PORT(

a : IN std_Logic_Vector(15 downto 0) ;

b : IN std_logic_vector(15 downto 0);

f : OUT std_logic_VEctor(15 downto 0) 



-- last port should not contain a semicolon. :)

) ;

END b16w_and; 









ARCHITECTURE LogicFunc of b16w_and is

BEGIN 



f<=(a OR b);





end LogicFunc;
