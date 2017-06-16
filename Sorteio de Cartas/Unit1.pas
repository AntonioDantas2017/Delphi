unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    cmdsort: TButton;
    imgsort: TImage;
    imgcarta: TImage;
    cbocartas: TComboBox;
    DataSource1: TDataSource;
    Query1: TQuery;
    lblres: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblpontusuario: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblpontcomp: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cbocartasChange(Sender: TObject);
    procedure cmdsortClick(Sender: TObject);
  private
    { Private declarations }
  public
        pontu : integer;
        pontc : integer;        
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

Query1.SQL.Clear;
Query1.SQL.Add('Select * from db');
Query1.Open;

while not Query1.Eof do
begin
        cbocartas.Items.Add(Query1['Carta']);
        Query1.Next;
end ;

Query1.SQL.Clear;

end;

procedure TForm1.cbocartasChange(Sender: TObject);
begin
Query1.SQL.Clear;
Query1.SQL.Add('select * from db where Codigo='+IntToStr(cbocartas.ItemIndex)+' ');
Query1.Open;
imgcarta.Picture.LoadFromFile('cartas\'+Query1['Carta']+'.jpg');
end;

procedure TForm1.cmdsortClick(Sender: TObject);
var
x : integer;
begin

Randomize();
x := random(51);

Query1.SQL.Clear;
Query1.SQL.Add('Select * from db where :codigo = codigo') ;
Query1.ParamByName('codigo').Value  := x;
Query1.Open;

if Query1['Carta'] = cbocartas.Items.Strings[cbocartas.ItemIndex] then
begin
        lblres.Caption := 'Você Acertou';
        pontu := pontu + 1;
        lblpontusuario.Caption := IntToStr(pontu);
end
else
begin
        pontc := pontc + 1;
        lblpontcomp.Caption := IntToStr(pontc);
        lblres.Caption := 'Você não Acertou';
end;

imgsort.Picture.LoadFromFile('cartas\'+Query1['Carta']+'.jpg');

end;

end.
