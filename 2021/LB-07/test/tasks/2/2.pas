function MaxRowProduct(a: array [,] of integer): integer;
begin
  result := a.Row(0).Product;
  for var i := 1 to a.RowCount-1 do
  begin
    var p := a.Row(i).Product;
    if result < p then
      result := p
  end;
end;


function get_k(c: array of real; m: real; pn: integer): real;
begin
  result := c.Sum + sqrt(pn) / 2 * m
end;

begin
  var b := MatrRandom(5, 3, 1, 100);
  var f := OpenWrite('result.txt');
  
  for var i := 0 to b.RowCount-1 do
  begin
    for  var j := 0 to b.ColCount-1 do
      Write(f, b[i, j]:4);
    Writeln(f)
  end;
  
  var c := Arr(3.42, 11.2, 0.4, 6.23, 15.64);
  var m := 2.6e-4;
  f.Writeln(MaxRowProduct(b));
  f.Writeln(get_k(c, m, MaxRowProduct(b)));
  f.Close
end.