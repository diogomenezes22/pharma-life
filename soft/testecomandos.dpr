program testecomandos;

uses
  Forms,
  uTesteCOMANDOS in 'uTesteCOMANDOS.pas' {frmComandos},
  udtmserver in 'udtmserver.pas' {dtmserver: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdtmserver, dtmserver);
  Application.CreateForm(TfrmComandos, frmComandos);
  Application.Run;
end.
