// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 5
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : minBytes.c
// Deskripsi : minBytes

#include "minBytes.h"

int minBytes(int x, int y) {
    int z = x + ~y + 1;
    int mask = z >> 31;
    return (x & mask) | (y & ~mask);
}
