// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : 7
// Tanggal : 23 September 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : add.c
// Deskripsi : Demonstrasi header file
// Menjumlahkan dua bilangan

#define START_VAL 0

int accum = START_VAL;
int sum(int x, int y){
    int t = x + y;
    accum += t;
    return t;
}
