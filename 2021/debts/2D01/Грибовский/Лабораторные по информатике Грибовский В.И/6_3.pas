function f1(x : real) : real;
begin
  result := 2 * x ** (3/2) + 1/ tan (x + 2);
end;  

function f2 (x: real) : real;
begin
  result := 3 * x ** (7/9) + 1/ tan (x + 3);
end;

function f3 (x: real; z: real; a: real) : real;
begin
  result := (1/ tan (x) - 1/ tan (z)) / (1/ tan (a) + 1 / tan (x)) - 1/ tan (z);
end;

begin
var x := 2;
var z := f1(x);
var a := f2(x);
var y := f3(x, z, a);
writeln (y:0:1)
end.