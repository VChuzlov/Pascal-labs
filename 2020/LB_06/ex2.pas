program ex2;
const
  r = 4;
  c = 4;
var
  a: array of array of real;
  min, max: real;
  i, j: integer;
begin
  SetLength(a, r);
  for i := 0 to r-1 do
    SetLength(a[i], c);
  for i := 0 to r-1 do
    begin
      for j := 0 to c-1 do
        begin
          a[i, j] := random(1, 100);
          write(a[i, j]:4);
        end;
      writeln;
    end;
  min := 100;
  for i := 0 to r-1 do
    begin
      max := a[i, 0];
      for j := 0 to c-1 do
          if max < a[i, j] then
            max := a[i, j];
      writeln('Max element of string ', i, ' = ', max);
      if min > max then
        min := max;
    end;
  writeln('Min from Max = ', min);
end.