// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 1
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : bitXor.c
// Deskripsi : bit XOR

#include "bitXor.h"

int bitXor(int x, int y) {
  return ~(~x & ~y) & ~(x & y);
}