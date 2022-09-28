// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : 9
// Tanggal : 23 September 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : inputn.c
// Deskripsi : Fungsi input dan validasi input user
// Fungsi input dan validasi input user

#include "inputn.h"
#include <stdio.h>

int inputn(){
    int n;
    printf("masukkan n: ");
    scanf("%d", &n);
    while (n<2){
        printf("masukkan n: ");
        scanf("%d", &n);
    }
    return n;
}