// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 1
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : getByte.c
// Deskripsi : getByte

void coba(int* x, int* y, int* z){
    // Kamus
    int a;
    int b;
    int c;
    int d;
    // Algoritma
    a = *x;
    b = *y;
    c = *z;
    d = a+b;
    *y = d;
    *z = b;
    *x = c;