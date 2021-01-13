program lab_10_example;
const
  n = 6;
type
  arr = array of real;
var
  f: text;
  i: integer;
  x, y: arr;
  a0, a1: real;
  
procedure line_fitting(x, y: arr; var a0, a1: real);
var
  i: integer;
  s1, s2, s3, s4: real;
  len: integer;
begin
  s1 := 0;
  s2 := 0;
  s3 := 0;
  s4 := 0;
  len := Length(x);
  for i := 0 to High(x) do
    begin
      s1 := s1 + x[i];
      s2 := s2 + y[i];
      s3 := s3 + sqr(x[i]);
      s4 := s4 + x[i] * y[i]
    end;
  a0 := (s2 * s3 - s1 * s4) / (len * s3 - sqr(s1));
  a1 := (len * s4 - s1 * s2) / (len * s3 - sqr(s1))
end;

begin
  assign(f, 'data.txt');
  reset(f);
  SetLength(x, n);
  SetLength(y, n);
  for i := 0 to High(x) do
    readln(f, x[i], y[i]);
  line_fitting(x, y, a0, a1);
  for i := 0 to High(x) do
    writeln(x[i]:6, a0 + a1 * x[i]:8:4);
  close(f)
end.