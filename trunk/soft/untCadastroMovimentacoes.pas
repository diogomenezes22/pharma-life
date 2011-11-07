unit untCadastroMovimentacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, DB, StdCtrls, ExtCtrls, DBCtrls, Mask, ComCtrls,
  ToolWin, Buttons, Grids, DBGrids;

type
  TfrmCadastroMov = class(TfrmCadastroGeral)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbeProdutoDesc: TDBEdit;
    dbeProdutoCod: TDBEdit;
    dbeQntd: TDBEdit;
    dbeData: TDBEdit;
    dbeDatval: TDBEdit;
    dbeCust: TDBEdit;
    dbeDesc: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbeCodMovimentacao: TDBEdit;
    dtsMovimentacao: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsFornecedor: TDataSource;
    btnPesquisaRaP: TBitBtn;
    TabSheet1: TTabSheet;
    dbgEstoque: TDBGrid;
    Label3: TLabel;
    lblTotal: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvanClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisaRaPClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroMov: TfrmCadastroMov;

implementation

uses udmMovimentacao, unitPesquisaRapidaProdutos;

{$R *.dfm}

procedure TfrmCadastroMov.btnPesquisaRaPClick(Sender: TObject);
begin
  inherited;
       if not Assigned(frmPesquisaRapidaProdutos) then
       begin
       frmPesquisaRapidaProdutos:= TfrmPesquisaRapidaProdutos.Create(Self);
       frmPesquisaRapidaProdutos.Show;
       end
       else
       frmPesquisaRapidaProdutos.Show;
end;

procedure TfrmCadastroMov.btnAvanClick(Sender: TObject);
begin
  inherited;
dmMovimentacao.cdsMovimentacao.Next;
end;

procedure TfrmCadastroMov.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dmMovimentacao.cdsMovimentacao.Cancel;
  dmMovimentacao.cdsMovimentacao.CancelUpdates;
  btnPesquisaRaP.Enabled:= false;
  btnNovo.Enabled := false;
  btnNovo.Enabled := false;

end;

procedure TfrmCadastroMov.btnEditarClick(Sender: TObject);
begin
  inherited;
  btnPesquisaRaP.Enabled:= true;
end;

procedure TfrmCadastroMov.btnExcluirClick(Sender: TObject);
begin
  inherited;
  dmMovimentacao.cdsMovimentacao.Delete;

  if dmMovimentacao.cdsMovimentacao.ApplyUpdates(0) <> 0 then
  begin
    dmMovimentacao.cdsMovimentacao.CancelUpdates;
  end;
  btnNovo.Enabled := false;
  btnNovo.Enabled := false;
end;

procedure TfrmCadastroMov.btnNovoClick(Sender: TObject);
begin
  inherited;
  dmMovimentacao.cdsMovimentacao.Append;
  btnPesquisaRaP.Enabled:= true;

end;

procedure TfrmCadastroMov.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dmMovimentacao.cdsMovimentacao.Post;
  btnPesquisaRaP.Enabled:= false;
  if dmMovimentacao.cdsMovimentacao.ApplyUpdates(0) <> 0 then
  begin
    dmMovimentacao.cdsMovimentacao.CancelUpdates;
  end;
  btnNovo.Enabled := false;
  btnNovo.Enabled := false;
end;

procedure TfrmCadastroMov.btnVoltarClick(Sender: TObject);
begin
  inherited;
  dmMovimentacao.cdsMovimentacao.Prior;
end;

procedure TfrmCadastroMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadastroMov := nil;
end;

procedure TfrmCadastroMov.FormCreate(Sender: TObject);
begin
  inherited;
 dmMovimentacao := TdmMovimentacao.Create(self);
 dmMovimentacao.cdsMovimentacao.FetchParams;
 dmMovimentacao.cdsMovimentacao.Params.ParamByName('COD_MOVIMENTACOES').Value :=
 0;
 dmMovimentacao.cdsMovimentacao.Open;
 dmMovimentacao.cdsFornecedor.Open;
end;

procedure TfrmCadastroMov.FormDestroy(Sender: TObject);
begin
  inherited;
  dmMovimentacao.cdsMovimentacao.Close;
  dmMovimentacao.cdsFornecedor.Close;
  freeandnil(dmMovimentacao);
end;

end.
