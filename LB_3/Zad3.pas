program zad3;

procedure p1;
label
  1;
const
  k = 2.8;
  a = 13;
var
  n, x, p: real;
begin
  x:= 4;
  Writeln(' x', '       ', 'N');
  1:
    P:= exp(k*ln(a)) + exp(a);
    N:= P + cos(x) + 5 * sqr(x);
    writeln(x:3, n:13:4);
    x:= x + 2;
  if x <= 18 then goto 1;
end;

procedure p2;
label
  1;
const
  a = -1.6;
  P = 46.82;
var
  k, N, b: real;
begin
  k:= 4.6;
  Writeln(' k', '       ', 'N');
  1:
    b:= ln(P + 2.6 * a);
    N:= sin(k) / cos(k) +  b * a;
    writeln(k:3, n:12:4);
    k:= k + 0.2;
  if k <= 5.8 then goto 1
end;

begin
  //p1;
  p2
end.