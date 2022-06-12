





# design plan

My plan is to create a rough preliminary design for each module. After I have an idea of how every module will interact with each other,
I will begin looking for specific chips to use and start on a to scale design using some form of pcb software. After I have worked out
every detail regarding propagation time, voltages ect ect, I will begin ordering parts and boards, and test my computer module by module.
Once every module has been tested, and all revisions have been made, I will put all of the modules together and test the final product.


!--As of 8/3/2021 there is a short presentation included in the repository which features images and a short summary of each module.--! 



----directory:  https://github.com/O11WL1D/16_bit_computer 




# design log
Here you may find a log for the overall design of the computer. Module specific notes may be found in said modules folder. 



6/12/2022

I have been trouble-shooting the de0-cv all day and I have finally figured out why my designs were not being implemented on the board. I had assumed that you needed to switch the run/prog switch to the prog position when trying to program the board. Turns out you need it in the run position for programming. I am so mad. 

= Also I believe I may need to go back and re-create some of my project files as I when I made some of the other Quartus projects I selected “use existing project settings”, and for some reason that doesn’t sit well with the software because I had pin assignment issues following that. 



6/5/2022

Slightly unrelated but I have an idea for a better github updating system. Instead of creating a special program for each project I have, I can put the github repository in one of 5 update folders, which my update programs are set to change directory to. This way, I can quickly update anything that I want without needing to allocate so much time to each project’s update program. Woo. 


6/4/2022

Just wrote a quick little program which quickly performs my github default save specifically on this project. Now I can update the github at any point just by pressing windows + r, and running the program u16

I’ve got to make a repository one of these days with all of my bash programs 😊


6/4/2022

I think I should alternate between utilizing Verilog and the block diagram GUI so that I get experience in both areas as I design the computer.

I have included some files produced from when I took digital systems 2 last semester, for personal reference.   

Moreover, since I’ve designed this thing with bus transfer chips in mind, I may need to switch to the use of multiplexers, depending on if bus transfer gates can be implemented via the de0-cv. Since I do not have the board currently, for now I will use multiplexers. 






6/3/2022

College has made it extremely difficult to get any progress on this project, but I will be soon starting a new strategy to hopefully get some work done on the project over time. I plan on dedicating an hour every alternating day to this project. I have maintained a fitness routine throughout the previous semester, working out for an hour every alternating day, so if I apply the same strategy I might be able to actually make some progress. 

Moreover, I’ve recently ordered a de0-cv development board, With its onboard memory and FPGAS I could test my project much faster than if I were to design a PCB every time or use a breadboard. 

I’m not entirely sure why it took me so long to consider FPGAS for development, it’s a little embarrassing to be honest. 


I’ve consulted a few people over the LUT quantity of the de0-cv board and it should be sufficient to support my project, as the NEO430 16 bit processor only takes up like 4k Logic elements. 

Moreover, after digital systems 2, I realized that I could have just built a multiplication circuit rather than use an eeprom for the multiplication module. I completely forgot about that, however the design challenges I faced attempting to use EEPROMS for implementation were useful in their own way so I believe it wasn’t an entire waste. 






12/31/2021



Total number of pages filled in computer journal: 40




I have attached a photo of the latest progress made on the computer. Pictured is the AND and OR logic circuit, nearly complete. Note the massive size for the relatively small portion of the computer. After building a portion of the alu with a helper, I am starting to rethink building the computer using breadboards. The assembly takes too long by hand, and I imagine that breadboards are far more expensive than the small amounts of plastic used in PCBS. I think that any additional costs associated with utilizing a PCB design service would be covered in the amount saved by not using breadboards.  Its possible that the difficulty of learning how to design PCBs is greatly exaggerated in my head and that that is the way to go for prototyping. 

I have also discovered that when it comes to wired circuits,  it is better to break the circuit apart into small pieces and then use a different color for each piece, rather than color code according to the expected usage of the  wire; i.e. register data, control signal, eect ect. 


Currently I am working on a way to incorporate a multiplication chip into the computer. I was having issues finding an eeprom with enough addresses to multiply and divide two 16 bit values, and return a 16 bit result, so I think I may need to resort  to using a ram chip that is written upon booting the computer by the raspi. Also, after taking computer organization 2, I realize that I may need to make the mult chip return a 32 bit value, and have the option to store the high and low words in certain registers. 


Currently I am doing most of my work in a paper notebook, so not all of the progress made is present on my github.  Instead of scanning my computer journal, I’ll detail the total number of pages filled out with each update. I may get more progress done on the computer during winter break. 

 
Oh also I’ve recently programmed my raspberry pi to act as a testing device for the pi, which outputs a binary test value based on the input hex entered on its keyboard. I’ll also include an image of this, and when I find time, possibly a video too. 

Pictured is the raspi with its signals on the A and B operands of the alu, I am currently testing if the logic functionality works. 







8-21-2021

Breadboards cost way too much for me to waste any aspect of them. I have an abundance of wire and not enough breadboards. Moreover, this computer requires a plethora of bus connections. The solution to this is to use every connection port on the rails I currently have, and stretch wire to meet those connections.  This entails not using two sets of bus rails connected via wires, but to use only one or two sets.


I have the parts for the alu, and I am currently building it. 
I’ve neglected to purchase resistors for my led indicators, and may need to wait for an order of them for the alu to be complete 


I am also beginning the next school semester soon, so there may be some stagnation in my progress. I will try to work on this project for at least an hour every day, if possible. 









8-17-2021

