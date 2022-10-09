#include <stdio.h>
#include "strings.h"

int main() {
    char *nama_orang[100];
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
    while(i >= 0) {
        printf("%s ", nama_orang[i]);
        i--;
    }  

    return 0;
}