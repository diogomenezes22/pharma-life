unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, DB;

type
  TFrmLogin = class(TForm)
    pnTitulo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    Image1: TImage;
    btbtnOk: TBitBtn;
    btbtnCancel: TBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    Tentativas: Integer;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;


implementation

uses untBanco, untMSG;



{$R *.dfm}

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  Tentativas := 0;
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN, VK_DOWN:
      SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    VK_UP:
      SendMessage(Handle, WM_NEXTDLGCTL, 0, 1);
  end;
end;



procedure TFrmLogin.btnEntrarClick(Sender: TObject);
Var
sql, usuario, senha : String;
begin
usuario:= edtLogin.Text;
senha:= edtSenha.Text;
if (usuario = '') or (senha = '') then
  begin
   ShowMessage('Existem campos sem preencher!');
  end
  else
  begin
  try
   sql := 'select * from tlb_usuarios where nome ='+QuotedStr(Uppercase(usuario));
   sql := sql + ' and senha ='+QuotedStr(senha);
   dtmserver.adoQ.Close;
   dtmserver.adoQ.SQL.Clear;
   dtmserver.adoQ.SQL.Add(sql);
   dtmserver.adoQ.Active := true;
   dtmserver.adoQ.ExecSQL;
   dtmserver.adoQ.Open;
    if not dtmServer.adoQ.IsEmpty then
    begin
      ModalResult := mrOk;
      dtmserver.adoQ.Active := false;
    end
    else
    begin
      ShowMessage(rsLoginInvalido);
      edtLogin.SetFocus;
      dtmserver.adoQ.Active := false;
    end;
    except
    ShowMessage('ERRO: NÃO FOI POSSIVEL ACESSAR A BASE DE DADOS');
  end;
  end;
end;


procedure TFrmLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;


end.
