program lab_09_example_3;
const
  eps = 1e-4;
// исходная функция
function f(x: real): real;
begin
  result := exp(x) - 6 * x - 3
end;
// первая производная
function f1(x: real): real;
begin
  result := exp(x) - 6
end;
// вторая производная
function f2(x: real): real;
begin
  result := exp(x)
end;
// реализация метода Ньютона
function newton(a, b: real; eps: real): real;
var
  x: real;
begin
  if f(a) * f2(a) > 0 then
    result := a
  else
    if f(b) * f2(b) > 0 then
      result := b
    else
      begin
        writeln('Метод Ньютона, решений нет!');
        exit
      end;
  repeat
    x := result;
    result := x - f(x) / f1(x)
  until abs(result - x) <= eps;
end;
// основная программа
// вызов функции
begin
  writeln(newton(-3, 1, eps))
end.