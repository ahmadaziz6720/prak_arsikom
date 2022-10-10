// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 9
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : Fungsi Membalik Urutan Array

#include <stdio.h>
#include <strings.h>

int main(void) {
  char input[100];
  int i;

  printf("Masukkan kalimat: ");
  scanf("%s", input);
  for (i = strlen(input); i >= 0; i--) {
    printf("%c", input[i]);
  }
  printf("\n");
}