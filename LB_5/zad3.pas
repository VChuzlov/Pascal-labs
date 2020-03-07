program zad3;
var
  a: array [1..4, 1..4] of real;
  sr: real;
  i, j, n: integer;
  f: text;
begin
  assign(f, 'zad3.txt');
  rewrite(f);
  for i:= 1 to 4 do
    begin
      for j:= 1 to 4 do
        begin
          a[i, j]:= random(10) - 3;
          write(f, a[i, j]:5);
        end;
      writeln(f)
    end;
  for i:= 1 to 4 do
    begin
      n:= 0;
      sr:= 0;
      for j:= 1 to 4 do
        if a[j, i] > 0 then
          begin
            n:= n + 1;
            sr:= sr + a[j, i];
          end;
      writeln(f, 'С/А столбца ', i, (sr / n):5:2);
    end;
  close(f)
end.