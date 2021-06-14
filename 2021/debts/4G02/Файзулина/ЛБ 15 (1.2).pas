function f(x: real): real;
begin
  result := x / sqrt(x ** 4 + 16)
end;

function TrapMethod(f: function(x: real): real; 
                    x: array of real; n: integer): real;
begin
  var h := (x[1] - x[0]) / n;
  result := 0.0;
  var x_ := new real[n+1];
  (x_[0], x_[^1]) := (x[0], x[1]);
  for var i := 1 to x_.High-1 do
    x_[i] := x_[i-1] + h;
  for var i := 0 to x_.High-1 do
    result += (f(x_[i]) + f(x_[i+1])) / 2;
  result *= h
end;

begin
  var x := Arr(0.0, sqrt(3));
  var int := TrapMethod(f, x, 10);
  int.Println
end.