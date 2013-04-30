uses crt;
procedure cerceve(x1,y1,x2,y2:byte);
var
a:integer;
cizgi:string[80];
Begin
fillchar (cizgi,80,#205);
cizgi[0]:=chr(x2-x1-1);
gotoxy(x1,y1);write(chr(201),cizgi,chr(187));
for a:=y1+1 to y2-1 do
Begin
gotoxy(x1,a);write(chr(186));
gotoxy(x2,a);write(chr(186));
end;
gotoxy(x1,y2);write(chr(200),cizgi,chr(188));
end;
begin
clrscr;
textcolor(7);
cerceve(1,1,80,24);
cerceve(3,2,78,4);
cerceve(3,5,78,7);  {
cerceve(15,5,25,7);
cerceve(26,5,37,7);
cerceve(38,5,49,7);
cerceve(50,5,61,7);
cerceve(62,5,78,7);}
cerceve(3,8,78,23);
textcolor(10);
gotoxy(6,3);write('Copyright'#184' 2013 Nurullah-Nurettin-Rçdvan. òzinsiz Kullançlmasç Yasaktçr.');
gotoxy(7,6);write('Adç');
gotoxy(17,6);write('Soyadç');
gotoxy(28,6);write('Telefon');
gotoxy(40,6);write('Kitap A.');
gotoxy(52,6);write('K.Yazar');
gotoxy(67,6);write('Tarih');
Readln;
End.