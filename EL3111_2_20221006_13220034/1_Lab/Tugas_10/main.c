// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 10
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : Matriks Nama

#include<stdio.h>
#include<string.h>

int main() {
     char nama_orang[100][100];
     int i = 0;

     printf("Masukkan nama orang (selesai masukkan titik) : \n");
     while (1) {
          fgets(nama_orang[i], 100, stdin);
          if (strcmp(nama_orang[i], ".\n") == 0) {
               break;
          } else {
               i++;
          }
     }

     printf("\nNama orang yang dimasukkan: \n");
     for (int j = 0; j < i; j++) {
          printf("%s", nama_orang[j]);
     }
     return 0;
}
