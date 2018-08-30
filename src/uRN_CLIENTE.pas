unit uRN_CLIENTE;

interface

uses
  DBClient, DB;

type
  TRN_Cliente = class
  private
    FDataSet :TClientDataSet;
  public
    procedure genarateID();
    constructor create(aDataSet :TClientDataSet);

  end;

implementation

{ TRN_Cliente }

constructor TRN_Cliente.create(aDataSet: TClientDataSet);
begin
  FDataSet := aDataSet;
end;

procedure TRN_Cliente.genarateID();
begin
  FDataSet.Fields[0].AsInteger := FDataSet.RecordCount + 1;
end;

end.
