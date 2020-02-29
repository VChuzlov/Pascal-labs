program zad1;

procedure p1;
const
  x = 12.4;
var
  p, k, y: real;
begin
  k:= sin(3*x) + cos(x);
  y:= 0.5;
  Writeln(' y', '       ', 'P');
  while y <= 4.7 do
    begin
      p:= tan(x) + sqr(y) / sqrt(k) - 16.3;
      writeln(y:4:1, p:10:4);
      y:= y + 0.7;
    end;
end;

procedure p2;
var
  x, Z, P: real;
begin
  x:= 3;
  Writeln(' x', '       ', 'P');
  while x <= 33 do
    begin
      Z:= sqr(x) * x - 0.16 * x;
      P:= sin(x - 2) + x / 16 - Z;
      writeln(x:3, P:12:4);
      x:= x + 5
    end;
end;

begin
 // p1;
  p2
end.