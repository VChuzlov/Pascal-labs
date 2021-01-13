program zad3;
var
  a: array [1..4, 1..4] of real;
  i, j: integer;
  max, min: real;
  f:text;
begin
  assign(f, 'zad3.txt');
  rewrite(f);
  for i:= 1 to 4 do
    begin
      for j:= 1 to 4 do
        begin
          a[i, j]:= random(101);
          write(f, a[i, j]:5);
        end;
      writeln(f);
    end;
  min:= 100;
  for i:= 1 to 4 do
    begin
      max:= a[i, 1];
      for j:= 1 to 4 do
        begin
          if max < a[i, j] then
            max:= a[i, j];
        end;
      if min > max then
        min:= max;
      writeln(f, 'Максимальный элемент строки ', i, max:5);
    end;
  writeln(f, 'Минимальный из максимальных ', min:5);
  close(f);
end.