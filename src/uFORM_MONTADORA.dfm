inherited FORM_MONTADORA: TFORM_MONTADORA
  Caption = 'Montadora'
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid: TcxGrid
    ExplicitTop = 2
    inherited cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource
      OptionsView.ColumnAutoWidth = True
      object cxGridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGridDBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
      end
      object cxGridDBTableView1logo: TcxGridDBColumn
        DataBinding.FieldName = 'logo'
      end
      object cxGridDBTableView1country_id: TcxGridDBColumn
        DataBinding.FieldName = 'country_id'
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM_MODEL.cdsMontadora
  end
end
