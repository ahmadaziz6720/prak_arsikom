#include <stdio.h>

void main(void) {
  printf("Masukkan massa dalam ounces: ");
  int massa = 0;
  scanf("%d", &massa);
  printf("%d Pounds\n", massa/16);
  printf("%d Ounces\n", massa % 16);
}
