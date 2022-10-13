LIBRARY ieee;
USE ieee.std_logic_1164.all ;




Entity output1 is

port(


a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 : in std_logic ;


f : OUT std_logic_vector(15 downto 0) 

-- last item cannot have a semicolon 



);


end output1 ;




ARCHITECTURE LogicFunc of output1 is
Begin 





f( 0) <= a( 	0) ;
f( 1) <= a( 	1) ;
f( 2) <= a( 	2) ;
f( 3) <= a( 	3) ;
f( 4) <= a( 	4) ;
f( 5) <= a( 	5) ;
f( 6) <= a( 	6) ;
f( 7) <= a( 	7) ;
f( 8) <= a( 	8) ;
f( 9) <= a( 	9) ;
f( 10) <= a( 	10) ;
f( 11) <= a( 	11) ;
f( 12) <= a( 	12) ;
f( 13) <= a( 	13) ;
f( 14) <= a( 	14) ;
f( 15) <= a( 	15) ;









END LogicFunc ; 