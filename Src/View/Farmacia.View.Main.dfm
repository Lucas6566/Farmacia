object FormMain: TFormMain
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FormMain'
  ClientHeight = 480
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 480
    Align = alClient
    BevelOuter = bvNone
    Color = clOlive
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object PnlBackground: TPanel
      Left = 0
      Top = 0
      Width = 934
      Height = 480
      Align = alClient
      BevelOuter = bvNone
      Color = clOlive
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      object PnlTopMain: TPanel
        Left = 0
        Top = 0
        Width = 934
        Height = 201
        Align = alTop
        BevelOuter = bvNone
        Color = clOlive
        Ctl3D = True
        Padding.Top = 35
        Padding.Bottom = 35
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        object PnlTopMainBtn: TPanel
          Left = 0
          Top = 35
          Width = 934
          Height = 131
          Align = alClient
          Alignment = taRightJustify
          BevelOuter = bvNone
          Color = clOlive
          Ctl3D = True
          Padding.Left = 30
          ParentBackground = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
    end
  end
end