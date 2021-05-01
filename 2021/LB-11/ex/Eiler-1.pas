function f(x, y: real): real;
begin
  result := -(2 * y + 1) * (1 / tan(x))
end;


function Eiler(f: function(x, y: real): real; 
               x0, xf, y0, h: real): array of real;
begin
  var count := Trunc((xf - x0) / h)+1;
  result := ArrFill(count, 0.0);
  
  result[0] := y0;
  var x := x0;
  for var i := 1 to count-1 do
  begin
    result[i] := result[i-1] + h * f(x, result[i-1]);
    x += h
  end;
end;


function fa(x: real): real;
begin
  result := 5 / (2 * sin(x) ** 2) - 1 / 2
end;


begin
  var y := Eiler(f, 1, 2, 3.0307, 0.1);
  y.PrintLines;
  println;
  
  var x := 1.0;
  for var i := 0 to y.High do
  begin
    println(abs(y[i] - fa(x)) / fa(x) * 100);
    x += 0.1
  end;
end.