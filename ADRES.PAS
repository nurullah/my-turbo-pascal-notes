uses crt;
type
deneme=record
ad:string;
soyad:string;
byazili:integer;
iyazili:integer;
ort:real;
f:char;
end;
var
i:byte;
kod:integer;
ch:char;
deneme2: file of deneme;
k:deneme;
begin
clrscr;
assign(deneme2,'d:\dosya.dat');
{$i-} reset(deneme2); kod:=IOresult; {$i+};
if kod<>0 then
rewrite(deneme2);
repeat
writeln('Adçnçzç Giriniz'); readln(k.ad);
writeln('Soyadçnçzç Giriniz'); readln(k.soyad);
writeln('1-Yazçlçyç Giriniz'); readln(k.byazili);
writeln('2-Yazçlçyç Giriniz'); readln(k.iyazili);
k.ort:=(k.byazili+k.iyazili)/2;
writeln('________________________________________________');
k.f:='*';
seek(deneme2,filesize(deneme2));
write(deneme2,k);
until 1=2;
clrscr;
close(deneme2);
reset(deneme2);
for i:=0 to filesize(deneme2) do
begin
seek(deneme2,i);
read(deneme2,k);
clrscr;
writeln(k.ad);
writeln(k.soyad);
writeln(k.byazili);
writeln(k.iyazili);
writeln(k.ort:0:0);
end;
close(deneme2);
readln;
end.

