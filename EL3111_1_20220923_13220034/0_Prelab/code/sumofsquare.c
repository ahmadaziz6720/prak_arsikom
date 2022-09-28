// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 1
// Percobaan : TP
// Tanggal : 23 September 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Ahmad Aziz (13220034)
// Nama (NIM) 2 : Gilbert Ng (13220032)
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