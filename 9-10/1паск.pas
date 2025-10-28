program T1;

const
    N = 6;

type
    TArr = array[1..N] of integer;

function P1(a: TArr): integer;
var
    i, r: integer;
begin
    r := 1;
    for i := 1 to N do
        r := r * a[i];
    P1 := r;
end;

function P2(a: TArr): integer;
var
    i, r: integer;
    f: boolean;
begin
    r := 1;
    f := false;
    
    for i := 1 to N do
    begin
        if a[i] mod 2 = 0 then
        begin
            r := r * a[i];
            f := true;
        end;
    end;
    
    if f then
        P2 := r
    else
        P2 := 0;
end;

var
    arr: TArr;
    i: integer;
begin
    arr[1] := 1; arr[2] := 2; arr[3] := 3;
    arr[4] := 4; arr[5] := 5; arr[6] := 6;
    
    write('Массив: ');
    for i := 1 to N do
        write(arr[i], ' ');
    writeln;
    
    writeln('Произведение всех: ', P1(arr));
    writeln('Произведение четных: ', P2(arr));
end.