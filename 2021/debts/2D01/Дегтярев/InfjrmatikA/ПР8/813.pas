function equation(x: real): real;
begin
  result := ln(x) + x
end;

function halfDivision(f: function(x:real): real; a, b, eps: real): real;
begin

if f(a) * f(b) > 0 then
  begin
    Println('Half Division Method, Not solved');
    exit
  end;
   
result := (a + b) / 2;
while abs(a - b) >= eps do
  begin
    if f(a) * f(result) > 0 then
      a := result
    else
      b := result;
    result := (a + b) / 2
  end;  
end;

Begin
  halfDivision(equation, 0.5, 1.5, 2e-5).Print
end.