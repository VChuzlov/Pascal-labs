program LB05;
var
  i, j: integer;
  a: array [1..5, 1..7] of real;
  f: text;
begin
  assign(f, 'data.txt');
  reset(f);
  for i:= 1 to 5 do
    begin
      for j:= 1 to 7 do 
        read(f, a[i, j]);
      readln(f);
    end;
  for i:= 1 to 5 do 
    begin
      for j:= 1 to 7 do
        write(a [i, j]:5:1);
      writeln
    end;
  close(f)
end.