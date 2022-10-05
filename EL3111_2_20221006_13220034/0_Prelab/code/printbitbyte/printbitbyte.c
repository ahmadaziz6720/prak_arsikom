// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 0
// Tanggal : 5 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : printbitbyte.c
// Deskripsi : Demonstrasi Pointer

#include "printbitbyte.h"

void printByte(byte_pointer address, int size){
    int i;
    for (i = size-1; i >= 0; i--){
        printf(" %.2x", address[i]);
    }
    printf("\n");
}

void printBit(size_t const size, void const * const address){
    unsigned char *b = (unsigned char*) address;
    unsigned char byte;
    int i, j;
    int space;
    space=0;
    printf(" ");
    for (i=size-1;i>=0;i--){
        for (j=7;j>=0;j--){
            byte = b[i] & (1<<j);
            byte >>= j;
            printf("%u", byte);
            space++;
            if (space>=4) {
                printf(" ");
                space=0;
            }
        }
    }
    puts("");
}