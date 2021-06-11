function f1 (A : array of array of real) : real;
begin
for var j := 0 to A.High do
  begin
    result += A.Col(j).Average
  end;
end;

function f2(X : array of integer; b, SA : real) : array of real;
begin
var Z := new real[5];
var Xs : real;
  for var i := 0 to X.high do
  begin
    Xs += X[i] + b
  end;
  for var i := 0 to X.High do
  begin
    Z[i] := (X[i].sqrt / b) + SA * Xs.sqrt
  end;
  result := Z
end;

begin
  var A := matrrandom (3, 4, 1, 9);
  var X : array of integer := (10, 20, 30, 40, 50);
  var b := 0.294;  
end.