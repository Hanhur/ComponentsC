#include <stdio.h>
#include <stdlib.h>

//----------------------------------------------
void PrintSum(int x, int y);
int Sum(int x, int y);
//----------------------------------------------
void MyFunc()
{
    printf("Hello from MyFunc!\r\n");
}
//----------------------------------------------

int main()
{
    int a = 15, b = 17;
    MyFunc();
    PrintSum(5, 8);
    printf ("%d + %d = %d\r\n", a, b, Sum (a, b));
    return 0;
}

//----------------------------------------------
void PrintSum(int x, int y)
{
    printf("%d + %d = %d\r\n", x, y, x + y);
}
//----------------------------------------------
int Sum(int x, int y)
{
  return x + y;
}
//----------------------------------------------