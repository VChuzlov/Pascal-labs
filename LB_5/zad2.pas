program zad2;
var
  a: array [1..3, 1..3] of real;
  i, j: integer;
  s: real;
  f: text;
begin
  s:= 0;
  assign(f, 'zad2.txt');
  rewrite(f);
  for i:= 1 to 3 do
    begin
      for j:= 1 to 3 do
        begin
          a[i, j]:= random(11);
          write(f, a[i, j]:4);
        end;
      writeln(f);
    end;
  for i:= 1 to 3 do
    s:= s + a[1, i] + a [3, i];
  writeln(f, 'Сумма элементов ', s);
  close(f)
end.