unit untbanco;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmServer = class(TDataModule)
    adoBancodedados: TADOConnection;
    dtsClientes: TDataSource;
    dtsFornecedor: TDataSource;
    adoClientes: TADOTable;
    adoFornecedor: TADOTable;
    dtsLabs: TDataSource;
    adoLabs: TADOTable;
    dtsProdutos: TDataSource;
    adoProdutos: TADOTable;
    queryClientes: TADOQuery;
    dtsClientesQr: TDataSource;
    queryProdutos: TADOQuery;
    dtsProdutosQr: TDataSource;
    dtsEstados: TDataSource;
    adoEstados: TADOTable;
    dts_statuscliente: TDataSource;
    adostatuscliente: TADOTable;
    dtsTipoClientes: TDataSource;
    adoTipoCliente: TADOTable;
    dtsTarja: TDataSource;
    adoTarja: TADOTable;
    dtsFornecedoresQr: TDataSource;
    queryFornecedor: TADOQuery;
    dtsLabsQr: TDataSource;
    queryLabs: TADOQuery;
    adoEstadoscod: TAutoIncField;
    adoEstadosuf: TWideStringField;
    adoEstadosnome: TWideStringField;
    adostatusclienteid_status: TAutoIncField;
    adostatusclientetipo_status: TWideStringField;
    adoTipoClienteid_campo: TAutoIncField;
    adoTipoClientetipo_cliente: TWideStringField;
    adoTarjacod: TAutoIncField;
    adoTarjatarja: TWideStringField;
    dtsCategorias: TDataSource;
    adoCategorias: TADOTable;
    adoCategoriascod_categorias: TAutoIncField;
    adoCategoriasdescricao: TWideStringField;
    dtsCategoriasQ: TDataSource;
    queryCategorias: TADOQuery;
    queryCategoriascod_categorias: TAutoIncField;
    queryCategoriasdescricao: TWideStringField;
    adoClientescod: TAutoIncField;
    adoClientesnome: TWideStringField;
    adoClientesnacionalidade: TWideStringField;
    adoClientesdata_nasc: TDateTimeField;
    adoClientessexo: TWideStringField;
    adoClientesrg: TWideStringField;
    adoClientescpf: TWideStringField;
    adoClientesemail: TWideStringField;
    adoClientestelefone_residencial: TWideStringField;
    adoClientestelefone_celular: TWideStringField;
    adoClientesstatus_cliente: TWideStringField;
    adoClientestipo_cliente: TIntegerField;
    adoClientesnumero: TWideStringField;
    adoClientesbairro: TWideStringField;
    adoClientesrua: TWideStringField;
    adoClientescidade: TWideStringField;
    adoClientesestado: TWideStringField;
    adoClientescep: TWideStringField;
    adoClientespais: TWideStringField;
    adoClientesdata_reg: TDateTimeField;
    adoClientesanotacoes: TMemoField;
    adoFornecedorcod: TAutoIncField;
    adoFornecedorvendedor: TWideStringField;
    adoFornecedorempresa: TWideStringField;
    adoFornecedorcnpj: TWideStringField;
    adoFornecedorim: TWideStringField;
    adoFornecedorie: TWideStringField;
    adoFornecedortelefone_cel: TWideStringField;
    adoFornecedortelefone_comercial: TWideStringField;
    adoFornecedoremail: TWideStringField;
    adoFornecedornumero: TWideStringField;
    adoFornecedorrua: TWideStringField;
    adoFornecedorbairro: TWideStringField;
    adoFornecedorcidade: TWideStringField;
    adoFornecedorestado: TWideStringField;
    adoFornecedorpais: TWideStringField;
    adoFornecedoranotacoes: TMemoField;
    adoLabscod_lab: TAutoIncField;
    adoLabsnome: TWideStringField;
    adoLabsnome_representante: TWideStringField;
    adoLabstelefone: TWideStringField;
    adoLabscnpj: TWideStringField;
    adoLabsrua: TWideStringField;
    adoLabsnumero: TWideStringField;
    adoLabsbairro: TWideStringField;
    adoLabscidade: TWideStringField;
    adoLabsestado: TWideStringField;
    adoLabspais: TWideStringField;
    dtsGrupos: TDataSource;
    adoGrupos: TADOTable;
    stsGruposQ: TDataSource;
    queryGrupos: TADOQuery;
    dtsUnidades: TDataSource;
    adoUnidades: TADOTable;
    adoProdutoscod: TAutoIncField;
    adoProdutoscodigo_barra: TWideStringField;
    adoProdutosprod_nome: TWideStringField;
    adoProdutosdescricao: TMemoField;
    adoProdutoscod_categorias: TSmallintField;
    adoProdutoscod_grupo: TSmallintField;
    adoProdutosid_fornecedor: TSmallintField;
    adoProdutosid_laboratorio: TSmallintField;
    adoProdutosICMS: TBCDField;
    adoProdutosIPI: TBCDField;
    adoProdutosestoque_minimo: TSmallintField;
    adoProdutosestoque_maximo: TIntegerField;
    adoProdutosvalor_compra: TBCDField;
    adoProdutosvalor_venda: TBCDField;
    adoProdutosid_unidade: TSmallintField;
    adoProdutostarja: TWideStringField;
    adoProdutosreceita: TWideStringField;
    adoProdutosid_univenda: TSmallintField;
    adoGruposcod: TAutoIncField;
    adoGruposdescricao: TWideStringField;
    adoProdutoslocalizacao: TWideStringField;
    dtsMovimentacao: TDataSource;
    adoMovimentacao: TADOTable;
    adoMovimentacaocod_movimentacoes: TAutoIncField;
    adoMovimentacaocod_manobra: TSmallintField;
    adoMovimentacaocod_produto: TSmallintField;
    adoMovimentacaodata: TDateTimeField;
    adoMovimentacaohistorico: TWideStringField;
    adoMovimentacaoquantidade: TSmallintField;
    adoMovimentacaocusto: TBCDField;
    adoMovimentacaocod_fornecedor: TSmallintField;
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
