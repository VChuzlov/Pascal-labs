program ex3;
const
  r = 5;
  c = 10;
var
  a: array of array of real;
  s, max: real;
  i, j, jm: integer;
begin
  SetLength(a, r);
  for i := 0 to r-1 do
    SetLength(a[i], c);
  for i := 0 to r-1 do
    begin
      for j := 0 to c-1 do
        begin
          a[i, j] := random(10);
          write(a[i, j]:4);
        end;
      writeln;
    end;
  max := 0;
  for j := 0 to c-1 do
    begin
      s := 0;
      for i := 0 to r-1 do
        s := s + a[i, j];
      writeln('Sum of elements of col_', j, ' = ', s);
      if max < s then
        begin
          max := s;
          jm := j
        end
    end;
  writeln('Col with max Sum = ', jm);
end.