begin
  var a := new real [3,3];
  var f := OpenRead('test.txt'); // открытие файла "test.txt" для чтения
  
  for var i := 0 to a.RowCount-1 do
  begin
    for var j := 0 to a.ColCount-1 do
      a[i, j] := f.ReadReal;
    f.Readln;
  end;
  
  a.Println;
  f.Close;
  
  var f1 := OpenWrite('output.txt'); // Открытие файла "output.txt" для записи
  
  for var i := 0 to a.RowCount-1 do
  begin
    for var j := 0 to a.ColCount-1 do
      write(f1, a[i, j]:7:2);
    writeln(f1)
  end;
  f1.Close;
end.

Write(f, a, b); // запись в строчку
Writeln(f1, c, d); // запись в столбик 