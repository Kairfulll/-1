
s = input("Введите строку: ")
length = len(s)

print(f"Первый символ: {s[0]}")
print(f"Последний символ: {s[-1]}")

if length % 2 == 1:
    middle = length // 2
    print(f"Средний символ: {s[middle]}")
else:
    print("Среднего символа нет (четная длина)")
