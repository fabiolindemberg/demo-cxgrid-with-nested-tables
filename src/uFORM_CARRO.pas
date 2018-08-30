unit uFORM_CARRO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFORM_BASE, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, StdCtrls, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxImage;

type
  TFORM_CARRO = class(TFORM_BASE)
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1picture: TcxGridDBColumn;
    cxGridDBTableView1montadora_id: TcxGridDBColumn;
    cxGridDBTableView1ano: TcxGridDBColumn;
    cxGridDBTableView1sumary: TcxGridDBColumn;
    dsMontadora: TDataSource;
    btnPrint: TButton;
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_CARRO: TFORM_CARRO;

implementation

uses uDM_MODEL, uFORM_REPORT_CARRO;

{$R *.dfm}

procedure TFORM_CARRO.btnPrintClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFORM_REPORT_CARRO, FORM_REPORT_CARRO);
  FORM_REPORT_CARRO.DataSource.DataSet.DisableControls;
  try
    FORM_REPORT_CARRO.ppReport.DeviceType := 'dtScreen';
    FORM_REPORT_CARRO.ppReport.Print;
    FORM_REPORT_CARRO.ppReport.Free;
  finally
    FORM_REPORT_CARRO.DataSource.DataSet.EnableControls;
  end;
end;

end.
