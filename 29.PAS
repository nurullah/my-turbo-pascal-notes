uses crt;
var
c:char;
begin
clrscr;
repeat
writeln('Adyaman');
if keypressed then
c:=readkey;
until c=#27;
end.