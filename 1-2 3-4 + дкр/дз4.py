productivity = []
print("Введите производительность 12 цехов:")

for i in range(12):
    p = float(input(f"Цех {i+1}: "))
    productivity.append(p)

average = sum(productivity) / len(productivity)
min_p = min(productivity)
diff = average - min_p

print(f"Средняя производительность: {average:.2f}")
print(f"Наименьшая производительность: {min_p:.2f}")
print(f"Необходимое повышение: {diff:.2f}")
