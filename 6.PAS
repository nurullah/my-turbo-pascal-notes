uses crt;
var
a:byte;
begin
clrscr;
writeln('��rencinin Notunu Giriniz !');
readln(a);
case a of
1..44:writeln('��rencinin Puan�:1');
45..54:writeln('��rencinin Puan�:2');
55..69:writeln('��rencinin Puan�:3');
70..84:writeln('��rencinin Puan�:4');
85..100:writeln('��rencinin Puan�:5');
else
writeln('-Tu�: Git Bak Ben Ordam�y�m');
end;
readln;
end.