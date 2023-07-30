The problem in this case is :

![error](image.png)

These instructions are 64m ones. That means aapg is generating 64m instructions while spike checks only for rv32i.

Hence I made this change:

![ before](image-1.png)

to..

this:
![after](image-2.png)

the output:

![result](image-3.png)