uses crt;
var
nurullah:text;
ad,soyad,tel:string;
a:byte;
begin
assign(nurullah,'k:\dosya.tex');
reset(nurullah);
clrscr;
gotoxy(15,2);writeln('Adç');
gotoxy(30,2);writeln('Soyadç');
gotoxy(50,2);writeln('Telefon');
gotoxy(15,3);writeln('--------');
gotoxy(30,3);writeln('--------');
gotoxy(50,3);writeln('--------');
a:=0;
repeat
a:=a+1;
readln(nurullah,ad);
readln(nurullah,soyad);
readln(nurullah,tel);
gotoxy(15,a+4);write(ad);
gotoxy(30,a+4);write(soyad);
gotoxy(50,a+4);write(tel);
until eof(nurullah);
close(nurullah);
readln;
end.