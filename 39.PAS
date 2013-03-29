uses crt;
var
ad:array [1..10] of string;
i:byte;

begin
clrscr;
for i:=1 to 10 do
begin
write(i, '. Ad Giriniz : ');
readln(ad[i]);
end;
begin
gotoxy(35,i+6); write(ad[i]);
end;
readln;
end.