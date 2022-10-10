// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 11
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : Matriks Nama dengan Pointer

#include <stdio.h>
#include "strings.h"

int main() {
    char *nama_orang[100];

    char **ptrArr = nama_orang;
    char temp[100];
    int i = 0;

    printf("Masukkan nama orang: ");
    while (1) {
        scanf("%s", &temp);
        if (strcmp(temp, ".") == 0) {
            break;
        } else {
            ptrArr[i] = strdup(temp);
            i++;
        }
    }
    
    printf("Nama orang yang dimasukkan: \n");
    for(int j = 0; j < i; j++) {
        printf("%s \n", ptrArr[j]);
    }
    return 0;
}