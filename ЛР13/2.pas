program pr_2;
var f1, f2: text;
  s: string;
  max, i: integer;
  arr: array[1..100] of string;
  n: integer;
begin
  assign(f1, 'input.txt');
  rewrite(f1);
  writeln(f1, 'lelele');
  writeln(f1, 'myu');
  writeln(f1, 'lol');
  writeln(f1, 'krya');
  writeln(f1, 'kukareku');
  writeln(f1, 'fufufufu');
  close(f1);
  reset(f1);
  n := 0;
  max := 0;
  
  while not eof(f1) do
  begin
    n := n + 1;
    readln(f1, arr[n]);
    if Length(arr[n]) > max then
      max := Length(arr[n]);
  end;
  close(f1);
  
  assign(f2, 'output.txt');
  rewrite(f2);
  
  for i := n downto 1 do
    if Length(arr[i]) = max then
      writeln(f2, arr[i]);
  
  close(f2);
  
  Execute('notepad.exe', 'input.txt');
  Execute('notepad.exe', 'output.txt');
end.