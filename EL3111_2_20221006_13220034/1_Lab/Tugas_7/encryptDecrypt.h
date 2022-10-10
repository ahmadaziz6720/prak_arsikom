// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 7
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : encryptDecrypt.h
// Deskripsi : encrypt decrypt

#include <stdio.h>
#include "printbitbyte/printbitbyte.h"
#include "shiftRegister/shiftRegister.h"

//encrypt every 8 bit of the input using the encryptor
int encrypt (int x, short encryptor);

//decrypt every 8 bit of the input using the encryptor
int decrypt (int x, short encryptor);