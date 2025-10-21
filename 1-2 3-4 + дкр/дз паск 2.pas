program RoomAreas;
var
  n, i: integer;
  length, width, area, totalArea: real;
begin
  write('Количество комнат: ');
  readln(n);
  totalArea := 0;
  
  for i := 1 to n do
  begin
    write('Длина комнаты ', i, ': ');
    readln(length);
    write('Ширина комнаты ', i, ': ');
    readln(width);
    area := length * width;
    totalArea := totalArea + area;
    writeln('Площадь комнаты ', i, ': ', area:0:2);
  end;
  
  writeln('Суммарная площадь: ', totalArea:0:2);
end.