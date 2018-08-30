unit uDM_MODEL;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TDM_MODEL = class(TDataModule)
    cdsCliente: TClientDataSet;
    cdsCarro: TClientDataSet;
    cdsPedido: TClientDataSet;
    cdsItem: TClientDataSet;
    cdsMontadora: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    path :string;
    { Private declarations }
    procedure connect();
    procedure generateNewId(DataSet: TDataSet);
  public
    { Public declarations }
    procedure confirm(aDataSet :TClientDataSet);
  end;

var
  DM_MODEL: TDM_MODEL;

implementation

{$R *.dfm}

{ TDataModule5 }

{ TDataModule5 }

procedure TDM_MODEL.generateNewId(DataSet: TDataSet);
begin
  if (DataSet.State = dsInsert) and (DataSet.FindField('id') <> nil) then
    DataSet.FindField('id').AsInteger := DataSet.RecordCount + 2;

end;

procedure TDM_MODEL.confirm(aDataSet: TClientDataSet);
begin
  aDataSet.SaveToFile(path + StringReplace(TClientDataSet(aDataSet).Name, 'cds', 'tb_', []) + '.xml');
  aDataSet.LoadFromFile(path + StringReplace(TClientDataSet(aDataSet).Name, 'cds', 'tb_', []) + '.xml');
end;

procedure TDM_MODEL.connect();
var
  I : Integer;
  aDataSet : TComponent;
  fullPath : string;
begin
  for I := 0 to Pred(Self.ComponentCount) do
  begin
    aDataSet := Self.Components[I];
    if aDataSet is TClientDataSet then
    begin
      try
        fullPath := path + StringReplace(TClientDataSet(aDataSet).Name, 'cds', 'tb_', []) + '.xml';
        TClientDataSet(aDataSet).LoadFromFile(fullPath);
      except
        on e:Exception do
          raise Exception.Create('Error Message: Invalid file ' + fullPath );
      end;
    end;
  end;
end;

procedure TDM_MODEL.DataModuleCreate(Sender: TObject);
var
  I : Integer;
begin
  path := ParamStr(1);// 'D:\AGFA\xml_data\';

  if Trim(path) = '' then
    path := '.\..\xml_data\';

  connect();

  for I := 0 to Pred(Self.ComponentCount) do
  begin
    if Self.Components[I] is TClientDataSet then
      TClientDataSet(Components[I]).BeforePost := generateNewId;
  end;

end;

end.
