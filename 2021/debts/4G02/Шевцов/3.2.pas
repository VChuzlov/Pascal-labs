﻿begin
  var p, f1, f2, t: real;
  t := 5;
  while t <= 50 do
  begin
    if t <= 11.4
      then f1 := ((68.74 + 273) ** 2 + 1.08 * 10 ** 3) ** (1 / 2) - 308.6
    else
    if (t <= 37.8) and (t > 11.4)
      then f1 := ((124.7 + 273) ** 2 + 1.08 * 10 ** 3) ** (1 / 2) - 308.6
    else
      f1 := ((134.7 + 273) ** 2 + 1.08 * 10 ** 3) ** (1 / 2) - 308.6;
    f2 := 1250 / (((t + 273) ** 2 + 1.08 * 10 ** 3) ** (1 / 2) - 307.6) - 1;
    p := exp(2.3 * (2.68 * (1 - f2 / f1) - 1));
    println(p);
    t := t + 5;
  end
end.