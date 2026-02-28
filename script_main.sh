#!/bin/bash
# ввод чисел и вызов script_GCD.sh

echo "Введите первое число:"
read num1
echo "Введите второе число:"
read num2

echo "НОД($num1, $num2) = $(./script_GCD.sh $num1 $num2)"