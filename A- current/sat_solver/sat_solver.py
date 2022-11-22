

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
#
def d(e,string):
    if(e):
        print(string)
#

def evaluate(replacelist,w):
    #print("selected val")
    #print(replacelist[w])

    b=0



    list=replacelist[w]

    while(True):

        d(b,"listlen")
        d(b,len(list))

        if(len(list)==3):
            break



        #print("newITT")
        d(b,"newittt" )
        d(b,"currentlist" )
        d(b,list )
        #print("CURRENTLIST")
        #print(list)


        for x in range(len(list)):


            if(x+4<=len(list)-1):
                eval=list[x:x+5]


                #print(eval)

                #clear extra parenthesis
                if(eval[0]==eval[1])and(eval[3]==eval[4]):
                    #print("active!")

                    list=detailedreplace(list,x,x+4,("("+eval[2]+")"))


                    break






                cond=0


                op1=eval[0]
                if((op1=="0") or (op1=="1")):

                    cond+=1
                    op1=int(eval[0])




                op2=eval[4]
                if((op2=="0") or (op2=="1")):

                    cond+=1
                    op2=int(eval[4])




                if(cond==2):
                    #print("String")
                    #print(eval)
                    d(b,eval)
                    #print("access")
                    #print("OPERANDS")
                    #print(op1)
                    #print(op2)

                    operator=eval[2]


                    if(operator=="^"):
                        result=(op1)and(op2)
                    else:
                        result=(op1)or(op2)

                    d(b,result)
                    #print(result)
                    result=str(result)
                    list=detailedreplace(list,x,x+4,result)
                    break




                    #if(eval[2])

    return list
#

def format(n,currentstring):

    length=len( f'{((2**n)-1):b}' )

    while(len(currentstring)<length):
        currentstring="0"+currentstring


    #print(currentstring)
    return currentstring
#

def replacestring(currentstring,start,filling):
    #start is the position of the character you wish to replace.

	currentstring=currentstring[:start]+ str(filling) +currentstring[start+1:]
	return currentstring
#

def detailedreplace(currentstring,start,end,filling):
    #start and end are inclusive, so both will be replaced.
    #everything before start, and everything after end
    currentstring=currentstring[:start]+ str(filling) +currentstring[end+1:]
    return currentstring
#

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
		symbols=["^","V"," ","(",")","-"]


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
#

def replace(truthtable,orginstring,n):


    replacelist=[""]*(2**n)
    #print("REPLACE LIST")
    #print(replacelist)

    for y in range(len(truthtable)):

        #for each item in the truth table :)





        chhar=96
        chharindex=-1

        iinput=orginstring

        #print(truthtable[y])


        for z in range( len(truthtable[y])):

            #for each bit in current row of truth table


            chhar+=1
            chharindex+=1

            #print("CURRENT CHARACTER")
            #print(chr(chhar))

            #for each variable in the truthtable



            for x in range (astridx(iinput,-5,4)):
                #for each variable in the input sstring



                #print("astridx test")
                #print(x)
                #print(iinput[ astridx(iinput,x,4)]   )


                if(chr(chhar)==iinput[ astridx(iinput,x,4)]):
                    #print("is equal")

                    start=astridx(iinput,x,4)
                    filling=truthtable[y][chharindex]

                    if(iinput[start-1]=="-"):
                        filling=int(filling)^1
                        iinput=detailedreplace(iinput,start-1,start,filling)


                    else:
                        iinput=replacestring(iinput,start,filling)




        #print("!-----------replaced expression")
        #print(iinput)

        replacelist[y]=iinput




    #print(replacelist)
    return(replacelist)
#

def genfinaltruthtable(ret,n,orginstring):

    #if ret==1, the input variable string
    #is appended to the returned list for better viewing





    truthtable=gentruthtable(n)
    #print(truthtable)

    replacelist=replace(truthtable,orginstring,n)




    finaltruthtable=[""]*(2**n)


    for x in range(2**n):


        if(ret==1):

            evaluated=evaluate(replacelist,x)
            finaltruthtable[x]=str(truthtable[x])+"   "+evaluated
            #print(finaltruthtable[x])
            #print("truthtable "+str(truthtable[x])+" eval:"+evaluated )

        else:

            evaluated=evaluate(replacelist,x)
            finaltruthtable[x]=evaluated
            #print(finaltruthtable[x])

    return finaltruthtable
#

def gencomparisontable(tableA,tableB):

    #it is assumed both tables are of the same length

    prodtable=[""]*len(tableA)

    for x in range(len(tableA)):
        #print(x)
        if (tableA[x][1]==tableB[x][1]):
            prodtable[x]="(1)"
        else:
            prodtable[x]="(0)"


    return prodtable
#

def checksat(index):

    cond=0

    for x in range(len(lists[index])):

        if(lists[index][x]=="(1)"):
            cond=1

    print(cond)
#

