; infinite loop (e9 fd ff)
loop:
	jmp loop
	
; fill with 510 zeros - the size of previous code
times 510-($-$$) db 0
dw 0xaa55
