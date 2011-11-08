unit untCadastroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, Grids,
  DBGrids, DBCtrls, Mask, udmCadCliente;

type
  TfrmCadastroClientes = class(TfrmCadastroGeral)
    TabSheet1: TTabSheet;
    grbDados: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    cpNome: TDBEdit;
    Label2: TLabel;
    cpNascimento: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cpRG: TDBEdit;
    Label6: TLabel;
    cpCPF: TDBEdit;
    grbOutros: TGroupBox;
    Label7: TLabel;
    cpTel: TDBEdit;
    Label8: TLabel;
    cpCel: TDBEdit;
    Label9: TLabel;
    cpEmail: TDBEdit;
    Label10: TLabel;
    cpEndereco: TDBEdit;
    Label11: TLabel;
    cpN: TDBEdit;
    Label12: TLabel;
    cpBairro: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    cpPais: TDBEdit;
    Label15: TLabel;
    cpDataRegistro: TDBEdit;
    cpUF: TDBLookupComboBox;
    Label16: TLabel;
    Label17: TLabel;
    cpStatus: TDBLookupComboBox;
    cpTipoCliente: TDBLookupComboBox;
    cpNotes: TDBMemo;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvanClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

uses  untClasses, untPesquisaClientes;

{$R *.dfm}

procedure TfrmCadastroClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  dmCadCliente.adoClientes.Insert;
  cpDataRegistro.ReadOnly := true;
end;

procedure TfrmCadastroClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  dmCadCliente.adoClientes.Edit;
end;

procedure TfrmCadastroClientes.btnVoltarClick(Sender: TObject);
begin
  inherited;
  dmCadCliente.adoClientes.Prior;
end;

procedure TfrmCadastroClientes.btnAvanClick(Sender: TObject);
begin
  inherited;
  dmCadCliente.adoClientes.Next;
end;

procedure TfrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin

if (setQuestion('Deseja desfazer as alterações?')= true) then
  begin
  dmCadCliente.adoClientes.Cancel;
  inherited;
  end
  else
  begin
  dmCadCliente.adoClientes.Edit;
  end;
end;

procedure TfrmCadastroClientes.btnSalvarClick(Sender: TObject);
begin
  if (checka_campos(Sender)) then
    begin
    dmCadCliente.adoClientes.Post;
    dmCadCliente.adoClientes.Refresh;
    inherited;
    end
  else
    begin
    ShowMessage('Existem campos a seren preenchidos');
    end;

end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja apagar o registro atual?') = true) then
  begin
  setMensagemSTB('Dados apagados com sucesso!');
  dmCadCliente.adoClientes.Delete;
  end;
end;

procedure TfrmCadastroClientes.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadastroClientes.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  frmPesquisaClientes := TfrmPesquisaClientes.Create(Self);
  frmPesquisaClientes.ShowModal;
end;

procedure TfrmCadastroClientes.FormCreate(Sender: TObject);
begin
  inherited;
  dmCadCliente := TdmCadCliente.Create(Self);
  dmCadCliente.adoClientes.Open;
  dmCadCliente.queryClientes.Open;
  dmCadCliente.adoEstados.Open;
  dmCadCliente.adostatuscliente.Open;
  dmCadCliente.adoTipoCliente.Open;
end;

procedure TfrmCadastroClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  dmCadCliente.adoClientes.Close;
  dmCadCliente.queryClientes.Close;
  dmCadCliente.adoEstados.Close;
  dmCadCliente.adostatuscliente.Close;
  dmCadCliente.adoTipoCliente.Close;
  freeandnil(dmCadCliente);
  frmCadastroClientes := nil;
end;

procedure TfrmCadastroClientes.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 1;
end;

end.
