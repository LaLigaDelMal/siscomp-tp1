CC=gcc
CFLAGS= -v

conversor: clean asm
	${CC} ${CFLAGS} -o conversor -m32 tp1.c asm.o

asm: clean
	nasm -f elf32 -d ELF_TYPE assembly.asm -o asm.o

clean:
	rm -f conversor

me_a_sandwich:
	echo "Te prepare un sanguchito"
