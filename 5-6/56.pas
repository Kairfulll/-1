program Pract56;

const
  SIZE_A = 30;
  SIZE_C = 20;
procedure Task1;
var
  A: array[1..SIZE_A] of integer;
  B: array[1..SIZE_A] of integer;
  i, j, countB: integer;
begin
  writeln('=== ЗАДАНИЕ 1 ===');
  Randomize;
  writeln('Массив A:');
  for i := 1 to SIZE_A do
  begin
    A[i] := Random(167) - 99; // от -99 до 67
    write(A[i], ' ');
  end;
  writeln;
  countB := 0;
  for i := 1 to SIZE_A do
  begin
    if A[i] mod 2 = 0 then
    begin
      countB := countB + 1;
      B[countB] := A[i];
    end;
  end;
  
  writeln('Массив B (четные элементы):');
  for i := 1 to countB do
    write(B[i], ' ');
  writeln;
end;
procedure Task2;
var
  arr: array[1..6] of integer = (1, 3, 5, 7, 9, 11);
  i: integer;
  isSorted: boolean;
begin
  writeln;
  writeln('=== ЗАДАНИЕ 2 ===');
  
  write('Массив: ');
  for i := 1 to 6 do
    write(arr[i], ' ');
  writeln;
  isSorted := true;
  for i := 1 to 5 do
  begin
    if arr[i] > arr[i + 1] then
    begin
      isSorted := false;
      break;
    end;
  end;
  
  if isSorted then
    writeln('Элементы массива упорядочены по возрастанию')
  else
    writeln('Элементы массива НЕ упорядочены по возрастанию');
end;
procedure Task3;
var
  arr: array[1..SIZE_C] of integer;
  newArr: array[1..SIZE_C + 1] of integer;
  i, j, evenCount, firstEvenIndex: integer;
begin
  writeln;
  writeln('=== ЗАДАНИЕ 3 ===');
  
  Randomize;
  writeln('Исходный массив:');
  for i := 1 to SIZE_C do
  begin
    arr[i] := Random(101) - 50; // от -50 до 50
    write(arr[i], ' ');
  end;
  writeln;
  evenCount := 0;
  for i := 1 to SIZE_C do
    if arr[i] mod 2 = 0 then
      evenCount := evenCount + 1;
  
  writeln('Количество четных элементов: ', evenCount);
  firstEvenIndex := -1;
  for i := 1 to SIZE_C do
  begin
    if arr[i] mod 2 = 0 then
    begin
      firstEvenIndex := i;
      break;
    end;
  end;
  
  if firstEvenIndex <> -1 then
  begin
    for i := 1 to firstEvenIndex do
      newArr[i] := arr[i];
    
    newArr[firstEvenIndex + 1] := evenCount;
    
    for i := firstEvenIndex + 1 to SIZE_C do
      newArr[i + 1] := arr[i];
    
    writeln('Массив после вставки:');
    for i := 1 to SIZE_C + 1 do
      write(newArr[i], ' ');
    writeln;
  end
  else
    writeln('В массиве нет четных элементов');
end;
begin
  Task1;
  Task2;
  Task3;
end.