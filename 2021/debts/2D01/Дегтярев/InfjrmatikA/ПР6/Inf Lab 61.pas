function f(x:integer):real;
begin
  Result := (x ** 6 * (x - 5) ** 3) / (2 * x + 1) ** 5
end;


begin 
  var x:=10;
  print(f(x));
end.