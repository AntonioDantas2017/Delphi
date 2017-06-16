unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    txtn: TEdit;
    cmdok: TButton;
    procedure cmdokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.cmdokClick(Sender: TObject);
var
nome, venc, notas : string;
i, n, maior, nota, menor, tot, media, aux, cont,a,b,fib,fat: integer;

begin
if txtn.Text='' then
        ShowMessage('Digite a quantidade de condidatas')
else
begin
        n := StrToInt(txtn.Text);
        maior :=0;
        tot:=0;
        menor := 10;
        for i:=1 to n do
        begin
                nome:= inputbox('Nome da Candidata','Nome','');
                while nome = '' do
                begin
                        nome:= inputbox('Nome da Candidata','Nome','');
                end;
                notas:= inputbox('Nota do Candidato','Nota','');
                while notas = '' do
                begin
                        notas:= inputbox('Nota do Candidato','Nota','');
                end;
                nota := StrToInt(notas);
                while nota>10 do
                begin
                        ShowMessage('Digite uma nota entre 0 e 10');
                        notas:= inputbox('Nota do Candidato','Nota','');
                        while notas = '' do
                        begin
                               notas:= inputbox('Nota do Candidato','Nota','');
                        end;
                        nota := StrToInt(notas);
                end;
                while nota<0 do
                begin
                        ShowMessage('Digite uma nota entre 0 e 10');
                        notas:= inputbox('Nota do Candidato','Nota','');
                        while notas = '' do
                        begin
                               notas:= inputbox('Nota do Candidato','Nota','');
                        end;
                        nota := StrToInt(notas);
                end;
                if(nota>=maior) then
                begin
                        maior := nota;
                        venc := nome;
                end;
                tot := tot + nota;
                if(nota<=menor) then
                begin
                        menor := nota;
                end;
        end;
        media := tot div n;
        fat := media;
        aux := media - 1;
        while(aux>=1) do
        begin
                fat := aux * fat;
                aux := aux - 1;
        end;
        if media=1 then
        begin
                fib := 1;
        end
        else
        begin
                a := 1;
                b := 0;
                for i:=2 to media do
                begin
                        fib := b + a;
                        b := a;
                        a := fib;
                end;
        end;

end;

        ShowMessage('Que venceu o concurso foi '+venc);
        ShowMessage('A media do concurso foi: '+IntToStr(media));
        ShowMessage('A maior nota foi: '+IntToStr(maior));
        ShowMessage('A menor nota foi: '+IntToStr(menor));
        ShowMessage('O fatorial da média é: '+IntToStr(fat));
        ShowMessage('O fibonacci da média é: '+IntToStr(fib));
end;

end.
