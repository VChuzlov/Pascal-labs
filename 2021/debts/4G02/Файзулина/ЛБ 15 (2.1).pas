function f(x: real): real;
begin
  result := sin(x) / (sqr(cos(x)) + 1)
end;

function RectMethod(f: function(x: real): real; x: array of real; n: integer): real;
begin
  var h := (x[1] - x[0]) / n;
  result := 0.0;
  for var i := 0 to n-1 do
    result += f(x[0] + h * (i + 0.5));
  result *= h
end;

begin
  var x := Arr(pi / 2, pi);
  var int := RectMethod(f, x, 20);
  int.Println
end.