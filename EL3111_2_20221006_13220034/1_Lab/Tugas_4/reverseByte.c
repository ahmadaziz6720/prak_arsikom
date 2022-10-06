
#include "reverseByte.h"

int reverseBytes(int x){
    int y = 0;
    int i;
    for (i = 0; i < 4; i++){
        y = y << 8;
        y = y | (x & 0xFF);
        x = x >> 8;
    }
    return y;
}