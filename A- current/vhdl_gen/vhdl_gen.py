print("hello")

print("hello")


def gentruthtable(n):

    truthtable=[" "]*((2**n))
    #print(truthtable)

    for x in range( 2**n  ):
        #print(x)


        binval=f'{x:b}'
        #print("BINVAL")
        #print(binval)
        #print("FORMAT")
        formatbin=format(n,binval)

        truthtable[x]=formatbin
        #print("Truthtable")
        #print(truthtable)


    return truthtable


def format(n,currentstring):

    length=len( f'{((2**n)-1):b}' )

    while(len(currentstring)<length):
        currentstring="0"+currentstring


    #print(currentstring)
    return currentstring
#



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









#will generate a truth table.

#next function to be made will take a truth table index and generate a matching sop expression for that value.

# this will be followed by a function which geneates an expression for every one found in a passed table, and concationates
#this expression to previous expressions, separated by a "+"

#The variables generated will be in increasing order of the alphabet.


def gensop(index,table):

    chhar=96
    print(table)
    print(table[index])

    currentstring="("


    for x in range(len(table[index])):
        print(x)

        chhar+=1

        if(table[index][x]=="1"):
            currentstring=currentstring+"("+chr(chhar)+")"
        else:
            currentstring=currentstring+"("+chr(chhar)+"}"


    currentstring=currentstring+")"

    print(currentstring)












n=4

taable=gentruthtable(n)
gensop(3,taable)
