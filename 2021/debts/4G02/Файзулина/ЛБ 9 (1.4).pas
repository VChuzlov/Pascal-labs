function ExpFit(x, y: array of real): array of real;
begin
 var (s1, s2, s3, s4) := (0.0, 0.0, 0.0, 0.0);
 result := ArrFill(2, 0.0);
 for var i := 0 to x.High do
 begin
  s1 += x[i];
  s2 += ln(y[i]);
  s3 += sqr(x[i]);
  s4 += x[i] * ln(y[i])
 end;
 var n := x.Length;
 result[0] := (s2 * s3 - s1 * s4) / (n * s3 - sqr(s1));
 result[1] := (n * s4 - s1 * s2) / (n * s3 - sqr(s1))
end;
function exp_func(a: array of real; x: real): real;
begin
 result := exp(a[0]) * exp(a[1] * x)
end;
begin
 var x: array of real = (300, 400, 500, 600, 700, 800, 900, 1000);
 var y: array of real = (129.20, 170.54, 206.48, 236.14, 260.58, 280.96, 298.19, 312.84);
 begin
 var (j, h, jk) := (300, 50, 1000);
 for var i := 1 to Trunc((jk- j) / h)+1 do
  begin
   var a := ExpFit(x, y);
   var y_ := exp_func(a, j);
   writeln(j: 7, y_ :25:4);
   j += h
  end;
 end;
end.