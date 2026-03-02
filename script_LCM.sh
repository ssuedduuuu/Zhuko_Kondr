#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Использование: $0 <число1> <число2>"
    exit 1
fi
a=$1
b=$2
# Функция для нахождения НОД (нужна для вычисления НОК)
gcd() {
    local x=$1
    local y=$2
    while [ $y -ne 0 ]; do
        local temp=$((x % y))
        x=$y
        y=$temp
    done
    echo $x
}
# НОК = (a * b) / НОД(a, b)
gcd_result=$(gcd $a $b)
lcm=$(( (a * b) / gcd_result ))

echo $lcm