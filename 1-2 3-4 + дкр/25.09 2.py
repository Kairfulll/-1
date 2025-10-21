S = int(input())
a = S
b = 0
c = 0

while a >= 45 or c >= 3:
    b += a // 45
    c += a // 45
    a = a % 45
    
    if c >= 3:
        a += (c // 3) * 60
        c = c % 3

print(b)
