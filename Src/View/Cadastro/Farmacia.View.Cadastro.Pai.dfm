object FormCadastroPai: TFormCadastroPai
  Left = 0
  Top = 0
  Caption = 'FormCadastroPai'
  ClientHeight = 244
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object PnlBackground: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 244
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 243
    object Panel2: TPanel
      Left = 1
      Top = 206
      Width = 626
      Height = 37
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 205
      ExplicitWidth = 622
      object SpbGravar: TSpeedButton
        Left = 500
        Top = 1
        Width = 125
        Height = 35
        Align = alRight
        Caption = 'Gravar'
        OnClick = SpbGravarClick
        ExplicitLeft = 506
      end
      object SpbCancelar: TSpeedButton
        Left = 375
        Top = 1
        Width = 125
        Height = 35
        Align = alRight
        Caption = 'Cancelar'
        OnClick = SpbCancelarClick
        ExplicitLeft = 369
      end
    end
  end
  object DS: TDataSource
    Left = 304
    Top = 88
  end
end
