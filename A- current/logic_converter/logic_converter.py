#		      
input="(((a)(b)(c))+(((a)(b))(c)))"
#input="hehe"

#sliced form :  start+1:end



stack=[None]
sp=0












 


class node:

	def __init__(self,vara,ti,inn,out):


		self.expandedstring="w"
		self.string="w"
		

		self.variable=vara
		self.tier=ti

		self.outpoint=[None]
		self.outpointsp=0
		self.outpoint[sp]=out
	
	
		self.inpoint=inn
		self.nodelist=[None]
		self.prev_var=97
		#97 is a in ascii







def gpv(parent):
	#stands for get previous variable,
	#retrieves the previously used variable for a given tier

	p=parent
	return p.outpoint[p.outpointsp].variable	








	



#w=node("a",0,0,0)
#m=node("b",1,w,0)
#b=node("c",1,w,0)
#w.outpoint[w.outpointsp]=m
#w.outpointsp+=1
#w.outpoint.append(b)
#print(w.outpoint[1].variable)
#print(m.inpoint.outpoint[0].variable)
#print(m.inpoint.outpoint[ m.inpoint.outpointsp   ].variable)
#print((get_last_variable(m))   )
#print((get_last_variable(m))   )
#print(w.get_next_var())









#symbol map used in initial tree creation.

sm=[" "]*10

#first value in each tier is the stack pointer for said tier













for x in range(len(input)):
	
	print(input[x])
	
	if input[x]=="(":
		print("yeah")
		stack.append(x)
		sp+=1
		
		
	
	if input[x]==")":

		stackval=stack[sp]
		prevsp=sp

		stack.pop(sp)
		sp-=1

		



		if x!=(len(input)-1):
			connector=input[x+1]
		else:
			connector="e"

		

		if (connector=="(") or (connector == ")"):
			connector="*"
		
		
			




		
		sm[prevsp]=sm[prevsp]+  str( str(stackval)+":"+str(x)  )      +" "+str(connector)+" "
		


		print(sm)
		print("                     ")
		


		











	
print(sm)
print(stack)









				

		
#	if (input[x]!="(") AND (input[x]!=")"):
		






		
			
	
  








		
#			sm.append(node("a",sp))
#			smp+=1		












#
	







#	print(x)	
#	stack.append(x)
#	sp+=1
#	print(stack)
#	print("STACK POINTER",sp)	















#for x in input:
	
#	stack.pop(sp)
#	sp-=1
#	print(stack)
	
















#w=node("a",1)
#print(w.variable)
#print(w.tier)





#w=node()
#w.outpoint.append("hello")
#print(w.tier)
#print(w.outpoint[1])
#v=node()
#v.tier=50
#w.outpoint.append(v)
#print(w.outpoint[2].tier)
#output=12, hello, 50


















