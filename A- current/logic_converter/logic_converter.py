

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





def generate(iiinput,ret):


	#this is if a single variable is surrounded by more
	#than one parenthesis


	condition=0


	input=iiinput

	#sliced form :  start+1:end



	stack=[None]
	sp=0



	#symbol map used in initial tree creation.

	wsm=[" "]*10

	#first value in each tier is the stack pointer for said tier


	for x in range(len(input)):

		#print(input[x])

		if input[x]=="(":
			#print("yeah")
			stack.append(x)
			sp+=1



		if input[x]==")" or input[x]=="}":

			stackval=stack[sp]
			prevsp=sp

			stack.pop(sp)
			sp-=1





			if x!=(len(input)-1):
				connector=input[x+1]


			#if x<=(len(input)-1)-2 :
			#	connectorb=input[x+2]




			else:
				connector="e"




			if (connector=="(") or (connector == ")") or (connector == "}") :
				connector="*"


			#if )) occurs, then indicate condition which disables
			#or notifies the | generator.

			#if(connector==connectorb):
			#	condition=1
			#	connector=")"











			wsm[prevsp]=wsm[prevsp]+  str( str(stackval)+":"+str(x)  )      +" "+str(connector)+" "



			#print(sm)
			#print("                     ")



	print(wsm)
	#print(stack)

	if(ret==0):
		return condition


	return wsm




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
		#mode 2-> used to create vhdl parameterization

		symbols=["|"]

	if mmode==3:
		symbols=["+","*","|"]


	if mmode==4:
		#inverse search, find characters
		#that are not equal to defined separators in mode 3
		symbols=["+","*","|"," ","(",")","}"]


	sindex=0
	eindex=0


	mode=mmode



	ssindex=(-1)





	for x in range(len(sstring)):
		check=0



		for y in range(len(symbols)):

			if(mode==4):
				#print("YVAL")
				#print(y)
				if sstring[x]==symbols[y]:
					check=1
				#print("check val")
				#print(check)

			else:
				if sstring[x]==symbols[y]:
					sindex=eindex
					eindex=x
					ssindex+=1





		if(mode==4):
			if(check!=1):
			  sindex=eindex
			  eindex=x
			  ssindex+=1





		if ssindex==index:
			if mode==0:
				return sstring[sindex+1:eindex]
			if mode==1:
				#return the string index at which a symbol from symbol list was found
				return x
			if mode==2:
				return sstring[sindex+1:eindex]

			if mode==3:
				#does the same with mode one but with different symbol list
				return x

			if mode==4:
				#returns the same as mode 3
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




def clean(abmap,ret):
	#this function cleans the produced abstract map, makes the last and or or go away.

	if(ret==0):

		for x in range(len(abmap)):

			if(len(abmap[x])!=1):


				end=len(abmap[x])-1
				sstrn=abmap[x]
				#print(end)
				#print(sstrn[0:end-3])

				abmap[x]=sstrn[0:end-4]

				abmap[x]=abmap[x]+ "|"

		return abmap

	if(ret==1):

		#if being used for genral access operations

		for x in range(len(abmap)):

			if(len(abmap[x])!=1):


				end=len(abmap[x])-1
				sstrn=abmap[x]
				#print(end)
				#print(sstrn[0:end-3])

				abmap[x]=sstrn[0:end]
				abmap[x]=abmap[x]+"|"

		return abmap


	if(ret==2):


		for x in range(len(abmap)):

			if(len(abmap[x])!=1):


				end=len(abmap[x])-1
				sstrn=abmap[x]
				#print(end)
				#print(sstrn[0:end-3])

				abmap[x]=sstrn[0:end-1]
				abmap[x]=abmap[x]+"|"

		return abmap











def isinverse(charr):
	val=ord(charr)

	if(val-97>=0):
		return False
	else:
		return True







#-----------------------------------------------main program execution


iinput="    (       ( (a)(b)(c) )     +        (  ((a)(b))  (c) )           )"
iinput="    (       ( (a)(b)(c) )     +        (  ((a)(b))  (  (c)  ) )           )"



#iinput="((a)(b))+((a)+((a)(b)))"


iinput="(((a)(b)(c))+(((a)(b))(c)))"

#iinput="(((a)(b)(c))+(((a)(b))((c))))"
#when adding another pair of parenthesis to c, is the same as
#previous input but tier 3 gains another variable, which is c.


#iinput="(((a)(b)(c))+(((a)(b))(c)))"


#iiinput="    (       ( (a)(b)(c) )     +        (  ((a)(b))  (  ((c))  ) )           )"




