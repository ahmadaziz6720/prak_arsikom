// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 4
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : reversebyte

#include "reverseByte.h"
#include "printbitbyte/printbitbyte.h"  

int main(){
    int x;
    printf("Masukkan x: ");
    scanf("%x", &x);
    int y = reverseBytes(x);
    printf("Hasil reverseByte(x) = 0x%x = ", y);
    printBit(sizeof(int), &y);
}