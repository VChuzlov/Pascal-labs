function equation(x: real): real;
begin
  result := exp(x) + x - 2
end;

function equation1(x: real): real;
begin
  result := exp(x) + 1
end;

function equation2(x: real): real;
begin
  result := exp(x)
end;

function Newton(f, f1, f2: function(x:real): real; a, b, eps: real): real;
begin
  var x:real;
  if f(a) * f2(a) > 0 then result := a
  else
    if f(b) * f2(b) > 0 then result := b
    else
      begin
        Print('Newton Method, Not Solved');
        exit
      end;
      
    repeat
      x := result - f(result) / f1(result);
      result := x - f(x) / f1(x);
    until abs(result - x) < eps
end;

Begin
 Newton(equation, equation1, equation2, 0, 1, 1e-3).Print
end.