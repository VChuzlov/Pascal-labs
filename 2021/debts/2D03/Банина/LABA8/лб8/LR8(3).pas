﻿function equation(x: real): real;
begin
  result := 2 * x - exp(-0.1*x)
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
 HalfDivision (equation, 0.2, 1.5, 0.5*1e-4).Print
end.
