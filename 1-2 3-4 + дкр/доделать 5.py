coord = input()
letter = coord[0]
digit = int(coord[1])

letter_num = ord(letter) - ord('A') + 1

if (letter_num + digit) % 2 == 0:
    print("BLACK")
else:
    print("WHITE")
