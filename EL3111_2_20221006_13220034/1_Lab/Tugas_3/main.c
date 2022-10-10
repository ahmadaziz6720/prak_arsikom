// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 3
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : bitmask

#include "bitMask.h"
#include "printbitbyte/printbitbyte.h"

int main(){
    int highbit, lowbit;
    printf("Masukkan highbit: ");
    scanf("%d", &highbit);
    printf("Masukkan lowbit: ");
    scanf("%d", &lowbit);
    int mask = bitMask(highbit, lowbit);
    printf("Hasil mask = 0x%x = ", mask);
    printBit(sizeof(int), &mask);
}