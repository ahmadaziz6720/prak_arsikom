// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 0
// Tanggal : 5 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : printbitbyte.h
// Deskripsi : Demonstrasi Pointer

#include <stdio.h>
#include <stdlib.h>

typedef unsigned char *byte_pointer;

// address = alamat dari variabel dalam memory 
// size = ukuran variabel dalam memory (sizeof)
void printByte(byte_pointer address, int size);

void printBit(size_t const size, void const * const address);