program T2;

const
    R = 6;
    C = 8;

type
    TM = array[1..R, 1..C] of integer;
    TV = array[1..R] of integer;

procedure CM(var m: TM);
var
    i, j: integer;
begin
    randomize;
    for i := 1 to R do
        for j := 1 to C do
            m[i, j] := random(21) - 10;
end;

procedure FG(m: TM; var v: TV);
var
    i, j: integer;
    f: boolean;
begin
    for i := 1 to R do
    begin
        f := false;
        for j := 1 to C do
        begin
            if abs(m[i, j]) > 4 then
            begin
                v[i] := m[i, j];
                f := true;
                break;
            end;
        end;
        
        if not f then
            v[i] := 0;
    end;
end;

procedure PM(m: TM);
var
    i, j: integer;
begin
    writeln('Массив ', R, 'x', C, ':');
    for i := 1 to R do
    begin
        for j := 1 to C do
            write(m[i, j]:4);
        writeln;
    end;
end;

procedure PV(v: TV);
var
    i: integer;
begin
    write('Результат: [');
    for i := 1 to R do
    begin
        write(v[i]);
        if i < R then write(', ');
    end;
    writeln(']');
end;

var
    m: TM;
    v: TV;
begin
    writeln('Задание 2:');
    
    CM(m);
    PM(m);
    
    FG(m, v);
    PV(v);
end.