program z3;
var
  a: array of array of integer;
  i, j: integer;
  s, c: integer;
begin
  SetLength(a, 4);
  for i := 0 to 3 do
    SetLength(a[i], 4);
  for i := 0 to 3 do
    begin
      for j := 0 to 3 do
        begin
          a[i, j] := random(-3, 6);
          write(a[i, j] :8);
        end;
      writeln;
    end;
  for j := 0 to 3 do
    begin
      s := 0;
      c := 0;
      for i := 0 to 3 do
        if a[i, j] > 0 then
          begin
            s := s + a[i, j];
            c += 1;
          end;
      write(s / c :8:2);
    end;
end.



