unit untPesquisaCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesquisaGeral, StdCtrls, Grids, DBGrids, Buttons, DB;

type
  TfrmPesquisaCategorias = class(TfrmPesquisaGeral)
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaCategorias: TfrmPesquisaCategorias;

implementation

uses untbanco, untClasses, udmcadcategoria;

{$R *.dfm}

procedure TfrmPesquisaCategorias.btnPesquisaClick(Sender: TObject);
var consulta:string;
begin
  inherited;
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
  end else
  dmcadcategoria.queryCategorias.Close;
  dmcadcategoria.queryCategorias.SQL.Clear;
  dmcadcategoria.queryCategorias.SQL.Add('SELECT * FROM');
  dmcadcategoria.queryCategorias.SQL.Add('tlb_prod_categorias');
  dmcadcategoria.queryCategorias.SQL.Add('WHERE descricao');
  dmcadcategoria.queryCategorias.SQL.Add('LIKE ''%' +consulta + '%'' ');
  dmcadcategoria.queryCategorias.ExecSQL;
  dmcadcategoria.queryCategorias.Open;
end;

procedure TfrmPesquisaCategorias.DBGrid1CellClick(Column: TColumn);
  var dados: String;
begin
inherited;
  if (dbGrid1.SelectedIndex = 1) then
  begin
  dados := dbGrid1.Columns.Items[dbGrid1.SelectedIndex].Field.Text;
  dmcadcategoria.adoCategorias.Locate('descricao', dados, [loCaseInsensitive, loPartialKey]);
  frmPesquisaCategorias.Close;
  end;
end;

end.
