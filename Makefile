

bin/boot_sect.bin: src/boot_sect.asm
	nasm -f bin $< -o $@
	
bin/boot_sect_stack.bin: src/boot_sect_stack.asm
	nasm -f bin $< -o $@
	
bin/boot_sect_main.bin: src/boot_sect_main.asm
	nasm -f bin $< -o $@
	
run: bin/boot_sect.bin
	sudo qemu-system-x86_64 $<
	
run_main: bin/boot_sect_main.bin
	sudo qemu-system-x86_64 $<

	
