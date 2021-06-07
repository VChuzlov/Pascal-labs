function a(i: real): real;
begin
  result := i * i + cos(-i + (2 * i + 3) ** (1 / 3));
end;

function f(i: real): real;
begin
  if a(i) < 5
    then
    result := 1 / a(i)
  else if a(i) > 35
    then
    result := 25 ** (1 / sqrt(a(i)))
  else
    result := 1 + 2 * a(i) ** (-3);
end;

function z(i: real): real;
begin
  result := (int(f(a(i)))) ** 2 / sin(a(i)) + 1 / a(i);
end;

begin
  var i: real;
  var j: integer;
  i := 1;
  for j := 1 to 10 do
  begin
    print(z(i));
    i := i + 1;
  end;
end.