#iinput="(((a}(b}(c))+((a}(b)(c}})"

iinput="(((a)(b)(c))+(((a)(b))((c)))"


iinput="((a)+(b)+((a)(b)))"




iinput="(((a)(b)(c))+(((a)(b))(c)))"


iinput="((((a)+(b)))+(b)+(((c)+(b))))"

#iinput="(((a))+((b))+((a)(b)))"


# iinput="(((a))+((b))+((c))+((a)+(b)))"




#print("ACCESS")
#access(" 2:7 ",iinput   )






#print( "w"+str(stridx(sm[2],-5))+"w"   )





	#ret==0: returns am
	#ret ==1 returns vam
	#ret==2 returns sm



def genam(iiinput,ssm):

		sm=ssm
		iinput=iiinput


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
							#print(astridx(sm[x],y,1))
							f=   sm[x][0:astridx(sm[x],y,1)]
							a=   sm[x][astridx(sm[x],y,1)+1:]

							sm[x]=f+"|"+a













					chhar+=1

					current=access(stridx(sm[x],y),iinput)





					currentxindex=int(sstridx(stridx(sm[x],y)+":",1))


					#print("CURRENTXINDEX")
					#print(currentxindex)







					#check if current expression is an inverse
					inverse=0
					if(currentxindex+1<=len(iinput)-1):

						print(iinput[currentxindex])
						if(iinput[currentxindex]=="}"):
							print("hell yeah")
							inverse=1







					#print("CURRENT STRING")
					#print(current)

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
						gensim=chhar


						imsp+=1
						#add newly generated symbol to am

						if(inverse):
							am[x]=am[x]+(chr(gensim-32)+ tstridx(sm[x],y) )
						else:
							am[x]=am[x]+(chr(gensim)+ tstridx(sm[x],y) )


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

						if(inverse):
							am[x]=am[x]+(chr(sim[Supindex]-32)+tstridx(sm[x],y))
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















			#print("IM MAP HAHAH")
			#print(im)
			#print("SYMBOL IM MAP")
			#print(sim)
							#indicates when new variable should be generated,
						#	chhar+=1
						#	am[x]=am[x]+(chr(chhar)+str(iinput[m+1]))





		am=clean(am,1)

		vam=clean(vam,0)

		sm=clean(sm,2)







		#print(vam)
		#print(am)
		print("SYMBOL MAP")
		print(sm)




		retlist=[" "," "]
		retlist.append(vam)
		retlist.append(am)
		retlist.append(sm)

		return retlist




def convert(rrr):





		currentstring=" a|"


		#print("NEW TEST ")

		#print(astridx(currentstring,0,4) )


		for x in range(len(rrr[3])):
			# is x value of am map
			print("!----------------------------------------------------------xVALUEE, or current x value of sm")
			print(x)

			currenttier=x
			if(len(rrr[3][x])!=1):



				if(currenttier+1 != len(rrr[3] ) ) :



					orgincopy=currentstring
					#is unedited version of string, for
					#reference as to what variable to replace next.



					addon=0

					for y in range( stridx(currentstring,-5)):

						print("!-----------------------------------YVALUE, or current variable in string")
						print(y)
						#for variables in the current string.
						#y is the value of the currently edited variable.




						#print("YVALUE")
						#print(y)

						#-> is index of each variable in current string.
						#print(currentstring[astridx(currentstring,y,3)-1])

						#start=astridx(currentstring,y,4)
						filling= astridx( rrr[3][currenttier+1],y,2)


						if(not(isinstance(filling,str))):
							break



						start=astridx(orgincopy,y,4)
						#is index of current variable.





						if(x!=1):
							print("gottem	")
							start=astridx(orgincopy,y,4)+addon




						#fillinglen=astridx(filling,-5,4)

						#addon+=fillinglen

						#if(fillinglen!=1):
						#	start=astridx(currentstring,y+addon,4)


						if(x>=2):

							print("CURRENT STRING MATCH")
							print(matchindex(rrr[4],x+1,y))







						print("CURRENT STRING START")
						print(start)
						print("FILLING")
						print(filling)
						print("filling len")
						print(addon)

						#print("DE TEST")





						#print(  currentstring[:start]+"("+ str(filling)  +")"+currentstring[start+1:])

						if(isinverse(currentstring[start])):
							currentstring=currentstring[:start]+"("+ str(filling)  +"}"+currentstring[start+1:]
						else:
							currentstring=currentstring[:start]+"("+ str(filling)  +")"+currentstring[start+1:]



						print("Current STRING ")
						print(currentstring)


						if(isinstance(filling,str)):

							addon+=len(filling)
							addon+=1
						else:
							break





					print("NEW ITERATION")

					#print(stridx(currentstring,y))







		print(currentstring)



		returnedstring=currentstring



		for x in range(astridx(returnedstring,-5,4)):

			index=astridx(returnedstring,x,4)
			print(returnedstring[index])
			if(isinverse(returnedstring[index])):
				returnedstring=returnedstring[:index]+"("+ chr(ord(returnedstring[index])+32)  +"}"+returnedstring[index+1:]
			else:
				returnedstring=returnedstring[:index]+"("+ returnedstring[index]  +")"+returnedstring[index+1:]

			print(returnedstring)



		returnedstringa=""

		for x in range(len(returnedstring)):

			if(returnedstring[x]!='*')and((returnedstring[x]!='|')):
				returnedstringa=returnedstringa + returnedstring[x]



		#this is a string returned to the orginal form it came in through iinput.
		print(returnedstringa)
		return returnedstringa








