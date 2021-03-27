function MaxVsInd(a: array of real): array of real;
begin
  result := Arr(real(a.IndexMax), a.Max) 
end;

function AboveOne(a: array of real): integer;
begin
  result := 0;
  for var i := 0 to a.High do
    if a[i] > 1 then
      result += 1
end;

function SumEven(a: array of real): real;
begin
  result := 0.0;
  for var i := 0 to a.High do
    if i.IsEven then
      result += a[i]
end;

begin
  var n := 10;
  var a := new real[10];
  for var i := 0 to a.High do
    a[i] := arctan(2 * (i + 1) + (i + 1) / n) - sin(i + 1 + n);
  
  var f := OpenWrite('result.txt');
  
  for var i := 0 to a.High do
    f.Write(Round(a[i], 4), ' ');
 
  f.Writeln;
  Writeln(f, MaxVsInd(a)[0]:4, MaxVsInd(a)[1]:10:4);
  f.Writeln(AboveOne(a));
  f.Writeln(SumEven(a));
  f.Close
end.