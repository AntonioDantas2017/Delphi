unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  Tfrmparcelas = class(TForm)
    txtvalor: TEdit;
    txtparc: TEdit;
    cmdok: TButton;
    lstparc: TListBox;
    cmdpagamento: TButton;
    lstvalor: TListBox;
    lblvalorcompra: TLabel;
    lblqtdparc: TLabel;
    cmdpagtodas: TButton;
    pnlatencao: TPanel;
    Label1: TLabel;
    lblparc_atraso: TLabel;
    pnltot: TPanel;
    lblvalortot: TLabel;
    lbltot: TLabel;
    lblvalorp: TLabel;
    lbldatap: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure cmdokClick(Sender: TObject);
    procedure cmdpagamentoClick(Sender: TObject);
    procedure lstparcClick(Sender: TObject);
    procedure lstvalorClick(Sender: TObject);
    procedure cmdpagtodasClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmparcelas: Tfrmparcelas;

implementation

{$R *.dfm}

procedure Tfrmparcelas.cmdokClick(Sender: TObject);
var
data : Tdatetime;
valor: extended;
num,parc,dia_sem : integer;
valor_parc, dec : string;
begin
if (txtvalor.Text <> '') or (txtparc.Text <> '') then
begin
        pnlatencao.Visible := false;
        lstparc.Items.Clear;
        lstvalor.Items.Clear;
        valor:= StrToFloat(txtvalor.Text);
        dec := floattostrf(valor,ffFixed,5,2);
        valor := StrToFloat(dec);
        parc := StrToInt(txtparc.Text);
        num := 1;
        data := date;
        pnltot.Visible := true;
        while  num < parc do
        begin
                data := data + 30;
                dia_sem := DayOfWeek(data);
                if dia_sem = 1 then
                        data := data + 1;
                if dia_sem = 7 then
                        data := data + 2;
                valor_parc := floattostrf((valor/parc),ffFixed,7,2);
                lstvalor.Items.Add(valor_parc);
                lstparc.Items.Add(datetostr(data));
                num := num + 1;
        end;
        txtparc.Text := '';
        txtvalor.Text := '';
        cmdok.Width := 120;
        cmdok.Caption := 'Iniciar outra compra';
        lbltot.Caption := floattostrf(((StrToFloat(valor_parc)*parc)-StrToFloat(valor_parc)),ffFixed,5,2);
        cmdpagamento.Enabled := true;
        cmdpagtodas.Enabled := true;
end
else
begin
        ShowMessage('Preencha todos os campos antes de clicar no botão');
end;
end;
procedure Tfrmparcelas.cmdpagamentoClick(Sender: TObject);
var
valor_parc : double;
x,i,n : integer;
begin
if (lstparc.ItemIndex <> 0) or (lstvalor.ItemIndex <> 0) then
begin
        ShowMessage('Selecione primeira parcela');
end
else
begin
        x := lstparc.ItemIndex;
        lstparc.Items.Delete(x);
        lstvalor.Items.Delete(x);
        n := lstparc.Items.Count - 1;
        valor_parc := 0;
        for i:=0 to n do
        begin
               valor_parc := valor_parc + StrToFloat(lstvalor.Items.Strings[i]);
        end;
               lbltot.Caption := floattostrf(valor_parc,ffFixed,5,2);
end;

end;
procedure Tfrmparcelas.lstparcClick(Sender: TObject);
var
data,parc : TDateTime;
valor_parc : double;
i,n : integer;
begin
        data := date;
        lstvalor.ItemIndex := lstparc.ItemIndex;
        parc := StrToDateTime(lstparc.Items.Strings[lstparc.ItemIndex]);
        if (parc < data) then
        begin
                ShowMessage('Esta parcela está vencida');

                valor_parc := StrToFloat(lstvalor.Items.Strings[lstparc.ItemIndex]);
                lstvalor.Items.Strings[lstparc.ItemIndex] := floattostrf((valor_parc+(valor_parc * 3/100)),ffFixed,5,2);
                pnlatencao.Visible := true;
                lblparc_atraso.Caption := 'A parcela foi reajustada para '+floattostrf((valor_parc+(valor_parc * 3/100)),ffFixed,5,2);
                n := lstparc.Items.Count - 1;
                valor_parc := 0;
                for i:=0 to n do
                begin
                        valor_parc := valor_parc + StrToFloat(lstvalor.Items.Strings[i]);
                end;
                lbltot.Caption := floattostrf(valor_parc,ffFixed,5,2);
end;
end;
procedure Tfrmparcelas.lstvalorClick(Sender: TObject);
var
data,parc : TDateTime;
valor_parc : double;
i,n : integer;
begin
        data := date;
        lstparc.ItemIndex := lstvalor.ItemIndex;
        parc := StrToDateTime(lstparc.Items.Strings[lstparc.ItemIndex]);
        if (parc < data) then
        begin
                ShowMessage('Esta parcela está vencida');
                valor_parc := StrToFloat(lstvalor.Items.Strings[lstparc.ItemIndex]);
                lstvalor.Items.Strings[lstparc.ItemIndex] := floattostrf((valor_parc+(valor_parc * 3/100)),ffFixed,5,2);
                pnlatencao.Visible := true;
                lblparc_atraso.Caption := 'A parcela foi reajustada para '+floattostrf((valor_parc+(valor_parc * 3/100)),ffFixed,5,2);
                n := lstparc.Items.Count - 1;
                valor_parc := 0;
                for i:=0 to n do
                begin
                        valor_parc := valor_parc + StrToFloat(lstvalor.Items.Strings[i]);
                end;
                lbltot.Caption := floattostrf(valor_parc,ffFixed,5,2);
end;
end;

procedure Tfrmparcelas.cmdpagtodasClick(Sender: TObject);
begin
pnlatencao.Visible := false;
cmdpagamento.Enabled := false;
lstvalor.Clear;
lstparc.Clear;
lbltot.Caption := '0,00';
end;

end.

