// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 4
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : reverseByte.c
// Deskripsi : ReverseByte

#include "reverseByte.h"

int reverseBytes(int x){
    int y = 0;
    int i;
    for (i = 0; i < 4; i++){
        y = y << 8;
        y = y | (x & 0xFF);
        x = x >> 8;
    }
    return y;
}