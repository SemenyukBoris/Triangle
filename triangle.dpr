program triangle;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Math;

const ACCURACY = 0.1;

type data = record
  A : double;
  B : double;
  C : double;
  square : double;
end;

type TArr = array of data;

function check(a,b,c,half,P:double):boolean;
begin
  if (SameValue(a, half, 1E-15 * 1000)) then
    begin
      result := false;
      exit;
    end;
  if (a < half) then
    begin
      if (SameValue(b, half, 1E-15 * 1000)) then
        begin
          result := false;
          exit;
        end;
      if (b < half) then
        begin
          if (SameValue(c, half, 1E-15 * 1000)) then
            begin
              result := false;
              exit;
            end;
          if (c < half) then
            begin
              if (SameValue((a+b+c), P, 1E-15 * 1000)) then
                begin
                  //writeln('Check - OK');
                  result := true;
                end
              else
                result := false;
            end
          else
            result := false;
        end
      else
        result := false;
    end
  else
    result := false;
end;

procedure sort(var arr:TArr; min,max:integer);
var i,j:integer;
    op:real;
    tmp:data;
begin
  op := arr[max-((max-min) div 2)].square;
  i := min;
  j := max;
  while i<j do
    begin
      while arr[i].square > op do i:=i+1;
      while arr[j].square < op do j:=j-1;
      if i<=j then
        begin
          tmp:=arr[i];
          arr[i]:=arr[j];
          arr[j]:=tmp;
          i:=i+1;
          j:=j-1;
        end;
    end;
  if min < j then sort(arr, min, j);
  if i < max then sort(arr, i, max);
end;

procedure remove_equal(var arr:TArr; var counter:integer);
var i:integer;
begin
  for I := 0 to High(arr)-1 do
    begin
      if (SameValue(arr[i].square, arr[i+1].square, 1E-15 * 1000)) then
        begin
          inc(counter);
          arr[i+1].A := 0.0;
          arr[i+1].B := 0.0;
          arr[i+1].C := 0.0;
          arr[i+1].square := 0.0;
        end;
    end;
end;

var i,j,k,curr,perim,counter:integer;
    sq,half,tmp1,a,b,c,tmp2:double;
    arr:TArr;
    flag:boolean;

begin
  write('Add perimetr of triangle = ');
  readln(perim);
  half := perim/2;

  writeln('Perimetr = ', perim);
  writeln('HalfPeri = ', half:0:2);

  a := ACCURACY;
  b := 0;
  c := perim - b - a;
  curr := 0;
  flag := false;
  counter := 0;
  while (true) do
    begin
      if (a > half) then break;
      while(true) do
        begin
          b := b + ACCURACY;
          c := c - ACCURACY;
          flag := check(a,b,c,half,perim);
          if flag = true then
            begin
             sq := sqrt(half*(half - a)*(half - b)*(half - c));
             Setlength(arr, curr+1);
             arr[curr].A := a;
             arr[curr].B := b;
             arr[curr].C := c;
             arr[curr].square := sq;
             inc(curr)
            end;
          if c <= b then
            begin
              a := a + ACCURACY;
              b := 0;
              c := perim - b - a;
            end;
          if (a > half) then break;
        end;
      if (a > half) then break;
    end;

    sort(arr, low(arr), high(arr));

    for K := 1 to 3 do
      begin
        counter := 0;
        remove_equal(arr,counter);
        sort(arr, low(arr), high(arr));
        Setlength(arr, length(arr)-counter);
      end;

    writeln('Count of variants = ', length(arr));
    writeln;

    for J := Low(arr) to High(arr) do
      begin
        writeln('A = ',arr[j].A:0:2,' | B = ',arr[j].B:0:2,' | C = ',arr[j].C:0:2, '| S = ',arr[j].square:0:5);
      end;

  readln;
end.
