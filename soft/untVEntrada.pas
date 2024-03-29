unit untVEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TfrmGerenciaEntrada = class(TForm)
    DBGrid1: TDBGrid;
    QMovimento: TADOQuery;
    dts1: TDataSource;
    dts2: TDataSource;
    AMovimento: TADOTable;
    AMovimentocod_movimentacoes: TAutoIncField;
    AMovimentocod_manobra: TSmallintField;
    AMovimentocod_produto: TSmallintField;
    AMovimentodata: TDateTimeField;
    AMovimentodataval: TDateTimeField;
    AMovimentohistorico: TWideStringField;
    AMovimentoquantidade: TSmallintField;
    AMovimentocusto: TBCDField;
    AMovimentocod_fornecedor: TSmallintField;
    Label1: TLabel;
    edtProduto: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerenciaEntrada: TfrmGerenciaEntrada;
  codigo_prod, cod_man:string;

implementation

uses untbanco, untClasses;

{$R *.dfm}

procedure TfrmGerenciaEntrada.FormCreate(Sender: TObject);
begin
  {with QMovimento do begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from tlb_movimentacao');
  sql.Add('where cod_produto = :cod_prod and cod_manobra =:cod_man');
  Parameters.ParamByName('cod_produto').Value := codigo_prod ;
  Parameters.ParamByName('cod_man').Value := cod_man ;
  Open;
  end;}
end;

end.
