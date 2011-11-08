unit untPesquisaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB;

type
  TfrmPesquisaGeral = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    editPesquisa: TEdit;
    btnPesquisa: TButton;
    BitBtn1: TBitBtn;
    btnAtualizar: TButton;
    procedure BitBtn1Click(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaGeral: TfrmPesquisaGeral;

implementation

uses untClasses, udmcadgrupo;

{$R *.dfm}



procedure TfrmPesquisaGeral.BitBtn1Click(Sender: TObject);
begin
Self.Close;
end;

end.
