﻿program indzad_var1;
const
  n = 3;
  k1 = 0.21;
  k2 = 0.12;
  k3 = 0.18;
type
  a = array [1..n] of real;
var
  t: real;
  c, f: a;
procedure p(t:real; c: a; var f: a);
begin
  f[1]:= - k1 * c[1] - k2 * c[1] + k3 * c[3];
  f[2]:= k1 * c[1];
  f[3]:= k1 * c[1] - k3 * c[3];
end;
procedure El(t, tk, h: real; var c: a);
var
  i: integer;
  x, c0: real;
begin
  c0:= c[1];
  repeat
    x:= ({c0 - }c[1]) / c0 * 100;
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
  x, c0: real;
  k1, k2, k3, k4, z: a;
begin
  c0:= c[1];
  repeat
    x:= (c0 - c[1]) / c0 * 100;
    write(t:4:1);
    for i:= 1 to n do
      write(c[i]:10:4);
    write(x:10:4);
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
  until x > tk
end;
begin
  c[1]:= 0.7;
  c[2]:= 0;
  c[3]:= 0;
  writeln('  t', '       CA','        CB','        CC', '       XA');
  El(t, 10, 1, c);
  c[1]:= 0.7;
  c[2]:= 0;
  c[3]:= 0;
  writeln('  t', '       CA','        CB','        CC', '       XA');
  RK(t, 90, 1, c);
end.