program ex1;
var
  a: array of array of real;
  min, s: real;
  i, j: integer;
begin
  SetLength(a, 3);
  for i := 0 to 2 do
    SetLength(a[i], 3);
  for i := 0 to 2 do
    begin
      for j := 0 to 2 do
        begin
          a[i, j] := random(-5, 5);
          write(a[i, j]:4);
        end;
      writeln;
    end;
  min := a[0, 0];
  s := 0;
  for i := 0 to 2 do
    for j := 0 to 2 do
      begin
        if min > a[i, j] then
          min := a[i, j];
        if a[i, j] > 0 then
          s += a[i, j];
      end;
  writeln(min * s)
end.