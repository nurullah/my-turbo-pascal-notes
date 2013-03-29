uses crt;
var
nur,yedek:text;
ad,soyad,tel,ara:string;
bay:byte;
yaz:boolean;
sil,dev:char;
begin
repeat
assign(nur,'k:\dosya.tex');
assign(yedek,'k:\Yedek.tex');
reset(nur);
rewrite(Yedek);
clrscr;
writeln('Silmek ˜stedi§iniz KiŸinin Ad: '); readln(ara);
bay:=0;
repeat
yaz:=true;
readln(nur,ad);
readln(nur,soyad);
readln(nur,tel);
if ara=ad then
begin
bay:=1;
writeln(ad);
writeln(soyad);
writeln(tel);
writeln('Bu Kayd Silmek ˜‡in (S); TuŸuna Devam ˜‡in Entera Basnz');
sil:=readkey;
if sil in ['s','S'] then yaz:=false;
end;
if yaz=true then
begin
writeln(yedek,ad);
writeln(yedek,soyad);
writeln(yedek,tel);
end
else
writeln('Kayt Silindi');
until eof(nur);
close(nur);
close(yedek);
if bay=0 then
begin
writeln('Aranan Kayt Bulunamad');
erase(yedek);
end
else
begin
erase(nur);
rename(yedek,'k:\dosya.tex');
end;
clrscr;
write('Silinecek BaŸka Kayt Varm? [E/H]');
dev:=readkey;
until dev in ['H','h'];
end.