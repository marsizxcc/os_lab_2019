#!/bin/bash

sum=0
count=0

# Читаем числа из стандартного ввода
while IFS= read -r num; do
    if [[ $num =~ ^[0-9]+$ ]]; then  # Проверка, что значение - это число
        sum=$((sum + num))
        count=$((count + 1))
    fi
done

# Проверка на количество чисел
if [ $count -eq 0 ]; then
    echo "Нет входных данных."
    exit 1
fi

# Вычисление среднего арифметического
average=$(echo "scale=2; $sum / $count" | bc)

# Вывод результатов
echo "Количество чисел: $count"
echo "Среднее арифметическое: $average"