uses crt;
var
i:byte;
a:integer;
begin
a:=0;
clrscr;
repeat
a:=a+1;
for i:=1 to 199do
write(#178);
gotoxy(a,a);
writeln(#25);
until a=1500;
readln;
end.