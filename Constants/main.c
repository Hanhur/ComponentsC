#include <stdio.h>
#include <stdlib.h>
//----------------------------------------------
#define VAR_CONST1 12345
// #define HELLO_CONST "Hello, world!!!"
#define HELLO_CONST "\"Hello, world!!!\""
//----------------------------------------------

/*
    Шестнадцатеричные — последовательность шестнадцатеричных цифр от 0 до F, которая в начале предваряется символами 0x.
    Причём, если у цифр будет буквенный вид (от A до F), то они могут выводиться как в нижнем, так и верхнем регистрах.
    Например, 0xFF, 0xabce, 0x01, 0x1A3C.

    Тип int — суффикса нет. Например 0, 50, 123456, 0xFFDDAABB.

    А если нам нужно будет объявить беззнаковую константу, то мы уже добавляем суффикс u (U). Например, 0U, 1234u, 0xFFAACCBBU, 043210u.

    Также мы можем выделить 8 байт под нашу константу, то есть объявить её типа long, добавив суффикс l (L).
    Например, 0L, 1234l, 0x10AADD00FFAACCBBL, 0123456L.

    Можно и комбинировать ибо константа может иметь беззнаковый тип unsigned long. Например, 10UL, 412343ul, 0xFEAADD00FFAACCBBUL, 0123456UL.

    Если мы хотим использовать другой вещественный тип (float или long double),
    то для этого мы используем суффикс f (F) или l (L) 123.321f, .012L, 1.2345E-20l, 321E15L, .051E-9f, 1234567.L

    Константы могут также представлять и символы.
    Для этого они заключаются в символы апострофа '\0', '0', 'n', '\t', '\n', '\r', 's', '3', 'A', 'Z', '\a', '\v'

    Константы с символом обратного слэша (\) являются управляющими символами.
    Мы с ними также раньше встречались, например, переводя каретку и перенося строку.
    Каждая символьная константа имеет код, например:

    \n — 0x0A — перевод строки,
    \a — 0x07 — звуковой сигнал,
    \r — 0x0D — возврат каретки,
    Z — 0x5A — буква Z.

    Вот ещё примеры таких констант
    #define CONST0 0x00000000U
    #define CONST1 0x00000001U
    #define CONST2 0x00000002U
    #define CONST4 0x00000004U
    #define CONST8 0x00000008U

    Второй способ объявления констант похож на объявление переменных, только перед типом мы ещё добавляем ключевое слово const
    const int n = 0xFFFF;
*/

int main()
{
    const int n = 12345;
    // const char str1[] = {"Hello!!!"};
    const char str1[] = {"\"Hello!!!\""};

    printf("Constant value is %d\r\n", n); // int

    printf("Constant value is %d\r\n", VAR_CONST1);

    printf("Constant value is %ld\r\n", 243L);                   // long
    printf("Constant value is %lu\r\n", 243UL);                  // unsigned long
    printf("Constant value is %lu\r\n", 0xFFAABBCCUL);           // unsigned long
    printf("Constant value is %I64u\r\n", 0xFF00CCAAFFAABBCCUL); // unsigned long
    printf("Constant value is %lu\r\n", 043210ul);               // unsigned long

    printf("Constant value is %.25lf\r\n", 4.514);            // double
    printf("Constant value is %.25lf\r\n", 753578.71345e-21); // double
    printf("Constant value is %.25f\r\n", 4.514f);            // float
    printf("Constant value is %.25f\r\n", 753578.71345e-21f); // float

    printf("Constant value is %c - 0x%02X\r\n", 'Z', 'Z');   // char
    printf("Constant value is %c - 0x%02X\r\n", '0', '0');   // char
    printf("Constant value is %c - 0x%02X\r\n", '\0', '\0'); // char
    printf("Constant value is %c - 0x%02X\r\n", '\n', '\n'); // char

    printf("Constant value is %s\r\n", HELLO_CONST);
    printf("Constant value is %s\r\n", str1);

    return 0;
}