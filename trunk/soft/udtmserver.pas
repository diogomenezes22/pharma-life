unit udtmserver;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdtmserver = class(TDataModule)
    AdoQ: TADOQuery;
    ADOSERVER: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmserver: Tdtmserver;

implementation

{$R *.dfm}

end.
