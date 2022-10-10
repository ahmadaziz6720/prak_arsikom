// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 6
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : main.c
// Deskripsi : shiftRegister

#include "shiftRegister.h"
#include "printbitbyte/printbitbyte.h"

int main(){
    int result;
    result = shiftRegister(0x04);
    printf("shiftRegister(0x04) [byte] = 0x"); 
    printByte((byte_pointer) &result, sizeof(int));
    printf("shiftRegister(0x04) [bit ] =");
    printBit(sizeof(int), &result);

    result = shiftRegister(0x13);
    printf("shiftRegister(0x13) [byte] = 0x");
    printByte((byte_pointer) &result, sizeof(int));
    printf("shiftRegister(0x13) [bit ] =");
    printBit(sizeof(int), &result);
    return 0;
}