unit uFORM_REPORT_CARRO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFORM_REPORT_BASE, ppDB, ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, uDM_MODEL, ppStrtch, ppRichTx, DB, JPEG;

type
  TFORM_REPORT_CARRO = class(TFORM_REPORT_BASE)
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBImage1: TppDBImage;
    ppDBRichText1: TppDBRichText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_REPORT_CARRO: TFORM_REPORT_CARRO;

implementation


{$R *.dfm}

end.
