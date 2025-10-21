program pr_6;
var a, b, c, p, S, u: real;
begin
writeln ('Введите число a, b, c');
readln (a, b, c);
p:=(a+b+c)/2;
S:=sqrt(p*(p-a)*(p-b)*(p-c));
u:= round (S*100)/100;
writeln (u);
end.