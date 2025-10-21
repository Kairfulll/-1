
s = input("Введите строку: ")

if len(s) > 10:
    s = s[:6]
else:
    s = s.ljust(12, 'о')

print(f"Результат: {s}")
print(f"Длина результата: {len(s)}")
