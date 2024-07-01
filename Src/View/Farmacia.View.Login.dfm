object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormLogin'
  ClientHeight = 176
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object PnlBackground: TPanel
    Left = 0
    Top = 0
    Width = 358
    Height = 176
    Align = alClient
    TabOrder = 0
    object PnlBackgroundUsuario: TPanel
      Left = 1
      Top = 47
      Width = 356
      Height = 39
      Margins.Left = 300
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object PnlBackgroundUsuarioCenter: TPanel
        Left = 0
        Top = 0
        Width = 356
        Height = 38
        Margins.Right = 100
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 100
        Padding.Right = 100
        TabOrder = 0
        object PnlBackgroundUsuarioCenterEdit: TPanel
          Left = 100
          Top = 0
          Width = 156
          Height = 38
          Margins.Right = 100
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Login: TLabel
            Left = 0
            Top = 0
            Width = 156
            Height = 15
            Align = alTop
            AutoSize = False
            BiDiMode = bdRightToLeftNoAlign
            Caption = 'Usu'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            ExplicitTop = 2
            ExplicitHeight = 18
          end
          object EdtLogin: TEdit
            Left = 0
            Top = 15
            Width = 156
            Height = 23
            Align = alTop
            TabOrder = 0
            Text = 'Administrador'
          end
        end
      end
    end
    object PnlBackgroundTop: TPanel
      Left = 1
      Top = 1
      Width = 356
      Height = 46
      Align = alTop
      TabOrder = 1
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 11
        Top = 4
        Margins.Left = 10
        Touch.ParentTabletOptions = False
        Touch.TabletOptions = [toPressAndHold]
        Align = alLeft
        AutoSize = False
        Caption = 'LOGIN'
        Constraints.MinWidth = 100
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Open Sans'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.Shadow = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.BorderStyle = ebsNone
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleDisabled.TextStyle = []
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Height = 38
        Width = 100
        AnchorY = 23
      end
    end
    object PnlBackgroundSenha: TPanel
      Left = 1
      Top = 86
      Width = 356
      Height = 48
      Margins.Right = 100
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 100
      Padding.Right = 100
      TabOrder = 2
      object Panel2: TPanel
        Left = 100
        Top = 0
        Width = 156
        Height = 48
        Margins.Right = 100
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 156
          Height = 16
          Align = alTop
          AutoSize = False
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ExplicitTop = 29
        end
        object EdtSenha: TEdit
          Left = 0
          Top = 16
          Width = 156
          Height = 23
          Align = alTop
          TabOrder = 0
          Text = '123'
        end
      end
    end
    object PnlBackgroundBotton: TPanel
      Left = 1
      Top = 134
      Width = 356
      Height = 41
      Margins.Right = 100
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object SpbConfirmar: TSpeedButton
        Left = 180
        Top = 0
        Width = 177
        Height = 41
        Align = alLeft
        Caption = 'Confirmar'
        OnClick = SpbConfirmarClick
        ExplicitLeft = 0
        ExplicitHeight = 44
      end
      object SpbCancelar: TSpeedButton
        Left = 0
        Top = 0
        Width = 180
        Height = 41
        Align = alLeft
        Caption = 'Cancelar'
        OnClick = SpbCancelarClick
        ExplicitLeft = -3
        ExplicitTop = -8
        ExplicitHeight = 44
      end
    end
  end
end
