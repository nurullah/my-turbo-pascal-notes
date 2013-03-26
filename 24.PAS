uses crt; 
var 
a:byte; 
s,t:integer; 
begin 
clrscr; 
repeat 
Write('Bir say giriniz  :  ');
Readln(s);
if s>100 then continue;
T:=T+s;
until s=0;
clrscr;
Writeln(t:40);
Readln;
end.
