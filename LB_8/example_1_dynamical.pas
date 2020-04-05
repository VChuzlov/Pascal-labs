program example_1_dynamical;

type
  arr = array of array of real;
 
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
  
  for i := 0 to High(c) do
    for j := 0 to High(c[i]) do
      begin
        b[i, j] := sqr(c[i, j]);
        average := average + b[i, j]
      end;
  
  average := average / (Length(b) * Length(b[i]))
end;

begin
  assign(f1, 'data_1.txt');
  reset(f1);
  assign(f2, 'result_1_dyn.txt');
  rewrite(f2);
  SetLength(c, 5);
  SetLength(b, 5);
  for i := 0 to 4 do
    begin
      SetLength(c[i], 3);
      SetLength(b[i], 3);
    end;
  for i := 0 to 4 do
    begin
      for j := 0 to 2 do
        read(f1, c[i, j]);
      readln(f1)
    end;
  
  get_average(c, b, average);
  
  for i := 0 to 4 do
    begin
      for j := 0 to 2 do
        write(f2, b[i, j]:8:2);
      writeln(f2)
    end;
  writeln(f2, 'Среднее арифметическое эл-ов массива b: ', average:4:2);
  close(f1);
  close(f2)
end.
