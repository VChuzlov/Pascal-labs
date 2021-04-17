﻿function PowFit(x, y: array of real): array of real;
begin
  var (s1, s2, s3, s4) := (0.0, 0.0, 0.0, 0.0);
  result := ArrFill(2, 0.0);
  
  for var i := 0 to x.High do
  begin
    s1 += ln(x[i]);
    s2 += ln(y[i]);
    s3 += sqr(ln(x[i]));
    s4 += ln(x[i]) * ln(y[i])
  end;
  
  var n := x.Length;
  result[0] := (s2 * s3 - s1 * s4) / (n * s3 - sqr(s1));
  result[1] := (n * s4 - s1 * s2) / (n * s3 - sqr(s1))
end;


function pow_func(a: array of real; x: real): real;
begin
  result := exp(a[0]) * x ** a[1]
end;


begin
  var x: array of real = (300, 400, 500, 600, 700, 800);
  var y: array of real = (6.97, 7.01, 7.12, 7.28, 7.45, 7.62);
  
  var a := PowFit(x, y);
  var y_ := pow_func(a, 750);
  println($'При x = 750 y = {y_}')
end.