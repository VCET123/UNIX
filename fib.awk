#!/bin/awk -f

BEGIN {
    printf "Enter the number of terms: "
    getline numTerms < "-"
    printf "Fibonacci series with %d terms:\n", numTerms
    printf "0 1 "
    a = 0
    b = 1
    for (i = 3; i <= numTerms; i++) {
        c = a + b
        printf "%d ", c
        a = b
        b = c
    }
    printf "\n"
}
