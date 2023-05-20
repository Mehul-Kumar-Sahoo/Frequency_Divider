# Frequency Divider

Skills: Verilog HDL, Finite State Machines

I am Mehul Kumar Sahoo persuing Electronics Engineering from IIT(BHU),Varanasi.

I have made a frequency divider to divide a clock frequency by 10,100,1000 or 10000.

## The working process of code is as follows - 
 - I have use mod 10 counters so that after every 10 clock cycles the value of output switches itself so frequency is divided by 10.
 - Similarly the mod 10 counters are instantiated 3 more times to divide the frequency by 100,1000 and 10000.

## The operation to be carried out can be changed by changing the variable "select" in "Freq_Divide_tb.v" file according to description - 
 - 2'b00: Divide by 10
 - 2'b01: Divide by 100
 - 2'b10: Divide by 1000
 - 2'b11: Divide by 10000
