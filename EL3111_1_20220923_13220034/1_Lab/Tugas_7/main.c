// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : 7
// Tanggal : 23 September 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : Demonstrasi header file
// Main program
#include <stdio.h>
#include "add.h"
int main(){
    int a;
    int b;
    scanf("%d %d", &a, &b);
    int c = sum(a,b);
    printf("Hasil penjumlahan %d + %d = %d",a,b,c);
    return 0;
}