students = []
print("Введите оценки 4 предметов для каждого студента (пустая строка для завершения):")

while True:
    line = input("Оценки через пробел: ").strip()
    if not line:
        break
    grades = list(map(int, line.split()))
    if len(grades) != 4:
        print("Нужно 4 оценки!")
        continue
    students.append(grades)

fail_count = 0
total_sum = 0
total_subjects = 0

for grades in students:
    if any(grade < 60 for grade in grades):
        fail_count += 1
    total_sum += sum(grades)
    total_subjects += len(grades)

average = total_sum / total_subjects if total_subjects > 0 else 0

print(f"Неуспевающие студенты: {fail_count}")
print(f"Средний балл группы: {average:.2f}")
