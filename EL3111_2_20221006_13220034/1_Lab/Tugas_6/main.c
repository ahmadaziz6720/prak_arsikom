#include "shiftRegister.h"
#include "printbitbyte/printbitbyte.h"

int main(){
    int result;
    result = shiftRegister(0x04);
    printf("y = ");
    printByte((byte_pointer) &result, sizeof(int));
    printf("y = ");
    printBit(sizeof(int), &result);

    result = shiftRegister(0x13);
    printf("y = ");
    printByte((byte_pointer) &result, sizeof(int));
    printf("y = ");
    printBit(sizeof(int), &result);
    return 0;
}