CC=gcc
CFLAGS= -v -Wall -pedantic -Wextra -Wconversion -std=gnu11

conversor: clean asm
	${CC} ${CFLAGS} tp1.c -o conversor -m32 asm.o

asm: clean
	nasm assembly.asm -f elf64 -d ELF_TYPE -o asm.o

clean:
	rm -f conversor

me_a_sandwich:
	echo "Te prepare un sanguchito"
