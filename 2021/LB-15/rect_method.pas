function f(x: real): real;
begin
  result := 1 / (1 + x ** 2)  
end;


function RectMethod(f: function(x:real):real; x: array of real; n: integer): real;
begin
  var h := (x[1] - x[0]) / n;
  result := 0.0;
  for var i := 0 to n-1 do
    result += f(x[0] + h * (i + 0.5));
  result *= h
end;


begin
  var x := Arr(0.0, 1.0);
  var int := RectMethod(f, x, 10);
  int.Println;
end.