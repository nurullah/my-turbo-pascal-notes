uses crt;
var
a,b:real;
s:byte;
c:char;
Procedure Toplama;
          Begin
          Clrscr;
          Textcolor(1);
          Writeln('iki Sayçnçn Toplamç    :',a+b:0:2);
          end;

Procedure Cikarma;
          Begin
          Clrscr;
          Textcolor(2);
          Writeln('iki Sayçnçn Farkç    :',a-b:0:2);
          end;
Procedure Carpma;
          Begin
          Clrscr;
          Textcolor(3);
          Writeln('iki Sayçnçn Äarpçmç    :',a*b:0:2);
          end;
Procedure Bolme;
          Begin
          Clrscr;
          Textcolor(4);
          Writeln('iki Sayçnçn Bîleme    :',a/b:0:2);
          end;

begin
Repeat
clrscr;
Write('Bir Sayç Giriniz         : ');Readln(A);
Write('ikinci Sayçyç Giriniz    : ');Readln(B);
clrscr;
Writeln('M  E  N  U');
Writeln('**********');
Writeln('1.Toplama iülemi');
Writeln('2.Äçkarma iülemi');
Writeln('3.Äarpma iülemi');
Writeln('4.Bîlme iülemi');
Writeln('SEÄòMòNòZ (1-2-3-4)  :');Readln(s);
Case s of
1:Toplama;
2:Cikarma;
3:Carpma;
4:Bolme;
end;
Write('Äçkmak istiyormusunuz [E/H]   :');c:=Readkey;
until c in ['E' , 'e'];
END.
