uses crt;
var
a,b:real;
s:byte;
c:char;
Procedure Toplama;
          Begin
          Clrscr;
          Textcolor(1);
          Writeln('iki Say�n�n Toplam�    :',a+b:0:2);
          end;

Procedure Cikarma;
          Begin
          Clrscr;
          Textcolor(2);
          Writeln('iki Say�n�n Fark�    :',a-b:0:2);
          end;
Procedure Carpma;
          Begin
          Clrscr;
          Textcolor(3);
          Writeln('iki Say�n�n �arp�m�    :',a*b:0:2);
          end;
Procedure Bolme;
          Begin
          Clrscr;
          Textcolor(4);
          Writeln('iki Say�n�n B�leme    :',a/b:0:2);
          end;

begin
Repeat
clrscr;
Write('Bir Say� Giriniz         : ');Readln(A);
Write('ikinci Say�y� Giriniz    : ');Readln(B);
clrscr;
Writeln('M  E  N  U');
Writeln('**********');
Writeln('1.Toplama i�lemi');
Writeln('2.��karma i�lemi');
Writeln('3.�arpma i�lemi');
Writeln('4.B�lme i�lemi');
Writeln('SE��M�N�Z (1-2-3-4)  :');Readln(s);
Case s of
1:Toplama;
2:Cikarma;
3:Carpma;
4:Bolme;
end;
Write('��kmak istiyormusunuz [E/H]   :');c:=Readkey;
until c in ['E' , 'e'];
END.
