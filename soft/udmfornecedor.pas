unit udmfornecedor;

interface

uses
  SysUtils, Classes, ADODB, DB;

type
  Tdmfornecedor = class(TDataModule)
    dtsFornecedor: TDataSource;
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
    dtsFornecedoresQr: TDataSource;
    queryFornecedor: TADOQuery;
    dtsEstados: TDataSource;
    adoEstados: TADOTable;
    adoEstadoscod: TAutoIncField;
    adoEstadosuf: TWideStringField;
    adoEstadosnome: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmfornecedor: Tdmfornecedor;

implementation

uses untBanco;

{$R *.dfm}

end.
