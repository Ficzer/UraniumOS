


bin/boot_sect.bin: src/boot_sect.asm
	nasm -f bin $< -o $@
	
