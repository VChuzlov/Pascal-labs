program lb83;

type
  arr = array[1..3, 1..4] of integer;

const
  b = 0.294;

var
  a: arr;
  i, j: integer;
  s, sa, sr, avrg: real;
  x: array[1..5] of integer = (10, 20, 30, 40, 50);
  z: array[1..5] of real;

function fn(a: arr): real;
var
  i, j: integer;
  sa: real;
begin
  sa := 0;
  for j := 1 to 4 do
  begin
    sr := 0;
    for i := 1 to 3 do
    begin
      sr := sr + a[i, j];
      avrg := sr / 3;
    end;
    sa := sa + avrg;
  end;
  result := sa;
end;

begin
  s := 0;
  for i := 1 to 3 do
  begin
    for j := 1 to 4 do
    begin
      a[i, j] := random(1, 9);
      write(a[i, j]:4);
    end;
    writeln;
  end;
  
  writeln('SA= ', fn(a):5:1);
  
  for i := 1 to 5 do
    s := s + x[i] + b;
  for i := 1 to 5 do
  begin
    z[i] := sqrt(x[i]) / b + fn(a) * s; 
  end;
  for i := 1 to 5 do
    writeln('Z[', i, '] = ', z[i]:8:4);
  
end.