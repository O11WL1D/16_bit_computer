

import re





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





def generate(iinput):






	input=iinput

	#sliced form :  start+1:end



	stack=[None]
	sp=0



	#symbol map used in initial tree creation.

	sm=[" "]*10

	#first value in each tier is the stack pointer for said tier


	for x in range(len(input)):

		#print(input[x])

		if input[x]=="(":
			#print("yeah")
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



			#print(sm)
			#print("                     ")



	print(sm)
	#print(stack)

	return sm





def stridx(sstring,index):

	#hard coded symbol separator list
	symbols=["e","+","*",";","|"]
	sindex=0
	eindex=0

	ssindex=(-1)




	for x in range(len(sstring)):

		for y in range(len(symbols)):

			if sstring[x]==symbols[y]:
				sindex=eindex
				eindex=x
				ssindex+=1


			if ssindex==index:
				return sstring[sindex+1:eindex]


	return ssindex+1
	#if inaccessable index is provided as arguement, return instead the length of the "string"

def sstridx(sstring,index):

	#hard coded symbol separator list
	symbols=["e","+","*",";",":","|"]
	sindex=0
	eindex=0

	ssindex=(-1)




	for x in range(len(sstring)):

		for y in range(len(symbols)):

			if sstring[x]==symbols[y]:
				sindex=eindex
				eindex=x
				ssindex+=1


			if ssindex==index:
				return sstring[sindex+1:eindex]


	return ssindex+1
	#if inaccessable index is provided as arguement, return instead the length of the "string"

def tstridx(sstring,index):
	#returns the symbol following any given indices

	#hard coded symbol separator list
	symbols=["+","*","|"]
	sindex=0
	eindex=0

	ssindex=(-1)

	selected_symbol="1"




	for x in range(len(sstring)):

		for y in range(len(symbols)):

			if sstring[x]==symbols[y]:
				sindex=eindex
				eindex=x
				ssindex+=1
				selected_symbol=symbols[y]


			if ssindex==index:
				return selected_symbol


	return " "
	#if inaccessable index is provided as arguement, return instead the length of the "string"


def astridx(sstring,index,mmode):


	#hard coded symbol separator list
	symbols=["e","+","*",";"]

	if mmode==2:
		symbols=[":"]


	sindex=0
	eindex=0


	mode=mmode



	ssindex=(-1)




	for x in range(len(sstring)):

		for y in range(len(symbols)):

			if sstring[x]==symbols[y]:
				sindex=eindex
				eindex=x
				ssindex+=1


			if ssindex==index:
				if mode==0:
					return sstring[sindex+1:eindex]
				if mode==1:
					return x


	return ssindex+1
	#if inaccessable index is provided as arguement, return instead the length of the "string"




def access(sstring,iinput):
	#this function returns the string referenced by a set of string indices

	sstring=re.sub(" ","",sstring)
	sstring=" "+sstring+" : "
	#print(sstring)
	#print(sstridx(sstring,0))
	#print(sstridx(sstring,1))

	m=int(sstridx(sstring,0))
	n=int(sstridx(sstring,1))

	#print(iinput[m+1:n])


	return(iinput[m+1:n])














#-----------------------------------------------main program execution


iiinput="    (       ( (a)(b)(c) )     +        (  ((a)(b))  (c) )           )"
iiinput="    (       ( (a)(b)(c) )     +        (  ((a)(b))  (  (c)  ) )           )"


iinput="(((a)(b)(c))+(((a)(b))(c)))"

iinput="(((a)(b)(c))+(((a)(b))((c))))"
#when adding another pair of parenthesis to c, is the same as
#previous input but tier 3 gains another variable, which is c.


iinput="(((a)(b)(c))+(((a)(b))(c)))"

iinput="(((a)(b)(c))+((a)(b)(c)))"



#print("ACCESS")
#access(" 2:7 ",iinput   )




sm=generate(iinput)




#print( "w"+str(stridx(sm[2],-5))+"w"   )




am=[" "]*10
vam=[" "]*10
#abstract map-> contains string with generated variables for each tier.

#vam is used exclusively for vhdl code generation, whereas the am is actively
#used in boolean analysis.







