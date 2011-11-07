unit udmcadcategoria;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdmcadcategoria = class(TDataModule)
    dtsCategorias: TDataSource;
    adoCategorias: TADOTable;
    adoCategoriascod_categorias: TAutoIncField;
    adoCategoriasdescricao: TWideStringField;
    dtsCategoriasQ: TDataSource;
    queryCategorias: TADOQuery;
    queryCategoriascod_categorias: TAutoIncField;
    queryCategoriasdescricao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmcadcategoria: Tdmcadcategoria;

implementation

uses untBanco;

{$R *.dfm}

end.
