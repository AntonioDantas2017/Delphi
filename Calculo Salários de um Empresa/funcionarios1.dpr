program funcionarios1;

uses
  Forms,
  funcionarios in 'funcionarios.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
