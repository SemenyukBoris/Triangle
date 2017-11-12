program triangle;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Math;

type data = record
  A : real;
  B : real;
  C : real;
  square : real;
end;

function check(a,b,c,half,P:real):boolean;
begin
  if (a < half) then
    begin
      if (b < half) then
        begin
          if (c < half) then
            begin
              if ((a+b+c) = P) then
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

var i,j,curr,a,b,c,perim:integer;
    sq,half,tmp1,tmp2:real;
    arr:array of data;
    flag:boolean;

begin
  write('Add perimetr of triangle = ');
  readln(perim);
  half := perim/2;

  writeln('Perimetr = ', perim);
  writeln('HalfPeri = ', half:0:2);

  a := 1;
  b := 0;
  c := perim - b - a;
  curr := 0;
  flag := false;
  while (true) do
    begin
      if (a > half) then break;
      while(true) do
        begin
          b := b + 1;
          c := c - 1;
          flag := check(a,b,c,half,perim);
          if flag = true then
            begin
             sq := sqrt(half*(half - a)*(half - b)*(half - c));
             //writeln('A = ',a,' | B = ',b,' | C = ',c, '| S = ',sq:0:5);
             Setlength(arr, curr+1);
             arr[curr].A := a;
             arr[curr].B := b;
             arr[curr].C := c;
             arr[curr].square := sq;
             inc(curr)
            end;
          if c <= b then
            begin
              a := a + 1;
              b := 0;
              c := perim - b - a;
            end;
          if (a > half) then break;
        end;
      if (a > half) then break;
    end;

    writeln('Count of variants = ', length(arr));
    writeln;

    for I := 0 to High(arr) do
      begin
        writeln('A = ',arr[i].A:0:2,' | B = ',arr[i].B:0:2,' | C = ',arr[i].C:0:2, '| S = ',arr[i].square:0:5);
      end;

  readln;
end.
