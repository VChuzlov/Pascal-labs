function equation(x: real): real;
begin
  result := x**4 + 3*x - 20 
end;

function HalfDivision (f: function (x:real) : real;
                       a, b, eps: real): real;
begin
  if f(a) * f(b) > 0 then
  begin
    Println('Half Division Method, Not solved!');
    exit
  end;
  
  result := (a+b) / 2;
  while abs(a - b) >= eps do
  begin
    if f(a) * f(result) > 0 then
      a := result
    else 
      b := result;
    result := (a + b) / 2
  end;
end;

begin
 HalfDivision (equation, 1, 2, 1e-2).Print
end.
