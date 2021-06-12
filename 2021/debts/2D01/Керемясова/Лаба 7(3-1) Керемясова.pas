begin
  var f := openwrite('result3.txt');
  var A := matrrandom(3, 4, 1, 9);
  writeln(f, A);
  var X: array of integer := (10, 20, 30, 40, 50);
  var b := 0.294;
  var SA: real;
  for var j := 0 to A.High do
  begin
    SA += A.Col(j).Average
  end;
  Writeln(f, SA);
  var Z := new real[5];
  var Xs: real;
  for var i := 0 to X.high do
  begin
    Xs += X[i] + b
  end;
  for var i := 0 to X.High do
  begin
    Z[i] := (X[i].sqrt / b) + SA * Xs.sqrt
  end;
  Writeln(f, Z);
  f.close
end.