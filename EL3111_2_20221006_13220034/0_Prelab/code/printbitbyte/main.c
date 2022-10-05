// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 0
// Tanggal : 5 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : Demonstrasi Pointer

#include "printbitbyte.h"

int tipe_data;

int main(){
    printf("Masukkan tipe data yang akan diuji (1 = int, 2 = float, 3 = double): ");
    scanf("%d", &tipe_data);
    if (tipe_data == 1){
        int i;
        printf("Masukkan nilai int: ");
        scanf("%d", &i);
        printf("\nNilai int byte: ");
        printByte((byte_pointer) &i, sizeof(i));
        printf("Nilai int bit: ");
        printBit(sizeof(i), &i);
    } else if (tipe_data == 2){
        float f;
        printf("Masukkan nilai float: ");
        scanf("%f", &f);
        printf("\nNilai float byte: ");
        printByte((byte_pointer) &f, sizeof(f));
        printf("Nilai float bit: ");
        printBit(sizeof(f), &f);
    } else if (tipe_data == 3){
        double d;
        printf("Masukkan nilai double: ");
        scanf("%lf", &d);
        printf("\nNilai double byte: ");
        printByte((byte_pointer) &d, sizeof(d));
        printf("Nilai double bit: ");
        printBit(sizeof(d), &d);
    } else {
        printf("Tipe data tidak valid");
    }
    return 0;
}