
mov ah, 0x0e ; tty mode

mov al, '1'
int 0x10
mov al, the_secret
int 0x10

mov al, '2'
int 0x10
mov al, [the_secret]
int 0x10

mov al, '3'
int 0x10
mov al, [the_secret + 0x7c00]
int 0x10


jmp $ ; jump to current, adress infinite loop

the_secret:
	db "X"
	
; fill with 510 zeros - the size of previous code
times 510-($-$$) db 0
dw 0xaa55
