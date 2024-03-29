unit untCadastroProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, DBCtrls,
  Mask, Grids, DBGrids;

type
  TfrmCadastroProdutos = class(TfrmCadastroGeral)
    TabSheet1: TTabSheet;
    dbgProdutos: TDBGrid;
    brBox1: TGroupBox;
    Label4: TLabel;
    dbCodBarras: TDBEdit;
    Label17: TLabel;
    dbNome: TDBEdit;
    Label16: TLabel;
    dblUnidade: TDBLookupComboBox;
    Label10: TLabel;
    dblCategoria: TDBLookupComboBox;
    Label11: TLabel;
    dblGrupo: TDBLookupComboBox;
    Label9: TLabel;
    dblLaboratorio: TDBLookupComboBox;
    Label5: TLabel;
    dblFornecedor: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    dbValorCompra: TDBEdit;
    Label7: TLabel;
    dbValorVenda: TDBEdit;
    Label12: TLabel;
    dbICMS: TDBEdit;
    Label13: TLabel;
    dbIPI: TDBEdit;
    Label14: TLabel;
    dbEstoqueMi: TDBEdit;
    Label15: TLabel;
    dbEstoqueMax: TDBEdit;
    Label8: TLabel;
    dblTarja: TDBLookupComboBox;
    dbcReceita: TDBCheckBox;
    dbmDescricao: TDBMemo;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvanClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbgProdutosDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

uses untClasses, untPesquisaProdutos, ucadprodutos;

{$R *.dfm}

procedure TfrmCadastroProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  dmcadproduto.adoProdutos.Insert;
end;

procedure TfrmCadastroProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dmcadproduto.adoProdutos.Edit;
end;

procedure TfrmCadastroProdutos.btnVoltarClick(Sender: TObject);
begin
  inherited;
  dmcadproduto.adoProdutos.Prior;
end;

procedure TfrmCadastroProdutos.btnAvanClick(Sender: TObject);
begin
  inherited;
  dmcadproduto.adoProdutos.Next
end;

procedure TfrmCadastroProdutos.btnSalvarClick(Sender: TObject);
begin
  dmcadproduto.adoProdutos.Post;
 dmcadproduto.adoProdutos.Refresh;
  inherited;

end;

procedure TfrmCadastroProdutos.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  frmPesquisaProdutos := TfrmPesquisaProdutos.Create(Self);
  frmPesquisaProdutos.Showmodal;
end;

procedure TfrmCadastroProdutos.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadastroProdutos.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja desfazer as alterações?')= true) then
  begin
  dmcadproduto.adoProdutos.Cancel;
  end
  else
  begin
  dmcadproduto.adoProdutos.Edit;
  end;
end;

procedure TfrmCadastroProdutos.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja apagar o registro atual?') = true) then
  begin
  setMensagemSTB('Dados apagados com sucesso!');
  dmcadproduto.adoProdutos.Delete;
  end;
end;

procedure TfrmCadastroProdutos.dbgProdutosDblClick(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   frmCadastroProdutos := nil;
end;

procedure TfrmCadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
   dmcadproduto := Tdmcadproduto.Create(Self);
   dmcadproduto.adoLabs.Open;
   dmcadproduto.adoTarja.Open;
   dmcadproduto.adoProdutos.Open;
   dmcadproduto.adoCategorias.Open;
   dmcadproduto.adoGrupos.Open;
   dmcadproduto.adoUnidades.Open;
   dmcadproduto.adoFornecedor.Open;
end;

procedure TfrmCadastroProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
  dmcadproduto.adoLabs.Close;
  dmcadproduto.adoTarja.Close;
  dmcadproduto.adoProdutos.Close;
  dmcadproduto.adoCategorias.Close;
  dmcadproduto.adoGrupos.Close;
  dmcadproduto.adoUnidades.Close;
  dmcadproduto.adoFornecedor.Close;
  FreeAndNil(dmcadproduto);
end;

end.
