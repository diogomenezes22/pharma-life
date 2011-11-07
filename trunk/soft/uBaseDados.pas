unit uBaseDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, ComCtrls, Buttons, inifiles, jpeg, ExtCtrls;

type
  TfrmConfig = class(TForm)
    pgConfigs: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DriveComboBox1: TDriveComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    FileList1: TFileListBox;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    FilterComboBox1: TFilterComboBox;
    Panel1: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses untClasses;

{$R *.dfm}

procedure TfrmConfig.BitBtn1Click(Sender: TObject);
var lerIni : Tinifile;
caminho :string;
begin
caminho := FileList1.FileName;
if caminho <> '' then
  begin
   try
   lerini := Tinifile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
   lerini.WriteString('DataBase', 'Source', caminho);
   ShowMessage('Caminho do banco de dados alterado com sucesso!'+
   #13+
   'Reinicie o sistema para que as alterações tenham sucesso.'
   );
   if setQuestion('Deseja encerrar o sistema ?') = true then
     begin
      Application.Terminate;
     end
   else
     begin
      Self.Close;
     end;

   except
   ShowMessage('ERRO: Impossivel de salvar banco de dados');
   end;
  end
  else
  begin
    ShowMessage('ERRO: Caminho inválido para a base de dados!');
  end;
end;

procedure TfrmConfig.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfig.Button1Click(Sender: TObject);
begin
     ShowMessage(FileList1.FileName);
end;

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(frmconfig);
end;

end.
