# 0 "code.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "code.c"
# 13 "code.c"
int main(void){
    int indeks;
    int accumulator;
    indeks = 0;
    accumulator = 0;
    while(indeks<500){
        accumulator = accumulator + indeks;
        indeks = indeks + 1;
    }
    return accumulator;
}
