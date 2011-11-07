unit untEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, ComCtrls, untbanco, untClasses,
  ADODB, DB, DBCtrls;

type
  TfrmCadastroMovi = class(TForm)

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroMovi: TfrmCadastroMovi;
  Icampos:integer;

implementation

uses unitPesquisaRapidaProdutos, untPesquisaRapidaForne, untVEntrada;


{$R *.dfm}


end.
