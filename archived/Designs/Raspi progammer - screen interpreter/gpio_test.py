from gpiozero import LEDBoard
from gpiozero import LED
from time import sleep

leds = LEDBoard(9,10,22,21,17,4,3,2,20,16,12,7,26,13,6,5,14,15,18,23)

debug=0

#each gpio pin, with each msb starting on the left in the following order:
#input_value,    instruction_code,   micro_instruction,      operation
#also, two bits are reserved for binary to hex decoding,
# which is set high by default.

#also, both output and write are disabled by default, and because the chip is active low the pins are set high

#for x in range(0,20):
#	leds[x].off()


leds[12].off()  #msb of instruction bit, is grounded by default  - made use of in output module programming.

leds[16].off()
leds[17].on()

#leds[18].on()
#leds[19].on()



hex_cont=["77","22","6d","6b","3A","5B","5f","62","7f","7A"]
# the index value of each element corresponds to the
# output hex signal, assuming that
#
#        A
#      |---|
#     C| d |B
#      -----
#    e | G |F
#      -----
#
#with h being the first  bit, and the other letters or segments following h (which is default 0) in alpabetical order



def s16_2(value,size):


	x=value                  #accepts hex string input, and the corresponding binary output size
                                 #input values cannot be one bit greater than the the size parameter
			         #if values entered are any less, the binary output will be padded with zeros
				 #size minimum paired with gep function:: 20
    #   	print(str(x))

	x=int(x,16)
   #    	print(str(x))
	x=bin(x)
  #     	print(str(x))


#-------------------------------
#x=str(x)
#xout="00000000000000000000"

#y=(len(x)-1)

#while 1==1:
#   if x[y]!='b':
#      xout[y]=x[y]
#   else:
#      break
#print(xy)
#---------------------------------
#turns out strings are immutable (meaning you cannot change them in place)

#new strateg, selectively use binary data based on location of 0b
#   -read from the produced binary value if \b has not been previously detected
#   -otherwise, suppliment input with a "0", works in while loop, for given number of bits





	x=str(x)
	y=[None]*size


	xlen=(len(x)-1)
	count=size-1

	while 1==1:

	        if(count==-1):
			break



		if(xlen!=-1):
			y[count]=x[xlen]
		else:
			break



		count=count-1
		xlen=xlen-1




#format the rest of the array:
#	print(y)



	for z in range(0,size):

		if(y[z]=='b' or y[z]==None):
 			y[z]='0'


	if(debug):
 		print(y)

	return y
	


#----------------default output and write values-------------





def gep_inter(x):

        #take care of input and instruction value
	for y in range(0,16):
	     if(x[y]=='0'):
		leds[y].off()
		if(debug):
			print("0 "+str(y))


	     else:
		leds[y].on()
		if(debug):

			print("1 "+str(y))



	if(x[16]=='0'):
		leds[16].on()
		
	else:
		leds[16].off()
		if(debug):

			print("read active")
	if(x[17]=='1'):
	
		
		sleep(.5)
		leds[17].off()
		sleep(1)
		leds[17].on()
		if(debug):
			print("write active")
	else:
		leds[17].on()


#take care of last few bits
	if(x[18]=='0'):
		leds[18].off()
	else:
		leds[18].on()



	if(x[19]=='0'):
		leds[19].off()
	else:
		leds[19].on()




mode=raw_input("please enter operation mode,0=command programmer,1=hex programmer,3=manual entry")
op=raw_input("please enter desired opeation, r:read, w:write")
z=raw_input("stand by, insert chip")
if(op=="r"):
	op="8"
else:
	op="4"


#--------------manual entry code--------------------------------
if(mode==3):
	print("manual entry mode active")
	while 1==1:
		x=raw_input("please enter a five digit hex value:     ")
		gep_inter(s16_2( (x+op),20 ))
#---------------------------------------------------------------

offset=raw_input("enter offset preceeded with offset mode 0:manual, 1:auto entry")
#selecting auto entry will perform the entered operation for all commands leading up to the command
# value entered.






byte_val=0
#byte 1 and 2 respectively, multidimensional command array
if(byte_val==0):
	hex_list=[
	"00","00","00","00","00", #offset//command 0
	"00","02","01","80","00",
	"00","02","01","20","84",
	"00","02","01","20","8c",
	"00","02","02","40","00",
	"00","02","01","00","00",
	"00","02","40","40","00",
	"00","00","00","00","00", #offset 7
	"00","02","40","40","00"] #oooof 8

else:
	hex_list=[
	"00","00","00","00","00", #offset//command 0
	"84","30","80","20","00",
	"ff","ff","ff","ff","ff",
	"ff","ff","ff","ff","ff",
	"ff","ff","ff","ff","ff",
	"ff","ff","ff","ff","ff",
	"84","30","02","00","00",
	"00","00","00","00","00", #offset 7
	"84","30","02","00","00"] #oof 8





#leds[16].off()

y=0


if(mode=="0"):

	sleep(.05)



#------------------listed entry code----------------------
#	print("eeprom mode active")

	while(1==1):
		if(y!=int(offset[1])or(offset[1]=="0")):

			for x in range(0,5):
               	       		if(debug):
					print(hex_list[x]+op)

		  
	    		        if(offset[0]=="0"):
	
					gep_inter(s16_2((hex_list[  x+ (int(offset[1])*5)  ]+offset[1]+str(x)+op),20  ))
			        else:
				        gep_inter(s16_2(  (hex_list[  x+(y*5)    ]+str(y)+str(x)+op)  ,20)   )


		       		#if(debug):
				#	sleep(2)
	 		
	 	       		if(debug or op=="8"):
					#print(hex_list[x+int(offset)*5])
					print(hex_list[x+(y*5)]+op)
					k=raw_input("cont")
				
			if(offset[0]=="0"):
				break	
			
			
			y+=1			
			
				
		else:
			break


#----------------------------------------------------------









def formp(value):
	if(len(value)==1):
		return("0"+value)
	else:
		return(value)



if(mode=="1"):
#------------------calculated entry code-------------------
	for z in range(0,129):
	        stz=str(z)
	        back_len=2
	        stz_len=len(stz)-1
	        backk=["0","0","0"]
		while 1==1:
			if(stz_len!=-1):
				backk[back_len]=stz[stz_len]
			else:
				break
	
			stz_len-=1
	
			back_len-=1
                                                          #	print(backk)






		for h in range(0,3):

        	        #print(stz)
			#print(stz[0])
			#print(   hex_cont[  int(  backk[h]  )   ]+"  "+str(z                     |
			outpp=((  (  hex_cont[int(backk[h])]+formp(format(z,'x'))+str(format(int("0"+str(format(h+4,'b')),2),'x'))         )  )   )
	    	 	print(outpp+"   "+str(z))
                        outpp=s16_2(outpp,20)
    
	        
		        for v in range(0,20):
				if(outpp[v]=="0"):
				    leds[v].off()
				else:
				    leds[v].on()
	#generate write pulse:
	#		leds[17].off()
	#		sleep(1)
			x=raw_input(" ")
	#		leds[17].on()


#----------------------------------------------------------



z=raw_input("operation complete, remove chip")






