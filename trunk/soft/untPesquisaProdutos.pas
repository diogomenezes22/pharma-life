unit untPesquisaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesquisaGeral, Buttons, StdCtrls, Grids, DBGrids, DB,
  udmCadCliente, untBanco;

type
  TfrmPesquisaProdutos = class(TfrmPesquisaGeral)
   procedure btnPesquisaClick(Sender:TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProdutos: TfrmPesquisaProdutos;

implementation

uses untClasses, ucadprodutos;

{$R *.dfm}

procedure TfrmPesquisaProdutos.btnPesquisaClick(Sender:TObject);
var consulta:string;
begin
  inherited;
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
     editPesquisa.SetFocus;
  end else
  dmcadproduto.queryProdutos.Close;
  dmcadproduto.queryProdutos.SQL.Clear;
  dmcadproduto.queryProdutos.SQL.Add('SELECT * FROM');
  dmcadproduto.queryProdutos.SQL.Add('tlb_produtos');
  dmcadproduto.queryProdutos.SQL.Add('WHERE prod_nome');
  dmcadproduto.queryProdutos.SQL.Add('LIKE ''%' +consulta + '%'' ');
  dmcadproduto.queryProdutos.ExecSQL;
  dmcadproduto.queryProdutos.Open;
end;


procedure TfrmPesquisaProdutos.DBGrid1CellClick(Column: TColumn);
 var dados: String;
begin
inherited;
  if (dbGrid1.SelectedIndex = 1) then
  begin
  dados := dbGrid1.Columns.Items[dbGrid1.SelectedIndex].Field.Text;
  dmcadproduto.adoProdutos.Locate('prod_nome', dados, [loCaseInsensitive, loPartialKey]);
  frmPesquisaProdutos.Close;
  end;
end;

end.
