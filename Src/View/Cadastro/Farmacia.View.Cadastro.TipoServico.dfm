inherited FormCadastroTipoServico: TFormCadastroTipoServico
  Caption = 'Cadastro Servi'#231'o'
  ClientHeight = 90
  ClientWidth = 388
  ExplicitWidth = 400
  ExplicitHeight = 128
  TextHeight = 15
  inherited PnlBackground: TPanel
    Width = 388
    Height = 90
    ExplicitWidth = 384
    ExplicitHeight = 89
    object Label1: TLabel [0]
      Left = 7
      Top = 9
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel [1]
      Left = 87
      Top = 9
      Width = 51
      Height = 15
      Caption = 'Descricao'
    end
    object EdtCodigo: TEdit [2]
      Left = 7
      Top = 24
      Width = 74
      Height = 23
      TabOrder = 0
    end
    object EdtDesc: TEdit [3]
      Left = 87
      Top = 24
      Width = 288
      Height = 23
      TabOrder = 1
    end
    inherited Panel2: TPanel
      Top = 52
      Width = 386
      TabOrder = 2
      ExplicitTop = 51
      ExplicitWidth = 382
      inherited SpbGravar: TSpeedButton
        Left = 260
        ExplicitLeft = 268
      end
      inherited SpbCancelar: TSpeedButton
        Left = 135
        ExplicitLeft = 143
      end
    end
  end
end
