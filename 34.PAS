uses crt;
var
a:byte;
procedure hesapla (var s:byte);
begin
s:=s+1;
end;
begin
clrscr;
a:=0;
repeat
hesapla(a);
writeln(a);
until a=20;
readln;
end.