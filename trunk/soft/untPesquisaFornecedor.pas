unit untPesquisaFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesquisaGeral, Buttons, StdCtrls, Grids, DBGrids, DB;

type
  TfrmPesquisaForncedor = class(TfrmPesquisaGeral)
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaForncedor: TfrmPesquisaForncedor;

implementation

uses untbanco, untClasses, udmfornecedor;

{$R *.dfm}

procedure TfrmPesquisaForncedor.btnPesquisaClick(Sender: TObject);
var consulta:string;
begin
  inherited;
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
  end else
  dmfornecedor.queryFornecedor.Close;
  dmfornecedor.queryFornecedor.SQL.Clear;
  dmfornecedor.queryFornecedor.SQL.Add('SELECT * FROM');
  dmfornecedor.queryFornecedor.SQL.Add('tlb_fornecedor');
  dmfornecedor.queryFornecedor.SQL.Add('WHERE empresa');
  dmfornecedor.queryFornecedor.SQL.Add('LIKE ''%' +consulta + '%'' ');
  dmfornecedor.queryFornecedor.ExecSQL;
  dmfornecedor.queryFornecedor.Open;
end;

procedure TfrmPesquisaForncedor.DBGrid1CellClick(Column: TColumn);
 var dados: String;
begin
inherited;
  if (dbGrid1.SelectedIndex = 1) then
  begin
  dados := dbGrid1.Columns.Items[dbGrid1.SelectedIndex].Field.Text;
  dmfornecedor.adoFornecedor.Locate('empresa', dados, [loCaseInsensitive, loPartialKey]);
  frmPesquisaForncedor.Close;
  end;
end;

end.
