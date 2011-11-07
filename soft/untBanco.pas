unit untbanco;

interface

uses
  SysUtils, Classes, DB, ADODB, inifiles, Forms, Messages, Dialogs, ImgList,
  Controls, Graphics;

type
  TdtmServer = class(TDataModule)
    adoBancodedados: TADOConnection;
    adoQ: TADOQuery;
    dtQ: TDataSource;
    imglBotoes: TImageList;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
    procedure OpenDB;
    procedure LoadImagens;
  end;

var
  dtmServer: TdtmServer;

implementation

{$R *.dfm}

procedure TdtmServer.DataModuleCreate(Sender: TObject);
begin
  OpenDB;
  LoadImagens;
end;

procedure TdtmServer.LoadImagens;
var
  i: integer;
  ICO: TIcon;
  LerINI: TInifile;
  caminho : string;
begin
  try
    ICO := TIcon.Create;
    LerINI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'cfg.ini');
    caminho := LerINI.ReadString('IMGS', 'ICONS', '..\imgs\teste\');
    for i := 0 to 10 do
    begin
      try
        ICO.LoadFromFile(caminho+inttostr(i)+'.ico');
        imglBotoes.InsertIcon(i, ICO);
      except
        ShowMessage('Não foi possivel carregar '+inttostr(i)+'.ico');
      end;
    end;
  finally
    ICO.Free;
    LerINI.Free;
  end;
end;

procedure TdtmServer.OpenDB;
var
  loadINI: Tinifile;
  Source: string;
begin
  loadINI := Tinifile.Create(ExtractFilePath(Application.ExeName) + 'cfg.ini');
  Source := loadINI.ReadString('DataBase', 'Source', '');
  if Source <> '' then
  begin
    try
      with adoBancodedados do
      begin
        Connected := false;
        ConnectionString :=
          'Provider=Microsoft.Jet.OLEDB.4.0;' + 'Data Source=' + Source + ';' +
          'Mode=ReadWrite;' + 'Persist Security Info=False;' +
          'Jet OLEDB:Database Password=pharmalife';
        LoginPrompt := False;
        Mode := cmReadWrite;
        Provider := 'Microsoft.Jet.OLEDB.4.0';
        Connected := true;

      end;

    finally
      loadINI.Free;
    end;
  end
  else
  begin
    ShowMessage('Não foi possivel encontrar a base de dados');
  end;
end;

end.
