#include "minBytes.h"
#include "printbitbyte/printbitbyte.h"

int main(){
    int x, y;
    printf("Masukkan x: ");
    scanf("%x", &x);
    printf("Masukkan y: ");
    scanf("%x", &y);
    int z = minBytes(x, y);
    printf("Hasil minBytes(x, y) = %x\n", z);
}