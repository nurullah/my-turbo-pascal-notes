uses crt;
var
a:byte;
begin
clrscr;
writeln('ôßrencinin Notunu Giriniz !');
readln(a);
case a of
1..44:writeln('ôßrencinin Puanç:1');
45..54:writeln('ôßrencinin Puanç:2');
55..69:writeln('ôßrencinin Puanç:3');
70..84:writeln('ôßrencinin Puanç:4');
85..100:writeln('ôßrencinin Puanç:5');
else
writeln('-Tuü: Git Bak Ben Ordamçyçm');
end;
readln;
end.