program zad2;

procedure p1;
const
  k = 14;
var
  z, x, c: real;
begin
  x:= 6;
  Writeln(' x', '       ', 'Z');
  repeat
    c:= (x + sqr(k) * k) / (k + 1);
    z:= tan(x) + 5 * c;
    writeln(x:4:1, z:10:4);
    x:= x + 6;
  until x > 36;
end;

procedure p2;
const
  a = 2.1;
var
  x, Z, b: real;
begin
  x:= 10.2;
  Writeln(' x', '       ', 'Z');
  repeat
    b:= x + cos(x);
    z:= sin(x / a) + abs(a - b) / sqr(b);
    writeln(x:3, z:12:4);
    x:= x + 0.4
  until x > 13
end;

begin
  //p1;
  p2
end.