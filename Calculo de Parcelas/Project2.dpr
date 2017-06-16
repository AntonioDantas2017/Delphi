program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmparcelas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmparcelas, frmparcelas);
  Application.Run;
end.
