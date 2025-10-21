import random
def task1():
    print("=== ЗАДАНИЕ 1 ===")
    A = [random.randint(-99, 67) for _ in range(30)]
    B = [x for x in A if x % 2 == 0]
    
    print(f"Массив A: {A}")
    print(f"Массив B (четные элементы): {B}")
    return A, B
if __name__=="__main__":
    A, B = task1()
    
