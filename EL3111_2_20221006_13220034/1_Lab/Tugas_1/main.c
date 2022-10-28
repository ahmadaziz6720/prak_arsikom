// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 1
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : bit XOR

#include "bitXor.h"
#include "printbitbyte/printbitbyte.h"

int main() {
    int x;
    int y;
    printf("Masukkan nilai x: ");
    scanf("%d", &x);
    printf("Masukkan nilai y: ");
    scanf("%d", &y);

    printf("x = %d", x); printBit(sizeof(x), &x); 
    printf("y = %d", y); printBit(sizeof(y), &y);

    int z = bitXor(x, y);
    printf("z = %d", z); printBit(sizeof(z), &z);
    return 0;
}
