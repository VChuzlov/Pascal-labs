﻿function equation(x: real): real;
begin
 result := ln(x) + x
end;
function equation1(x: real): real;
begin
 result := (1 + x)/x
end;
function equation2(x: real): real;
begin
 result := - 1 / x ** 2
end;
function Newton(f, f1, f2: function(x: real): real; a, b, eps: real): real;
begin
 var x: real;
 if f(a) * f2(a) > 0 then result := a
 else
  if f(b) * f2(b) > 0 then result := b
  else
  begin
   Print('Newton Method, Not Solved!');
   exit
  end;
 repeat
  x := result - f(result) / f1(result);
  result := x - f(x) / f1(x);
 until abs(result - x) < eps
end;
begin
 Newton(equation, equation1, equation2, 0.5, 1.5,0.2 * 1e-4).Print
end.