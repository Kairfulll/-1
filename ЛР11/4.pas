uses GraphABC;
var
  i, x: integer;
begin
  x := 50;
  while x <= 290 do
  begin
    SetPenColor(RGB(Random(256), Random(256), Random(256)));
    SetBrushColor(RGB(Random(256), Random(256), Random(256)));
    Circle(x, 100, 10);
    x := x + 30;
  end;
end.