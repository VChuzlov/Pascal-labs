function equations(time: real; c,
                   k: array of real): array of real;
begin
  result := ArrFill(c.length, 0.0);
  result[0] := -k[0] * c[0] * c[1]**2 + k[1] * c[2]**3;
  result[1] := 2 * (-k[0] * c[0] * c[1]**2 + k[1] * c[2]**3);
  result[2] := 3 * (-k[1] * c[2]**3 + k[0] * c[0] * c[1]**2)
end;

function RK(f: function(time: real; c,
                           k: array of real): array of real;
               time, c0, k: array of real;
               h: real): array of array of real;
   function sum(a: real;  
                arr1, arr2: array of real): array of real;
begin
   result := ArrFill(arr1.Length, 0.0);
   for var i := 0 to result.High do
     result[i] += arr1[i] + a * arr2[i]
end;
begin
  var count := Trunc((time[1] - time[0]) / h) + 1;
  SetLength(result, count);
  for var i := 0 to result.High do
    SetLength(result[i], c0.Length);
  
  var t := time[0];
  var k1, k2, k3, k4: array of real;
  result[0] := c0;
  for var i := 1 to count - 1 do
  begin
    k1 := f(t, result[i-1], k);
    k2 := f(t + h / 2,
            sum(h / 2, result[i-1], k1), k);
    k3 := f(t + h / 2,
            sum(h / 2, result[i-1], k2), k);
    k4 := f(t + h, sum(h, result[i-1], k3), k);
    
    for var j := 0 to result[i].High do
      result[i][j] := result[i - 1][j] + h / 6 *
         (k1[j] + 2 * k2[j] + 2 * k3[j] + k4[j]);
    t += h
  end;
end;

begin
  var time := Arr(0.0, 1.0);
  var c0 := Arr(0.64, 0.8, 0.5);
  var k := Arr(0.45, 0.15);
  var c := RK(equations, time, c0, k, 0.1);
  for var i := 0 to c.High do
  begin
    for var j := 0 to c[i].High do
      write(c[i][j]:8:4);
    writeln
  end;
end.             
