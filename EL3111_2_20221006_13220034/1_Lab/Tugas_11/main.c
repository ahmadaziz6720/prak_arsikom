#include <stdio.h>
#include "strings.h"

int main() {
    char *nama_orang[100];

    char **ptrArr = nama_orang;
    char temp[100];
    int i = 0;

    printf("Masukkan nama orang: ");
    while (1) {
        scanf("%s", &temp);
        if (strcmp(temp, ".") == 0) {
            break;
        } else {
            ptrArr[i] = strdup(temp);
            i++;
        }
    }
    
    printf("Nama orang yang dimasukkan: \n");
    for(int j = 0; j < i; j++) {
        printf("%s \n", ptrArr[j]);
    }

    return 0;
}