unit udmcadUsuario;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmCadUsuario = class(TDataModule)
    adoUsuarios: TADOTable;
    dtsUsuarios: TDataSource;
    adoUsuarioscod_usuario: TAutoIncField;
    adoUsuariosnome: TWideStringField;
    adoUsuariosusuario: TWideStringField;
    adoUsuariossenha: TWideStringField;
    adoUsuariosnivel: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadUsuario: TdmCadUsuario;

implementation

uses untBanco;

{$R *.dfm}

end.