I have included a program I made to program the chips for my 8-bit computer. I plan on using the same code for my 16 bit computer. 



8-16-2021

I’ve ordered the chips I need for the alu, shipping turned out to be $10 so I need to lump module orders together to save on the total cost. It may just come down to making a more detailed blueprint and ordering everything in one big purchase. I also plan on possibly getting some project funding from some school clubs, so if I want to do that I would definitely need a more detailed project plan. 




8-13-2021

The sheer size of such a computer has generated some complications.
I have decided that I will store the computer in my closet and possibly work on it on my bed. I will also build it in a similar manner of my 8-bit computer, and not use a rack system. This means that I may need to figure out some unique system for the buses, since there will be many. Currently the idea of having a rack system just for the buses seems ideal. Or I could lay each disconnected bus on its side so that one bus could be accessed/ modified without disconnecting another. This system would require that the whole computer has a solid base, such as a thin square piece of wood or metal. 



8-12-2021

I do not know enough about the internal make up of ICs to determine the current intractability of multiple chips. The input/output current of a connection depends on the internal resistance of an IC, and the resistance of said connection. Since some datasheets don’t provide info on the internal resistance, I don’t think I could calculate the exact current flowing between one chip and another. The best way to approach the computer I believe would be to determine the voltage interactability (something I can calculate) and then figure out the current issue by trial and error; i.e. putting the thing together and see if it works. 


I really do not want to deal with propagation time, so I will try to keep my computer at a relatively low clock speed so that everything calculates before the next clock pulse.   


Moreover, I could probability get away with picking out 74ls chips and assume that they have the standard +5 v high and 0 v low. If doing this means that I accidentally purchase one or two incompatible chips, so be it. 


Now I must take stock of what ICs I have, and what I may use for this project. If I use the chips that I used for my 8-bit computer it may function as that computer did.
    



8-9-2021
I have discovered that unfortunately multisim does not allow the simulation of eeprom memory. Since a multitude of my components feature 
eeproms, I may need to re think my design plan. 



8-3-2021

All files marked with v2 will be more in-depth, simulated versions of previous designs. You may also find datasheets which correspond to the chips used in these designs now. 



7-31-2021
I believe that it would be possible for me to begin building my computer in a manner that I built the 8 bit computer, but after some reflection I believe this is not the right move. I think it would be for the best if I first created an in-depth blueprint for the computer, with specific chips and connections accommodating said chips. If I were to use multisim for this blueprint, then I may simulate the computer and see if it needs any changes before I put it together. Then, since it would all be in blueprint form, I
would be able to create a custom PCB for the computer; saving space, money and assembly time. Not to mention, the computer may be easier to transport and more resilient to any transportation related damage. 

I believe this is the best route to take considering that in the future it is possible that I may need to make custom PCBs for my designs. 
I need to look into some sort of PCB company which accepts multisim designs. 



7-28-2021

I believe that an overall idea of the input module is present, and that I may now move onto a new module. 



7-27-2021

I now believe that if a state diagram is needed, it should be accompanied by a general flowchart. If a general flowchart is not to be included, the state diagram should at least contain contextual information about the circuitry surrounding the chip. 

Turns out that the current interrupt register is complete, its just that I wasn’t looking at it carefully enough yesterday. 



7-26-2021
I think that using flowcharts may be the most optimal way of fleshing out the design of my computer.
It is a nice visual way of depicting its operation; something that may be useful when taking breaks from working on this project. 

Also, the current interrupt register in the interrupt module does not have any enable pins on it, I need to fix that and create a flow chart to fully render the modules behavior. 

I feel like I need to work on the interrupt module a little more, to detail the role of the operating state register and how it interacts with the rest of the module. 


2/25/2021

I think that the module color coding idea that I started with in the alu design is a easily forgettable
system. For now on, I will be labeling wires going off to other modules with text.


 



1/22/2021

When It comes time to integrate all of my designs, I think that it may help if I reduced all of the connections to the more efficient form that
I implemented with the ram module; i.e. putting a range which represents the connections in a multisim wire. 



1/16/2021
I have been experimenting with excel as a more efficient means of datasheet analysis.
Currently I am attempting to analyze the intractability of IC’s; that is if their electrical minimums and maximums are in range of each other. The current method I am using is ineffective for creating pivot tables, so I will be looking into how to make a pivot table with excel’s built in pivot table functionality. 




11/24/2020
Remaining modules:
-Clock
-byte bus injector
-control/interrupt <- needs instruction register
- screen, depending on how advanced I want to get.

-keyboard <-unlikely, requires memory mapping and that’s a lot of work.

I may add in one or two advanced features, such as screen output or interrupts, but the main purpose of this build is to get practice building consistently functional computers, and getting a general design to use as a base for my more advanced projects.

The old computer is absolutely useless, connections need to be squeezed before they work. I think that having a soldiered final result is very important, I want something that can work perfectly after you switch it on. The plan is to get a general rough draft of the computer’s design made first, then begin looking into specific chips and possibly start building. 





8\6\2020
I have been reading from the operating systems text so the development on my computer has been slow. I might work on this for a bit longer before I resume the text. 






x\x\2020
I am encountering some uncertainties regarding the design of the rest of my computer while working on other modules like the interrupt module. So I think I should focus on getting the foundation of the computer designed simultaneously while I build other conceptual modules.
 

In particular, I have no idea what the data bus should look like when it is finished, and the interrupt module’s address generator must be connected to a specific data-line to interface with the instruction register.


Maybe after designing a specific module I can add it to a larger more comprehensive design, just to see how every other module works together.

