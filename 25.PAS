uses crt;
var
a:integer;
begin
clrscr;
a:=0;
repeat
a:=a+1;
gotoxy(a,a);
writeln('Nurullah Sevinátekin':a);
until a=25;
readln;
end.