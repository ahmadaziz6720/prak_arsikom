// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 13
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Gilbert Ng (13220032)
// Nama (NIM) 2 : Ahmad Aziz (13220034)
// Nama File : binerarray.c
// Deskripsi : Penjumlahan Biner dengan Array

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
    int arr1[8], arr2[8], result[8];
    int a,b, pilihan;
    printf("1. Penjumlahan\n2. Pengurangan\nPilih operasi yang ingin dilakukan (1/2): ");
    scanf("%d", &pilihan);

    printf("Masukkan bilangan pertama: ");
    scanf("%d", &a);
    printf("Masukkan bilangan kedua: ");
    scanf("%d", &b);

    if (pilihan == 2){
        b = ~b + 1; // pengurangan -> 2's comp
    }

    // simpan bilangan ke array
    for (int i = 0; i < 8; i++){
        arr1[i] = (a >> i) & 1;
        arr2[i] = (b >> i) & 1;
    }

    int sisa = 0;
    for (int i = 0; i < 8; i++){
        result[i] = arr1[i]^arr2[i]^sisa;
        sisa = (arr1[i]&arr2[i])|(arr1[i]&sisa)|(arr2[i]&sisa);
    }

    // konversi hasil biner ke desimal
    int hasil;
    for (int i = 0; i < 8; i++){
        hasil += result[i] * pow(2,i);
    }
    hasil -= 1;
    printf("Hasil operasi: %d", hasil);
}