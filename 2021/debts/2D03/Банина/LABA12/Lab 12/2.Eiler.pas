function eq(x: real; y: array of real): array of real;
begin
  result := ArrFill(y.Length, 0.0);
  result[0] := 3 * y[0] - y[1];
  result[1] := 4 * y[0] - y[1];
end;

function Eiler(f: function(x: real; y: array of real): array of real;
             x0, xf: real; y0: array of real;
             h: real): array of array of real;
begin
  var count := Trunc((xf - x0) / h) + 1;
  SetLength(result, count);
  for var i := 0 to result.High do
    SetLength(result[i], y0.Length);
  
  var x := x0;
  var r_p := ArrFill(y0.Length, 0.0);
  result[0] := y0;
  for var i := 1 to count - 1 do
  begin
    r_p := f(x, result[i - 1]);
    for var j := 0 to result[i].High do
      result[i][j] := result[i - 1][j] + h * r_p[j];
    x += h;
  end;
end;

function fa(x: real): array of real;
begin
  result := ArrFill(2, 0.0);
  result[0] := (5 + 2 * x) * exp(x);
  result[1] := (8 + 4 * x) * exp(x);
end;

begin
  var y0 := Arr(5.0, 8.0);
  var y := Eiler(eq, 0, 0.1, y0, 0.01);
  
  for var i := 0 to y.High do
  begin
    for var j := 0 to y[i].High do
      write(y[i][j]:8:4);
    writeln
  end;
  Println;
  
  var x := 0.0;
  for var i := 0 to y.High do
  begin
    var ya := fa(x);
    for var j := 0 to y[i].High do
      write(abs((y[i][j] - ya[j]) / ya[j]) * 100:8:4);
    writeln;
    x += 0.01;
  end;
end.