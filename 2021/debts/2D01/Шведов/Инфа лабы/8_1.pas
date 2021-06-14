function equation(x: real): real;
begin
  result := x ** 4 + 3 * x - 20
end;

function equation2(x:real): real;
begin
  result := Exp(x) + x - 2
end;


function equation3(x:real): real;
begin
  result := Ln(x) + x
end;


function equation4(x:real): real;
begin
  result := 2*x - Exp(-0.1 * x)
end;

function half(f: function(x: real): real; a, b, eps: real): real;
begin
  if f(a) * f(b) > 0 then
  begin
    Println('wrong way');
    exit
  end;
  result := (a + b) / 2;
  while abs(a - b) >= eps do
  begin
    if f(a) * f(b) > 0 then
      a := result
    else
      b := result;
    result := (a + b) / 2
  end;
end;


begin
  half(equation, 1, 2, 1e-2).println;
  half(equation2, 0, 1, 1e-3).Println;
  half(equation3, 0.5, 1.5, 0.2e-4).println;
  half(equation4, 0.2, 1.5, 0.5e-4).println;
end.