def matchindex(ssm,xval,yval):





	#ssm is the symbol map to be used.
	#xval is the tier value of the symbol map to be operated on
	#yval is the index of the any given set of variables,
	# which are separated by the | symbol

	#print("!__________MATCH index output begin")


	#the passed variable is the currently unmatched
	#varset.

	varset=" "+str(astridx(ssm[xval],yval,2))
	#print("VARSET")
	#is string segment from selected yval
	#print(varset)

	selected=int(sstridx(varset,0))

	#is first index from selected yval.
	#print("SELECTED VALUE, OR FIRST INDEX")
	#print(selected)


	for x in range(stridx(ssm[xval-1],-5) ):
		#print(x)

		#for each item in the previous x value.

		#print(" "+stridx(ssm[xval-1],x))
		county=int( sstridx(" "+stridx(ssm[xval-1],x),0))




		if(county==selected-1):
			#print("FOUND MATCH, returning index!!")
			#print("!__________MATCH index output end")
			return (x)


		#print("!__________MATCH index output end")



















wwm=generate(iinput,1)

print("CONDITION")

wm=wwm
rrr=genam(iinput,wm)
rrr[2][1]=" a|"


#print(rrr[2])
print(rrr[3])
print(rrr[4])

print("!!!!!!------------------NEW TESTING----------------!!!!!!!")

xval=4


print(matchindex(rrr[4],4,1))
print("RETURNED VALUE")
#symbolmap, x value in symbol map, yth set

#for y in range( astridx(rrr[4][4],-5,2) ):
#	matchindex(rrr[4],xval,y)




print("!!!!!!------------------NEW TESTING----------------!!!!!!!")


iinput=convert(rrr)


wwm=generate(iinput,1)


















#print(astridx(rrr[3][3],1,2))























































#successive calls with the same input will cause the symbol map to get messed up,
#not sure why this happens but successive calls with unique inputs each time do not get
#messed up.

#so long a unique input call to genam preceeds it, symbol map is not damaged for some reason.

#the input is not changed after a call, so it must be something else.





#here it can be seen that when wm is assigned wwm, it becomes a pointer to wwm. This can be
#observed by the fact that when wwm is made a tuple, which is immutable, in genam any attempt to
#modify sm throws an error. This must mean that in the assignment, sm is given by the parameter passed by wm, meaning that
#wm must be a pointer to wwm. Again, very weird, but There is a workaround, just call generate and refresh the value of wwm
#with every use.

#wwm=generate(iinput)

#wwm=tuple(wwm)



#wm=wwm
#rrr=genam(iinput,wm)

#print(rrr[2])
##print(rrr[3])
#print(rrr[4])



#wm=wwm
#rrr=genam(iinput,wm)

#print(rrr[2])
##print(rrr[3])
#print(rrr[4])



#wm=wwm
#rrr=genam(iinput,wm)

#print(rrr[2])
#print(rrr[3])
#print(rrr[4])


#print("wwm test")

#print(wwm)





































#-> works when new inputs are generated.



#iinput="(((a)(b)(c))+(((a)(b))(c)))"

#print("New call")

#wm=generate(iinput)
#rrr=genam(iinput,wm)

#print(rrr[2])
#print(rrr[3])
#print(rrr[4])




#iinput="(((a)(b)(c))+((a)(b)(c)))"
#wm=generate(iinput)
#rrr=genam(iinput,wm)

#print(rrr[2])
#print(rrr[3])
#print(rrr[4])











#for x in range(len(am)):



#	for y in range(len(am[x])):

#		if(len(am[x])>1):
#			ww=0
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
