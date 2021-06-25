function f(x,C,v: real): real;
begin
  result := v * C / x
end;

function Simpson(f: function(x, C, v: real): real; x: array of real; C: real; v: real; n: integer): real;
begin
  var h := (x[1] - x[0]) / n;
  var (s1, s2) := (0.0, 0.0);
  
  for var i := 1 to n-1 do
    if i mod 2 = 0 then
      s1 += f(x[0] + i * h, C, v)
    else
      s2 += f(x[0] + i * h, C, v);

result := h / 3 * (f(x[0], C, v) + 2 * s1 + 4 * s2 + f(x[1],C , v))
end;

begin
  var x := Arr(400.0, 500.0);
  var int := Simpson(f, x, 35.0, 3, 10);
  int.Println
end.