#include <stdio.h>
#include <stdlib.h>

void from_odin();

int add_two_numbers(int a, int b);

int main(int argc, char *argv[]) {

  from_odin();

  int result = add_two_numbers(42, 27);
  printf("Computed: %i, nice.", result);

  return EXIT_SUCCESS;
}
