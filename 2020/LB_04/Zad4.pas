program zad4;
const
  a = 7.7;
  c = 9.5;
var
  i: integer;
  b: array of real;
  s, bmax: real;
begin
  SetLength(b, 7);
  bmax:= b[1];
  s:= 0;
  for i:= 0 to 6 do
    begin
      b[i]:= random(14) - 3;
      writeln('b[', i, ']= ', b[i]);
      if bmax < b[i] then bmax:= b[i];
      if b[i] > 0 then s:= s + b[i];
    end;
  writeln('Максимальный элемент = ', bmax);
  writeln('Сумма элементов массива = ', s);
  for i:= 0 to 6 do
    begin
      if bmax > c then
        b[i]:= b[i] / a
      else
        b[i]:= b[i] * s;
      writeln('b[', i, ']= ', b[i]);
    end;
end.