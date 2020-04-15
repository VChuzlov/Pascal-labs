program lab_09_example_2;
const
  eps = 1e-4;
// эквивалентная функция
function g(x: real): real;
begin
  result := (exp(x) - 3) / 6
end;
// реализация метода простых итераций
function iterations(a, b: real; eps: real): real;
var
  x: real;
begin
  result := a;
  repeat
    x := g(result);
    result := g(x)
  until abs(result - x) <= eps;
end;
// основная программа
// вызов функции
begin
  writeln(iterations(-3, 1, eps))
end.