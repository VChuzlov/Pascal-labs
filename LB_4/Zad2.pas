program zad2;
const
  a: array of real = (2.1, 3.2, 4.8, 5.7);
  c: array of real = (2, 4, 6, 8);
  b = 18;
var
  i: integer;
  s, p, y: real;
begin
  s:= 0;
  p:= 1; 
  for i:= 0 to 3 do
    begin
      s:= s + a[i] + sqrt(b);
      p:= p * sin(c[i])
    end;
  writeln(s + p);
end.
  