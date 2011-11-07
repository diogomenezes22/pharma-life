unit untbanco;

interface

uses
  SysUtils, Classes, DB, ADODB, inifiles, Forms, Messages, Dialogs, ImgList,
  Controls;

type
  TdtmServer = class(TDataModule)
    adoBancodedados: TADOConnection;
    adoQ: TADOQuery;
    dtQ: TDataSource;
    imglBotoes: TImageList;
    imgListSmall: TImageList;

    procedure DataModuleCreate(Sender: TObject);
  private
  public
    procedure OpenDB;
  end;

var
  dtmServer: TdtmServer;


implementation

{$R *.dfm}




procedure TdtmServer.DataModuleCreate(Sender: TObject);
begin
  OpenDB;
end;

procedure Tdtmserver.OpenDB;
var
loadINI:Tinifile;
Source :string;
begin
loadINI:= Tinifile.Create(ExtractFilePath(Application.ExeName)+'cfg.ini');
Source := loadini.ReadString('DataBase', 'Source', '');
if Source <> '' then
begin
try
 with adoBancodedados do
 begin

     ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;'+
     'Data Source='+Source+';'+
     'Mode=ReadWrite;'+
     'Persist Security Info=False;'+
     'Jet OLEDB:Database Password=pharmalife';
    LoginPrompt := False;
    Mode := cmReadWrite;
    Provider := 'Microsoft.Jet.OLEDB.4.0';
    Connected:=true;
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
