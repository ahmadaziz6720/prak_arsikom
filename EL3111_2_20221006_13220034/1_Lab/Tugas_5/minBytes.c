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

// subraction of two integers two's complement only using operator + and ~
int minBytes(int x, int y) {
    int result = x + (~y + 1);
    return result;
}
