unit uFORM_CLIENTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFORM_BASE, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFORM_CLIENTE = class(TFORM_BASE)
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1birth: TcxGridDBColumn;
    cxGridDBTableView1genre: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_CLIENTE: TFORM_CLIENTE;

implementation

uses uDM_MODEL, uRN_CLIENTE, DBClient;

{$R *.dfm}

procedure TFORM_CLIENTE.Button1Click(Sender: TObject);
var
  rn : TRN_Cliente;
begin
  rn := TRN_Cliente.create( TClientDataSet(DataSource.DataSet) );
  rn.genarateID();
  inherited;
end;

end.
