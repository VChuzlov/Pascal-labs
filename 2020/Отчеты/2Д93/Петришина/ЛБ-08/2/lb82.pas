program lb82;

const
  m = 2.6e-4;

type
  arr = array[1..5, 1..3] of integer;

var
  i, j: integer;
  pn, p, s, k: real;
  c: array[1..5] of real = (3.42, 11.2, 0.4, 6.23, 15.64);
  
  b: arr;

procedure pr1(var b: arr); {Настоятельно рекомендую вставить в список формальных параметров переменную pn,
                            чтобы в момент вызова процедуры не происходило неявного изменения глобальной переменной pn.
                            }
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
    writeln('Произведение элементов ', i, ' строки = ', p)
  end;
  
  writeln('PN = ', pn)
  
end;

begin
  
  for i := 1 to 5 do
  begin
    for j := 1 to 3 do
    begin
      b[i, j] := random(1, 100);
    end;
    writeln(b[i]);
  end;
  
  pr1(b);
  
  for i := 1 to 5 do
    s := S+ ln(c[i]) + (sqrt(PN) / 2) * m; {Там же по формуле сумма только для ln(c[i]).
                                            Все остальное прибавляется уже к значению этой суммы.
                                            }
  for i:= 1 to 5 do
  begin
    k:= k + s;
  end;
    writeln('k= ', k:8:4);
end.