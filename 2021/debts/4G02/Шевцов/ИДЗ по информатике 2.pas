function equations(time: real; c,
                   k: array of real): array of real;
begin
  result := arrfill(c.length, 0.0);
  result[0] := -k[0] * c[0] * c[1] ** 2 + k[1] * c[2] ** 3;
  result[1] := 3 * (-k[0] * c[0] * c[1] ** 2 + k[1] * c[2] ** 3);
  result[2] := (-k[1] * c[2] ** 3 + k[0] * c[0] * c[1] ** 2);
end;

function RK(f: function(time: real; c,
                        k: array of real): array of real;
            time, c0, k: array of real;
            h: real): array of array of real;
  
  function sum(a: real;
               arr1, arr2: array of real): array of real;
  begin
    result := arrfill(arr1.length, 0.0);
    for var i := 0 to result.high do
      result[i] += arr1[i] + a * arr2[i]
  end;

begin
  var count := trunc((time[1] - time[0]) / h) + 1;
  setlength(result, count);
  for var i := 0 to result.high do
    setlength(result[i], c0.length);
  var t := time[0];
  var k1, k2, k3, k4: array of real;
  result[0] := c0;
  for var i := 1 to count - 1 do
  begin
    k1 := f(t, result[i - 1], k);
    k2 := f(t + h / 2,
          sum(h / 2, result[i - 1], k1), k);
    k3 := f(t + h / 2,
          sum(h / 2, result[i - 1], k2), k);
    k4 := f(t + h, sum(h, result[i - 1], k3), k);
    
    for var j := 0 to result[i].high do
      result[i][j] := result[i - 1][j] + h / 6 *
       (k1[j] + 2 * k2[j] + 2 * k3[j] + k4[j]);
    t += h
  end;
end;

begin
  var time := arr(0.0, 1.0);
  var c0 := arr(0.75, 1.2, 0.9);
  var k := arr(0.01, 0.98);
  var c := RK(equations, time, c0, k, 0.1);
  
  for var i := 0 to c.High do
  begin
    for var j := 0 to c[i].high do
      write(c[i][j]:8:4);
    writeln
  end;
end.