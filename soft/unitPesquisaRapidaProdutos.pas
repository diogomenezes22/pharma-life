unit unitPesquisaRapidaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TfrmPesquisaRapidaProdutos = class(TForm)
    Label1: TLabel;
    editPesquisa: TEdit;
    btnPesquisa: TButton;
    dbgProdutos: TDBGrid;
    grpBoxProdutos: TGroupBox;
    lblCodNome: TLabel;
    lblResultado: TLabel;
    btnSair: TButton;
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbgProdutosDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgProdutosCellClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaRapidaProdutos: TfrmPesquisaRapidaProdutos;
  codigo_Prod: integer; nome_Prod : string;

  implementation

uses untbanco, untClasses, uCadMovimentacao, uBaseDados, udmMovimentacao,
  ucadprodutos;

{$R *.dfm}

procedure TfrmPesquisaRapidaProdutos.btnPesquisaClick(Sender: TObject);
var consulta:string;
begin
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
     editPesquisa.SetFocus;
  end else
  dmcadproduto.queryProdutos.Close;
  dmcadproduto.queryProdutos.SQL.Clear;
  dmcadproduto.queryProdutos.SQL.Add('SELECT * FROM');
  dmcadproduto.queryProdutos.SQL.Add('tlb_produtos');
  dmcadproduto.queryProdutos.SQL.Add('WHERE prod_nome');
  dmcadproduto.queryProdutos.SQL.Add('LIKE ''%' +consulta + '%'' ');
  dmcadproduto.queryProdutos.ExecSQL;
  dmcadproduto.queryProdutos.Open;
end;


procedure TfrmPesquisaRapidaProdutos.dbgProdutosCellClick(Column: TColumn);
begin
 codigo_Prod := strtoint(dbgProdutos.Columns.Items[0].Field.Text);
  nome_prod := dbgProdutos.Columns.Items[1].Field.Text;
  lblResultado.Caption := inttostr(codigo_prod)+' / '+nome_prod;
end;

procedure TfrmPesquisaRapidaProdutos.dbgProdutosDblClick(Sender: TObject);
begin
  codigo_Prod := strtoint(dbgProdutos.Columns.Items[0].Field.Text);
  nome_prod := dbgProdutos.Columns.Items[1].Field.Text;
  lblResultado.Caption := inttostr(codigo_prod)+' / '+nome_prod;
  frmPesquisaRapidaProdutos.Close;
end;

procedure TfrmPesquisaRapidaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmMovimentacao.cdsMovimentacao.FieldByName('COD_PRODUTO').Value := codigo_Prod;
  FreeAndNil(frmPesquisaRapidaProdutos);
end;

procedure TfrmPesquisaRapidaProdutos.FormCreate(Sender: TObject);
begin
  dmcadproduto:= Tdmcadproduto.Create(Self);

  dmcadproduto.queryProdutos.Close;
  dmcadproduto.queryProdutos.SQL.Clear;
  dmcadproduto.queryProdutos.SQL.Add('SELECT cod, prod_nome FROM');
  dmcadproduto.queryProdutos.SQL.Add('tlb_produtos');
  dmcadproduto.queryProdutos.ExecSQL;
  dmcadproduto.queryProdutos.Open;
end;

procedure TfrmPesquisaRapidaProdutos.FormDestroy(Sender: TObject);
begin
 FreeAndNil(dmcadproduto);
end;

procedure TfrmPesquisaRapidaProdutos.btnSairClick(Sender: TObject);
begin
  frmPesquisaRapidaProdutos.Close;

  
end;

end.
