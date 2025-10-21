program pr_3;
var a, b, c, d, e: integer;
begin
writeln ('Введите число a');
readln (a);
b:=a div 100;
c:= a mod 10;
d:= (a mod 100) div 10;
e:= b+c+d;
writeln (e);
end.