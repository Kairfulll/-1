program Productivity;
var
  p: array[1..12] of real;
  i: integer;
  sum, average, min, diff: real;
begin
  writeln('Введите производительность 12 цехов:');
  sum := 0;
  
  for i := 1 to 12 do
  begin
    write('Цех ', i, ': ');
    readln(p[i]);
    sum := sum + p[i];
  end;
  
  average := sum / 12;
  min := p[1];
  
  for i := 2 to 12 do
    if p[i] < min then
      min := p[i];
  
  diff := average - min;
  
  writeln('Средняя производительность: ', average:0:2);
  writeln('Наименьшая производительность: ', min:0:2);
  writeln('Необходимое повышение: ', diff:0:2);
end.