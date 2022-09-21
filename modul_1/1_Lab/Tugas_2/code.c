// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : 2
// Tanggal : 23 September 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
// Nama File : code.c
// Deskripsi : Demonstrasi proses kompilasi C
// Menjumlahkan deret bilangan sebanyak N_LOOP
#define N_LOOP 500
int main(void){
    int indeks;
    int accumulator;
    indeks = 0;
    accumulator = 0;
    while(indeks<N_LOOP){
        accumulator = accumulator + indeks;
        indeks = indeks + 1;
    }
    return accumulator;
}