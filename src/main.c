#include <stdio.h>
#include "calc.h"

int main()
{
    int num1 = 10, num2 = 5;

    printf("Addition: %d + %d = %d\n", num1, num2, add(num1, num2));
    printf("Soustraction: %d - %d = %d\n", num1, num2, subtract(num1, num2));
    printf("Multiplication: %d * %d = %d\n", num1, num2, multiply(num1, num2));
    printf("Division: %d / %d = %d\n", num1, num2, divide(num1, num2));

    return 0;
}
