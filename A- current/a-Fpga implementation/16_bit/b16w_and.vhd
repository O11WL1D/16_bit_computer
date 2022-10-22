LIBRARY ieee ;
USE ieee.std_logic_1164.all ;




--let this be a lesson ; entity names cannot begin with a number :(





ENTITY  b16w_and IS

PORT(

ina : IN std_Logic_Vector(15 downto 0) ;

inb: IN std_logic_vector(15 downto 0);

ffout : OUT std_logic_VEctor(15 downto 0) 



-- last port should not contain a semicolon. :)

) ;

END b16w_and; 









ARCHITECTURE LogicFunc of b16w_and is

BEGIN 



ffout<=(ina AND inb);





end LogicFunc;
