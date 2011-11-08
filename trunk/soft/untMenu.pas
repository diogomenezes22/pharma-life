unit untMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, StdCtrls, jpeg, ToolWin, ImgList,
  AppEvnts;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Estoque1: TMenuItem;
    sobre1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Laboratorios1: TMenuItem;
    Fornecedores1: TMenuItem;
    OSoftware1: TMenuItem;
    stbMenu: TStatusBar;
    Timer1: TTimer;
    imgBack: TImage;
    Sair1: TMenuItem;
    imgMenu: TImageList;
    colbPainel: TCoolBar;
    tolbPainel: TToolBar;
    btSair: TToolButton;
    btCliente: TToolButton;
    btForncedores: TToolButton;
    btProdutos: TToolButton;
    btLaboratorios: TToolButton;
    Cadastros3: TMenuItem;
    Categorias1: TMenuItem;
    Grupod1: TMenuItem;
    AppHint: TApplicationEvents;
    Janelas1: TMenuItem;
    Alinhar1: TMenuItem;
    Vertical1: TMenuItem;
    Minimizar1: TMenuItem;
    Maximizar1: TMenuItem;
    Arranjar1: TMenuItem;
    Fechar1: TMenuItem;
    Cascata1: TMenuItem;
    Movimentaes1: TMenuItem;
    Estoque2: TMenuItem;
    trYcon: TTrayIcon;
    popMenu: TPopupMenu;
    Exibir1: TMenuItem;
    Minimizar2: TMenuItem;
    Fechar2: TMenuItem;
    ToolButton1: TToolButton;
    N1: TMenuItem;
    CadastrodeUsuario1: TMenuItem;
    ToolButton2: TToolButton;
    btCadUsuario: TToolButton;
    ConfigurarBancodedado1: TMenuItem;
    Relatorios1: TMenuItem;
    Clientes2: TMenuItem;
    Produtos2: TMenuItem;
    Fornecedores2: TMenuItem;
    Produtos3: TMenuItem;
    Estroue1: TMenuItem;
    procedure openJanela(FClass: TFormClass; var Instance);
    procedure FormShow(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure btForncedoresClick(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure btLaboratoriosClick(Sender: TObject);
    procedure Grupod1Click(Sender: TObject);
    procedure Laboratorios1Click(Sender: TObject);
    procedure AppHintHint(Sender: TObject);
    procedure btProdutosClick(Sender: TObject);
    procedure Cadastros3Click(Sender: TObject);
    procedure Cascata1Click(Sender: TObject);
    procedure Alinhar1Click(Sender: TObject);
    procedure Vertical1Click(Sender: TObject);
    procedure Arranjar1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Maximizar1Click(Sender: TObject);
    procedure Movimentaes1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OSoftware1Click(Sender: TObject);
    procedure AppHintMinimize(Sender: TObject);
    procedure Exibir1Click(Sender: TObject);
    procedure Minimizar2Click(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CadastrodeUsuario1Click(Sender: TObject);
    procedure ConfigurarBancodedado1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure Produtos3Click(Sender: TObject);
  private
    { Private declarations }
  public
      { Public declarations }


  end;

var
  frmMenu: TfrmMenu;
  usuario_log : string;


implementation

uses untClasses, untCadastroP, untcadCategorias, untPesquisaGeral,
untCadastroClientes, untCadastroForncedor, untCadastroLaboratorios,
untCadastroGrupos, untCadastroProdutos, uSobre, U_Login, IniFiles, untMSG,
  uCadastroUsuarios, uBaseDados, uCadMovimentacao, untCadastroMovimentacoes,
  RClientes, udmRelatorios;
{$R *.dfm}



procedure TfrmMenu.openJanela(FClass: TFormClass; var Instance);
begin
          if Assigned(TForm(Instance)) then begin
                        TForm(Instance).SetFocus;
                        TForm(Instance).WindowState := wsNormal;
                        TForm(Instance).BringToFront;
          end else
                        Application.CreateForm(FClass, Instance);
                        TForm(Instance).Top := 0;
                        TForm(Instance).Left := 0;
end;
procedure TfrmMenu.OSoftware1Click(Sender: TObject);
begin
   OpenJanela(TfrmSobre, frmSobre);
end;

procedure TfrmMenu.Produtos2Click(Sender: TObject);
begin
 try
   if not Assigned(dtmRelatorio) then
      begin
      dtmRelatorio := TdtmRelatorio.Create(Self);
      dtmRelatorio.RProduto.Print;
      end
   else
      begin
      dtmRelatorio.RProduto.Print;
      end;
 finally
   FreeAndNil(dtmRelatorio);
 end;
end;

procedure TfrmMenu.Produtos3Click(Sender: TObject);
begin
try
   if not Assigned(dtmRelatorio) then
      begin
      dtmRelatorio := TdtmRelatorio.Create(Self);
      dtmRelatorio.RLaboratorio.Print;
      end
   else
      begin
      dtmRelatorio.RLaboratorio.Print;
      end;
finally
  FreeAndNil(dtmRelatorio);
end;
end;

procedure TfrmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   Canclose:=setQuestion('Deseja realmente finalizar o sistema?');
end;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
   frmMenu.Caption := Software.Nome + ' ' + Software.Versao;
   FrmLogin := TFrmLogin.Create(Self);
   trYcon.Icon.LoadFromFile('../imgs/icons/0.ico');
   imgBack.Picture.LoadFromFile('../imgs/background.jpg');
   colbPainel.Bitmap.LoadFromFile('../imgs/bgpainel.bmp');

  try
    if FrmLogin.ShowModal = mrOk then
    begin
    stbmenu.Panels[3]. Text := 'Login efetuado com sucesso!';
    usuario_log := frmLogin.edtLogin.Text;
    stbMenu.Panels[2].Text := 'Usuario: '+usuario_log;
    end;
  finally
    FreeAndNil(FrmLogin);
    end;
  Self.Show;
  trYcon.Visible:= true;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  with frmMenu do
  begin
   Height:= 600;
   width:= 800;
   top:= 0;
   left:= 0;
  end;
  stbMenu.Panels[0].Text := getData;
end;

procedure TfrmMenu.btSairClick(Sender: TObject);
begin
frmMenu.Close;
end;

procedure TfrmMenu.Timer1Timer(Sender: TObject);
begin
stbMenu.Panels[1].Text:= getHora;
end;

procedure TfrmMenu.Categorias1Click(Sender: TObject);
begin
  try
  openJanela(TfrmCadastroCategorias, frmCadastroCategorias);
  Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.Clientes1Click(Sender: TObject);
begin
try
openJanela(TfrmCadastroClientes, frmCadastroClientes);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.Clientes2Click(Sender: TObject);
begin
try

   if not Assigned(dtmRelatorio) then
      begin
      dtmRelatorio := TdtmRelatorio.Create(Self);
      dtmRelatorio.RCliente.Print;
      end
   else
      begin
      dtmRelatorio.RCliente.Print;
      end;
finally
  FreeAndNil(dtmRelatorio);
end;
end;

procedure TfrmMenu.ConfigurarBancodedado1Click(Sender: TObject);
begin
openJanela(TfrmConfig, frmConfig);
end;

procedure TfrmMenu.Exibir1Click(Sender: TObject);
begin
Self.Show;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmMenu.btClienteClick(Sender: TObject);
begin
try
openJanela(TfrmCadastroClientes, frmCadastroClientes);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.btForncedoresClick(Sender: TObject);
begin
 try
openJanela(TfrmCadastroForncedor, frmCadastroForncedor);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.Fornecedores1Click(Sender: TObject);
begin
try
openJanela(TfrmCadastroForncedor, frmCadastroForncedor);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.Fornecedores2Click(Sender: TObject);
begin
try
   if not Assigned(dtmRelatorio) then
      begin
      dtmRelatorio := TdtmRelatorio.Create(Self);
      dtmRelatorio.RFornecedor.Print;
      end
   else
      begin
      dtmRelatorio.RFornecedor.Print;
      end;
finally
  FreeAndNil(dtmRelatorio);
end;
end;

procedure TfrmMenu.btLaboratoriosClick(Sender: TObject);
begin
try
openJanela(TfrmCadastroLaboratorios, frmCadastroLaboratorios);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.Grupod1Click(Sender: TObject);
begin
try
openJanela(TfrmCadastroGrupos, frmCadastroGrupos);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.Laboratorios1Click(Sender: TObject);
begin
try

openJanela(TfrmCadastroLaboratorios, frmCadastroLaboratorios);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.AppHintHint(Sender: TObject);
begin
try
stbMenu.Panels[3].Text := Application.Hint;
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.AppHintMinimize(Sender: TObject);
begin
  Hide;
  trYcon.Visible := true;
  trYcon.ShowBalloonHint;
end;

procedure TfrmMenu.btProdutosClick(Sender: TObject);
begin
try
openJanela(TfrmCadastroProdutos, frmCadastroProdutos);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
end;
end;

procedure TfrmMenu.CadastrodeUsuario1Click(Sender: TObject);
begin
  OpenJanela(TfrmCadastroUsuarios, frmCadastroUsuarios);
end;

procedure TfrmMenu.Cadastros3Click(Sender: TObject);
begin
try
openJanela(TfrmCadastroProdutos, frmCadastroProdutos);
Except
  ShowMessage('Erro ao criar formulario! Contate o administrador do sistema!');
  end;
end;

procedure TfrmMenu.Cascata1Click(Sender: TObject);
begin
Cascade;
end;

procedure TfrmMenu.Alinhar1Click(Sender: TObject);
begin
TileMode := tbHorizontal;
Tile;
end;

procedure TfrmMenu.Vertical1Click(Sender: TObject);
begin
TileMode := tbVertical;
Tile;
end;

procedure TfrmMenu.Arranjar1Click(Sender: TObject);
begin
ArrangeIcons;
end;

procedure TfrmMenu.Minimizar1Click(Sender: TObject);
var X : Byte;
begin
 for X := 0 to Pred(MDIChildCount) do
 MDIChildren[X].WindowState := wsMinimized;
 ActiveMDIChild.WindowState := wsMinimized;
end;

procedure TfrmMenu.Minimizar2Click(Sender: TObject);
begin
Self.Hide;
end;

procedure TfrmMenu.Fechar1Click(Sender: TObject);
var
X : Byte;
begin
  if MDIChildCount > 0 then
  for X := 0 to Pred(MDIChildCount) do
  MDIChildren[X].Close;
end;

procedure TfrmMenu.Fechar2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmMenu.Maximizar1Click(Sender: TObject);
var X : Byte;
begin
 for X := 0 to Pred(MDIChildCount) do
 MDIChildren[X].WindowState := wsMaximized;
 ActiveMDIChild.WindowState := wsMaximized;
end;

procedure TfrmMenu.Movimentaes1Click(Sender: TObject);
begin
openJanela(TfrmCadastroMov, frmCadastroMov);
end;



end.
