unit untPesquisaLaboratorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesquisaGeral, Buttons, StdCtrls, Grids, DBGrids, DB;

type
  TfrmPesquisaLab = class(TfrmPesquisaGeral)
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaLab: TfrmPesquisaLab;

implementation

uses untbanco, untClasses, ucadlaboratorio;

{$R *.dfm}

procedure TfrmPesquisaLab.btnPesquisaClick(Sender: TObject);
var consulta:string;
begin
  inherited;
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
  end else
  dmcadlab.queryLabs.Close;
  dmcadlab.queryLabs.SQL.Clear;
  dmcadlab.queryLabs.SQL.Add('SELECT * FROM');
  dmcadlab.queryLabs.SQL.Add('tlb_laboratorios');
  dmcadlab.queryLabs.SQL.Add('WHERE nome');
  dmcadlab.queryLabs.SQL.Add('LIKE ''%' +consulta + '%'' ');
  dmcadlab.queryLabs.ExecSQL;
  dmcadlab.queryLabs.Open;
end;

procedure TfrmPesquisaLab.DBGrid1CellClick(Column: TColumn);
 var dados: String;
begin
inherited;
  if (dbGrid1.SelectedIndex = 1) then
  begin
  dados := dbGrid1.Columns.Items[dbGrid1.SelectedIndex].Field.Text;
  dmcadlab.adoLabs.Locate('nome', dados, [loCaseInsensitive, loPartialKey]);
  frmPesquisaLab.Close;
  end;
end;

end.
