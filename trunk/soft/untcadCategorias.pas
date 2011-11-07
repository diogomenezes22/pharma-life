unit untcadCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, Mask,
  DBCtrls, Grids, DBGrids;

type
  TfrmCadastroCategorias = class(TfrmCadastroGeral)
    pag2: TTabSheet;
    GroupBox1: TGroupBox;
    dbeCategoria: TDBEdit;
    dbgCategorias: TDBGrid;
    lblCategoria: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvanClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbgCategoriasDblClick(Sender: TObject);
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
  frmCadastroCategorias: TfrmCadastroCategorias;

implementation

uses  untClasses, untPesquisaCategorias, untPesquisaGeral, udmcadcategoria;

{$R *.dfm}

procedure TfrmCadastroCategorias.btnNovoClick(Sender: TObject);
begin
  inherited;
  dmcadcategoria.adoCategorias.Insert;
end;

procedure TfrmCadastroCategorias.btnSalvarClick(Sender: TObject);
begin
  dmcadcategoria.adoCategorias.Post;
  dmcadcategoria.adoCategorias.Refresh;
  inherited;
end;

procedure TfrmCadastroCategorias.btnVoltarClick(Sender: TObject);
begin
  inherited;
  dmcadcategoria.adoCategorias.Prior;
end;
procedure TfrmCadastroCategorias.btnAvanClick(Sender: TObject);
begin
  inherited;
  dmcadcategoria.adoCategorias.Next;
end;

procedure TfrmCadastroCategorias.btnCancelarClick(Sender: TObject);
begin
  inherited;
    if (setQuestion('Deseja desfazer as alterações?')= true) then
  begin
  dmcadcategoria.adoCategorias.Cancel;
  end
  else
  begin
  dmcadcategoria.adoCategorias.Edit;
  end;
end;

procedure TfrmCadastroCategorias.btnEditarClick(Sender: TObject);
begin
  inherited;
  dmcadcategoria.adoCategorias.Edit;
end;

procedure TfrmCadastroCategorias.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja apagar o registro atual?') = true) then
  begin
  setMensagemSTB('Dados apagados com sucesso!');
  dmcadcategoria.adoCategorias.Delete;
  end;
end;

procedure TfrmCadastroCategorias.dbgCategoriasDblClick(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroCategorias.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  frmPesquisaCategorias := TfrmPesquisaCategorias.Create(Self);
  frmPesquisaCategorias.ShowModal;
  pagCadastro.ActivePageIndex := 0;
end;




procedure TfrmCadastroCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroCategorias := nil;
end;

procedure TfrmCadastroCategorias.FormCreate(Sender: TObject);
begin
  inherited;
  dmcadcategoria := Tdmcadcategoria.Create(Self);
  dmcadcategoria.adoCategorias.Open;
end;

procedure TfrmCadastroCategorias.FormDestroy(Sender: TObject);
begin
  inherited;
  dmcadcategoria.adoCategorias.Close;
  FreeAndNil(dmcadcategoria);
end;

end.
