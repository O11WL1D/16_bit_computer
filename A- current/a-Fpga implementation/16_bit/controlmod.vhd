LIBRARY ieee ;
USE ieee.std_logic_1164.all ; 

ENTITY controlmod IS 
PORT ( 


a,b,c,d: in std_logic;
fffa,fffb,fffc,fffd,fffe,ffff,fffg,fffh: out std_logic



	); 
	
	
	
	
	

-- note that the last item in the port list does not have an associated ;, keep this in mind or face errors. 


		

		
		
		
end controlmod;



ARCHITECTURE LogicFunc OF controlmod IS


 


BEGIN 





--f <= (a AND b ) ;    this would make it so that all f outputs would be equal to its respective A[x] AND B[x]

fffa <= (NOT(a)AND(a));
fffb <= (NOT(a)AND(a));
fffc <= (NOT(a)AND(a));
fffd <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(d))OR((NOT(a))AND(NOT(b))AND(c)AND(NOT(d)))OR((a)AND(NOT(b))AND(NOT(c))AND(d))OR((a)AND(NOT(b))AND(c)AND(NOT(d))));
fffe <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(NOT(d)))OR((NOT(a))AND(NOT(b))AND(c)AND(NOT(d)))OR((a)AND(NOT(b))AND(NOT(c))AND(NOT(d)))OR((a)AND(NOT(b))AND(c)AND(NOT(d))));
ffff <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(d))OR((a)AND(NOT(b))AND(NOT(c))AND(d)));
fffg <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(d))OR((a)AND(NOT(b))AND(NOT(c))AND(d)));
fffh <= (((NOT(a))AND(NOT(b))AND(NOT(c))AND(NOT(d)))OR((a)AND(NOT(b))AND(NOT(c))AND(NOT(d))));




END LogicFunc ;











