program pr_2;
var
  s: string;
  i, P, B: integer;
begin
  write('Введите строку: ');
  readln(s);
  
  P := 0;
  B := 0;
  
  for i := 1 to length(s) do
  begin
    if (s[i] = '+') or (s[i] = '-') then
    begin
      P := P + 1;
      if (i < length(s)) and (s[i+1] = '0') then
        B := B + 1;
    end;
  end;
  
  writeln('Общее количество символов "+" и "-": ', P);
  writeln('Количество символов "+" и "-" перед нулем: ', B);
end.