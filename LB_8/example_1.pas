program example_1;

type
  arr = array [1..5, 1..3] of real;
 
var
  i, j: integer;
  b, c: arr;
  average: real;
  f1, f2: text;
  
procedure get_average(c: arr; var b: arr; var average: real);
var
  i, j: integer;

begin
  average := 0;
  
  for i := 1 to 5 do
    for j := 1 to 3 do
      begin
        b[i, j] := sqr(c[i, j]);
        average := average + b[i, j]
      end;
  
  average := average / (i * j)
end;

begin
  assign(f1, 'data_1.txt');
  reset(f1);
  assign(f2, 'result_1.txt');
  rewrite(f2);
  
  for i := 1 to 5 do
    begin
      for j := 1 to 3 do
        read(f1, c[i, j]);
      readln(f1)
    end;
  
  get_average(c, b, average);
  
  for i := 1 to 5 do
    begin
      for j := 1 to 3 do
        write(f2, b[i, j]:8:2);
      writeln(f2)
    end;
  writeln(f2, 'Среднее арифметическое эл-ов массива b: ', average:4:2);
  close(f1);
  close(f2)
end.
