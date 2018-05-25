program Tests;

uses
  Vcl.Forms,
  main in 'main.pas' {FMain},
  DataOb in 'DataOb.pas' {DM1: TDataModule},
  password in 'password.pas' {FPassword};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFPassword, FPassword);
  Application.Run;
end.
