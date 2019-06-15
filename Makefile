

bin/boot_sect.bin: src/boot_sect.asm
	nasm -f bin $< -o $@
	
bin/boot_sect.bin: src/boot_sect_stack.asm
	nasm -f bin $< -o $@
	
run: bin/boot_sect.bin
	sudo qemu-system-x86_64 $<

	
