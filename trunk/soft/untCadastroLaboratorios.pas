unit untCadastroLaboratorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadastroP, ImgList, ComCtrls, StdCtrls, ToolWin, DBCtrls,
  Mask, Grids, DBGrids, DB;

type
  TfrmCadastroLaboratorios = class(TfrmCadastroGeral)
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dbgLabs: TDBGrid;
    Label1: TLabel;
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
    procedure dbgLabsDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroLaboratorios: TfrmCadastroLaboratorios;

implementation

uses untbanco, untClasses, untPesquisaLaboratorios, ucadlaboratorio;

{$R *.dfm}

procedure TfrmCadastroLaboratorios.btnNovoClick(Sender: TObject);
begin
  inherited;
  dmcadlab.adoLabs.Insert;
end;

procedure TfrmCadastroLaboratorios.btnEditarClick(Sender: TObject);
begin
  inherited;
  dmcadlab.adoLabs.Edit;
end;

procedure TfrmCadastroLaboratorios.btnVoltarClick(Sender: TObject);
begin
  inherited;
  dmcadlab.adoLabs.Prior;
end;

procedure TfrmCadastroLaboratorios.btnAvanClick(Sender: TObject);
begin
  inherited;
  dmcadlab.adoLabs.Next;
end;

procedure TfrmCadastroLaboratorios.btnCancelarClick(Sender: TObject);
begin
  inherited;
    if (setQuestion('Deseja desfazer as alterações?')= true) then
  begin
  dmcadlab.adoLabs.Cancel;
  end
  else
  begin
  dmcadlab.adoLabs.Edit;
  end;


end;

procedure TfrmCadastroLaboratorios.btnSalvarClick(Sender: TObject);
begin
  inherited;
 if dmcadlab.adoLabs.State in [dsedit, dsinsert]then
  begin
  dmcadlab.adoLabs.Post;
  dmcadlab.adoLabs.Refresh;
  end
  else
  begin
  ShowMessage('Erro, Tabela não está em edição ou inserção');
  end;
end;

procedure TfrmCadastroLaboratorios.btnExcluirClick(Sender: TObject);
begin
  inherited;
 if (setQuestion('Deseja apagar o registro atual?') = true) then
  begin
  setMensagemSTB('Dados apagados com sucesso!');
  dmcadlab.adoLabs.Delete;
  end;
end;

procedure TfrmCadastroLaboratorios.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;


procedure TfrmCadastroLaboratorios.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  if (frmPesquisaLab = nil) then begin
  frmPesquisaLab := TfrmPesquisaLab.Create(Self);
  frmPesquisaLab.ShowModal;
  end else
  frmPesquisaLab.ShowModal;
end;

procedure TfrmCadastroLaboratorios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroLaboratorios := nil;
end;

procedure TfrmCadastroLaboratorios.FormCreate(Sender: TObject);
begin
  inherited;
  dmcadlab := Tdmcadlab.Create(Self);
  dmcadlab.adoLabs.Open;
  dmcadlab.adoEstados.Open;
end;

procedure TfrmCadastroLaboratorios.FormDestroy(Sender: TObject);
begin
  inherited;
  dmcadlab.adoLabs.Close;
  dmcadlab.adoEstados.Close;
  FreeAndNil(dmcadlab);
end;

procedure TfrmCadastroLaboratorios.dbgLabsDblClick(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 1;
end;

end.
