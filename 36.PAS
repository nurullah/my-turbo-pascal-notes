uses crt;
var
s,k:integer;
function kare(a:integer):integer;
begin
kare:=a*a;
end;
begin
clrscr;
writeln('Karesini Almak ˜‡in Say Giriniz :');
readln(s);
k:=kare(s);
writeln('Girdi§iniz Saynn Karesi  :', k);
readln;
end.