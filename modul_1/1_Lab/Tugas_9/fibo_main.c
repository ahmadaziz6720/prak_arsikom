#include "inputn.h"
#include "fibo.h"
#include <stdio.h>
int main(){
    int i;
    int N = inputn();
    for(i = 0; i < N; i++){
        printf("%d ", fibonacci(i));
    }
    return 0;
}