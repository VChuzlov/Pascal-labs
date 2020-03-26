program z4;
const
  low = 1;
  high = 100;
var
  a: array of array of integer;
  i, j: integer;
  max, min: integer;
begin
  SetLength(a, 4);
  for i := 0 to 3 do
    SetLength(a[i], 4);
  for i := 0 to 3 do
    begin
      for j := 0 to 3 do
        begin
          a[i, j] := random(low, high);
          write(a[i, j] :8);
        end;
      writeln;
    end;
  writeln;
  min := high;
  for i := 0 to 3 do
    begin
      max := a[i, 0];
      for j := 0 to 3 do
        if max < a[i, j] then
          max := a[i, j];
      write(max :8);
      if max < min then
        min := max;
    end;
  writeln;
  writeln(min)
end.



