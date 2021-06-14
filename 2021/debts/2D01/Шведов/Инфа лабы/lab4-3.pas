var B : array of integer := (2, 5, -6, 8, -3, 7, 12, -45, 106, 4);
var Kp := 0;
var Ko := 0;
var K : real;

begin

for var i := 0 to B.High do
begin
  if (B[i] < 0) then Ko += 1;
  if (B[i] > 0) then Kp += 1;
end;

K := (Ko+Kp)/Ko;
Print($'Количество положительных чисел:{Kp}'+char(10)+$'Количество отрицательных чисел:{Ko}'+char(10)+
      $'K = (Kо+Кп)/Ко = {K}');

end.