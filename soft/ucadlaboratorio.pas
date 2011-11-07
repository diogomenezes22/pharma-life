unit ucadlaboratorio;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdmcadlab = class(TDataModule)
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
    dtsEstados: TDataSource;
    adoEstados: TADOTable;
    adoEstadoscod: TAutoIncField;
    adoEstadosuf: TWideStringField;
    adoEstadosnome: TWideStringField;
    dtsLabsQr: TDataSource;
    queryLabs: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmcadlab: Tdmcadlab;

implementation

uses untBanco;

{$R *.dfm}

end.
