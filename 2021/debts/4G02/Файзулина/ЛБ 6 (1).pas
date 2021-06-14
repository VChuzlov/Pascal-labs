function get_y(x: real): real;
begin
 Result := (x ** 6 * (x - 5) ** 3) / (2 * x + 1) ** 5
end;
begin
 var x := 10;
 get_y(x).Println;
end.