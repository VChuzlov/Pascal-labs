function LineFit(x, y: array of real): array of real;
begin
  var (s1, s2, s3, s4) := (0.0, 0.0, 0.0, 0.0);
  result := ArrFill(2, 0.0);
  
  for var i := 0 to x.High do
  begin
    s1 += x[i];
    s2 += y[i];
    s3 += sqr(x[i]);
    s4 += x[i] * y[i]
  end;
  
  var n := x.Length;
  result[0] := (s2 * s3 - s1 * s4) / (n * s3 - sqr(s1));
  result[1] := (n * s4 - s1 * s2) / (n * s3 -sqr(s1));
end;

function Line_func(a: array of real; x: real): real;
begin
  result := a[0] + a[1] * x
end;

begin
  var T: array of real = (300, 400, 500, 600, 700, 800, 900, 1000);
  var C: array of real = (129.20, 170.54, 206.48, 236.14, 260.58, 280.96, 298.19, 312.84);
  var H: array of real = (29.62, 21.88, 15.52, 10.38, 6.40, 3.35, 1.13, 0.21);  
  
var a := 300;

for var i := 0 to 14 do
 begin
 
 writeln(a + i * 50,'     ',line_func(LineFit(T,C),a + i * 50),'     ',line_func(LineFit(T,H),a + i * 50))
 
 end;
end.