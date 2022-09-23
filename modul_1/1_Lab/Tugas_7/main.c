#include <stdio.h>
#include "add.h"
int main(){
    int a;
    int b;
    scanf("%d %d", &a, &b);
    int c = sum(a,b);
    printf("Hasil penjumlahan %d + %d = %d",a,b,c);
    return 0;
}