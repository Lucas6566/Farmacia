inherited FormPesquisaTipoServico: TFormPesquisaTipoServico
  Caption = 'Tipos de Servi'#231'os'
  TextHeight = 15
  inherited PnlMainCenter: TPanel
    inherited PnlClient: TPanel
      inherited GridPesquisa: TcxGrid
        inherited GridPesquisaDBTableView: TcxGridDBTableView
          object GridCodigo: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'COD_TIPO'
            DataBinding.IsNullValueType = True
          end
          object GridDescricao: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DES_TIPO'
            DataBinding.IsNullValueType = True
            Width = 390
          end
        end
      end
    end
    inherited PnlTop: TPanel
      inherited PnlTopTitle: TPanel
        inherited LblTitleForm: TcxLabel
          Caption = 'Tipo de Servi'#231'os'
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          ExplicitWidth = 223
          Width = 223
          AnchorY = 26
        end
      end
      inherited PnlTopInfo: TPanel
        inherited EdtSearch: TcxTextEdit
          Left = 17
          Top = 16
          Properties.OnChange = EdtSearchPropertiesChange
          ExplicitLeft = 17
          ExplicitTop = 16
          ExplicitHeight = 21
        end
        inherited Panel1: TPanel
          inherited BtnNew: TSpeedButton
            OnClick = BtnNewClick
            ExplicitLeft = 318
          end
          inherited BtnAlterar: TSpeedButton
            OnClick = BtnAlterarClick
          end
          inherited btnExcluir: TSpeedButton
            OnClick = btnExcluirClick
            ExplicitLeft = 3
          end
          inherited SpbConsultar: TSpeedButton
            OnClick = SpbConsultarClick
          end
        end
      end
    end
  end
  inherited DS: TDataSource
    Left = 16
    Top = 401
  end
end
