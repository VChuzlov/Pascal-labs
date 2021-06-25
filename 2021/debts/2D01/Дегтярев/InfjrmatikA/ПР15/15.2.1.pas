function f(x,C,v: real): real;
begin
  result := v * C / x
end;

function RectMethod(f: function(x, C, v: real): real; x: array of real; C: real; v: real; n: integer): real;
begin
  var h := (x[1] - x[0]) / n;
  result := 0.0;
  for var i := 0 to n-1 do
    result += f(x[0] + h * (i + 0.5), C, v);
  result *= h
end;

begin
  var x := Arr(400.0, 500.0);
  var int := RectMethod(f, x, 35.0, 3, 10);
  int.Println
end.