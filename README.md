



# design plan

My plan is to create a rough preliminary design for each module. After I have an idea of how every module will interact with each other,
I will begin looking for specific chips to use and start on a to scale design using some form of pcb software. After I have worked out
every detail regarding propigation time, voltages ect ect, I will begin ordering parts and boards, and test my computer module by module.
Once every module has been tested, and all revisions have been made, I will put all of the modules together and test the final product.




# design log
Here you may find a log for the overall design of the computer. Module specific notes may be found in said modules folder. 



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

