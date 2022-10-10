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

#include "encryptDecrypt.h"

int encrypt (int x, short encryptor){
    int encrypted = 0;
    int temp = 0;
    int i;

    temp = temp | encryptor;
    for (i = 0; i < 4; i++){
        temp = shiftRegister(encryptor);
    }
    encrypted = x ^ temp;
    return encrypted;
}

int decrypt (int x, short encryptor){
    int decrypted = 0;
    int temp = 0;
    int i;

    temp = temp | encryptor;
    for (i = 0; i < 4; i++){
        temp = shiftRegister(encryptor);
    }
    decrypted = x ^ temp;
    return decrypted;
}
