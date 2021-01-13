program lb82;

const
  m = 2.6e-4;

type
  arr = array[1..5, 1..3] of integer;

var
  i, j: integer;
  pn, p: real;
  c: array[1..5] of real = (3.42, 11.2, 0.4, 6.23, 15.64);
  k: array[1..5] of real; 
  b: arr;

procedure pr1(var b: arr);
var
  i, j: integer;
  p: real;
begin
  for i := 1 to 5 do
  
  begin
    p := 1;
    for j := 1 to 3 do
    begin
      p := p * b[i, j];
    end;
    if (p > PN) then
    begin
      PN := p;
    end;
    writeln('Произведение элементов ', i, ' строки = ', p)
  end;
  
  writeln('PN = ', pn)
  
end;

begin
  
  for i := 1 to 5 do
  begin
    for j := 1 to 3 do
    begin
      b[i, j] := random(1, 100);
    end;
    writeln(b[i]);
  end;
  
  pr1(b);
  
  for i := 1 to 5 do
  begin
    k[i] := ln(c[i]) + (sqrt(PN) / 2) * m;
  end;
  for i := 1 to 5 do
    writeln('k[', i, '] = ', k[i]:8:4);
end.