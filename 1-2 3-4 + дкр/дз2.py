n = int(input("Количество комнат: "))
total_area = 0

for i in range(n):
    length = float(input(f"Длина комнаты {i+1}: "))
    width = float(input(f"Ширина комнаты {i+1}: "))
    area = length * width
    total_area += area
    print(f"Площадь комнаты {i+1}: {area:.2f}")

print(f"Суммарная площадь: {total_area:.2f}")
