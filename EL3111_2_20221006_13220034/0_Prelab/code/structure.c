#include <stdio.h>
#include <limits.h>

typedef struct{
    char kelas;
    short kode_matakuliah;
    int nim;
    char nilai_abjad;
    int nilai_angka;
} daftar_NA_1;

typedef struct{
    char kelas;
    char nilai_abjad;
    short kode_matakuliah;
    int nim;
    int nilai_angka;
} daftar_NA_2;

int main(void){
    printf("sizeof(daftar_NA_1) = %d\n", sizeof(daftar_NA_1));
    printf("sizeof(daftar_NA_2) = %d", sizeof(daftar_NA_2));
    return 0;
}
