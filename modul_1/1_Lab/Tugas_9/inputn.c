#include "inputn.h"
#include <stdio.h>

int inputn(){
    int n;
    printf("masukkan n: ");
    scanf("%d", &n);
    while (n<2){
        printf("masukkan n: ");
        scanf("%d", &n);
    }
    return n;
}