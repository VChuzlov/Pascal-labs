function get_b(a: array[,] of real): array [,] of real;
begin
  SetLength(result, a.RowCount, a.ColCount);
  for var i := 0 to a.RowCount-1 do
    for var j := 0 to a.ColCount-1 do
      result[i, j] := sqr(a[i, j])  
end;

function average(a: array [,] of real): real;
begin
  result := 0.0;
  for var i := 0 to a.RowCount-1 do
    result += a.Row(i).Sum;
  result /= a.RowCount * a.ColCount
end;


begin
  var f := OpenRead('input.txt');
  var f1 := OpenWrite('result.txt');
  
  var c := new real[5, 3];
  for var i := 0 to c.RowCount-1 do
  begin
    for var j := 0 to c.ColCount-1 do
      Read(f, c[i, j]);
    ReadLn(f)
  end;    
  
  var b := get_b(c);
  for var i := 0 to b.RowCount-1 do
  begin
    for var j := 0 to b.ColCount-1 do
      Write(f1, b[i, j]:7:2);
    WriteLn(f1);
  end;
  Writeln(f1, average(b));
  f.Close;
  f1.Close
end.