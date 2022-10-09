#include<stdio.h>
#include<string.h>

int main() {
     char nama_orang[100][100];
     int i = 0;

     printf("Masukkan nama orang: ");
     while (1) {
          scanf("%c", &nama_orang[i]);
          if (strcmp(nama_orang[i], ".") == 0) {
               break;
          } else {
               i++;
          }
     }
     printf("Nama orang yang dimasukkan: \n");

     for (int j = 0; j < i; j++) {
          printf("%s ", nama_orang[j]);
     }

     return 0;
}
