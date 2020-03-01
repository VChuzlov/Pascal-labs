program z1;
var
  a: array of real;
  i, nmin, nmax: integer;
  amin, amax: real;
  s, p: real;
begin
  SetLength(a, 7);
  s:= 0;
  p:= 1;
  nmin:= 1;
  nmax:= 1;
  for i:= 0 to 6 do
    begin
      a[i]:= random(0, 10);
      writeln('a[', i, '] = ', a[i])
    end;
  amin:= a[0];
  amax:= a[0];
  for i:= 0 to 6 do
    begin
      if amin > a[i] then 
        begin
          amin:= a[i];
          nmin:= i;
        end;
      if amax < a[i] then 
        begin
          amax:= a[i];
          nmax:= i;
        end; 
        s:= s + a[i];
      if a [i] > 1 then 
        p:= p * a[i]
    end;
  writeln('Минимальный элемент массива a[', nmin, '] = ', amin);
  writeln('Максимальный элемент массива a[', nmax,'] = ', amax);
  writeln('Сумма элементов = ', s);
  writeln('Произведение элементов = ', p);
end.