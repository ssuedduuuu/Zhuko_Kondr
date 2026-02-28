#!/bin/bash
# script_GCD.sh - находит НОД двух чисел

# Проверяем, что передано два аргумента
if [ $# -ne 2 ]; then
    echo "Использование: $0 <число1> <число2>"
    exit 1
fi

a=$1
b=$2

# Алгоритм Евклида
while [ $b -ne 0 ]; do
    remainder=$((a % b))
    a=$b
    b=$remainder
done

echo $a