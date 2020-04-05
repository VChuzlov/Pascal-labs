program ex_3;

type
  matrix = array of array of real;
  arr = array of real;

const
  x: arr = (10, 20, 30, 40, 50);
  b = 0.294;
  
  var
    i, j: integer;
    a: matrix;
    z: arr;
    sum: real;
  
  function get_SA(a: matrix): real;
  var
    i, j: integer;
    av: real;
  begin
    result := 0;
    for j := 0 to High(a[0]) do
      begin
        av := 0;
        for i := 0 to High(a) do
          begin
            av := av + a[i, j]; 
          end;
        av := av / Length(a);
        result := result + av;
      end;
  end;
  
  begin
    SetLength(a, 3);
    for i := 0 to High(a) do
      SetLength(a[i], 5);
    for i := 0 to High(a) do
      begin
        for j := 0 to High(a[i]) do
          begin
            a[i, j] := random(1, 9);
            write(a[i, j]:6)
          end;
        writeln
      end;
    
    SetLength(z, 5);
    
    sum := 0;
    
    for i := 0 to High(x) do
      sum := sum + x[i] + b;
    
    for i := 0 to High(x) do
      begin
        z[i] := sqrt(x[i]) / b + get_SA(a) * sqrt(sum);
        writeln('z[ ', i, ' ] = ', z[i]:8:4)
      end;
    
  end.
  