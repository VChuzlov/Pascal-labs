function SumOfAverage(a: array [,] of integer): real;
begin
  result := 0.0;
  for var i := 0 to a.RowCount-1 do
    result += a.Row(i).Average
end;

function get_z(x: array of integer; sa: real; b: real): array of real;
begin
  result := ArrFill(x.Length, 0.0);
  var s := 0.0;
  for var i := 0 to x.High do
    s += x[i] + b;
  for var i := 0 to x.High do
    result[i] := sqrt(x[i]) / b + sa * sqrt(s)
end;

begin
  var x := Arr(10, 20, 30, 40, 50);
  var b := 0.294;
  var f := OpenWrite('reesult.txt');
  var a := MatrRandom(3, 4, 1, 9);
  
  for var i := 0 to a.RowCount-1 do
  begin
    for var j := 0 to a.ColCount-1 do
      Write(f, a[i, j]:4);
    WriteLn(f)
  end;
  
  var sa := SumOfAverage(a);
  f.Writeln(sa);
  var z := get_z(x, sa, b);
  for var i := 0 to z.High do
    f.Writeln(z[i], ' ');
  f.Close
end.