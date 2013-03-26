uses crt;
var
i:byte;
a:integer;
begin
clrscr;
for i:=1 to 10 do
begin
writeln('Bir Say Giriniz   : ');
readln(a);
if a<0 then continue;
writeln(a:40);
end;
readln;
end.