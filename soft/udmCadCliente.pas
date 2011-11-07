unit udmCadCliente;

interface

uses
  SysUtils, Classes, ADODB, DB, untBanco;

type
  TdmCadCliente = class(TDataModule)
    dtsClientes: TDataSource;
    adoClientes: TADOTable;
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
    dtsClientesQr: TDataSource;
    queryClientes: TADOQuery;
    dtsEstados: TDataSource;
    adoEstados: TADOTable;
    adoEstadoscod: TAutoIncField;
    adoEstadosuf: TWideStringField;
    adoEstadosnome: TWideStringField;
    dts_statuscliente: TDataSource;
    adostatuscliente: TADOTable;
    adostatusclienteid_status: TAutoIncField;
    adostatusclientetipo_status: TWideStringField;
    dtsTipoClientes: TDataSource;
    adoTipoCliente: TADOTable;
    adoTipoClienteid_campo: TAutoIncField;
    adoTipoClientetipo_cliente: TWideStringField;
    procedure adoClientesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadCliente: TdmCadCliente;

implementation

{$R *.dfm}

procedure TdmCadCliente.adoClientesNewRecord(DataSet: TDataSet);
begin
  adoClientes.FieldByName('data_reg').Value := Date;
end;

end.
