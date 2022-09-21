// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : NA
// Tanggal : 9 September 2014
// Kelompok : NA
// Rombongan : NA
// Nama (NIM) 1 : Bagus Hanindhito(13211007)
// Nama (NIM) 2 : Baharuddin Aziz (13211133)
// Nama File : sumofsquare.c
// Deskripsi : Demonstrasi procedure call dan stack
// Menghitung jumlah dari kuadrat bilangan

int square (int x){
    return x*x;
}

int squaresum (int y, int z){
    int temp1 = square(y);
    int temp2 = square(z);
    return temp1+temp2;
}

int main (void){
    int a = 5;
    int b = 9;
    return squaresum(a,b);
}
