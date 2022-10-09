#include <stdio.h>
#include <strings.h>


int main(void) {
  char input[100];
  int i;

  printf("Masukkan kalimat: ");
  scanf("%s", input);
  for (i = strlen(input); i >= 0; i--) {
    printf("%c", input[i]);
  }
  printf("\n");
}