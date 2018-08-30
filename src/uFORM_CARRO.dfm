inherited FORM_CARRO: TFORM_CARRO
  Caption = 'Carros'
  ClientHeight = 379
  ClientWidth = 644
  ExplicitWidth = 662
  ExplicitHeight = 424
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid: TcxGrid
    Width = 644
    Height = 338
    ExplicitWidth = 644
    ExplicitHeight = 338
    inherited cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          FieldName = 'montadora_id'
          DisplayText = 'Quantidade'
        end>
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.RowSeparatorColor = clHighlight
      object cxGridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Width = 45
      end
      object cxGridDBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Width = 89
      end
      object cxGridDBTableView1picture: TcxGridDBColumn
        DataBinding.FieldName = 'picture'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TJPEGImage'
        Width = 45
      end
      object cxGridDBTableView1montadora_id: TcxGridDBColumn
        DataBinding.FieldName = 'montadora_id'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListSource = dsMontadora
        Width = 46
      end
      object cxGridDBTableView1ano: TcxGridDBColumn
        DataBinding.FieldName = 'ano'
        Width = 36
      end
      object cxGridDBTableView1sumary: TcxGridDBColumn
        DataBinding.FieldName = 'sumary'
        Width = 370
      end
    end
  end
  inherited pnControl: TPanel
    Top = 338
    Width = 644
    ExplicitTop = 338
    ExplicitWidth = 644
    object btnPrint: TButton
      Left = 112
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Print'
      TabOrder = 1
      OnClick = btnPrintClick
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM_MODEL.cdsCarro
  end
  object dsMontadora: TDataSource
    DataSet = DM_MODEL.cdsMontadora
    Left = 80
    Top = 176
  end
end