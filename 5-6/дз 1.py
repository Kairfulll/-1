import math

print(" x      sin(x)   cos(x)")
print("------------------------")
x = 0.0
while x <= 1.0:
    print(f"{x:.1f}   {math.sin(x):.4f}   {math.cos(x):.4f}")
    x += 0.1
