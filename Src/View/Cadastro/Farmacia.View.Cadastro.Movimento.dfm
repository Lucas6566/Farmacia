inherited FormCadastroMovimento: TFormCadastroMovimento
  Caption = 'FormCadastroMovimento'
  ClientHeight = 527
  ClientWidth = 1028
  ExplicitWidth = 1040
  ExplicitHeight = 565
  TextHeight = 15
  inherited PnlBackground: TPanel
    Width = 1028
    Height = 527
    Caption = 'Gravar'
    ExplicitWidth = 1024
    ExplicitHeight = 526
    inherited Panel2: TPanel
      Top = 489
      Width = 1026
      ExplicitTop = 488
      ExplicitWidth = 1022
      inherited SpbGravar: TSpeedButton
        Left = 900
        ExplicitLeft = 906
        ExplicitTop = 5
      end
      inherited SpbCancelar: TSpeedButton
        Left = 775
        ExplicitLeft = 769
        ExplicitTop = 5
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 49
      Width = 1026
      Height = 48
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 1022
      object Label1: TLabel
        Left = 82
        Top = 6
        Width = 37
        Height = 15
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 372
        Top = 6
        Width = 63
        Height = 15
        Caption = 'Documento'
      end
      object Label5: TLabel
        Left = 485
        Top = 6
        Width = 26
        Height = 15
        Caption = 'Fone'
      end
      object Label16: TLabel
        Left = 7
        Top = 6
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object EdtCodCliente: TEdit
        Left = 7
        Top = 21
        Width = 74
        Height = 23
        TabOrder = 0
      end
      object EdtNomeCliente: TEdit
        Left = 82
        Top = 21
        Width = 288
        Height = 23
        TabOrder = 1
      end
      object EdtDocCliente: TEdit
        Left = 372
        Top = 21
        Width = 111
        Height = 23
        TabOrder = 2
      end
      object EdtFoneCliente: TEdit
        Left = 485
        Top = 21
        Width = 79
        Height = 23
        TabOrder = 3
      end
      object btnProdPesquisa: TcxButton
        Left = 565
        Top = 21
        Width = 25
        Height = 23
        Cursor = crHandPoint
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Black'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          000000000000281B022B8559078EC78708D3E89D09F3E99F08F3CB8A06D48C5E
          04952C1E012C0000000000000000000000000000000000000000000000000504
          000686590993E79A0EFCEC9E0DFFEEA00CFFF1A30AFFEFA10AFFE39309FFE797
          08FFEC9D07FC906304950503000500000000000000000000000005030006A76E
          0DBCE59710FFE89A0FFFEA9C0EFFEC9E0DFFE89A0CFFD8870BFFDC8A0AFFE190
          09FFE79708FFEF9F07FFB87E05BE05030005000000000000000081540B94E193
          12FFE39511FFE59710FFE89A0FFFE4950EFFCE7B0EFFD07D0CFFD6840BFFDC8A
          0AFFEEC176FFEEB44EFFEF9F07FF90630495000000002618042CDA8D15FCDF91
          13FFE19312FFE39511FFDE900FFFC77616FFC77514FFCB780DFFD07D0CFFE9BC
          7AFFFEFBF6FFE9AE4BFFE79708FFEC9D07FC2C1E012C7A4E0D90DA8C16FFDD8F
          15FFDF9113FFD9942AFFDDC5ACFFFEFCFAFFFFFFFFFFF3E1CCFFE8C496FFFDFA
          F6FFE1A54CFFDC8A0AFFE19009FFE79708FF8C5D0494B37214D5D88A17FFDA8C
          16FFDC9423FFD3CBC2FFCDB7A4FFC78747FFC9853EFFE5C199FFFFFEFEFFE1B0
          72FFD07D0CFFD6840BFFDC8A0AFFE69509FFCB8C06D3C97F18F2D68818FFD88A
          17FFDAB987FFD0C1B4FFB05A10FFB35D0EFFB7620FFFBC660EFFE7C7A3FFEFD8
          BDFFCB780DFFD07D0CFFDD8C0AFFF1A309FFE89E08F1C87E19F3D48619FFD688
          18FFD8C8B0FFC39B7BFFAB530FFFB0590EFFB35D0EFFB7620FFFCF9254FFFAF3
          ECFFC5710DFFD3810EFFEC9E0CFFF1A30AFFE79D09F2AD6C17D5D2841AFFD486
          19FFD9C6ADFFC7A78DFFA8500EFFAB530FFFB0590EFFB35D0EFFD09B66FFF7ED
          E3FFCA770EFFE89A0EFFEC9E0DFFEEA00CFFC78708D375481091CF811BFFD284
          1AFFD8AB6BFFD2CFCBFFB16B3BFFA8500EFFAB530FFFB3631FFFD0C5BAFFD8B3
          89FFE49510FFE89A0FFFEA9C0EFFEC9E0DFF8559078E2416052DCB7E1CFDCF81
          1BFFD2841BFFD7BD98FFD3D0CEFFCBB19CFFC9AB93FFD2CBC6FFD0BEABFFDE93
          19FFE39511FFE59710FFE89A0FFFE79A0EFC281B022B00000000794B1197CD7F
          1CFFCF811BFFD2841AFFD9A661FFD9C19EFFD8BF9AFFDAAC68FFDC8F17FFDF91
          13FFE19312FFE39511FFE59710FF86590993000000000000000006030107985E
          16BECD7F1CFFCF811BFFD2841AFFD48619FFD68818FFD88A17FFDA8C16FFDD8F
          15FFDF9113FFE19312FFA86E0DBD050400060000000000000000000000000603
          0107784A1196CB7E1CFDCF811BFFD2841AFFD48619FFD68818FFD88A17FFDA8C
          16FFDA8D15FC81540B9405030006000000000000000000000000000000000000
          0000000000002416052D75481091AC6B16D4C97E19F4CB8018F4B27114D47A4E
          0D902618042C00000000000000000000000000000000}
        OptionsImage.ImageIndex = 4
        TabOrder = 4
        TabStop = False
        OnClick = btnProdPesquisaClick
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1026
      Height = 48
      Align = alTop
      TabOrder = 3
      ExplicitWidth = 1022
      object Label3: TLabel
        Left = 7
        Top = 6
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        Left = 87
        Top = 6
        Width = 43
        Height = 15
        Caption = 'Emiss'#227'o'
      end
      object EdtCodMovimento: TEdit
        Left = 7
        Top = 21
        Width = 74
        Height = 23
        ReadOnly = True
        TabOrder = 0
      end
      object DtpEmissao: TDateTimePicker
        Left = 87
        Top = 21
        Width = 83
        Height = 23
        Date = 45466.000000000000000000
        Time = 0.560432719910750200
        Checked = False
        Color = clBtnFace
        Enabled = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        TabStop = False
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 97
      Width = 1026
      Height = 96
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 1022
      object lblBarra: TLabel
        Left = 7
        Top = 5
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblProduto: TLabel
        Left = 129
        Top = 7
        Width = 38
        Height = 15
        Caption = 'Servico'
      end
      object lblQuantidade: TLabel
        Left = 561
        Top = 5
        Width = 62
        Height = 15
        Caption = 'Quantidade'
      end
      object lblDesconto: TLabel
        Left = 731
        Top = 5
        Width = 79
        Height = 15
        Caption = 'Valor Desconto'
      end
      object lblAcrescimo: TLabel
        Left = 821
        Top = 5
        Width = 85
        Height = 15
        Caption = 'Valor Acrescimo'
      end
      object lblTotal: TLabel
        Left = 910
        Top = 5
        Width = 54
        Height = 15
        Caption = 'Valor Total'
      end
      object Label12: TLabel
        Left = 7
        Top = 45
        Width = 70
        Height = 17
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 646
        Top = 5
        Width = 54
        Height = 15
        Caption = 'Valor Unit.'
      end
      object Label14: TLabel
        Left = 372
        Top = 7
        Width = 23
        Height = 15
        Caption = 'Tipo'
      end
      object btnServPesquisa: TcxButton
        Left = 522
        Top = 21
        Width = 25
        Height = 23
        Cursor = crHandPoint
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Black'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          000000000000281B022B8559078EC78708D3E89D09F3E99F08F3CB8A06D48C5E
          04952C1E012C0000000000000000000000000000000000000000000000000504
          000686590993E79A0EFCEC9E0DFFEEA00CFFF1A30AFFEFA10AFFE39309FFE797
          08FFEC9D07FC906304950503000500000000000000000000000005030006A76E
          0DBCE59710FFE89A0FFFEA9C0EFFEC9E0DFFE89A0CFFD8870BFFDC8A0AFFE190
          09FFE79708FFEF9F07FFB87E05BE05030005000000000000000081540B94E193
          12FFE39511FFE59710FFE89A0FFFE4950EFFCE7B0EFFD07D0CFFD6840BFFDC8A
          0AFFEEC176FFEEB44EFFEF9F07FF90630495000000002618042CDA8D15FCDF91
          13FFE19312FFE39511FFDE900FFFC77616FFC77514FFCB780DFFD07D0CFFE9BC
          7AFFFEFBF6FFE9AE4BFFE79708FFEC9D07FC2C1E012C7A4E0D90DA8C16FFDD8F
          15FFDF9113FFD9942AFFDDC5ACFFFEFCFAFFFFFFFFFFF3E1CCFFE8C496FFFDFA
          F6FFE1A54CFFDC8A0AFFE19009FFE79708FF8C5D0494B37214D5D88A17FFDA8C
          16FFDC9423FFD3CBC2FFCDB7A4FFC78747FFC9853EFFE5C199FFFFFEFEFFE1B0
          72FFD07D0CFFD6840BFFDC8A0AFFE69509FFCB8C06D3C97F18F2D68818FFD88A
          17FFDAB987FFD0C1B4FFB05A10FFB35D0EFFB7620FFFBC660EFFE7C7A3FFEFD8
          BDFFCB780DFFD07D0CFFDD8C0AFFF1A309FFE89E08F1C87E19F3D48619FFD688
          18FFD8C8B0FFC39B7BFFAB530FFFB0590EFFB35D0EFFB7620FFFCF9254FFFAF3
          ECFFC5710DFFD3810EFFEC9E0CFFF1A30AFFE79D09F2AD6C17D5D2841AFFD486
          19FFD9C6ADFFC7A78DFFA8500EFFAB530FFFB0590EFFB35D0EFFD09B66FFF7ED
          E3FFCA770EFFE89A0EFFEC9E0DFFEEA00CFFC78708D375481091CF811BFFD284
          1AFFD8AB6BFFD2CFCBFFB16B3BFFA8500EFFAB530FFFB3631FFFD0C5BAFFD8B3
          89FFE49510FFE89A0FFFEA9C0EFFEC9E0DFF8559078E2416052DCB7E1CFDCF81
          1BFFD2841BFFD7BD98FFD3D0CEFFCBB19CFFC9AB93FFD2CBC6FFD0BEABFFDE93
          19FFE39511FFE59710FFE89A0FFFE79A0EFC281B022B00000000794B1197CD7F
          1CFFCF811BFFD2841AFFD9A661FFD9C19EFFD8BF9AFFDAAC68FFDC8F17FFDF91
          13FFE19312FFE39511FFE59710FF86590993000000000000000006030107985E
          16BECD7F1CFFCF811BFFD2841AFFD48619FFD68818FFD88A17FFDA8C16FFDD8F
          15FFDF9113FFE19312FFA86E0DBD050400060000000000000000000000000603
          0107784A1196CB7E1CFDCF811BFFD2841AFFD48619FFD68818FFD88A17FFDA8C
          16FFDA8D15FC81540B9405030006000000000000000000000000000000000000
          0000000000002416052D75481091AC6B16D4C97E19F4CB8018F4B27114D47A4E
          0D902618042C00000000000000000000000000000000}
        OptionsImage.ImageIndex = 4
        TabOrder = 6
        TabStop = False
        OnClick = btnServPesquisaClick
      end
      object edtQuantidadeItem: TcxCurrencyEdit
        Left = 561
        Top = 21
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 2
        OnExit = edtQuantidadeItemExit
        Width = 85
      end
      object edtDescontoItem: TcxCurrencyEdit
        Left = 731
        Top = 21
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 4
        OnExit = edtDescontoItemExit
        Width = 90
      end
      object edtAcrescimoItem: TcxCurrencyEdit
        Left = 821
        Top = 21
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 5
        OnExit = edtAcrescimoItemExit
        Width = 88
      end
      object edtTotalItem: TcxCurrencyEdit
        Left = 909
        Top = 21
        TabStop = False
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Properties.ReadOnly = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 8
        Width = 111
      end
      object EdtObsServico: TcxTextEdit
        Left = 7
        Top = 61
        Properties.ReadOnly = False
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 9
        Width = 602
      end
      object EdtDescServico: TEdit
        Left = 129
        Top = 21
        Width = 241
        Height = 23
        TabOrder = 0
      end
      object btnSalvar: TcxButton
        Left = 790
        Top = 61
        Width = 88
        Height = 23
        Cursor = crHandPoint
        Caption = 'Salvar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Black'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          0000000000002025002B798C00AC9FBA00F7A0BB00FEA0BB00FE9FBA00F7889E
          00CD353D004D0000000000000000000000000000000000000000000000000505
          00066F7F0093B6D200FDA0BB00FF9FBA00FF9FBA00FF9FBA00FF9FBA00FF9FBA
          00FF9FBB00FF8AA000D00808000B000000000000000000000000050500068EA3
          00BCB8D400FFA0BB00FF9FBA00FF9FBA00FF9FBA00FF9FBA00FF9FBA00FF9FBA
          00FF9FBA00FF9FBA00FF9BB300ED0808000B00000000000000006F800094C0DD
          00FF757D41FF5F6154FF13BDDDFF04CFF8FF04D0F7FF049CF6FF039BF7FF0E8C
          D6FF46412FFF5A5E24FF9FBA00FF89A000CF000000002126002CBEDA00FCC0DD
          00FF717845FF5A5A5AFF0EC0E5FF00D3FFFF00D3FFFF009EFFFF009EFFFF0A8E
          DFFF3F3932FF555726FF9FBA00FF9FBB00FF363D004E6C7D0090C0DD00FFC0DD
          00FF717845FF5A5A5AFF0EC0E5FF00D3FFFF00D3FFFF009EFFFF009EFFFF0A8E
          DFFF3F3932FF555726FF9FBA00FF9FBA00FF889E00CDA0B900D5C0DD00FFC0DD
          00FF717845FF5A5A5AFF0EC0E5FF00D3FFFF00D3FFFF009EFFFF009EFFFF0A8E
          DFFF3F3932FF555726FF9FBA00FF9FBA00FF9FB900F7B6D200F2C0DD00FFC0DD
          00FF717845FF5A5A5AFF2F84D0FF258DECFF218FF8FF3263F7FF3162E7FF335B
          C4FF3F3932FF555726FF9FBA00FF9FBA00FFA3BE00FDB7D300F3C0DD00FFC0DD
          00FF717845FF5A5A5AFF49639BFF4665A7FF4665A7FF444092FF444092FF4340
          82FF3F3932FF555726FF9FBA00FFA3BE00FFB3CF00F4A0B900D5C0DD00FFC0DD
          00FF717845FF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF3F3932FF3F3932FF3F39
          32FF3F3932FF555726FFA3BE00FFBBD900FF9FB700D36D7E0091C0DD00FFC0DD
          00FF717845FF5A5A5AFF7E7E7EFF9D9D9DFF9D9D9DFF858079FF78726BFF655F
          59FF3F3932FF5D6125FFBCD800FFC0DD00FF6B7B008E2227002DBEDB00FDC0DD
          00FF717845FF5A5A5AFFB5B5B5FFFFFFFFFFFFFFFFFFEEEAE3FFA19C96FF9F9A
          93FF4F4C2CFFAEC807FFC0DD00FFBEDA00FC2025002B0000000072830097C0DD
          00FF777F41FF616354FFB4B5ADFFF9F9F8FFFAFAF8FFE5E1D6FF9D9991FFA3A0
          89FFB0C806FFC0DD00FFC0DD00FF6F7F00930000000000000000050600078FA5
          00BEC0DD00FFC0DD00FFC0DD00FFC0DD00FFC0DD00FFC0DD00FFC0DD00FFC0DD
          00FFC0DD00FFC0DD00FF8EA400BD050500060000000000000000000000000506
          000771820096BEDB00FDC0DD00FFC0DD00FFC0DD00FFC0DD00FFC0DD00FFC0DD
          00FFBEDA00FC6F80009405050006000000000000000000000000000000000000
          0000000000002227002D6D7E0091A0B800D4B8D300F4B8D300F4A0B800D46C7D
          00902126002C00000000000000000000000000000000}
        OptionsImage.ImageIndex = 4
        TabOrder = 7
        OnClick = btnSalvarClick
      end
      object btnCancelar: TcxButton
        Left = 701
        Top = 61
        Width = 88
        Height = 23
        Cursor = crHandPoint
        Caption = 'Cancelar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Black'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          0000000000000E0C21263028708043379DB35647CAE65647CAE643379DB33028
          70800E0C21260000000000000000000000000000000000000000000000000000
          01012A2362705C4CD8F65F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4F
          E0FF5C4CD8F62A23627000000101000000000000000000000000000001014338
          9FB55F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF43389FB50000010100000000000000002A2362705F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF2A236270000000000E0C21265C4CD8F65F4F
          E0FF5F4FE0FF796CE5FFD3CFF6FF6A5BE2FF5F4FE0FF5F4FE0FF6A5BE2FFD3CF
          F6FF796CE5FF5F4FE0FF5F4FE0FF5C4CD8F60E0C2126302870805F4FE0FF5F4F
          E0FF5F4FE0FF7264E4FFF5F4FDFFD8D4F7FF6353E1FF6353E1FFD8D4F7FFF5F4
          FDFF7264E4FF5F4FE0FF5F4FE0FF5F4FE0FF2F27707F43379DB35F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF877BE8FFFCFCFEFFC7C1F4FFC7C1F4FFFCFCFEFF877B
          E8FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF43379DB35647CAE65F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF9A90EBFFFFFFFFFFFFFFFFFF9A90EBFF5F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5647CAE65647CAE65F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF9A90EBFFFFFFFFFFFFFFFFFF9A90EBFF5F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5647CAE643379DB35F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF877BE8FFFCFCFEFFC7C1F4FFC7C1F4FFFCFCFEFF877B
          E8FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF43379DB3302870805F4FE0FF5F4F
          E0FF5F4FE0FF7264E4FFF5F4FDFFD8D4F7FF6353E1FF6353E1FFD8D4F7FFF5F4
          FDFF7264E4FF5F4FE0FF5F4FE0FF5F4FE0FF2F27707F0E0C21265C4CD8F65F4F
          E0FF5F4FE0FF786BE5FFC5BFF4FF6A5BE2FF5F4FE0FF5F4FE0FF6A5BE2FFC5BF
          F4FF786BE5FF5F4FE0FF5F4FE0FF5C4CD8F60E0C2126000000002A2362705F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF5F4FE0FF2A2362700000000000000000000001014338
          9FB55F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4F
          E0FF5F4FE0FF5F4FE0FF43389FB5000001010000000000000000000000000000
          01012A2362705C4CD8F65F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4FE0FF5F4F
          E0FF5C4CD8F62A23627000000101000000000000000000000000000000000000
          0000000000000E0C21263028708043379DB35647CAE65647CAE643379DB33028
          70800E0C212600000000000000000000000000000000}
        OptionsImage.ImageIndex = 4
        TabOrder = 10
        OnClick = btnCancelarClick
      end
      object btnExcluir: TcxButton
        Left = 612
        Top = 61
        Width = 88
        Height = 23
        Cursor = crHandPoint
        Caption = 'Excluir'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Black'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          00000000000000212626006E808000A4C7C700C0FEFE00C1FDFD00B5E8E80097
          C0C0003946460000000000000000000000000000000000000000000000000001
          01010061707000D4F6F600D5FFFF00C1FFFF00C0FFFF00C0FFFF00C0FFFF00C0
          FFFF00C1FFFF008BAFAF0002020200000000000000000000000000010101009C
          B5B500DCFFFF0CC8ECFF1DA7D4FF1DA7D4FF1DA6D3FF2B8EAEFF2B8EAEFF2B8E
          AEFF14A8D9FF00C0FFFF00B6EAEA0002020200000000000000000061707000DC
          FFFF00DCFFFF2DA3BCFF606060FF5F5F5FFF5E5E5EFF464646FF464646FF4646
          46FF3B778BFF00C0FFFF00C0FFFF008BAFAF000000000021262600D4F6F600DC
          FFFF00DCFFFF2DA5BCFF595959FF585858FF575757FF3F3F3FFF3E3E3EFF4040
          40FF3B778BFF00C0FFFF00C0FFFF00C1FFFF00394646006E808000DCFFFF00DC
          FFFF00DCFFFF2DA8BCFF595959FF585858FF575757FF3F3F3FFF3E3E3EFF4040
          40FF3B778BFF00C0FFFF00C0FFFF00C0FFFF0097BFBF009AB3B300DCFFFF00DC
          FFFF00DCFFFF2DA8BCFF595959FF585858FF575757FF3F3F3FFF3E3E3EFF4040
          40FF3B778BFF00C0FFFF00C0FFFF00C0FFFF00B5E8E800C6E6E600DCFFFF00DC
          FFFF00DCFFFF2DA8BCFF595959FF585858FF575757FF3F3F3FFF3E3E3EFF4040
          40FF3B778BFF00C0FFFF00C0FFFF00C0FFFF00C1FDFD00C6E6E600DCFFFF00DC
          FFFF00DCFFFF2DA7BCFF595959FF585858FF575757FF3F3F3FFF3E3E3EFF4040
          40FF3B778BFF00C0FFFF00C0FFFF00C0FFFF00C1FDFD009AB3B300DCFFFF00DC
          FFFF01D6F9FF2E8FABFF5E5E5EFF5E5E5EFF5D5D5DFF434343FF424242FF4242
          42FF366373FF02B8F3FF00C0FFFF00C2FFFF00A1C0C0006E808000DCFFFF00DC
          FFFF0BB7D2FF333333FF333333FF333333FF323232FF1A1A1AFF1A1A1AFF1A1A
          1AFF1A1A1AFF0E83AAFF00C2FFFF00D7FFFF006E7F7F0021262600D4F6F600DC
          FFFF0BB7D2FF333333FF333333FF333333FF323232FF1A1A1AFF1A1A1AFF1A1A
          1AFF1A1A1AFF0E85AAFF00D7FFFF00D4F6F600212626000000000061707000DC
          FFFF04CDEDFF1597ACFF1597ACFF1B8C9FFF424242FF292929FF1C5060FF1763
          70FF176370FF06BBDBFF00DCFFFF00617070000000000000000000010101009C
          B5B500DCFFFF00DCFFFF00DCFFFF04D5F6FF1FA1B4FF277481FF06C9ECFF00DC
          FFFF00DCFFFF00DCFFFF009CB5B5000101010000000000000000000000000001
          01010061707000D4F6F600DCFFFF00DCFFFF00DCFFFF00DCFFFF00DCFFFF00DC
          FFFF00D4F6F60061707000010101000000000000000000000000000000000000
          00000000000000212626006E8080009AB3B300C6E6E600C6E6E6009AB3B3006E
          80800021262600000000000000000000000000000000}
        OptionsImage.ImageIndex = 4
        TabOrder = 11
        OnClick = btnExcluirClick
      end
      object EdtUnitItem: TcxCurrencyEdit
        Left = 646
        Top = 21
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 3
        OnExit = EdtUnitItemExit
        Width = 85
      end
      object edtTipoServico: TEdit
        Left = 371
        Top = 21
        Width = 150
        Height = 23
        TabOrder = 1
      end
      object EdtCodServico: TEdit
        Left = 7
        Top = 21
        Width = 120
        Height = 23
        TabOrder = 12
      end
    end
    object GridPesquisa: TcxGrid
      Left = 1
      Top = 193
      Width = 1026
      Height = 175
      Align = alClient
      TabOrder = 4
      ExplicitWidth = 1022
      ExplicitHeight = 174
      object GridPesquisaDBTableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object GridCodServico: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'Cod_Servico'
          DataBinding.IsNullValueType = True
          Width = 76
        end
        object GridDescServico: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'Des_servico'
          DataBinding.IsNullValueType = True
          Width = 208
        end
        object GridTipo: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIP_Servico'
          DataBinding.IsNullValueType = True
          Width = 155
        end
        object GridVlrServico: TcxGridDBColumn
          Caption = 'Valor Unit.'
          DataBinding.FieldName = 'Vlr_servico'
          DataBinding.IsNullValueType = True
          Width = 68
        end
        object GridQtde: TcxGridDBColumn
          Caption = 'Qtde'
          DataBinding.FieldName = 'Qtd_Servicos'
          DataBinding.IsNullValueType = True
        end
        object GridVlrDesconto: TcxGridDBColumn
          Caption = 'Valor Desc'
          DataBinding.FieldName = 'Vlr_Desconto'
          DataBinding.IsNullValueType = True
          Width = 72
        end
        object GridVlrAcrescimo: TcxGridDBColumn
          Caption = 'Valor Acr'
          DataBinding.FieldName = 'Vlr_Acrescimo'
          DataBinding.IsNullValueType = True
          Width = 67
        end
        object GridVlrFrete: TcxGridDBColumn
          Caption = 'Valor Frete'
          DataBinding.FieldName = 'Vlr_Frete'
          DataBinding.IsNullValueType = True
        end
        object GridVlrTotal: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'Vlr_total'
          DataBinding.IsNullValueType = True
          Width = 92
        end
        object GridObs: TcxGridDBColumn
          Caption = 'Obs'
          DataBinding.FieldName = 'Obs_Servico'
          DataBinding.IsNullValueType = True
          Width = 167
        end
      end
      object GridPesquisaLevel: TcxGridLevel
        GridView = GridPesquisaDBTableView
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 368
      Width = 1026
      Height = 56
      Align = alBottom
      TabOrder = 5
      ExplicitTop = 367
      ExplicitWidth = 1022
      object Label6: TLabel
        Left = 7
        Top = 5
        Width = 79
        Height = 17
        Caption = 'Qtde de Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 275
        Top = 5
        Width = 79
        Height = 15
        Caption = 'Valor Desconto'
      end
      object Label10: TLabel
        Left = 366
        Top = 5
        Width = 85
        Height = 15
        Caption = 'Valor Acrescimo'
      end
      object Label11: TLabel
        Left = 455
        Top = 5
        Width = 54
        Height = 15
        Caption = 'Valor Total'
      end
      object Label7: TLabel
        Left = 184
        Top = 5
        Width = 55
        Height = 15
        Caption = 'Valor Frete'
      end
      object Label15: TLabel
        Left = 93
        Top = 5
        Width = 45
        Height = 15
        Caption = 'SubTotal'
      end
      object EdtDescontoTotal: TcxCurrencyEdit
        Left = 275
        Top = 21
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 0
        OnExit = EdtDescontoTotalExit
        Width = 90
      end
      object EdtAcrescimoTotal: TcxCurrencyEdit
        Left = 366
        Top = 21
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 1
        OnExit = EdtAcrescimoTotalExit
        Width = 88
      end
      object EdtValorTotal: TcxCurrencyEdit
        Left = 454
        Top = 21
        TabStop = False
        EditValue = 0c
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Properties.ReadOnly = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 2
        Width = 111
      end
      object EdtQuantidadeTotal: TcxCurrencyEdit
        Left = 7
        Top = 21
        EditValue = 0c
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 3
        Width = 85
      end
      object EdtFrete: TcxCurrencyEdit
        Left = 184
        Top = 21
        EditValue = 0c
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 4
        OnExit = EdtFreteExit
        Width = 90
      end
      object EdtSubTotal: TcxCurrencyEdit
        Left = 93
        Top = 21
        EditValue = 0c
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Properties.OnChange = EdtSubTotalPropertiesChange
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Black'
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 5
        Width = 90
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 424
      Width = 1026
      Height = 65
      Align = alBottom
      TabOrder = 6
      ExplicitTop = 423
      ExplicitWidth = 1022
      object Label8: TLabel
        Left = 1
        Top = 1
        Width = 1024
        Height = 15
        Align = alTop
        Caption = 'Observa'#231#227'o'
        ExplicitWidth = 62
      end
      object MemObs: TMemo
        Left = 1
        Top = 16
        Width = 1024
        Height = 48
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1020
      end
    end
  end
end
