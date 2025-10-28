def product_of_array(arr):
    """Вычисляет произведение всех элементов массива"""
    result = 1
    for num in arr:
        result *= num
    return result

def product_of_even_elements(arr):
    """Вычисляет произведение только четных элементов массива"""
    result = 1
    found_even = False
    for num in arr:
        if num % 2 == 0:  
            result *= num
            found_even = True
    
    return result if found_even else 0

arr = [1, 2, 3, 4, 5, 6]
print(f"Исходный массив: {arr}")
print(f"Произведение всех элементов: {product_of_array(arr)}")
print(f"Произведение четных элементов: {product_of_even_elements(arr)}")
