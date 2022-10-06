
#include "bitMask.h"
#include "printbitbyte/printbitbyte.h"

int main(){
    int highbit, lowbit;
    printf("Masukkan highbit: ");
    scanf("%d", &highbit);
    printf("Masukkan lowbit: ");
    scanf("%d", &lowbit);
    int mask = bitMask(highbit, lowbit);
    printf("Hasil mask = 0x%x = ", mask);
    printBit(sizeof(int), &mask);
}