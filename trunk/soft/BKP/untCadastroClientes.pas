unit untCadastroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, Grids,
  DBGrids, DBCtrls, Mask;

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
    cpSexo: TDBEdit;
    Label4: TLabel;
    cpNascionalidade: TDBEdit;
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
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvanClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

uses untbanco, untClasses, untPesquisaClientes;

{$R *.dfm}

procedure TfrmCadastroClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmserver.adoClientes.Insert;
  cpDataRegistro.ReadOnly := true;
end;

procedure TfrmCadastroClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmServer.adoClientes.Edit;
end;

procedure TfrmCadastroClientes.btnVoltarClick(Sender: TObject);
begin
  inherited;
   dtmServer.adoClientes.Prior;
end;

procedure TfrmCadastroClientes.btnAvanClick(Sender: TObject);
begin
  inherited;
  dtmServer.adoClientes.Next;
end;

procedure TfrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
if (setQuestion('Deseja desfazer as alterações?')= true) then
  begin
  dtmServer.adoClientes.Cancel;
  end
  else
  begin
  dtmServer.adoClientes.Edit;
  end;
end;

procedure TfrmCadastroClientes.btnSalvarClick(Sender: TObject);
begin
  dtmServer.adoClientes.Post;
  dtmServer.adoClientes.Refresh;
  inherited;
end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja apagar o registro atual?') = true) then
  begin
  setMensagemSTB('Dados apagados com sucesso!');
  dtmServer.adoClientes.Delete;
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

procedure TfrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroClientes := nil;
end;

procedure TfrmCadastroClientes.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 0;
end;

end.
