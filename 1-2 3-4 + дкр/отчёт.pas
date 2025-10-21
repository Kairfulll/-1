program Lab1;

uses
  Math;

var
  x, y: Real;

begin
  x := -11.0;
  while x <= 2.0 do
  begin
    if x < -9 then
      y := cos(x) * log10(-x)
    else if x < 0 then
    begin
      if (sin(x) <> 0) and (cos(x) <> 0) then
        y := log10(-x) / sin(x) + tan(x)
      else
        y := 1E300;
    end
    else if x > 0 then
      y := ln(x) + x * x
    else
      y := 1E300; 
    
    if y > 1E299 then
      writeln('x = ', x:5:2, ' y = не определено')
    else
      writeln('x = ', x:5:2, ' y = ', y:8:4);
    
    x := x + 0.3;
  end;
end.