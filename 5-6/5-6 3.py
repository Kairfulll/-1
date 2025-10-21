import random

def task3():
    print("\n=== ЗАДАНИЕ 3 ===")
   
    arr = [random.randint(-50, 50) for _ in range(20)]
    print(f"Исходный массив: {arr}")
    
    even_count = sum(1 for x in arr if x % 2 == 0)  
    print(f"Количество четных элементов: {even_count}")
    
    first_even_index = -1  
    for i in range(len(arr)):
        if arr[i] % 2 == 0:
            first_even_index = i
            break
    
    if first_even_index != -1:
        new_arr = arr[:first_even_index + 1] + [even_count] + arr[first_even_index + 1:]
        print(f"Массив после вставки: {new_arr}")
        return new_arr
    else:
        print("В массиве нет четных элементов")
        return arr

if __name__ == "__main__":
    result = task3()
