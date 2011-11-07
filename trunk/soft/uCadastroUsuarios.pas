unit uCadastroUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, Mask, DBCtrls,
  Grids, DBGrids;

type
  TfrmCadastroUsuarios = class(TfrmCadastroGeral)
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    grbDados: TGroupBox;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuarios: TfrmCadastroUsuarios;

implementation

uses untClasses, udmcadUsuario;

{$R *.dfm}

procedure TfrmCadastroUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  dmcadusuario := Tdmcadusuario.Create(self);
  dmcaduSuario.adoUsuarios.Open;
end;

procedure TfrmCadastroUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
   dmcaduSuario.adoUsuarios.Close;
   FreeAndNil(dmcadusuario);
end;

end.
