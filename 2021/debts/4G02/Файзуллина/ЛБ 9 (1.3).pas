function PowFit(x, y: array of real): array of real;
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
 var x: array of real = (300, 400, 500, 600, 700, 800, 900, 1000);
 var y: array of real = (29.62, 21.88, 15.52, 10.38, 6.40, 3.35, 1.13, 0.21);
 begin
  var (j, h, jk) := (300, 50, 1000);
  for var i := 1 to Trunc((jk- j) / h)+1 do
  begin
   var a := PowFit(x, y);
   var y_ := pow_func(a, j);
   writeln(j: 7, y_ :25:4);
   j += h
  end;
 end;
end.