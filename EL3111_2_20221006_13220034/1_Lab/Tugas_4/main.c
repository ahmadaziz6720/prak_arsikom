#include "reverseByte.h"
#include "printbitbyte/printbitbyte.h"  

int main(){
    int x;
    printf("Masukkan x: ");
    scanf("%x", &x);
    int y = reverseBytes(x);
    printf("Hasil reverseByte(x) = 0x%x = ", y);
    printBit(sizeof(int), &y);
}