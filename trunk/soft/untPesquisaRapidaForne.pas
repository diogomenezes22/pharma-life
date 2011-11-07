unit untPesquisaRapidaForne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, udmCadCliente;

type
  TfrmPesquisaRapidaForn = class(TForm)
    Label1: TLabel;
    editPesquisa: TEdit;
    btnPesquisa: TButton;
    btnSair: TButton;
    grpBoxForn: TGroupBox;
    lblCodNome: TLabel;
    lblResultado: TLabel;
    dbgFornecedores: TDBGrid;
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbgFornecedoresDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaRapidaForn: TfrmPesquisaRapidaForn;
  nome_fornecedor:string;
  cod_fornecedor :integer;

implementation

uses  untClasses, uCadMovimentacao, udmfornecedor;

{$R *.dfm}

procedure TfrmPesquisaRapidaForn.btnPesquisaClick(Sender: TObject);
var consulta:string;
begin
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
     editPesquisa.SetFocus;
  end else
 dmfornecedor.queryFornecedor.Close;
 dmfornecedor.queryFornecedor.SQL.Clear;
 dmfornecedor.queryFornecedor.SQL.Add('SELECT * FROM');
 dmfornecedor.queryFornecedor.SQL.Add('tlb_fornecedor');
 dmfornecedor.queryFornecedor.SQL.Add('WHERE empresa');
 dmfornecedor.queryFornecedor.SQL.Add('LIKE ''%' +consulta + '%'' ');
 dmfornecedor.queryFornecedor.ExecSQL;
 dmfornecedor.queryFornecedor.Open;
end;


procedure TfrmPesquisaRapidaForn.dbgFornecedoresDblClick(Sender: TObject);
begin
  cod_fornecedor := strtoint(dbgFornecedores.Columns.Items[0].Field.Text);
  nome_fornecedor := dbgFornecedores.Columns.Items[1].Field.Text;
  lblResultado.Caption := inttostr(cod_Fornecedor)+' / '+nome_fornecedor;
end;

procedure TfrmPesquisaRapidaForn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   //frmCadMovimentacao.btneForne.text := inttostr(cod_fornecedor);
   //frmCadMovimentacao.btneForne.SetFocus;
   freeandnil(frmPesquisaRapidaForn);
end;

procedure TfrmPesquisaRapidaForn.btnSairClick(Sender: TObject);
begin
 frmPesquisaRapidaForn.Close;
end;

end.
