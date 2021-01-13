program lb_7_ex_1;
var
  x, y: real;

function pow(x: real;  n: real): real;
begin
  result := exp(ln(x) * n)
end;

procedure p (x: real; var y: real);
begin
  y := pow(x, 6) * pow(x - 5, 3) / pow(2 * x + 1, 5)
end;

begin
  p(10, y);
  writeln(y)  
end.