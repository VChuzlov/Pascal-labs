program lb_7_ex_2;
var
  x, y, a, z: real;

function pow(x: real; n: real): real;
begin
  result := exp(ln(x) * n)
end;

function ctg(x: real): real;
begin
  result := 1 / tan(x)
end;

procedure get_y(x: real; var y: real);
var
  a, z: real;
begin
  z := 2 * pow(x, 3 / 2) + ctg(x + 2);
  a := 3 * pow(x, 7 / 9) + ctg(x + 3);
  y := (ctg(x) - ctg(z)) / (ctg(a) + ctg(x)) - ctg(z)
end;

begin
  get_y(2, y);
  writeln(y)
end.