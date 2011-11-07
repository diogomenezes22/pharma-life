unit uTesteCOMANDOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, udtmserver, ExtCtrls, DBCtrls;

type
  TfrmComandos = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    memo1: TMemo;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComandos: TfrmComandos;

implementation

{$R *.dfm}

procedure TfrmComandos.Button1Click(Sender: TObject);
begin
if memo1.Text <> '' then
begin
  dtmserver.adoQ.Close;
  dtmserver.adoq.sql.clear;
  dtmServer.adoQ.SQl.Text := memo1.Text;
  dtmserver.AdoQ.ExecSQL;
  dtmserver.adoQ.Open;
end
else
 begin
   ShowMessage('Instrução SQL invalida!');
 end;

end;

procedure TfrmComandos.FormCreate(Sender: TObject);
begin
  dtmserver.AdoQ.Open;
end;

procedure TfrmComandos.FormDestroy(Sender: TObject);
begin
  dtmserver.AdoQ.Close;
end;

end.
