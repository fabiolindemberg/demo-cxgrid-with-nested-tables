inherited FORM_CLIENTE: TFORM_CLIENTE
  Caption = 'Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid: TcxGrid
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 633
    ExplicitHeight = 252
    inherited cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource
      object cxGridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGridDBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
      end
      object cxGridDBTableView1birth: TcxGridDBColumn
        DataBinding.FieldName = 'birth'
      end
      object cxGridDBTableView1genre: TcxGridDBColumn
        DataBinding.FieldName = 'genre'
      end
    end
  end
  inherited pnControl: TPanel
    ExplicitLeft = 0
    ExplicitTop = 252
    ExplicitWidth = 633
  end
  inherited DataSource: TDataSource
    DataSet = DM_MODEL.cdsCliente
    Left = 88
    Top = 56
  end
end
