inherited FormPesquisaGenerica: TFormPesquisaGenerica
  Caption = 'FormPesquisaGenerica'
  ClientWidth = 583
  ExplicitWidth = 583
  TextHeight = 15
  inherited PnlMainCenter: TPanel
    Width = 583
    inherited PnlButton: TPanel
      Width = 583
    end
    inherited PnlClient: TPanel
      Width = 583
      inherited GridPesquisa: TcxGrid
        Width = 583
        ExplicitTop = 1
        ExplicitWidth = 602
        inherited GridPesquisaDBTableView: TcxGridDBTableView
          object GridGeneric: TcxGridDBColumn
            DataBinding.IsNullValueType = True
            Width = 597
          end
        end
      end
    end
    inherited PnlTop: TPanel
      Width = 583
      inherited PnlTopTitle: TPanel
        Width = 583
        inherited LblTitleForm: TcxLabel
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          AnchorY = 26
        end
      end
      inherited PnlTopInfo: TPanel
        Width = 583
        inherited Panel1: TPanel
          Left = 168
          inherited BtnNew: TSpeedButton
            Visible = False
          end
          inherited BtnAlterar: TSpeedButton
            Visible = False
          end
          inherited btnExcluir: TSpeedButton
            Visible = False
          end
          inherited SpbConsultar: TSpeedButton
            Visible = False
          end
        end
        inherited btnAdiPesquisar: TcxButton
          Left = 169
          OnClick = btnAdiPesquisarClick
          ExplicitLeft = 169
        end
      end
    end
  end
end
