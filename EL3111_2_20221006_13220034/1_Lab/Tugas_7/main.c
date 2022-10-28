// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 7
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : encrypt decrypt

#include "encryptDecrypt.h"

short encryptor = 85;
int x = 123456789;

int main(){
    printf("masukkan nilai x: ");
    scanf("%d", &x);

    printf("nilai x: %d\n", x);
    printf("nilai x dalam bit: ");
    printBit(sizeof(int), &x);

    int encrypted = encrypt(x, encryptor);
    printf("nilai x setelah dienkripsi: %d\n", encrypted);
    printf("nilai x setelah dienkripsi dalam bit: ");
    printBit(sizeof(int), &encrypted);

    int decrypted = decrypt(encrypted, encryptor);
    printf("nilai x setelah didekripsi: %d\n", decrypted);
}
