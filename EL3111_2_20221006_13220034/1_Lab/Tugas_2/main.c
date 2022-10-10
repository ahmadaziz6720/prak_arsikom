// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 2
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : getByte

#include "getByte.h"
#include "printbitbyte/printbitbyte.h"

int main() {
    int x;
    int n;
    printf("Masukkan nilai x: ");
    scanf("%x", &x);
    printf("Masukkan nilai n: ");
    scanf("%d", &n);

    printf("Byte x = 0x "); printByte((byte_pointer) &x, sizeof(x));

    int z = getByte(x, n);
    printf("byte ke %d = 0x%x", n, z);
    return 0;
}