// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 2
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : getByte.c
// Deskripsi : getByte

#include "getByte.h"

int getByte(int x, int n){
    return (x >> (n << 3)) & 0xFF;
}
