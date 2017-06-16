unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    lblr: TLabel;
    lblmsg: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
n : Array[0..20] of string;
centenas,num,dezenas,aux,unidades : integer;
begin

if ((StrToInt(Edit1.Text) >= 0)) and ((StrToInt(Edit1.Text)) < 1000) then
begin
        num := StrToInt(Edit1.Text);
        centenas := num div 100;

        n[1] := 'cento';
        n[2] := 'duzentos';
        n[3] := 'trezentos';
        n[4] := 'quatrocentos';
        n[5] := 'quinhentos';
        n[6] := 'seicentos';
        n[7] := 'setecentos';
        n[8] := 'oitocentos';
        n[9] := 'novecentos';

        lblr.Caption := (n[centenas]);

        dezenas := num - (centenas*100);
        aux := dezenas div 10;

        n[2] := 'vinte';
        n[3] := 'trinta';
        n[4] := 'quarenta';
        n[5] := 'cinq�enta';
        n[6] := 'sessenta';
        n[7] := 'setenta';
        n[8] := 'oitenta';
        n[9] := 'noventa';

        if aux = 1 then
        begin
                aux := 10 + (dezenas - (aux * 10));
                n[10] := 'dez';
                n[11] := 'onze';
                n[12] := 'doze';
                n[13] := 'treze';
                n[14] := 'quatoze';
                n[15] := 'quinze';
                n[16] := 'dezesseis';
                n[17] := 'dezessete';
                n[18] := 'dezoito';
                n[19] := 'dezenove';
                if centenas = 0 then
                        lblr.Caption := lblr.Caption +(n[aux])
                else
                        lblr.Caption := lblr.Caption +' e '+(n[aux]);
        end
        else
        begin
                if centenas = 0 then
                begin
                        if aux <> 0 then
                                lblr.Caption := lblr.Caption +(n[aux]);
                end
                else
                begin
                        if aux <> 0 then
                                lblr.Caption := lblr.Caption +' e '+(n[aux]);
                end;

                unidades := (dezenas - (aux * 10));
                n[1] := 'um';
                n[2] := 'dois';
                n[3] := 'tr�s';
                n[4] := 'quatro';
                n[5] := 'cinco';
                n[6] := 'seis';
                n[7] := 'sete';
                n[8] := 'oito';
                n[9] := 'nove';

                if unidades = 0 then
                        lblr.Caption := lblr.Caption +(n[unidades])
                else
                        lblr.Caption := lblr.Caption +' e '+(n[unidades]);

                if (centenas = 0) and (aux=0) then
                        lblr.Caption := (n[unidades]);

        end;
        if aux = 0 then
        begin
                if centenas = 0 then
                begin
                        if unidades = 0 then
                                lblr.Caption := 'zero';
                end;
        end;
end
else
begin
        ShowMessage('Digite um n�mero entre 0 e 999');
end;


end;
end.
