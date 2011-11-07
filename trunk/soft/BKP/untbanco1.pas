unit untbanco1;

interface

uses
  SysUtils, Classes, DB, ADODB, DBXFirebird, SqlExpr, FMTBcd, WideStrings;

type
  TdtmServer = class(TDataModule)
    dtsClientes: TDataSource;
    dtsFornecedor: TDataSource;
    dtsLabs: TDataSource;
    dtsProdutos: TDataSource;
    queryClientes: TADOQuery;
    dtsClientesQr: TDataSource;
    queryProdutos: TADOQuery;
    dtsProdutosQr: TDataSource;
    dtsEstados: TDataSource;
    dts_statuscliente: TDataSource;
    dtsTipoClientes: TDataSource;
    dtsTarja: TDataSource;
    dtsFornecedoresQr: TDataSource;
    queryFornecedor: TADOQuery;
    dtsLabsQr: TDataSource;
    queryLabs: TADOQuery;
    dtsCategorias: TDataSource;
    dtsCategoriasQ: TDataSource;
    queryCategorias: TADOQuery;
    queryCategoriascod_categorias: TAutoIncField;
    queryCategoriasdescricao: TWideStringField;
    dtsGrupos: TDataSource;
    stsGruposQ: TDataSource;
    queryGrupos: TADOQuery;
    dtsUnidades: TDataSource;
    dtsMovimentacao: TDataSource;
    queryFornecedorcod: TAutoIncField;
    queryFornecedorvendedor: TWideStringField;
    queryFornecedorempresa: TWideStringField;
    queryFornecedorcnpj: TWideStringField;
    queryFornecedorim: TWideStringField;
    queryFornecedorie: TWideStringField;
    queryFornecedortelefone_cel: TWideStringField;
    queryFornecedortelefone_comercial: TWideStringField;
    queryFornecedoremail: TWideStringField;
    queryFornecedornumero: TWideStringField;
    queryFornecedorrua: TWideStringField;
    queryFornecedorbairro: TWideStringField;
    queryFornecedorcidade: TWideStringField;
    queryFornecedorestado: TWideStringField;
    queryFornecedorpais: TWideStringField;
    queryFornecedoranotacoes: TMemoField;
    srvConexao: TSQLConnection;
    adoClientes: TSQLTable;
    adoFornecedor: TSQLTable;
    adoLabs: TSQLTable;
    adoProdutos: TSQLTable;
    adoEstados: TSQLTable;
    adoUnidades: TSQLTable;
    adostatuscliente: TSQLTable;
    adoTipoCliente: TSQLTable;
    adoTarja: TSQLTable;
    adoCategorias: TSQLTable;
    adoGrupos: TSQLTable;
    adoMovimentacao: TSQLTable;
    procedure adoClientesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmServer: TdtmServer;

implementation

{$R *.dfm}

procedure TdtmServer.adoClientesNewRecord(DataSet: TDataSet);
begin
   dtmserver.adoClientes.FieldByName('data_reg').Value := Date;
end;

end.
