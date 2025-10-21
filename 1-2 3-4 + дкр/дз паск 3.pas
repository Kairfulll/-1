program StudentGrades;
var
  grades: array[1..4] of integer;
  i, f, t, tS, s: integer;
  input: string;
  average: real;
begin
  s := 0;
  f := 0;
  t := 0;
  tS := 0;

  writeln('Введите оценки 4 предметов для каждого студента (пустая строка для завершения):');
  
  while True do
  begin
    write('Оценки через пробел: ');
    readln(input);
    if input = '' then break;
    
    s := s + 1;
    for i := 1 to 4 do
      read(grades[i]);
    readln;
    
    for i := 1 to 4 do
    begin
      if grades[i] < 60 then
      begin
        f := f + 1;
        break;
      end;
    end;
    
    for i := 1 to 4 do
      t := t + grades[i];
    tS := tS + 4;
  end;

  if tS > 0 then
    average := t / tS
  else
    average := 0;

  writeln('Неуспевающие студенты: ', f);
  writeln('Средний балл группы: ', average:0:2);
end.