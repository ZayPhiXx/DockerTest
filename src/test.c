#include <stdio.h>
#include "calc.h"
#include <assert.h>

void test_addition() {
    assert(add(2, 3) == 5);
    assert(add(-5, 7) == 2);
    assert(add(0, 0) == 0);
    printf("Addition tests passed!\n");
}

void test_subtraction() {
    assert(subtract(10, 4) == 6);
    assert(subtract(3, 8) == -5);
    assert(subtract(0, 0) == 0);
    printf("Subtraction tests passed!\n");
}

void test_multiplication() {
    assert(multiply(6, 2) == 12);
    assert(multiply(0, 5) == 0);
    assert(multiply(-3, 4) == -12);
    printf("Multiplication tests passed!\n");
}

void test_division() {
    assert(divide(10, 2) == 5);
    assert(divide(9, 3) == 3);
    printf("Division tests passed!\n");
    
    if (divide(5, 0) == 0) { 
        printf("Handled division by zero correctly!\n");
    } else {
        printf("Error: Division by zero not handled properly!\n");
    }
}

void run_tests() {
    test_addition();
    test_subtraction();
    test_multiplication();
    test_division();
    printf("All tests passed!\n");
}

int main() {
    run_tests();
    return 0;
}