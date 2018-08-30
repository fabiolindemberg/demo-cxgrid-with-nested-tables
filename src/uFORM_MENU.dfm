object FORM_MENU: TFORM_MENU
  Left = 0
  Top = 0
  Caption = 'Aplica'#231#227'o Teste'
  ClientHeight = 741
  ClientWidth = 1317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 120
  TextHeight = 17
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 262
    Height = 741
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CategoryPanel2: TCategoryPanel
      Top = 211
      Height = 261
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Sistemas'
      TabOrder = 0
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 211
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cadastros'
      TabOrder = 1
      object CategoryButtons1: TCategoryButtons
        Left = 0
        Top = 0
        Width = 258
        Height = 185
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        ButtonFlow = cbfVertical
        Categories = <
          item
            Caption = 'Clientes'
            Color = 16771818
            Collapsed = False
            Items = <
              item
                Caption = 'Tela'
                OnClick = CategoryButtons1Categories0Items0Click
              end>
          end
          item
            Caption = 'Carros'
            Color = 16771839
            Collapsed = False
            Items = <
              item
                OnClick = CategoryButtons1Categories1Items0Click
              end>
          end
          item
            Caption = 'Montadora'
            Color = 16053492
            Collapsed = False
            Items = <
              item
                OnClick = CategoryButtons1Categories2Items0Click
              end>
          end
          item
            Caption = 'Pedido'
            Color = 15395839
            Collapsed = False
            Items = <
              item
                OnClick = CategoryButtons1Categories3Items0Click
              end>
          end
          item
            Caption = 'Itens Pedido'
            Color = 16771839
            Collapsed = False
            Items = <>
          end>
        RegularButtonColor = clWhite
        SelectedButtonColor = 15132390
        TabOrder = 0
      end
    end
  end
  object CategoryPanelGroup2: TCategoryPanelGroup
    Left = 262
    Top = 0
    Width = 261
    Height = 741
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 1
  end
end
