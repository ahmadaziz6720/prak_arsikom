#include "shiftRegister.h"
// shift register 5 bits
int y;

int shiftRegister(int x){
    y = (y<<5 | x);
    return y;
}
