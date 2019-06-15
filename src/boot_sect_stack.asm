
mov ah, 0x0e ; tty mode

mov bp, 0x8000
mov bp, sp

push 'A'
push 'B'
push 'C'

mov al, [0x8000 - 2] ; to show that stack grows downwards
int 0x10

; accesing bp will not work


;recovery our character with pop, we can only pop full word so we need x register
pop bx 
mov al, bl
int 0x10 ;print C

pop bx 
mov al, bl
int 0x10 ;print B

pop bx 
mov al, bl
int 0x10 ;print A


jmp $ ; jump to current, adress infinite loop

the_secret:
	db "X"
	
; fill with 510 zeros - the size of previous code
times 510-($-$$) db 0
dw 0xaa55
