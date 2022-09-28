all: contoh
contoh: main.o text.o
	gcc main.o text.o -o contoh.exe
main.o: main.c
	gcc -c main.c
text.o: text.c
	gcc -c text.c
