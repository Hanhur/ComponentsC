#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// #define cnt 5

int main()
{
    int i;

    srand(time(NULL));

    i = rand();

    printf("%d\n", i % 18);

    return 0;
}