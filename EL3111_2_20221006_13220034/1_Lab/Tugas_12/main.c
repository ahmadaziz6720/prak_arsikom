// Praktikum EL3111 Arsitektur Sistem Komputer
// Modul : 2
// Percobaan : 12
// Tanggal : 6 Oktober 2022
// Kelompok : 10
// Rombongan : B
// Nama (NIM) 1 : Gilbert Ng (13220032)
// Nama (NIM) 2 : Ahmad Aziz (13220034)
// Nama File : mulmatriks.c
// Deskripsi : program perkalian 2 matriks 

#include <stdlib.h>
#include <stdio.h>


int row1, col1, row2, col2;

int mulMatriks(int A[row1][col1], int B[row2][col2]){
    int result[row1][col2];
    for (int i = 0; i < row1; i++){
        for (int j = 0; j < col2; j++){
            result[i][j] = 0;
            for (int k = 0; k < col1; k++){
                result[i][j] += A[i][k]*B[k][j];
            }
            printf("%d ", result[i][j]);
        }
        printf("\n");
    }
}

int main(){
    printf("Masukkan jumlah baris matriks pertama: ");
    scanf("%d", &row1);
    printf("Masukkan jumlah kolom matriks pertama: ");
    scanf("%d", &col1);
    printf("\nMasukkan jumlah baris matriks kedua: ");
    scanf("%d", &row2);
    printf("Masukkan jumlah kolom matriks kedua: ");
    scanf("%d", &col2);

    int valid;
    if (row1 == col2){
        valid = 1;
    } else {
        valid = 0;
    }

    if (!valid){
        printf("\nPerkalian matriks tidak dapat dilakukan.");
    } else{
        int matrixA[row1][col1], matrixB[row2][col2];
        //input matriks
        printf("\n");
        for (int i = 1; i < row1+1; i++){
            for (int j = 1; j < col1+1; j++){
                printf("Masukkan elemen ke-[%d][%d] matriks 1: ", i, j);
                scanf("%d", &matrixA[i-1][j-1]);
            }
        }
        printf("\n");
        for (int i = 1; i < row2+1; i++){
            for (int j = 1; j < col2+1; j++){
                printf("Masukkan elemen ke-[%d][%d] matriks 2: ", i, j);
                scanf("%d", &matrixB[i-1][j-1]);
            }
        }
        printf("Hasil perkalian matriks 1 dan matriks 2:\n");
        mulMatriks(matrixA, matrixB);
    }
}
