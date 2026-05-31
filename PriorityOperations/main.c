#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/*
    Уровень приоритета	    Оператор	    Наименование оператора	                                        Порядок выполнения
                            ()	            Вызов функции
                            []	            Обращение к массиву по индексу

            1               ->	            Выбор элемента структуры или объединения по указателю           слева направо
                            .	            Выбор элемента структуры или объединения по ссылке
                            !	            Логическое отрицание	справа налево
                            ~	            Побитовое отрицание
                            ++	            Инкрементирование
                            —	            Декрементирование
                            +	            Унарный плюс

            2               —	            Унарный минус                                                   слева направо
                            *	            Обращение по адресу, разыменовывание
                            &	            Взятие адреса
                            (type)	        Приведение типа
                            sizeof	        Размер
                            *	            Умножение

            3               /	            Деление                                                         слева направо
                            %	            Деление по модулю

            4	            +	            Сложение
                            —	            Вычитание

            5	            >>	            Сдвиг битов вправо	                                            слева направо
                            <<	            Сдвиг битов влево

            6	            <	            Меньше	                                                        слева направо
                            <=	            Меньше или равно
                            >	            Больше
                            >=	            Больше или равно

            7	            ==	            Равенство	                                                    слева направо
                            !=	            Неравенство
            8	            &	            Побитовое И (AND)	                                            слева направо

            9	            ^	            Побитовое ИСКЛЮЧАЮЩЕЕ ИЛИ (XOR)	                                слева направо

            10	            |	            Побитовое ИЛИ (OR)	                                            слева направо

            11	            &&	            Логическое И	                                                слева направо

            12	            ||	            Логическое ИЛИ	                                                слева направо

            13	            ?:	            Тернарная операция	                                            справа налево

            14	            =	            Присваивание	                                                справа налево
                            +=	            Сложение с присваиванием
                            -=	            Вычитание с присваиванием
                            *=	            Умножение с присваиванием
                            /=	            Деление с присваиванием
                            %=	            Деление по модулю с присваиванием
                            &=	            Побитовое И с присваиванием
                            ^=	            Побитовое ИСКЛЮЧАЮЩЕЕ ИЛИ с присваиванием
                            |=	            Побитовое ИЛИ с присваиванием
                            <<=	            Побитовый сдвиг влево с присваиванием
                            >>=	            Побитовый сдвиг вправо с присваиванием

            15	            ,	            Операция запятая	                                            слева направо
*/

//----------------------------------------------
float my_div(float a, float b)
{
    return a / b;
}
//----------------------------------------------
float my_sum(float a, float b)
{
    return a + b;
}
//----------------------------------------------
void int_to_binary(int x, char *in_str)
{
    char str_tmp[9] = {};
    unsigned char i, j, k;
    unsigned char bt[4] = {0};

    for (j = 0; j < 4; j++)
    {
        if (((x >> j * 8) == 0) && (j > 0))
            break;
        bt[j] = (unsigned char)(x >> j * 8);
    }

    strcpy(in_str, "0b");

    for (k = 0; k < j; k++)
    {
        for (i = 0; i < 8; i++)
        {
            switch ((bt[j - k - 1] >> i) & 0b00000001)
            {
                case 1:
                    str_tmp[7 - i] = '1';
                    break;
                case 0:
                    str_tmp[7 - i] = '0';
                    break;
            }
        }
        strcat(in_str, str_tmp);
    }
}
int main()
{
    /*
    float xf = 8;
    float yf = 3;
    float zf = 2;
    float res = xf + yf + zf;
    printf("Value is %.5f\n", res);
    res = xf + yf - zf;
    printf("Value is %.5f\n", res);
    */
    /*
    float xf = 8;
    float yf = 3;
    float zf = 2;
    float res = xf + yf * zf;
    printf("Value is %.5f\n", res);
    res = xf - yf / zf;
    printf("Value is %.5f\n", res);
    */
    /*
    float xf = 8;
    float yf = 3;
    float zf = 2;
    float res = xf + my_div(yf, zf);
    printf("Value is %.5f\n", res);
    res = xf / my_sum(yf, zf);
    printf("Value is %.5f\n", res);
    */
    /*
    float xf = 8;
    float yf = 3;
    float zf = 2;
    int res;
    if (xf + yf > yf + zf)
        res = 1;
    else
        res = 0;
    printf("Value is %d\r\n", res);
    */
    /*
    char str1[35] = {};
    int a = 0b00111000, b = 0b10000010;
    int res = a | b >> 1;
    int_to_binary(a, str1);
    printf("Value is %s\r\n", str1);
    int_to_binary(b, str1);
    printf("Value is %s\r\n", str1);
    printf("==========\r\n");
    int_to_binary(res, str1);
    printf("Value is %s\r\n", str1);
    */

    char str1[35] = {};
    int a = 0b00111000, b = 0b10000010, c = 0b01000001;
    int_to_binary(a, str1);
    printf("Value is %s\r\n", str1);
    int_to_binary(b, str1);
    printf("Value is %s\r\n", str1);
    int_to_binary(c, str1);
    printf("Value is %s\r\n", str1);
    printf("==========\r\n");
    int res = a | b ^ c;
    int_to_binary(res, str1);
    printf("Value is %s\r\n", str1);
    return 0;
}