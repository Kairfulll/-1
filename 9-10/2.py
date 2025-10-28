import random

def create_2d_array(rows, cols):
    """Создает двумерный массив 6x8 со случайными числами"""
    return [[random.randint(-10, 10) for _ in range(cols)] for _ in range(rows)]

def get_first_greater_than_4(matrix):
    """Получает одномерный массив с первыми элементами >4 по модулю в каждой строке"""
    result = []
    
    for row in matrix:
        found = False
        for element in row:
            if abs(element) > 4:  
                result.append(element)
                found = True
                break
        
        if not found:
            result.append(0)  
    
    return result


print("Задание 2:")
matrix = create_2d_array(6, 8)

print("Двумерный массив 6x8:")
for row in matrix:
    print(row)

result_array = get_first_greater_than_4(matrix)
print(f"\nРезультирующий массив: {result_array}")
