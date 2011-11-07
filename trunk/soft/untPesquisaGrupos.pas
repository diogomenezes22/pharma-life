unit untPesquisaGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesquisaGeral, Buttons, StdCtrls, Grids, DBGrids, DB;

type
  TfrmPesquisaGrupos = class(TfrmPesquisaGeral)
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaGrupos: TfrmPesquisaGrupos;

implementation

uses untbanco, udmcadgrupo, untClasses;

{$R *.dfm}


procedure TfrmPesquisaGrupos.btnPesquisaClick(Sender: TObject);
var consulta:string;
begin
  inherited;
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
  end else
  dtmcadgrupo.queryGrupos.Close;
  dtmcadgrupo.queryGrupos.SQL.Clear;
  dtmcadgrupo.queryGrupos.SQL.Add('SELECT * FROM');
  dtmcadgrupo.queryGrupos.SQL.Add('tlb_laboratorios');
  dtmcadgrupo.queryGrupos.SQL.Add('WHERE nome');
  dtmcadgrupo.queryGrupos.SQL.Add('LIKE ''%' +consulta + '%'' ');
  dtmcadgrupo.queryGrupos.ExecSQL;
  dtmcadgrupo.queryGrupos.Open;
end;


procedure TfrmPesquisaGrupos.DBGrid1CellClick(Column: TColumn);
 var dados: String;
begin
inherited;
  if (dbGrid1.SelectedIndex = 1) then
  begin
  dados := dbGrid1.Columns.Items[dbGrid1.SelectedIndex].Field.Text;
  dtmcadgrupo.adoGrupos.Locate('nome', dados, [loCaseInsensitive, loPartialKey]);
  frmPesquisaGeral.Close;
  end;
end;

end.
