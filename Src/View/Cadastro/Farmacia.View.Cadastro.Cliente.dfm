inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 327
  ClientWidth = 517
  ExplicitWidth = 529
  ExplicitHeight = 365
  TextHeight = 15
  inherited PnlBackground: TPanel
    Width = 517
    Height = 327
    ExplicitWidth = 498
    ExplicitHeight = 326
    inherited Panel2: TPanel
      Top = 289
      Width = 515
      TabOrder = 1
      ExplicitTop = 288
      ExplicitWidth = 496
      inherited SpbGravar: TSpeedButton
        Left = 389
        ExplicitLeft = 382
      end
      inherited SpbCancelar: TSpeedButton
        Left = 264
        ExplicitLeft = 257
      end
    end
    object PctCadastro: TcxPageControl
      Left = 1
      Top = 1
      Width = 515
      Height = 288
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = TbSCliente
      Properties.CustomButtons.Buttons = <>
      ExplicitWidth = 496
      ExplicitHeight = 287
      ClientRectBottom = 284
      ClientRectLeft = 4
      ClientRectRight = 511
      ClientRectTop = 26
      object TbSCliente: TcxTabSheet
        Caption = 'Cliente'
        ImageIndex = 0
        ExplicitWidth = 488
        ExplicitHeight = 257
        object PnlCadastro: TPanel
          Left = 0
          Top = 0
          Width = 507
          Height = 264
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 488
          object Label1: TLabel
            Left = 7
            Top = 9
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
          end
          object Label2: TLabel
            Left = 130
            Top = 9
            Width = 33
            Height = 15
            Caption = 'Nome'
          end
          object Label18: TLabel
            Left = 394
            Top = 90
            Width = 18
            Height = 15
            Caption = 'Fax'
          end
          object Label10: TLabel
            Left = 287
            Top = 90
            Width = 37
            Height = 15
            Caption = 'Celular'
          end
          object Label12: TLabel
            Left = 287
            Top = 49
            Width = 22
            Height = 15
            Caption = 'Fixo'
          end
          object Label3: TLabel
            Left = 7
            Top = 49
            Width = 105
            Height = 15
            Caption = 'Endere'#231'o Eletronico'
          end
          object LblCpfCnpj: TLabel
            Left = 394
            Top = 49
            Width = 53
            Height = 15
            Caption = 'CPF/CNPJ'
          end
          object LblTipoPessoa: TLabel
            Left = 421
            Top = 9
            Width = 30
            Height = 15
            Caption = 'Fisico'
          end
          object EdtCodigo: TEdit
            Left = 7
            Top = 24
            Width = 117
            Height = 23
            TabOrder = 0
          end
          object EdtNome: TEdit
            Left = 130
            Top = 24
            Width = 288
            Height = 23
            ImeName = 'Portuguese (Brazilian ABNT)'
            TabOrder = 1
          end
          object PnlCadastroEndereco: TPanel
            Left = 3
            Top = 94
            Width = 278
            Height = 169
            Align = alCustom
            TabOrder = 2
            object Label6: TLabel
              Left = 7
              Top = 5
              Width = 21
              Height = 15
              Caption = 'CEP'
            end
            object Label7: TLabel
              Left = 7
              Top = 85
              Width = 77
              Height = 15
              Caption = 'Complemento'
            end
            object Label8: TLabel
              Left = 7
              Top = 125
              Width = 31
              Height = 15
              Caption = 'Bairro'
            end
            object Label15: TLabel
              Left = 7
              Top = 45
              Width = 62
              Height = 15
              Caption = 'Logradouro'
            end
            object Label16: TLabel
              Left = 118
              Top = 5
              Width = 37
              Height = 15
              Caption = 'Cidade'
            end
            object Label4: TLabel
              Left = 245
              Top = 2
              Width = 14
              Height = 15
              Caption = 'UF'
            end
            object Label5: TLabel
              Left = 227
              Top = 45
              Width = 14
              Height = 15
              Caption = 'N'#176
            end
            object EdtCep: TEdit
              Left = 7
              Top = 20
              Width = 104
              Height = 23
              TabOrder = 0
            end
            object EdtComplemento: TEdit
              Left = 7
              Top = 100
              Width = 264
              Height = 23
              TabOrder = 1
            end
            object EdtBairro: TEdit
              Left = 7
              Top = 140
              Width = 124
              Height = 23
              TabOrder = 2
            end
            object EdtLogradouro: TEdit
              Left = 7
              Top = 60
              Width = 219
              Height = 23
              TabOrder = 3
            end
            object EdtCidade: TEdit
              Left = 118
              Top = 20
              Width = 124
              Height = 23
              TabOrder = 4
            end
            object EdtUf: TEdit
              Left = 245
              Top = 20
              Width = 26
              Height = 23
              TabOrder = 5
            end
            object EdtNumEndereco: TEdit
              Left = 227
              Top = 60
              Width = 44
              Height = 23
              TabOrder = 6
            end
          end
          object EdtFax: TEdit
            Left = 394
            Top = 105
            Width = 101
            Height = 23
            TabOrder = 3
          end
          object EdtCelular: TEdit
            Left = 288
            Top = 105
            Width = 100
            Height = 23
            TabOrder = 4
          end
          object EdtFixo: TEdit
            Left = 287
            Top = 64
            Width = 101
            Height = 23
            TabOrder = 5
          end
          object EdtEndEletronico: TEdit
            Left = 7
            Top = 65
            Width = 274
            Height = 23
            TabOrder = 6
          end
          object EdtDocumento: TEdit
            Left = 394
            Top = 64
            Width = 101
            Height = 23
            TabOrder = 7
          end
          object TgSTipoPessoa: TdxToggleSwitch
            Left = 421
            Top = 24
            Checked = True
            Properties.DisplayChecked = '1'
            Properties.DisplayUnchecked = '2'
            Properties.DisplayGrayed = '2'
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 3
            Properties.ValueUnchecked = 2
            Style.TransparentBorder = False
            TabOrder = 8
            OnClick = TgSTipoPessoaClick
          end
        end
      end
    end
  end
end
