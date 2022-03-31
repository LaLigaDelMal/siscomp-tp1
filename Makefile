CC=gcc
CFLAGS= -v

conversor: clean asm_sh
	${CC} ${CFLAGS} -o bin/conversor -m32 src/asmlibrary.c obj/asm.o

asm_sh: asm clean
	${CC} -fPIC -shared -o obj/asmlibrary.so -m32 src/asmlibrary.c obj/asm.o

asm: clean
	nasm -f elf32 -d ELF_TYPE src/assembly.asm -o obj/asm.o

clean:
	rm -f conversor

me_a_sandwich:
	echo "Te prepare un sanguchito"
