// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 5
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : minBytes

#include "minBytes.h"
#include "printbitbyte/printbitbyte.h"

int main(){
    int x, y;
    printf("Masukkan x: ");
    scanf("%x", &x);
    printf("Masukkan y: ");
    scanf("%x", &y);
    int z = minBytes(x, y);
    printf("Hasil minBytes(x, y) = 0x%x\n", z);
}
