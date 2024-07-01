inherited FormPesquisaCliente: TFormPesquisaCliente
  Caption = 'Pesquisa de Clientes'
  ClientHeight = 436
  ClientWidth = 933
  ExplicitWidth = 933
  ExplicitHeight = 436
  TextHeight = 15
  inherited PnlMainCenter: TPanel
    Width = 933
    Height = 436
    ExplicitWidth = 933
    ExplicitHeight = 436
    inherited PnlButton: TPanel
      Top = 406
      Width = 933
      ExplicitTop = 406
      ExplicitWidth = 933
    end
    inherited PnlClient: TPanel
      Width = 933
      Height = 310
      ExplicitWidth = 933
      ExplicitHeight = 310
      inherited GridPesquisa: TcxGrid
        Width = 933
        Height = 310
        ExplicitWidth = 933
        ExplicitHeight = 310
        inherited GridPesquisaDBTableView: TcxGridDBTableView
          object GridCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'COD_CLIENTE'
            DataBinding.IsNullValueType = True
            Width = 106
          end
          object GridNome: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOM_CLIENTE'
            DataBinding.IsNullValueType = True
            Width = 356
          end
          object GridNumDoc: TcxGridDBColumn
            Caption = 'Cpf/Cnpj'
            DataBinding.FieldName = 'DOC_CLIENTE'
            DataBinding.IsNullValueType = True
            Width = 223
          end
          object GridTelefone: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'TEL_CELULAR'
            DataBinding.IsNullValueType = True
            Width = 159
          end
          object GridEletronico: TcxGridDBColumn
            Caption = 'End. Eletronico'
            DataBinding.FieldName = 'END_ELETRONICO'
            DataBinding.IsNullValueType = True
            Width = 100
          end
          object GridBairro: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'NOM_BAIRRO'
            DataBinding.IsNullValueType = True
          end
        end
      end
    end
    inherited PnlTop: TPanel
      Width = 933
      ExplicitWidth = 933
      inherited PnlTopTitle: TPanel
        Width = 933
        ExplicitWidth = 933
        inherited LblTitleForm: TcxLabel
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          AnchorY = 26
        end
      end
      inherited PnlTopInfo: TPanel
        Width = 933
        ExplicitWidth = 933
        inherited Panel1: TPanel
          Left = 518
          ExplicitLeft = 518
          inherited BtnNew: TSpeedButton
            OnClick = BtnNewClick
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