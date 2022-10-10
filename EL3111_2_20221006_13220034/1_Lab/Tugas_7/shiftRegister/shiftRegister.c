// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 6
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : shiftRegister.c
// Deskripsi : shiftRegister

#include "shiftRegister.h"

int y;

int shiftRegister(int x){
    y = (y<<8 | x);
    return y;
}
