#include "calc.h"
#include <stdio.h>

// Implémentation des fonctions
int add(int a, int b)
{
    return a + b;
}

int subtract(int a, int b)
{
    return a - b;
}

int multiply(int a, int b)
{
    return a * b;
}

int divide(int a, int b)
{
    if (b == 0)
    {
        printf("Erreur : Division par zéro\n");
        return 0;
    }
    return a / b;
}