def printtable(table,truthtable):
    for x in range(len(table)):
        print( truthtable[x]+"    "+table[x])

def find(list,string):

    for x in range(len(list)):

        #print(list[x])
        if list[x]==string:
            return x

def megaprint():
    print(strings)
    for x in range(len(lists)):

        print("\n !-------LIST "+str(x))
        printtable(lists[x],truthtable)

def add(stringa,stringb):

    #having a nonzero value passed for stringB indicates that
    #the value should be added as an equality.

    #apos=-1
    #bpos=-1\

    #print("START STRINGs LENGTH")
    #print(len(strings))


    if(stringa!=" "):

        if not(stringa in strings):
            strings.append(stringa)
            lists.append(genfinaltruthtable(0,n,stringa))


            apos=len(strings)-1

        else:
            apos=find(strings,stringa)


    #print("STRINGs LENGTH1")
    #print(len(strings))



    if(stringb!=" "):

        if not(stringb in strings):
            strings.append(stringb)
            lists.append(genfinaltruthtable(0,n,stringb))



            bpos=len(strings)-1
        else:
            bpos=find(strings,stringb)






    #print("STRINGs LENGTH2")
    #print(len(strings))

    #print("APOS")
    #print(apos)

    #print("BPOS")
    #print(bpos)





    currentstring="("+stringa+"="+stringb+")"

    #print("CURRENTSTRING")

    #print(currentstring)


    if((stringa!=" ")and(stringb!=" ")):

        if not(currentstring in strings):

            lista=lists[apos]
            listb=lists[bpos]

            result=gencomparisontable(lista,listb)

            strings.append(currentstring)
            lists.append(result)






    #if not(currentstring in strings):
    #    strings.append(currentstring)
    #    lists.append(genfinaltruthtable(0,n,stringb))



    #set stringA to equal to stringb



    #if not(currentstring in lists):
    #    lists.append(currentstring)




#--------------------------------------------------MASTER DESCRIPTION LIST---------------------------------

#find: checks if a string is in a list, and if so returns the index of said stringA

#megaprint: prints a table preceeded with the generated address.


#gentruthtable: performs various things to implement truth table


#gencomparisontable:produces a table based on if each item of the two passed tables are equal to eachother


#add: creates a table for each passed expression, if two parameters are passed, this will create a table
# for the equality of the passed expressions. This is accomplished by the gencomparisontable function. each
#generated table is added to a list of tables, and in the function if a passed expression has already been
#processed by the add function, the add function will recall that table and use it in its execution.
#
#by doing this I am able to implement support for the equality operator without creating support for it in the
#evaluate function



#gentruthtable: given var n, generates a list of binary values up untill 2^n

#format: given a binary string of length less than seen with binary value produced by 2^n, will pad the
#given string with zeros untill its length matches the 2^n value's length.


#replacestring: takes a string and replaces the value found at index start
#with the string provided in filling parameter


#detailedreplace: variation of replacestring, start and end indices are provided which specify an inclusive slice of the passed string
#to replace.


#astridx: multi-purpose string indixing function, mode 4 is used in the program to locate the position of characters in
#the passed string which are not a member of the symbol list.
#


#replace: takes the truth table produced by gentruthtable, an orgin string and the value of n. For each item in the truth table,
# produces a version of the orgin string which has the respective variables replaced with either a one or a zero, as specified by the
# truth table. If a "-" character preceedes a variable, the replacement bit will be inverted.


#evaluate:takes a string processed by the replace function and evaluates it in the following manner:
#1.parenthesis, 2.left to right. After a given expression in the string is evaluated in the string,
#it is replaced by the result. The final product is either a one or a zero enclosed in parenthesis.
#






#-----------------------------program initialization code--------------------------

n=4

#n specifies the size of the truth table, in terms of 2^n items in the table

#as always, truthtable is arranged with the msb corresponding
# to the first alphabetically organized variable

#since there isnt a logical or symbol,capital v will be used, with the expectation
#that all variables are lowercase.

truthtable=gentruthtable(n)
strings=[""]*2
lists=[["",""]]*2

#------------------------------------------------------------------------------------



#-----------------------------main program execution-------------------------------------------------------


#instructions: to add a single expression, call the add function with said expression on its own, with the other parameter containing the string " "
#otherwise, calling the add function with two expressions will generate the truth table for both expressions if not already generated, and then
#it will generate the truth table for expression a == expression b.
#
#it is important to only pass an equality expression after it has been added in the manner seen below, otherwise the program will break.
#
#

#the is sat function checks if there is a value equal to one in the truth table given by the index.

#---------code demonstration


add("(a)"," ")

add(" ","(b)")


add("(a)","(b)")


add("(-a)"," ")

add("((-a)^(a))"," ")

add("((-a)^(a))","((a)=(b))")

megaprint()

print("\nis sat??\n")

checksat(7)

print("\nis sat??\n")

checksat(6)



#------------------------------------------------------------------------------------
