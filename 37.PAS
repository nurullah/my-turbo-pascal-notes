uses crt;
var
s,i,f:integer;
function fak(a:integer):integer;
begin
f:=1;
for i:=1 to a do
f:=f*i;
fak:=f;
end;
begin
clrscr;
writeln('Fakt”riyeli Alnacak Sayy Giriniz  :');
readln(s);
writeln(s , '! = ' , fak(s) , ' dir');
readln;
end.