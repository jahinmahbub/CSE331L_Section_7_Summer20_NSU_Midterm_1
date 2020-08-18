.MODEL small

.STACK 1000h

.DATA
    num db '3', '4'
    result db '$$$'

.CODE
main PROC
    mov ax, @data
    mov ds, ax          

    mov ah, 01h       
    int 21h
    mov num, al         

    mov ah, 01h         
    int 21h
    mov num+1, al

    mov dl, 0Ah         
    mov ah, 02h         
    int 21h

    mov ax, word ptr [num]
    and ax, 0F0Fh       
    mul ah              
    aam                 
    or  ax, 3030h       
    xchg al, ah         
    mov word ptr [result], ax

    mov dx, OFFSET result
    mov ah, 09h         
    int 21h
    
    mov ax,4C00h
    int 21h
    
    main endp
end main