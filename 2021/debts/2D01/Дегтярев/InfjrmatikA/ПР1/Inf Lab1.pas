var x:integer;
begin
  write('x=');
  readln(x);
  var y := ((x + 2) ** (4) + sin(x)) ** (1/5) +  sqrt((log10(x + x ** (2) /2))) + 5.8e-7 * x;
    writeln(y);     
  y := sqrt(x ** (2) + sin(1 / (4 * x))) / (ln(3 * x) + x) + 4e-5;
    writeln(y); 
  y := 7.2e-4 * sqrt(abs(1 - sqr(sin(x)))) / exp(-4 / x);
    writeln(y); 
  y := (1 - 2 * x * sin(x)) / ln(5 / x) + exp(x ** 2);
    writeln(y); 
  y := sin(x ** 2) / (exp(x / 2) * ln(x + 1)) + 2.3e-7;
    writeln(y);
  y := (x / (sin(x) + 1)) / ((exp(x ** 2) + ln(x)) / sqrt(x ** 2 + 3.7e-5 * x));
    writeln(y);
  y := (4.9e-2 + ln(x ** 2 / 2)) / (arctan(x ** 2 + 2 * x));
    writeln(y);
end.