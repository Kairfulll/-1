import random
def task2():
    print("\n=== ЗАДАНИЕ 2 ===")
    arr = [1, 3, 5, 7, 9, 11]  
    
    is_sorted = True
    for i in range(len(arr) - 1):
        if arr[i] > arr[i + 1]:
            is_sorted = False
            break
    
    print(f"Массив: {arr}")
    if is_sorted:
        print("Элементы массива упорядочены по возрастанию")
    else:
        print("Элементы массива НЕ упорядочены по возрастанию")
    
    return is_sorted

if __name__ == "__main__":
   
    
    result = task2()  
