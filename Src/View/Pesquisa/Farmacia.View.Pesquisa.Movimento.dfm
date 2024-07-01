inherited FormPesquisaMovimento: TFormPesquisaMovimento
  Caption = 'FormPesquisaMovimento'
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
            Caption = 'Titulo'
            DataBinding.FieldName = 'Cod_Movimento'
            DataBinding.IsNullValueType = True
            Width = 120
          end
          object GridCodCliente: TcxGridDBColumn
            Caption = 'Codigo Cliente'
            DataBinding.FieldName = 'Cod_Paciente'
            DataBinding.IsNullValueType = True
            Width = 47
          end
          object GridNomeCliente: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'Nom_paciente'
            DataBinding.IsNullValueType = True
            Width = 299
          end
          object GridVlrSubTotal: TcxGridDBColumn
            Caption = 'SubTotal'
            DataBinding.FieldName = 'VlrSubTotal'
            DataBinding.IsNullValueType = True
            Width = 99
          end
          object GridVlrDesconto: TcxGridDBColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'Vlr_Desconto'
            DataBinding.IsNullValueType = True
            Width = 112
          end
          object GridVlrAcrescimo: TcxGridDBColumn
            Caption = 'Acr'#233'scimo'
            DataBinding.FieldName = 'Vlr_Acrescimo'
            DataBinding.IsNullValueType = True
            Width = 96
          end
          object GridVlrTotal: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'Vlr_Total'
            DataBinding.IsNullValueType = True
            Width = 146
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
          Caption = 'Movimentos'
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          ExplicitWidth = 231
          Width = 231
          AnchorY = 26
        end
      end
      inherited PnlTopInfo: TPanel
        Width = 933
        ExplicitWidth = 933
        inherited EdtSearch: TcxTextEdit
          ExplicitHeight = 21
        end
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