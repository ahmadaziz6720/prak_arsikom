
#include "minBytes.h"
// two's complement only using + and ~ operators
int minBytes(int x, int y) {
    int z = x + ~y + 1;
    int mask = z >> 31;
    return (x & mask) | (y & ~mask);
}
