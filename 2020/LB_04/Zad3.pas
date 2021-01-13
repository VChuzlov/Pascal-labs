program zad3;
const
  b: array of real = (2, 4, -6, 8, -3, 7, 12, -45, 106, 4);
var
  i, o, p: integer;
begin
  for i:= 0 to 9 do
    if b[i] < 0 
      then o:= o + 1
    else
      p:= p + 1;
  writeln((o + p) / o);
end.