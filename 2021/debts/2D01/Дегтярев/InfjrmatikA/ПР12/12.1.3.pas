﻿function equations(x: real; y: array of real): array of real;
begin
  result := ArrFill(y.Length, 0.0);
  result[0] := 2 * y[0] - 5 * y[1] + 3;
  result[1] := 5 * y[0] - 6 * y[1] +1
end;

function Eiler(f: function(x: real; y: array of real): array of real; x0, xf: real; y0: array of real; h: real): array of array of real;
begin
  var count := Trunc((xf - x0) / h) + 1;
  SetLength(result, count);
  for var i := 0 to result.High do
    SetLength(result[i], y0.Length);
  
  var x := x0;
  var right_parts := ArrFill(y0.Length, 0.0);
  result[0] := y0;
  for var i := 1 to count-1 do
  begin
    right_parts := f(x, result[i-1]);
    for var j := 0 to result[i].High do
      result[i][j] := result[i-1][j] + h * right_parts[j];
    x += h
  end
end;

function fa(x : real): array of real;
begin
  result := ArrFill(2, 0.0);
  result[0] := 5 * exp(-2 * x) * cos(3 * x) + 1;
  result[1] := exp(-2 * x) * (4 * cos(3 * x) + 3 * sin(3 * x)) + 1
end;



begin
  var y0 := Arr(1.0879, 1.0550);
  var y := Eiler(equations, 2, 3, y0, 0.1);
  
  for var i := 0 to y.High do
  begin
    for var j := 0 to y[i].High do
      write(y[i][j]:8:4);
    writeln
  end;
println;

var x := 2.0;
for var i := 0 to y.High do
begin
  write((5 * exp(-2 * x) * cos(3 * x) + 1):8:4,(exp(-2 * x) * (4 * cos(3 * x) + 3 * sin(3 * x)) + 1):8:4);
  writeln;
  x += 0.1
end;
println;

x := 2.0;
for var i := 0 to y.High do
begin
  var ya := fa(x);
  for var j := 0 to y[i].High do
    write(abs((y[i][j] - ya[j]) / ya[j]) * 100:8:4);
  writeln;
  x += 0.1
end  
end.