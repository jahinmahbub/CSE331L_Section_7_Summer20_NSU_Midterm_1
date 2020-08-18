DATA SEGMENT
DATA ENDS
CODE SEGMENT
        ASSUME DS:DATA,CS:CODE
        START :
                MOV AX,DATA
                MOV DS,AX

         mov     ax, 1 
         mov     cx, 10 
         xor     dx, dx
         
         Label1:
         add     dx, ax
         inc     ax
         loop    Label1
         MOV AH,4CH
         INT 21H
CODE ENDS
        END START