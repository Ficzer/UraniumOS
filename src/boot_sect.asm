
mov ah, 0x0e ; tty mode
mov al, 'U'
int 0x10
mov al, 'r'
int 0x10
mov al, 'a'
int 0x10
mov al, 'n'
int 0x10
mov al, 'i'
int 0x10
mov al, 'u'
int 0x10
mov al, 'm'
int 0x10
mov al, 'B'
int 0x10
mov al, 'L'
int 0x10
mov al, '-'
int 0x10
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'

jmp $ ; jump to current, adress infinite loop
	
; fill with 510 zeros - the size of previous code
times 510-($-$$) db 0
dw 0xaa55
