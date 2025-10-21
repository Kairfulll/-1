program pr_1;
var
  s: string;
  len, middle: integer;
begin
  write('Введите строку: ');
  readln(s);
  len := length(s);
  
  writeln('Первый символ: ', s[1]);
  writeln('Последний символ: ', s[len]);
  
  if len mod 2 = 1 then
  begin
    middle := len div 2 + 1;
    writeln('Средний символ: ', s[middle]);
  end
  else
    writeln('Среднего символа нет (четная длина)');
end.