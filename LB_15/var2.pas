program indzad_var1;
const
  n = 3;
  k1 = 0.45;
  k2 = 0.15;
  //k3 = 0.18;
type
  a = array [1..n] of real;
var
  t: real;
  c, f: a;
procedure p(t:real; c: a; var f: a);
begin
  f[1]:= - k1 * c[1] * sqr(c[2]) + k2 * sqr(c[3]) * c[3];
  f[2]:= 2 * (-k1 * c[1] * sqr(c[2]) + k2 * sqr(c[3]) * c[3]);
  f[3]:= 3 * (-k1 * c[1] * sqr(c[2]) + k2 * sqr(c[3]) * c[3]);
end;
procedure El(t, tk, h: real; var c: a);
var
  i: integer;
  x, c0: real;
begin
  c0:= c[3];
  repeat
    x:= ({c0 - }c[3]) / c0 * 100;
    write(t:4:1);
    for i:= 1 to n do
      write(c[i]:10:4);
    write(x:10:4);
    writeln;
    p(t, c, f);
    for i:= 1 to n  do
      c[i]:= c[i] + h * f[i];
    t:= t + h
  until x < tk
end;
procedure RK(t, tk, h: real; var c: a);
var
  i: integer;
  xA, xC, cA0, CC0: real;
  k1, k2, k3, k4, z: a;
begin
  cC0:= c[3];
  repeat
    xC:= ({cC0 - }c[3]) / cC0 * 100;
    write(t:4:1);
    for i:= 1 to n do
      write(c[i]:10:4);
    write(xC:10:4);
    writeln;
    p(t, c, f);
    for i := 1 to n do
      begin
        k1[i]:= h * f[i];
        z[i]:= c[i] + k1[i] / 2
      end;
    p(t + h / 2, z, f);
     for i := 1 to n do
      begin
        k2[i]:= h * f[i];
        z[i]:= c[i] + k2[i] / 2
      end;
    p(t + h / 2, z, f);
     for i := 1 to n do
      begin
        k3[i]:= h * f[i];
        z[i]:= c[i] + k3[i]
      end;
    p(t + h, z, f);
     for i := 1 to n do
      begin
        k4[i]:= h * f[i];
        c[i]:= c[i] + (k1[i] + 2 * k2[i] + 2 * k3[i] + k4[i]) / 6
      end;
    t:= t + h
  until xC < tk
end;
begin
  c[1]:= 0.64;
  c[2]:= 0.8;
  c[3]:= 0.5;
  writeln('  t', '       CA','        CB','        CC', '       X');
  El(t, 5, 0.1, c);
  c[1]:= 0.64;
  c[2]:= 0.8;
  c[3]:= 0.5;
  writeln('  t', '       CA','        CB','        CC', '       X');
  RK(t, 5, 0.1, c);
end.