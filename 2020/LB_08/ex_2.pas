program ex_2;
type
  matrix = array of array of real;
  arr = array of real;

const
  c: arr = (3.42, 11.2, 0.4, 6.23, 15.64);
  m = 2.6e-4;
  
  var
    i, j: integer;
    b: matrix;
    k: real;
    sum: real;
  
  function get_max_row_mul(a: matrix): real;
  var
    i, j: integer;
    p: real;
  begin
    for i := 0 to High(a) do
      begin
        p := 1;
        for j := 0 to High(a[i]) do
          p := p * a[i, j];
        if result < p then
          result := p;
      end;
  end;
  
  begin
    SetLength(b, 5);
    for i := 0 to High(b) do
      SetLength(b[i], 3);
    for i := 0 to High(b) do
      begin
        for j := 0 to High(b[i]) do
          begin
            b[i, j] := random(1, 100);
            write(b[i, j]:6)
          end;
        writeln
      end;
    sum := 0;
    for i := 0 to High(c) do
      sum := sum + ln(c[i]);
    k := sum + sqrt(get_max_row_mul(b)) / 2 * m;
    writeln(k);
  end.
  