unit uFORM_REPORT_BASE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppParameter, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  DB;

type
  TFORM_REPORT_BASE = class(TForm)
    ppReport: TppReport;
    ppDBPipeline: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pplTitle: TppLabel;
    DataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_REPORT_BASE: TFORM_REPORT_BASE;

implementation

{$R *.dfm}

end.
