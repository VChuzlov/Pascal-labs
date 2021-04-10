uses IterMethods;

function f1(x:real): real;
begin
  result := x ** 4 + 3 * x - 20  
end;

function f1_(x:real): real;
begin
  result := 4 * x ** 3 + 3
end;

function f1__(x:real): real;
begin
  result := 12 * x ** 2
end;

function g1(x: real): real;
begin
  result := (20 - 3 * x) ** (1 / 4)
end;

function f2(x:real): real;
begin
  result := exp(x) + x - 2  
end;

function f2_(x:real): real;
begin
  result := exp(x) + 1
end;

function f2__(x:real): real;
begin
  result := exp(x)
end;

function g2(x: real): real;
begin
  result := ln(2 - x)
end;

function f3(x:real): real;
begin
  result := ln(x) + x  
end;

function f3_(x:real): real;
begin
  result := 1 / x + 1
end;

function f3__(x:real): real;
begin
  result := -1 * 1 / x ** 2
end;

function g3(x: real): real;
begin
  result := exp(-x)
end;

function f4(x:real): real;
begin
  result := 2 * x - exp(-0.1 * x)  
end;

function f4_(x:real): real;
begin
  result := 2 - exp(-0.1 * x) * (-0.1)
end;

function f4__(x:real): real;
begin
  result := -exp(-0.1 * x) * (-0.1) ** 2
end;

function g4(x: real): real;
begin
  result := exp(-0.1 * x) / 2
end;


begin
  println('1. Half Division:', HalfDivision(f1, 1, 2, 1e-2), 
          'Iterations:', Iterations(g1, 1, 1e-2), 
          'Newton:', Newton(f1, f1_, f1__, 1, 2, 1e-2));
 
  println('2. Half Division:', HalfDivision(f2, 0, 1, 1e-3),
          'Iterations:', Iterations(g2, 0, 1e-3), 
          'Newton:', Newton(f2, f2_, f2__, 0, 1, 1e-3));
          
  println('3. Half Division:', HalfDivision(f3, 0.5, 1.5, 0.2e-4),
          'Iterations:', Iterations(g3, 0.5, 0.2e-4), 
          'Newton:', Newton(f3, f3_, f3__, 0.5, 1.5, 0.2e-4));

  println('4. Half Division:', HalfDivision(f4, 0.2, 1.5, 0.5e-4),
          'Iterations:', Iterations(g4, 0.2, 0.5e-4), 
          'Newton:', Newton(f4, f4_, f4__, 0.2, 1.5, 0.5e-4));
end.