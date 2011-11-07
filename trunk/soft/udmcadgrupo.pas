unit udmcadgrupo;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdtmcadgrupo = class(TDataModule)
    dtsGrupos: TDataSource;
    adoGrupos: TADOTable;
    adoGruposcod: TAutoIncField;
    adoGruposdescricao: TWideStringField;
    dtsGruposQ: TDataSource;
    queryGrupos: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmcadgrupo: Tdtmcadgrupo;

implementation

uses untBanco;

{$R *.dfm}

end.
