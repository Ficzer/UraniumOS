[org 0x7c00]

mov bx, URANIUM
call print

call print_nl

mov bx, HELLO
call print

call print_nl

mov dx, 0x1234
call print_hex

jmp $

%include "src/boot_sect_print.asm"
%include "src/boot_sect_print_hex.asm"

URANIUM:
 db 'Uranium BL - 2019 - Alpha version',0 
 
HELLO:
 db 'Hello World !!!',0 
 
 ; fill with 510 zeros - the size of previous code
times 510-($-$$) db 0
dw 0xaa55
