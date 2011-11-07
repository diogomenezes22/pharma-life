unit ucadprodutos;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdmcadproduto = class(TDataModule)
    dtsLabs: TDataSource;
    adoLabs: TADOTable;
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
    queryProdutos: TADOQuery;
    dtsProdutosQr: TDataSource;
    adoProdutos: TADOTable;
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
    adoProdutoslocalizacao: TWideStringField;
    dtsProdutos: TDataSource;
    dtsTarja: TDataSource;
    adoTarja: TADOTable;
    adoTarjacod: TAutoIncField;
    adoTarjatarja: TWideStringField;
    adoCategorias: TADOTable;
    adoCategoriascod_categorias: TAutoIncField;
    adoCategoriasdescricao: TWideStringField;
    dtsCategorias: TDataSource;
    adoGrupos: TADOTable;
    adoGruposcod: TAutoIncField;
    adoGruposdescricao: TWideStringField;
    dtsGrupos: TDataSource;
    dtsUnidades: TDataSource;
    adoUnidades: TADOTable;
    adoFornecedor: TADOTable;
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
    dtsFornecedor: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmcadproduto: Tdmcadproduto;

implementation

uses untBanco;

{$R *.dfm}

end.
