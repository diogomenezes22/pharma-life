unit udmMovimentacao;

interface

uses
  SysUtils, Classes, DB, ADODB, Provider, DBClient, Dialogs;

type
  TdmMovimentacao = class(TDataModule)
    qryMovimentacao: TADOQuery;
    cdsMovimentacao: TClientDataSet;
    stpMovimentacao: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dspFornecedor: TDataSetProvider;
    qryFornecedores: TADOQuery;
    cdsMovimentacaoCOD_MOVIMENTACOES: TAutoIncField;
    cdsMovimentacaoCOD_MANOBRA: TSmallintField;
    cdsMovimentacaoCOD_PRODUTO: TSmallintField;
    cdsMovimentacaoDATA: TDateTimeField;
    cdsMovimentacaoDATAVAL: TDateTimeField;
    cdsMovimentacaoHISTORICO: TWideStringField;
    cdsMovimentacaoQUANTIDADE: TSmallintField;
    cdsMovimentacaoCUSTO: TBCDField;
    cdsMovimentacaoCOD_FORNECEDOR: TSmallintField;
    cdsMovimentacaoPROD_NOME: TWideStringField;
    qryProduto: TADOQuery;
    qryMovimentacaoCOD_MOVIMENTACOES: TAutoIncField;
    qryMovimentacaoCOD_MANOBRA: TSmallintField;
    qryMovimentacaoCOD_PRODUTO: TSmallintField;
    qryMovimentacaoDATA: TDateTimeField;
    qryMovimentacaoDATAVAL: TDateTimeField;
    qryMovimentacaoHISTORICO: TWideStringField;
    qryMovimentacaoQUANTIDADE: TSmallintField;
    qryMovimentacaoCUSTO: TBCDField;
    qryMovimentacaoCOD_FORNECEDOR: TSmallintField;
    qryMovimentacaoPROD_NOME: TWideStringField;
    qryEstoque: TADOQuery;
    cdsEstoque: TClientDataSet;
    dstEstoque: TDataSetProvider;
    procedure cdsMovimentacaoCOD_PRODUTOValidate(Sender: TField);
    procedure cdsMovimentacaoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMovimentacao: TdmMovimentacao;

implementation

uses untBanco;

{$R *.dfm}

procedure TdmMovimentacao.cdsMovimentacaoCOD_PRODUTOValidate(Sender: TField);
begin
  if not Sender.IsNull then
   begin
    qryProduto.Parameters.ParamByName('COD').Value:= Sender.Value;
    qryProduto.Open;
    try
      if not qryProduto.IsEmpty then
         begin
           cdsMovimentacao.FieldByName('prod_nome').AsString :=
           qryProduto.FieldByName('prod_nome').Value;
         end
      else
         begin
           raise Exception.Create('Produto não encontrado');
         end;
    finally
     qryProduto.Close;
    end;
   end;

end;

procedure TdmMovimentacao.cdsMovimentacaoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
    MessageDlg(E.Message, mtError, [mbOk], 0);
end;

end.
