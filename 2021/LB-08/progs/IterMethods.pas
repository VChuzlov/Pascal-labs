unit IterMethods;


interface


function HalfDivision(func: function(x: real): real; a, b, eps: real): real;
function Iterations(func: function(x: real): real; a, eps: real): real;
function Newton(f, f1, f2: function(x: real): real; a, b, eps: real): real;


implementation


function HalfDivision(func: function(x: real): real; a, b, eps: real): real;
begin
  if func(a) * func(b) > 0 then
  begin
    Println('HalfDivision, Not Solved!');
    exit
  end;
  
  result := (a + b) / 2;
  while (abs(a - b) >= eps) or (func(result) = 0) do
  begin
    if func(a) * func(result) < 0 then
      b := result
    else
      a := result;
    result := (a + b) / 2
  end;
end;


function Iterations(func: function(x: real): real; a, eps: real): real;
begin
  var x: real;
  result := func(a);
  
  repeat
    x := result;
    result := func(x)
  until abs(x - result) < eps;
end;


function Newton(f, f1, f2: function(x: real): real; a, b, eps: real): real;
begin
  var x: real;
  if f(a) * f2(a) > 0 then result := a
  else
    if f(b) * f2(b) > 0 then result := b
    else
    begin
      Println('Newton, Not Solved');
      exit
    end;
    
    repeat
      x := result - f(result) / f1(result);
      result := x - f(x) / f1(x)
    until abs(result - x) < eps
end;

end.