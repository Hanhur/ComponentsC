#include <stdio.h>

/*
    long double;
    double;
    float;
    unsigned long long;
    long long;
    unsigned long;
    long;
    unsigned int;
    int;

    int i;

    char c = 45;

    i = (int)c;

    sqrt((double) n)

    float f_res = (float) i / (float) j;

    double f_res = (double)((float) i / (float) j);
*/

float my_div(float a, float b)
{
    return a / b;
}

int main()
{
    // char c = 54;
    // int i = c;
    // printf("Value is %d\r\n", i);

    // int i = 1000000;
    // char c = i;
    // printf("Value is %d\r\n", c);

    // int i = 8;
    // int j = 3;
    // float f_res = i / j;
    // printf("Result is %.10f\r\n", f_res);

    // int i = 8;
    // int j = 3;
    // float f_res = (float)i / (float)j;
    // printf("Result is %.10f\r\n", f_res);

    // int i = 8;
    // int j = 3;
    // float f_res = i / (float)j;
    // printf("Result is %.10f\r\n", f_res);

    // int i = 8;
    // int j = 3;
    // float f_res = my_div(i, j);
    // printf("Result is %.10f", f_res);

    // небезопасное преобразование типов - от большего типа к меньшему
    // unsigned int i = 65535;
    // unsigned char c = i;
    // unsigned int j = c;
    // printf("Value is %u, %u, %u", i, c, j);

    // безопасное преобразование типов
    unsigned int i = 65535;
    unsigned long long j = i;
    printf("Value is %u, %I64u", i, j);
    return 0;
}