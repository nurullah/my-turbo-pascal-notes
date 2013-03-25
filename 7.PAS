uses crt;
var
c:char;
begin
clrscr;
writeln('Klavyeden Bir Karakter Giriniz');
readln(c);
case c of
'A'..'Z','a'..'z':writeln('Bir Harf Girdiniz');
'0'..'9':writeln('Bir Sayç Girdiniz');
'+','-','*','/':writeln('Matematiksel Operatîr Girdiniz');
else
writeln('ôzel Karakter Girdiniz');
end;
readln;
end.