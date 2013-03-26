uses crt;
var
a,toplam:integer;
begin
clrscr;
a:=0;
toplam:=0;
while a<30 do
begin
a:=a+1;
toplam:=toplam+a;
write(a,'+');
end;
writeln(' = ',toplam);
readln;
End.
