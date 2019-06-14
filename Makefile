
GPPARAMS = -m32 -fno-use-cxa-atexit -nostdlib -fno-builtin -fno-rtti -fno-exceptions -fno-leading-underscore
ASPARAMS = --32
LDPARAMS = -melf_i386

objects = obj/loader.o obj/kernel.o

%.o: src/%.cpp
	g++ $(GPPARAMS) -o obj/$@ -c $<
	
%.o: src/%.s
	as $(ASPARAMS) -o obj/$@ $<
	
mykernel.bin: linker.ld $(objects)
	ld $(LDPARAMETERS) -T $< -o bin/$@ $(objects)
	
install: mykernel.bin
	sudo cp bin/$< /boot/mykernel.bin
