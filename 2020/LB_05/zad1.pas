program LB05_zad1;
const
  x: array [1..4] of real = (-3.5, 120.4, -3.9, 6.11);
var
  i, j, n: integer;
  p: array [1..2, 1..3] of real;
  s, min, max: real;
  f: text;
begin
  assign(f, 'in.txt');
  reset(f);
  for i:= 1 to 2 do
    begin
      for j:= 1 to 3 do
        read(f, p[i, j]);
      readln(f);
    end;
  min:= p[1, 1];
  max:= x[1];
  for j:= 1 to 3 do
    if min > p[1, j] then
      min:= p[1, j];
  for i:= 1 to 4 do
    begin
      if max < x[i] then 
        max:= x[i];
      if x[i] > 0 then
        n:= n + 1;
    end;
  writeln((min + max) / n);
  close(f);
end.