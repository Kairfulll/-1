program pr_2;
var a, b, c: integer;
begin
writeln ('Введите число a');
readln (a);
b:=a mod 100;
c:=b div 10;
writeln ('c=',c);
end.