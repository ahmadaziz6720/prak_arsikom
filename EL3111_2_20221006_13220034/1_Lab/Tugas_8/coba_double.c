// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 8
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : coba_double.c
// Deskripsi : pointer dalam assembly

void coba(int* x, int* y, int* z){
    // Kamus
    double a;
    double b;
    double c;
    double d;
    // Algoritma
    a = *x;
    b = *y;
    c = *z;
    d = a+b;
    *y = d;
    *z = b;
    *x = c;
}
