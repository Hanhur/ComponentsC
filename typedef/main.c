#include <stdio.h>
#include <stdlib.h>

struct sPoint
{
    int x, y;
} p;

typedef int celoe;
typedef struct sPoint TPoint;


int main()
{
    struct sPoint a;
    a.y = 5;
    p.x = 7;

    celoe i = 7;

    printf("%d\n", i);
    printf("%d\n", p.x, a.y);

    return 0;
}