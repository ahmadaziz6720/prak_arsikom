// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 3
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : bitMask.c
// Deskripsi : bitMask

#include "bitMask.h"

int bitMask(int highbit, int lowbit){
    int mask = 0;
    int i;
    for (i = lowbit; i <= highbit; i++){
        mask |= (1 << i);
    }
    return mask;
}