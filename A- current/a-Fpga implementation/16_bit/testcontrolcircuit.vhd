LIBRARY ieee ;
USE ieee.std_logic_1164.all ; 

ENTITY testcontrolcircuit IS 
PORT ( 


a,b,c,d: in std_logic;
fffa,fffb,fffc,fffd,fffe,ffff,fffg,fffh: out std_logic




	); 
	
	
	
	
	

-- note that the last item in the port list does not have an associated ;, keep this in mind or face errors. 


		

		
		
		
end testcontrolcircuit;



ARCHITECTURE LogicFunc OF testcontrolcircuit IS


 


BEGIN 





--f <= (a AND b ) ;    this would make it so that all f outputs would be equal to its respective A[x] AND B[x]

fffa <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(NOT(d)))OR((NOT(a))AND(b)AND(c)AND(d))OR((a)AND(NOT(b))AND(c)AND(NOT(d)))OR((a)AND(b)AND(c)AND(d)));
fffb <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(NOT(d)))OR((a)AND(b)AND(c)AND(d)));
fffc <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(NOT(d)))OR((NOT(a))AND(b)AND(c)AND(d))OR((a)AND(NOT(b))AND(c)AND(NOT(d)))OR((a)AND(b)AND(c)AND(d)));
fffd <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(NOT(d)))OR((NOT(a))AND(b)AND(c)AND(d))OR((a)AND(b)AND(c)AND(d)));
fffe <= (((a)AND(b)AND(c)AND(d)));
ffff <= (((NOT(a))AND(b)AND(c)AND(d))OR((a)AND(NOT(b))AND(c)AND(NOT(d)))OR((a)AND(b)AND(c)AND(d)));
fffg <= (((a)AND(b)AND(c)AND(d)));
fffh <= (((NOT(a))AND(b)AND(c)AND(d))OR((a)AND(NOT(b))AND(c)AND(NOT(d)))OR((a)AND(b)AND(c)AND(d)));








END LogicFunc ;











