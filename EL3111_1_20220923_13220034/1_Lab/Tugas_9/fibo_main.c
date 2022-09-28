// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : 9
// Tanggal : 23 September 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : fibo_main.c
// Deskripsi : Main file untuk fibonacci function
// Menghitung deret fibonacci sebanyak input user

#include "inputn.h"
#include "fibo.h"
#include <stdio.h>
int main(){
    int i;
    int N = inputn();
    for(i = 0; i < N; i++){
        printf("%d ", fibonacci(i));
    }
    return 0;
}