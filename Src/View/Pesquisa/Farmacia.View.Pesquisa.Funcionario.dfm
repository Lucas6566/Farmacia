inherited FormPesquisaFuncionario: TFormPesquisaFuncionario
  Caption = 'FormPesquisaFuncionario'
  ClientHeight = 473
  ClientWidth = 941
  ExplicitWidth = 941
  ExplicitHeight = 473
  TextHeight = 15
  inherited PnlMainCenter: TPanel
    Width = 941
    Height = 473
    ExplicitWidth = 941
    ExplicitHeight = 473
    inherited PnlButton: TPanel
      Top = 443
      Width = 941
      ExplicitTop = 443
      ExplicitWidth = 941
    end
    inherited PnlClient: TPanel
      Width = 941
      Height = 347
      ExplicitWidth = 941
      ExplicitHeight = 347
      inherited GridPesquisa: TcxGrid
        Width = 941
        Height = 347
        ExplicitWidth = 941
        ExplicitHeight = 347
        inherited GridPesquisaDBTableView: TcxGridDBTableView
          object GridCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'COD_FUNCIONARIO'
            DataBinding.IsNullValueType = True
            Width = 96
          end
          object GridNome: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOM_FUNCIONARIO'
            DataBinding.IsNullValueType = True
            Width = 336
          end
          object GridTipo: TcxGridDBColumn
            AlternateCaption = 'TIP_FUNCIONARIO'
            Caption = 'Fun'#231#227'o'
            DataBinding.FieldName = 'NOM_FUNCIONARIO'
            DataBinding.IsNullValueType = True
            Width = 174
          end
        end
      end
    end
    inherited PnlTop: TPanel
      Width = 941
      ExplicitWidth = 941
      inherited PnlTopTitle: TPanel
        Width = 941
        ExplicitWidth = 941
        inherited LblTitleForm: TcxLabel
          Caption = 'Funcion'#225'rios'
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          ExplicitWidth = 158
          Width = 158
          AnchorY = 26
        end
      end
      inherited PnlTopInfo: TPanel
        Width = 941
        ExplicitWidth = 941
        inherited Panel1: TPanel
          Left = 526
          ExplicitLeft = 526
          inherited BtnNew: TSpeedButton
            OnClick = BtnNewClick
            ExplicitLeft = 318
          end
          inherited BtnAlterar: TSpeedButton
            OnClick = BtnAlterarClick
          end
          inherited btnExcluir: TSpeedButton
            OnClick = btnExcluirClick
          end
          inherited SpbConsultar: TSpeedButton
            OnClick = SpbConsultarClick
          end
        end
      end
    end
  end
end
