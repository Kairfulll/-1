program pr_4;
var a, b: integer;
begin
writeln ('Введите число a');
readln (a);
if a mod 2=0 then b:=a+2 else b:=a+1;
writeln (b);
end.