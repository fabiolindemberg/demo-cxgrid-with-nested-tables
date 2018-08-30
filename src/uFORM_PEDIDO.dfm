inherited FORM_PEDIDO: TFORM_PEDIDO
  Caption = 'Pedido'
  ClientHeight = 518
  ClientWidth = 1073
  ExplicitWidth = 1091
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid: TcxGrid
    Width = 736
    Height = 477
    ExplicitTop = 2
    ExplicitWidth = 736
    ExplicitHeight = 477
    inherited cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource
      object cxGridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGridDBTableView1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
        Width = 97
      end
      object cxGridDBTableView1clienteId: TcxGridDBColumn
        DataBinding.FieldName = 'clienteId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListSource = dsCliente
        Width = 238
      end
    end
    object cxGridDBTableView2: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsItens
      DataController.DetailKeyFieldNames = 'pedidoId'
      DataController.KeyFieldNames = 'pedidoId'
      DataController.MasterKeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'valor'
          Column = cxGridDBTableView2valor
          DisplayText = 'Total'
        end
        item
          Kind = skCount
          FieldName = 'carroId'
          Column = cxGridDBTableView2carroId
          DisplayText = 'QTD'
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soNullIgnore, soMultipleSelectedRecords]
      NewItemRow.Visible = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView2id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGridDBTableView2data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object cxGridDBTableView2pedidoId: TcxGridDBColumn
        DataBinding.FieldName = 'pedidoId'
        Visible = False
      end
      object cxGridDBTableView2carroId: TcxGridDBColumn
        DataBinding.FieldName = 'carroId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListSource = dsCarro
      end
      object cxGridDBTableView2valor: TcxGridDBColumn
        DataBinding.FieldName = 'valor'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    inherited cxGridLevel1: TcxGridLevel
      object cxGridLevel2: TcxGridLevel
        Caption = 'Itens'
        GridView = cxGridDBTableView2
      end
    end
  end
  inherited pnControl: TPanel
    Top = 477
    Width = 1073
    ExplicitTop = 477
    ExplicitWidth = 1073
  end
  object Panel1: TPanel [2]
    Left = 736
    Top = 0
    Width = 337
    Height = 477
    Align = alRight
    TabOrder = 2
  end
  inherited DataSource: TDataSource
    DataSet = DM_MODEL.cdsPedido
    Left = 136
    Top = 96
  end
  object dsItens: TDataSource
    DataSet = DM_MODEL.cdsItem
    Left = 136
    Top = 192
  end
  object dsCliente: TDataSource
    DataSet = DM_MODEL.cdsCliente
    Left = 136
    Top = 144
  end
  object dsCarro: TDataSource
    DataSet = DM_MODEL.cdsCarro
    Left = 312
    Top = 152
  end
  object DataSource1: TDataSource
    Left = 312
    Top = 264
  end
end
