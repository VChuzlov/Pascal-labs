const
  m = 2.6e-4;

type
  arr = array[1..5, 1..3] of integer;

var
  i, j: integer;
  pn, p, s, k: real;
  c: array[1..5] of real = (3.42, 11.2, 0.4, 6.23, 15.64);
  
  b: arr;

procedure pr1(var b: arr; var pn: real);
var
  i, j: integer;
  p: real;
begin
  for i := 1 to 5 do
  begin
    p := 1; 
    for j := 1 to 3 do
    begin
      p := p * b[i, j];
    end;
    if (p > PN) then
    begin
      PN := p;
    end;
    //writeln('Произведение элементов ', i, ' строки = ', p) 
    (* 
    По заданию не требовалось выводить произведение элементов каждой строки,
    найти нужно только pn.Опять же, если очень хочется вывести произведение элементов
    каждой строки, то можно сделать их массивом и добавить к выходным параметрам процедуры.
    *)                                      
  end;
  //writeln('PN = ', pn)
end;

begin
  
  for i := 1 to 5 do
  begin
    for j := 1 to 3 do
    begin
      b[i, j] := random(1, 100);
      // end;
      write(b[i, j]:4); // Chuzlov
    end;
    writeln // Chuzlov
  end;
  
  pr1(b, pn);
  writeln('pn = ', pn); // Chuzlov
  for i := 1 to 5 do
    s := s + ln(c[i]);
  for i := 1 to 5 do
  begin
    k := s + (sqrt(PN) / 2) * m;;
  end;
  writeln('k = ', k:8:4);
end.