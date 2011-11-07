unit untPesquisaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesquisaGeral, Buttons, StdCtrls, Grids, DBGrids, DB,
  udmCadCliente;

type
  TfrmPesquisaClientes = class(TfrmPesquisaGeral)
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaClientes: TfrmPesquisaClientes;

implementation

uses untbanco, untClasses;

{$R *.dfm}

procedure TfrmPesquisaClientes.btnPesquisaClick(Sender: TObject);
var consulta:string;
begin
  inherited;
  consulta := editPesquisa.Text;
  if (consulta = '') then begin
     setMensagem('Por favor preencha o campo pesquisa!');
  end else
  dmCadCliente.queryClientes.Close;
  dmCadCliente.queryClientes.SQL.Clear;
  dmCadCliente.queryClientes.SQL.Add('SELECT cod, nome, rg, cpf FROM');
  dmCadCliente.queryClientes.SQL.Add('tlb_clientes');
  dmCadCliente.queryClientes.SQL.Add('WHERE nome');
  dmCadCliente.queryClientes.SQL.Add('LIKE ''%' +consulta + '%'' ');
  dmCadCliente.queryClientes.ExecSQL;
  dmCadCliente.queryClientes.Open;
end;

procedure TfrmPesquisaClientes.DBGrid1CellClick(Column: TColumn);
 var dados: String;
begin
inherited;
  if (dbGrid1.SelectedIndex = 1) then
  begin
  dados := dbGrid1.Columns.Items[dbGrid1.SelectedIndex].Field.Text;
  dmCadCliente.adoClientes.Locate('nome', dados, [loCaseInsensitive, loPartialKey]);
  frmPesquisaClientes.Close;
  end;
end;

end.
