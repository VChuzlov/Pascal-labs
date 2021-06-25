function f(x,C,v: real): real;
begin
  result := v * C / x
end;

function TrapMethod(f: function(x, C, v: real): real; x: array of real; C: real; v: real; n: integer): real;
begin
  var h := (x[1] - x[0]) / n;
  result := 0.0;
  
  var x_ := new real[n+1];
  (x_[0], x_[^1]) := (x[0], x[1]);
  for var i := 1 to x_.High-1 do
    x_[i] := x_[i-1] + h;
  
  for var i := 0 to x_.High-1 do
    result += (f(x_[i], C, v) + f(x_[i+1], C, v)) / 2;
  result *= h
end;

begin
  var x := Arr(400.0, 500.0);
  var int := TrapMethod(f, x, 35.0, 3, 10);
  int.Println
end.