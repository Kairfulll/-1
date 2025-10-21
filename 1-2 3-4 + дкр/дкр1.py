import math

def main():
    print("Лабораторная работа №1. Вычисление значения функции")
    print("Вариант: 5")
    print("Интервал: [-11; 2], шаг: 0.3")
    print("-" * 40)
    
    x = -11.0
    while x <= 2.0:
        try:
            if x < -9:
               
                y = math.cos(x) * math.log10(-x)
            elif x < 0:
               
                y = math.log10(-x) / math.sin(x) + math.tan(x)
            else:
              
                y = math.log(x) + x**2
            
            print(f"x = {x:5.1f} | y = {y:8.4f}")
            
        except (ValueError, ZeroDivisionError):
            print(f"x = {x:5.1f} | y = не определено")
        
        x = round(x + 0.3, 1)  

if __name__ == "__main__":
    main()
