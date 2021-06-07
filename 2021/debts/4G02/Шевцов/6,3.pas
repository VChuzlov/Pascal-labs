function c(x: real): real;
begin
  result := 1 / tan(x);
end;

function z(x: real): real;
begin
  result := 2 * x ** (3 / 2) + c(x + 2);
end;

function a(x: real): real;
begin
  result := 3 * x ** (7 / 9) + c(x + 3);
end;

function y(x: real): real;
begin
  result := (c(x) - c(z(x))) / (c(a(x)) + c(x)) - c(z(x));
end;

begin
  var x: real;
  x := 2;
  println(y(x));
end.
