#include <stdio.h>

int main(){
    int a = 10;
    int b = -10;
    unsigned c = 10;

    printf("a = %d\n", a>>1);   //arithmetical right shift
    printf("b = %d\n", b>>1);   //arithmetical right shift
    printf("c = %d ", c>>1);    //logical right shift

    return 0;
}