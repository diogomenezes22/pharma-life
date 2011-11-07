unit untCadastroGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, Mask,
  DBCtrls, Grids, DBGrids;

type
  TfrmCadastroGrupos = class(TfrmCadastroGeral)
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvanClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroGrupos: TfrmCadastroGrupos;

implementation

uses  untClasses, untPesquisaGrupos, udmcadgrupo;

{$R *.dfm}

procedure TfrmCadastroGrupos.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmcadgrupo.adoGrupos.Insert;
end;

procedure TfrmCadastroGrupos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmcadgrupo.adoGrupos.Edit;
end;

procedure TfrmCadastroGrupos.btnVoltarClick(Sender: TObject);
begin
  inherited;
  dtmcadgrupo.adoGrupos.Prior
end;

procedure TfrmCadastroGrupos.btnAvanClick(Sender: TObject);
begin
  inherited;
  dtmcadgrupo.adoGrupos.Next;
end;

procedure TfrmCadastroGrupos.btnCancelarClick(Sender: TObject);
begin
  inherited;
    if (setQuestion('Deseja desfazer as alterações?')= true) then
  begin
  dtmcadgrupo.adoGrupos.Cancel;
  end
  else
  begin
  dtmcadgrupo.adoGrupos.Edit;
  end;
end;

procedure TfrmCadastroGrupos.btnSalvarClick(Sender: TObject);
begin
  dtmcadgrupo.adoGrupos.Post;
  dtmcadgrupo.adoGrupos.Refresh;
  inherited;
end;

procedure TfrmCadastroGrupos.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja apagar o registro atual?') = true) then
  begin
  setMensagemSTB('Dados apagados com sucesso!');
  dtmcadgrupo.adoGrupos.Delete;
  end;
end;

procedure TfrmCadastroGrupos.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadastroGrupos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroGrupos.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  frmPesquisaGrupos := TfrmPesquisaGrupos.Create(Self);
  frmPesquisaGrupos.ShowModal;
end;

procedure TfrmCadastroGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroGrupos := nil;
end;

procedure TfrmCadastroGrupos.FormCreate(Sender: TObject);
begin
  inherited;
  dtmcadgrupo := Tdtmcadgrupo.Create(Self);
  dtmcadgrupo.adoGrupos.Open;
end;

procedure TfrmCadastroGrupos.FormDestroy(Sender: TObject);
begin
  inherited;
  dtmcadgrupo.adoGrupos.Close;
  FreeAndNil(dtmcadgrupo);
end;

end.
