inherited FormCadastroFuncionario: TFormCadastroFuncionario
  Caption = 'Cadastro Funcionario'
  ClientHeight = 144
  ClientWidth = 410
  ExplicitWidth = 422
  ExplicitHeight = 182
  TextHeight = 15
  inherited PnlBackground: TPanel
    Width = 410
    Height = 144
    ExplicitWidth = 406
    ExplicitHeight = 143
    object Label1: TLabel [0]
      Left = 7
      Top = 9
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel [1]
      Left = 121
      Top = 9
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label3: TLabel [2]
      Left = 7
      Top = 49
      Width = 39
      Height = 15
      Caption = 'Fun'#231#227'o'
    end
    object EdtCodigo: TEdit [3]
      Left = 7
      Top = 24
      Width = 108
      Height = 23
      ReadOnly = True
      TabOrder = 0
    end
    object EdtNome: TEdit [4]
      Left = 121
      Top = 24
      Width = 288
      Height = 23
      TabOrder = 1
    end
    object CbxTipoFuncionario: TComboBox [5]
      Left = 9
      Top = 64
      Width = 106
      Height = 23
      TabOrder = 2
      Items.Strings = (
        'Gerente'
        'Atendente'
        'Vendendo '
        'Farmaceutico ')
    end
    inherited Panel2: TPanel
      Top = 106
      Width = 408
      TabOrder = 3
      ExplicitTop = 105
      ExplicitWidth = 404
      inherited SpbGravar: TSpeedButton
        Left = 282
        ExplicitLeft = 300
      end
      inherited SpbCancelar: TSpeedButton
        Left = 157
        ExplicitLeft = 169
      end
    end
  end
end
