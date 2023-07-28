Challenge 2: loop

Bug : The problem is that there was no counting when the for loop should end

We have 3 addition operations . the loop should terminate after 3 times.

After t3 = t1 + t2 , t1 is free , so I loaded 0 in it , so that I can use it to compare with t5

I decreamented t5 after every addition 
so after 3 loops , t5 = t1 = 0

using beq , I branched off to test_end label

Code:

loop:
	lw t1, (t0)
  lw t2, 4(t0)
  lw t3, 8(t0)
  add t4, t1, t2
  addi t0, t0, 12
  li t1, 0
  addi t5, t5, -1
  beq t5, t1, test_end
  beq t3, t4, loop        # check if sum is correct
  j fail

test_end: