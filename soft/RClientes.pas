unit RClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls,
  ppBands, ppCache, ppParameter, DB, ADODB, ppVar, jpeg, ppDB, ppDBPipe, ppDBBDE,
  StdCtrls;

type
  TForm1 = class(TForm)
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ppBDEPipeline1: TppBDEPipeline;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
