unit uFORM_MONTADORA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFORM_BASE, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFORM_MONTADORA = class(TFORM_BASE)
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1logo: TcxGridDBColumn;
    cxGridDBTableView1country_id: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_MONTADORA: TFORM_MONTADORA;

implementation

uses uDM_MODEL;

{$R *.dfm}

end.
