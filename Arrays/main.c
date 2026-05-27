#include <stdio.h>
#include <string.h>

int main()
{
    // int a[10];
    // a[0] = -8;
    // a[1] = 44;
    // a[2] = 32;
    // a[3] = -10;
    // a[4] = 15;
    // a[5] = 56;
    // a[6] = 27;
    // a[7] = 72;
    // a[8] = 60;
    // a[9] = -1;

    // int a[10] = {-8, 44, 32, -10, 15, 56, 27, 72, 60, -1};
    // int a[] = {-8, 44, 32, -10, 15, 56, 27, 72, 60, -1};
    // int a[10] = {0};
    // int a[10] = {};

    // unsigned char i;
    // int n[6];
    // n[0] = 10;
    // n[1] = 25;
    // n[2] = 33;
    // n[3] = 71;
    // n[4] = 54;
    // n[5] = 99;

    // for (i = 0; i < 6; i++) printf("%d ", n[i]);

    // str1[0] = 'H';
    // str1[1] = 'e';
    // str1[2] = 'l';
    // str1[3] = 'l';
    // str1[4] = 'o';

    // str1[5] = '!';
    // str1[6] = '\0';
    // str1[7] = 0;
    // str1[8] = 0;
    // str1[9] = 0;

    // char str1[10] = {'H', 'e', 'l', 'l', 'o', '!', '\0'};
    // for (int i = 0; i < 10; i++)
    //     printf("%d ", str1[i]);
    // printf("\r\n");
    // for (int i = 0; i < 10; i++)
    //     printf("%c ", str1[i]);
    // printf("\r\n");
    // printf(str1);

    // char str1[] = "Hello!";
    // for (int i = 0; i < 7; i++)
    //     printf("%d ", str1[i]);
    // printf("\r\n");
    // for (int i = 0; i < 7; i++)
    //     printf("%c ", str1[i]);
    // printf("\r\n");
    // printf(str1);

    // a[0][0] = 15;
    // a[0][1] = 24;
    // a[0][2] = -55;

    // a[1][0] = 33;
    // a[1][1] = -4;
    // a[1][2] = -5;

    // a[2][0] = 45;
    // a[2][1] = -31;
    // a[2][2] = 5;

    // a[3][0] = 81;
    // a[3][1] = 46;
    // a[3][2] = 0;

    // int a[4][3] = {15, 24, -55, 33, -4, -5, 45, -31, 5, 81, 46, 0};
    // int a[4][3] = {{15, 24, -55}, {33, -4, -5}, {45, -31, 5}, {81, 46, 0}};

    // int n[3][4];
    // n[0][0] = 10;
    // n[0][1] = 25;
    // n[0][2] = 33;
    // n[0][3] = 71;
    // n[1][0] = 45;
    // n[1][1] = 77;
    // n[1][2] = 44;
    // n[1][3] = 18;
    // n[2][0] = 38;
    // n[2][1] = 84;
    // n[2][2] = 21;
    // n[2][3] = 99;

    // unsigned char i, j;

    // for (i = 0; i < 3; i++)
    // {
    //     for (j = 0; j < 4; j++)
    //     {
    //         printf("%d ", n[i][j]);
    //     }
    //     printf("\r\n");
    // }

    // int n[3][4] = {
    //     {10, 25, 33, 71},
    //     {45, 77, 44, 18},
    //     {38, 84, 21, 99}
    // };
    // for (i = 0; i < 3; i++)
    // {
    //     for (j = 0; j < 4; j++)
    //     {
    //         printf("%d ", n[i][j]);
    //     }
    //     printf("\r\n");
    // }

    // char str1[3][30];
    // strcpy(str1[0], "Hello World!\r\n");
    // strcpy(str1[1], "Hi!\r\n");
    // strcpy(str1[2], "Hello!\r\n");
    // printf("%s%s%s", str1[0], str1[1], str1[2]);

    // char str1[3][32] = {"Hello World!\r\n", "Hi!\r\n", "Hello!\r\n"};
    // printf("%s%s%s", str1[0], str1[1], str1[2]);

    char *str1[] = {"Hello World!\r\n", "Hi!\r\n", "Hello!\r\n"};
    printf("%s%s%s", str1[0], str1[1], str1[2]);

    return 0;
}