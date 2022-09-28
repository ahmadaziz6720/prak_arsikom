gcc -E Program.c
gcc -E Program.c > Program.i
gcc -S Program.c

objdump -d Program.o
objdump -d Program.o > Program.s

