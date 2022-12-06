

def gentruthtable(n):

    #this generates the lhs of a truth table

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



def replacestring(currentstring,start,filling):
    #start is the position of the character you wish to replace.

	currentstring=currentstring[:start]+ str(filling) +currentstring[start+1:]
	return currentstring



#will generate a truth table.

#next function to be made will take a truth table index and generate a matching sop expression for that value.

# this will be followed by a function which geneates an expression for every one found in a passed table, and concationates
#this expression to previous expressions, separated by a "+"

#The variables generated will be in increasing order of the alphabet.


def gensop(index,table):

    #is what produces a single sop expression for a given lhs table

    chhar=96

    #print(table)
    #print(table[index])

    currentstring="("


    for x in range(len(table[index])):
        #print(x)

        chhar+=1

        if(table[index][x]=="1"):
            currentstring=currentstring+"("+chr(chhar)+")"
        else:
            currentstring=currentstring+"("+chr(chhar)+"}"


    currentstring=currentstring+")"


    if(chhar>furthest[0]):
        print("OCCURS")
        furthest[0]=chhar


    #print(currentstring)
    return(currentstring)



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

	if mmode==5:
		symbols=["	"]



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



			if mode==5:
				return sstring[sindex+1:eindex]




	return ssindex+1
	#if inaccessable index is provided as arguement, return instead the length of the "string"


def genexpression(truthtable,ftable):

    #ftable is the table containing the values of an output expression, and truthtable is the standard truthtable (lhs)
    #


    currentstring="("


    start=1

    for x in range(len(ftable)):

        expression=gensop(x,truthtable)
        #print(expression)



        if(ftable[x]=="1"):


            if(start):

                currentstring=currentstring+expression
                start-=1

            else:
                currentstring=currentstring+"+"+expression





    currentstring=currentstring+")"
    #print(currentstring)
    return(currentstring)



def genemptytable(n):

    table=["0"]*(2**n)
    return table




def hex_int(input):
        return int(input,16)



def int_bin(input):
    input=int(input)
    return( f'{input:b}')

def format(n,currentstring):

    length=len( f'{((2**n)-1):b}' )

    while(len(currentstring)<length):
        currentstring="0"+currentstring

    return currentstring



def genemptytableset(hexstring):


    #this generates a list of
    #empty tables, based on the hex string you pass


    converted=hex_int(hexstring)
    #print("CONVERTED!!")
    #print(converted)

    bienval=f'{converted:b}'
    #print("BIENVAL!!")
    #print(bienval)

    passedn=4*len(hexstring)


    bienval=format(passedn,bienval)

    #print("NEW BIENVAL")
    #print(bienval)

    empty=genemptytable(n)

    emptytableset=[empty]*(len(bienval))

    return emptytableset


def insert_value(rhstable,w,nn):



    ww=w

    input_index=astridx(datainput[ww],1,5)
    input_index=hex_int(input_index)


    input_input=astridx(datainput[ww],2,5)
    input_input=str(hex_int(input_input))
    input_input=str(int_bin(input_input))
    input_input=format(nn,input_input)


    #print("INPUT INPUT!1")
    #print(input_input)


    #print("INPUT INDEX!")
    #print(input_index)
    #print(taable[input_index])

    new_rhstable=["0"]*2
    new_rhstable.pop()
    new_rhstable.pop()

    currenttable=["0"]*2
    currenttable.pop()
    currenttable.pop()



    for x in range(len(rhstable)):


        currentstring=["0"]*2
        currentstring.pop()
        currentstring.pop()

        for y in range(len(rhstable[x])):
             currentstring.append(rhstable[x][y])

        #print("CURRENT STRING")
        #print(currentstring)

        #print("New currentstring")
        currentstring[input_index]=input_input[x]
        #print(currentstring)


        currenttable.append(currentstring)


        #print("rhstable old string")

        #print(currenttable)

        #print("rhstable new string")

        #currenttable[input_index]=input_input[x]
        #print(currenttable)

        #new_rhstable.append(currenttable)



    #new_rhstable

    rhstable=currenttable

    #for y in range(len(currenttable)):
    #    print("\ntable: "+str(y))

    #    for x in range(len(currenttable[y])):
    #        print(currenttable[y][x])



    #for y in range(len(rhstable)):
    #    print("\ntable: "+str(y))

    #    for x in range(len(rhstable[y])):
    #        print(rhstable[y][x])


    return rhstable


def printtable(table,truthtable):
    for x in range(len(table)):
        print( truthtable[x]+"    "+table[x])



