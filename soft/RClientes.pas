unit RClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls,
  ppBands, ppCache, ppParameter, DB, ADODB, ppVar, jpeg, ppDB, ppDBPipe, ppDBBDE,
  StdCtrls, pngimage;

type
  TfrmRClientes = class(TForm)
    RClientes: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    dtsRPP: TppBDEPipeline;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRClientes: TfrmRClientes;

implementation

uses udmCadCliente;

{$R *.dfm}

procedure TfrmRClientes.Button1Click(Sender: TObject);
begin
RClientes.Print;
end;

procedure TfrmRClientes.Button2Click(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmRClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmRClientes := nil;
end;

procedure TfrmRClientes.FormCreate(Sender: TObject);
begin
  dmCadCliente := TdmCadCliente.Create(Self);
  dmCadCliente.adoClientes.Open;
end;

procedure TfrmRClientes.FormDestroy(Sender: TObject);
begin
  dmCadCliente.adoClientes.Close;
  FreeAndNil(dmcadCliente);
end;

end.
