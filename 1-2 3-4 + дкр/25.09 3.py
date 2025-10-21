s = int(input())

b = 0
a = s
c = 0
d = 0
while a >= 45:
    d = a // 45
    b += d
    c += d
    a = (a % 45) + (c * 20)
    c = 0

print(b)
