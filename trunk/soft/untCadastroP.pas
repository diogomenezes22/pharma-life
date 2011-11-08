unit untCadastroP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, ComCtrls, ToolWin, DBCtrls, Mask;

type
  TfrmCadastroGeral = class(TForm)
    clbPainel: TCoolBar;
    tlbBotoes: TToolBar;
    btnNovo: TToolButton;
    lblTitulo: TLabel;
    pagCadastro: TPageControl;
    pag1Cad: TTabSheet;
    btnEditar: TToolButton;
    btnVoltar: TToolButton;
    btnAvan: TToolButton;
    btnCancelar: TToolButton;
    btnExcluir: TToolButton;
    btnSalvar: TToolButton;
    stbCad: TStatusBar;
    btnPesquisa: TToolButton;
    btnSair: TToolButton;
    procedure setCampos(campoStatus:boolean);
    procedure setMensagemSTB(const mensagem:string);
    procedure setBotoes(Sender: TObject; btnStatus:boolean);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
     
    { Public declarations }
  end;

var
  frmCadastroGeral: TfrmCadastroGeral;

implementation

uses untClasses, untbanco;

{$R *.dfm}

procedure TfrmCadastroGeral.setCampos(campoStatus:boolean);
var i:integer;
begin
   for i:= 0 to ((ComponentCount)-1) do
   begin
       if (Components[i].ClassName = 'TDBEdit') then
       begin
           TDBEdit(Components[i]).ReadOnly := campoStatus;
       end;
       if (Components[i].ClassName = 'TDBLookupComboBox') then
       begin
          TDBLookupComboBox(Components[i]).ReadOnly := campoStatus;
       end;
       if (Components[i].ClassName = 'TDBComboBox') then
       begin
          TDBComboBox(Components[i]).ReadOnly := campoStatus;
       end;
       if (Components[i].ClassName = 'TDBMemo') then
       begin
          TDBMemo(Components[i]).ReadOnly := campoStatus;
       end;
    end;
end;

procedure TfrmCadastroGeral.setMensagemSTB(const mensagem:string);
begin
 stbCad.Panels[0].Text := mensagem;
end;

procedure TfrmCadastroGeral.setBotoes(Sender: TObject; btnStatus:boolean);
begin
   btnNovo.Enabled:=btnStatus;
   btnEditar.Enabled:=btnStatus;
   btnVoltar.Enabled:=btnStatus;
   btnAvan.Enabled :=btnStatus;
   btnCancelar.Enabled:=btnStatus;
   btnSalvar.Enabled:=btnStatus;
   btnExcluir.Enabled:=btnStatus;
   btnPesquisa.Enabled:=btnStatus;
end;


procedure TfrmCadastroGeral.btnExcluirClick(Sender: TObject);
begin
pagCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroGeral.btnPesquisaClick(Sender: TObject);
begin
pagCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroGeral.FormShow(Sender: TObject);
begin
   btnSalvar.Enabled:=false;
   btnCancelar.Enabled:=false;
   setCampos(true);
   pagCadastro.ActivePageIndex:= 0;
end;

procedure TfrmCadastroGeral.btnNovoClick(Sender: TObject);
begin
 setMensagemSTB('Novo Registro');
 setBotoes(Sender,false);
 setCampos(false);
 btnCancelar.Enabled := true;
 btnSalvar.Enabled := true;
 pagCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroGeral.btnEditarClick(Sender: TObject);
begin
  setCampos(false);
  setBotoes(Sender,false);
  btnSalvar.Enabled := true;
  btnCancelar.Enabled:= true;
  setMensagemSTB('Item em Edição');
  pagCadastro.ActivePageIndex := 1;
end;

procedure TfrmCadastroGeral.btnCancelarClick(Sender: TObject);
begin
  setBotoes(Sender, true);
  setMensagemSTB('');
end;

procedure TfrmCadastroGeral.btnSairClick(Sender: TObject);
begin
  if (Sender is TForm) then
     (Sender as TForm).Close;
end;

procedure TfrmCadastroGeral.btnSalvarClick(Sender: TObject);
begin
  setBotoes(Sender, true);
  setCampos(true);
  btnSalvar.Enabled := false;
  btnCancelar.Enabled:= false;
end;

procedure TfrmCadastroGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCadastroGeral.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Canclose:=setQuestion('Deseja realmente fechar este formulario?'+#13+
                        'Dados não salvos serão perdidos.');
end;

procedure TfrmCadastroGeral.FormCreate(Sender: TObject);
begin
 clbPainel.Bitmap.LoadFromFile('../imgs/bgtitle.bmp');
end;

end.
