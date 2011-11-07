unit uCadMovimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons, ComCtrls, ToolWin, DB, Mask,
  DBCtrls;

type
  TfrmCadMovimentacao = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    lblTitulo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public


  end;

var
  frmCadMovimentacao: TfrmCadMovimentacao;

implementation

uses unitPesquisaRapidaProdutos,   untPesquisaRapidaForne, udmMovimentacao,
  uBaseDados;

{$R *.dfm}

procedure TfrmCadMovimentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  freeandnil(frmCadMovimentacao);
end;

procedure TfrmCadMovimentacao.FormCreate(Sender: TObject);
begin
 dmMovimentacao := TdmMovimentacao.Create(self);
 dmMovimentacao.cdsMovimentacao.FetchParams;
 dmMovimentacao.cdsMovimentacao.Params.ParamByName('COD_MOVIMENTACOES').Value := NULL;
 dmMovimentacao.cdsMovimentacao.Open;
end;



procedure TfrmCadMovimentacao.FormDestroy(Sender: TObject);
begin
  dmMovimentacao.cdsMovimentacao.Close;
  freeandnil(dmMovimentacao);
end;

procedure TfrmCadMovimentacao.ToolButton1Click(Sender: TObject);
begin
  dmMovimentacao.cdsMovimentacao.Append;
end;

procedure TfrmCadMovimentacao.ToolButton5Click(Sender: TObject);
begin
  dmMovimentacao.cdsMovimentacao.Next;
end;

procedure TfrmCadMovimentacao.ToolButton6Click(Sender: TObject);
begin
  dmMovimentacao.cdsMovimentacao.Prior;
end;

end.
