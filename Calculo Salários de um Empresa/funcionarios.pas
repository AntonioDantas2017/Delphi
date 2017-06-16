unit funcionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lblmed: TLabel;
    lblpor: TLabel;
    lblmais: TLabel;
    lblprg: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cmdok: TButton;
    txtq: TEdit;
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
q , i, por, dias, prg: integer;
tot, horas, valor, func, media, porc : double;
nome, nf, hora: string;

begin

if(txtq.Text='') then
begin
        ShowMessage('Digite a quantidade de funcionários');
end
else
begin
q := StrToInt(txtq.Text);
func := 0;
por := 0;
prg := 0;
valor :=0;
for i:=1 to q do
begin
        nome := inputbox('Funcionario','Nome:','');
        while(nome='') do
        begin
                nome := inputbox('Funcionario','Nome:','');
        end;
        hora := (inputbox('Funcionario','Horas Trabalhadas:',''));
        while(hora='') do
        begin
                        hora := (inputbox('Funcionario','Horas Trabalhadas:',''));
        end;
        horas := StrToFloat(hora);
        tot := (horas * 30);
        porc := tot * 0.13;
        tot := tot - porc;
        valor := valor + tot;
        if(horas>func) then
        begin
                nf:=nome;
                func := horas;
        end;

        if ( tot > 500) then
        begin
                por := por + 1;
        end;

        if(horas = 0) then
        begin
                prg := prg + 1
        end;
end;
        media := valor/q;
        lblmed.caption := FloatToStr(media);
        lblpor.caption := FloatToStr((por/q)*100);
        lblmais.caption := nf;
        lblprg.caption := FloatToStr(prg);

end;
end;

end.