for x in range(10):

	chhar=96
	#is 'a' in ascii minus 1 , will be incremented per symbol generation.



	#this is placed right here so that the indices and symbol indices map
	#is reset for each tier's string.
	im=[" "]*20
	sim=[None]*20
	imsp=0
	#stack pointer for indices and indices symbol map






	if len(sm[x])!=1:


		for y in range(stridx(sm[x],-5) ):
			#print(y)
			#print(stridx(sm[x],y))



#			chhar+=1
#			am[x]=am[x]+(chr(chhar)+ tstridx(sm[x],y) )







			if((y+1))<=(stridx(sm[x],-5)-1):

				m=int( sstridx(sm[x], ((y+1)*(2) )-1     )    )
				n=int( sstridx(sm[x], (( (y+1 )   +1)*(2) -1   )-1     )    )

				#print("m,n")
				#print(m)
				#print(n)

				#print("diff")
				#print( abs((m-n)))
				if((abs((m-n))>=3)):

					#print("genvar")
					print(astridx(sm[x],y,1))
					f=   sm[x][0:astridx(sm[x],y,1)]
					a=   sm[x][astridx(sm[x],y,1)+1:]

					sm[x]=f+"|"+a








			chhar+=1

			current=access(stridx(sm[x],y),iinput)

			print("CURRENT STRING")
			print(current)

			jjj=1
			Supindex=0

			for i in range(imsp+1):
				if(len(im[i])>1):
					if(access(im[i],iinput)==current):
							jjj=0
							Supindex=i

			#else, if the current value of the string is not a duplicate, add to index map.
			#in this case, the newly generated symbol should be added to the abstract map.


			if(jjj):
				im[imsp]=stridx(sm[x],y)
				sim[imsp]=chhar
				imsp+=1
				#add newly generated symbol to am

				am[x]=am[x]+(chr(chhar)+ tstridx(sm[x],y) )


				if(str(tstridx(sm[x],y))=="+"):
					vam[x]=vam[x]+(chr(chhar)+ " OR " )
				if(str(tstridx(sm[x],y))=="*"):
					vam[x]=vam[x]+(chr(chhar)+ " AND " )
				if(str(tstridx(sm[x],y))=="|"):
					vam[x]=vam[x]+(chr(chhar)+ tstridx(sm[x],y) )









			#here a repeat occurance has been found, with Supindex indicating the index
			# in the im and sim maps where this symbol has been found. use the corresponding symbol
			# for am generation.

			else:

				am[x]=am[x]+(chr(sim[Supindex])+tstridx(sm[x],y))
				#print("ohh")
				#print(tstridx(sm[x],y))

				if(str(tstridx(sm[x],y))=="+"):
					vam[x]=vam[x]+(chr(sim[Supindex])+ " OR " )
				if(str(tstridx(sm[x],y))=="*"):
					vam[x]=vam[x]+(chr(sim[Supindex])+ " AND " )
				if(str(tstridx(sm[x],y))=="|"):
					vam[x]=vam[x]+(chr(sim[Supindex])+tstridx(sm[x],y))












	print("IM MAP HAHAH")
	print(im)
	print("SYMBOL IM MAP")
	print(sim)
					#indicates when new variable should be generated,
				#	chhar+=1
				#	am[x]=am[x]+(chr(chhar)+str(iinput[m+1]))








print(am)
print(vam)
print(sm)








for x in range(len(am)):



	for y in range(len(am[x])):

		if(len(am[x])>1):
			ww=0
			#print(y)
			#print(am[x][y])






















				#print("yeppers")
				#pp=1


				#print(int( sstridx( stridx(sm[x],y+1),  0)))

				#print( int( sstridx( stridx(sm[x],y),  1)) )
				#if  int( sstridx( stridx(sm[x],y+1),  0)) != int( sstridx( stridx(sm[x],y),  1))  +1   :


					#print("genvar")





			#print("yeppers")
			#print("yeah")
			#print(sm[y])
			#print(len(sm[x]))
			#first listing has length of 8, starts at zero, ends at 7






	#print(x)






	#input="(((a)(b)(c))+(((a)(b))(c)))"
























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


#	if (input[x]!="(") AND (input[x]!=")"):

#			sm.append(node("a",sp))
#			smp+=1

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
