program pr_3;
var
  s: string;
  i: integer;
begin
  write('Введите строку: ');
  readln(s);
  
  if length(s) > 10 then
    s := copy(s, 1, 6)
  else
  begin
    for i := length(s) + 1 to 12 do
      s := s + 'о';
  end;
  
  writeln('Результат: ', s);
  writeln('Длина результата: ', length(s));
end.