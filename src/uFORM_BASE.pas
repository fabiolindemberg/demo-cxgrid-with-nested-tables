unit uFORM_BASE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFORM_BASE = class(TForm)
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    pnControl: TPanel;
    Button1: TButton;
    DataSource: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_BASE: TFORM_BASE;

implementation

uses uDM_MODEL, DBClient;

{$R *.dfm}

procedure TFORM_BASE.Button1Click(Sender: TObject);
begin
  try
    DM_MODEL.confirm( TClientDataSet(DataSource.DataSet) );
  except
    raise Exception.Create('Error Message');
  end;
end;

end.
