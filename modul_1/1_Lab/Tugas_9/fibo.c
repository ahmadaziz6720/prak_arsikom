// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : 9
// Tanggal : 23 September 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : fibo.h
// Deskripsi : Library fibonacci function
// Menghitung deret fibbonaci

#include "fibo.h"

int fibonacci(int n){
    if(n <= 1){
        return 1;
    }
    else{
        return fibonacci(n-1) + fibonacci(n-2);
    }
}