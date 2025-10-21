program pr_6;
var R, V, u: real;
begin
writeln ('Введите R');
readln (R);
V:=(4/3)*3.14*(R*R*R);
u:= round (V*100)/100;
writeln (u);
end.