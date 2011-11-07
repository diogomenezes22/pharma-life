unit untCadastroForncedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, Mask,
  DBCtrls, Grids, DBGrids;

type
  TfrmCadastroForncedor = class(TfrmCadastroGeral)
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroForncedor: TfrmCadastroForncedor;

implementation

uses untClasses, untPesquisaFornecedor, udmfornecedor;

{$R *.dfm}

procedure TfrmCadastroForncedor.btnNovoClick(Sender: TObject);
begin
  inherited;
   dmfornecedor.adoFornecedor.Insert;
end;

procedure TfrmCadastroForncedor.btnEditarClick(Sender: TObject);
begin
  inherited;
    dmfornecedor.adoFornecedor.Edit;
end;

procedure TfrmCadastroForncedor.btnVoltarClick(Sender: TObject);
begin
  inherited;
   dmfornecedor.adoFornecedor.Prior;
end;

procedure TfrmCadastroForncedor.btnAvanClick(Sender: TObject);
begin
  inherited;
   dmfornecedor.adoFornecedor.Next;
end;

procedure TfrmCadastroForncedor.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja desfazer as alterações?')= true) then
  begin
  dmfornecedor.adoFornecedor.Cancel;
  end
  else
  begin
  dmfornecedor.adoFornecedor.Edit;
  end;


end;

procedure TfrmCadastroForncedor.btnSalvarClick(Sender: TObject);
begin
   dmfornecedor.adoFornecedor.Post;
   dmfornecedor.adoFornecedor.Refresh;
   inherited;
end;

procedure TfrmCadastroForncedor.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (setQuestion('Deseja apagar o registro atual?') = true) then
  begin
  setMensagemSTB('Dados apagados com sucesso!');
  dmfornecedor.adoFornecedor.Delete;
  end;
end;

procedure TfrmCadastroForncedor.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCadastroForncedor.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  frmPesquisaForncedor := TfrmPesquisaForncedor.Create(Self);
  frmPesquisaForncedor.ShowModal;
end;

procedure TfrmCadastroForncedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroForncedor := nil;
end;

procedure TfrmCadastroForncedor.FormCreate(Sender: TObject);
begin
  inherited;
  dmfornecedor := Tdmfornecedor.Create(Self);
  dmfornecedor.adoFornecedor.Open;
  dmfornecedor.adoEstados.Open;

end;

procedure TfrmCadastroForncedor.FormDestroy(Sender: TObject);
begin
  inherited;
  dmfornecedor.adoFornecedor.Close;
  dmfornecedor.adoEstados.Close;
  FreeAndNil(dmfornecedor);
end;

procedure TfrmCadastroForncedor.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 1;
end;

end.
