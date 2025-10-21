program SinCosTable;
var
  x: real;
begin
  writeln(' x      sin(x)   cos(x)');
  writeln('------------------------');
  x := 0.0;
  while x <= 1.0 do
  begin
    writeln(x:0:1, '   ', sin(x):0:4, '   ', cos(x):0:4);
    x := x + 0.1;
  end;
end.