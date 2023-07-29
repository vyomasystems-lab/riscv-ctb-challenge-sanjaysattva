Bugs fixed : 
1. andi s5,t1,s0 --> needs an immediate value as an operand , but we have s0 , a register

changed to: andi s5,t1,0x01 --> an immediate value

2. and s7,ra,z4 --> z4 is not a valid register , changed it to

and s7,ra,t4