#------------------------------------------------------------PROGRAM HARD CODED INPUT 1 start



n=4
nn=8


#------------------------------------------------------------PROGRAM HARD CODED INPUT 1 end







furthest=[0]*2
furthest.pop()
furthest.pop()
furthest.append(97)




#print(int_bin("64"))




taable=gentruthtable(n)

#this generates a single intermediate term in sop expression, used in genexpression function
print(gensop(3,taable))


#rhs table

ftable=["0"]*16
ftable[15]="1"

ftable[2]="1"


expression=genexpression(taable,ftable)

#genexpression generates a complete sop expression
#based on the truth table passed to it - both lhs and rhs


print(expression)


string="ffA1"

print(hex_int(string))


nnull=genemptytable(n)

print(nnull)


print(len(genemptytableset("fa")))



genemptytableset("00")




#this is a demonstration of how data can be stored in
#excel, copy and pasted, and then accessed by this program.
# so long as astridx is in mode 5 data is accessable

#just copy what you see in excel, and follow the same format and
#you should be golden.



print("\n\n TEST CODE OUTPUT END\n\n")








taable=gentruthtable(n)
#generates lhs truthtable




datainput=[" "]*2
datainput.pop()
datainput.pop()

#datainput.append(			"w	0ffff	f1a3	"	)
#datainput.append(			"w	a132	3332	"	)





#!________________________________________________________________PROGRAM HARDCODED INPUT 2 start



datainput.append(			"w	f	ff	"	)
datainput.append(			"w	7	b5	"	)
datainput.append(			"w	a	a5	"	)
datainput.append(			"w	0	f0	"	)



#datainput.append(			"w	f	f	"	)
#its possible to overwrite previous data entries


#________________________________________________________________PROGRAM HARDCODED INPUT 2 end



#it will be assumed that there is a consistancy in
#the bit width of our inputs.





rhstable=genemptytableset(str(astridx(datainput[0],2,5)))

print("RHS!"+astridx(datainput[0],2,5))



print(len(rhstable))
#print(rhstable[3])





#nn is the

for x in range(len(datainput)):
    rhstable=insert_value(rhstable,x,nn)



#it is possible to repeat the assignment process, which
#takes the old table generated by the previous call, and
#alters only the items which are new.

#datainput.append(			"w	f	f	"	)
#for x in range(len(datainput)):
#    rhstable=insert_value(rhstable,x)






def processexpression(expression):
    ex=expression

    x=0
    while(True):

        if(not(x+1<len(ex))):
            break


        if(x+1<len(ex)):
            if((ex[x]==")")and(ex[x+1]=="("))or((ex[x]=="}")and(ex[x+1]=="(")):
                ex=ex[:x+1]+"AND"+ex[x+1:]


        if(ex[x]=="+"):
            ex=ex[:x]+"OR"+ex[x+1:]


        if(ex[x]=="}"):

            #may have situation where variables are longer than one character,
            #so this code is implemented ☻

            y=x
            while(True):
                y-=1
                #if(y<0):
                #    break

                #print(ex[y])
                if((ex[y])=="("):
                    break

            ex=replacestring(ex,x,"))")
            ex= ex[:y]+"(NOT"+ex[y:]







            #print("PROCESSED EXPRESSION!!!!   "+str(x))
            #print(ex)




        x+=1

    return ex


    print("PROCESSED EXPRESSION!!!!")
    print(ex)















processlist=[""]*2
processlist.pop()
processlist.pop()


#output code format:
#

ccchar=96


outexpression=""

for x in range(len(rhstable)):
    ccchar+=1
    print("\n\nTABLE: "+str(x) )
    printtable(rhstable[x],taable)
    print("\n\nEXPRESSION:")
    currentexpression=genexpression(taable,rhstable[x])
    print(currentexpression)
    processlist.append("fff"+chr(ccchar)+" <= "+processexpression(currentexpression)+";")

    outexpression=outexpression+"fff"+chr(ccchar)+","



outexpression=outexpression[:len(outexpression)-1]+": out std_logic"


print("\n\nOUTPUT CODE SECTION\n\n")

for x in range(len(processlist)):

    print(processlist[x])



inexpression=""

chchar=96

for x in range(furthest[0]+1-97):
    chchar+=1
    inexpression=inexpression+chr(chchar)+","



inexpression=inexpression[:len(inexpression)-1]+": in std_logic;"


print("\n\n")
print(inexpression)
print(outexpression)














#print(astridx(datainput[0],1,5))
#print(astridx(datainput[1],1,5))
