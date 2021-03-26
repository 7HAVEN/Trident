; author : 7HAVEN
; intro first
 
mov ah, 0x0e
mov al, 65
mov bh, 0x0e
mov bl, 97
caps: 
     int 0x10 
     add al , 1
     jmp low
low:
     mov cl, al
     mov al, bl
     int 0x10
     add bl,1
     cmp  bl,122
     jg exit
     mov al,cl
     jmp caps
exit:
     jmp $
times 510 - ($-$$) db 0    ; this creates 512 long section ($$ these represent the beginning of section)
                            ; ($-$$)
db 0x55 , 0xaa
