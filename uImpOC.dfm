object fimpOc: TfimpOc
  Left = 232
  Top = 174
  Width = 1030
  Height = 596
  VertScrollBar.Position = 291
  AutoScroll = True
  Caption = 'fimpOc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object rpOC: TRLReport
    Left = 859
    Top = -206
    Width = 794
    Height = 1123
    DataSource = DM.dImpOC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Draft 12 cpi'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand78: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 53
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText472: TRLDBText
        Left = 1
        Top = 3
        Width = 48
        Height = 16
        DataField = 'Razao'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo22: TRLSystemInfo
        Left = 2
        Top = 19
        Width = 172
        Height = 15
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel646: TRLLabel
        Left = 287
        Top = 33
        Width = 143
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Ordem de Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand79: TRLBand
      Left = 38
      Top = 213
      Width = 718
      Height = 29
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel647: TRLLabel
        Left = 272
        Top = 7
        Width = 140
        Height = 15
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult94: TRLDBResult
        Left = 630
        Top = 7
        Width = 81
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total_1'
        DataSource = DM.dImpOC
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult95: TRLDBResult
        Left = 511
        Top = 7
        Width = 59
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = DM.dImpOC
        DisplayMask = '###,###,###,##0.000'
        Info = riSum
        Text = ''
      end
    end
    object RLBand80: TRLBand
      Left = 38
      Top = 194
      Width = 718
      Height = 19
      object RLDBText508: TRLDBText
        Left = 665
        Top = 1
        Width = 44
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total_1'
        DataSource = DM.dImpOC
        Text = ''
      end
      object RLDBText518: TRLDBText
        Left = 67
        Top = 1
        Width = 435
        Height = 15
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText519: TRLDBText
        Left = 7
        Top = 1
        Width = 56
        Height = 15
        Alignment = taRightJustify
        DataField = 'IDPRODUTO'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText520: TRLDBText
        Left = 614
        Top = 1
        Width = 23
        Height = 15
        Alignment = taRightJustify
        DataField = 'UNIT'
        DataSource = DM.dImpOC
        Text = ''
      end
      object RLDBText521: TRLDBText
        Left = 546
        Top = 1
        Width = 22
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = DM.dImpOC
        Text = ''
      end
    end
    object RLBand81: TRLBand
      Left = 38
      Top = 91
      Width = 718
      Height = 103
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel650: TRLLabel
        Left = 2
        Top = 0
        Width = 93
        Height = 15
        Caption = 'Ordem Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText522: TRLDBText
        Left = 98
        Top = 0
        Width = 13
        Height = 15
        DataField = 'Id'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText523: TRLDBText
        Left = 232
        Top = 0
        Width = 33
        Height = 15
        DataField = 'DATA'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel651: TRLLabel
        Left = 189
        Top = 1
        Width = 37
        Height = 15
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel652: TRLLabel
        Left = 2
        Top = 19
        Width = 84
        Height = 15
        Caption = 'FORNECEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText524: TRLDBText
        Left = 89
        Top = 19
        Width = 46
        Height = 17
        AutoSize = False
        DataField = 'IDFORNECEDOR'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel653: TRLLabel
        Left = 1
        Top = 87
        Width = 60
        Height = 15
        Align = faBottomOnly
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel654: TRLLabel
        Left = 541
        Top = 87
        Width = 27
        Height = 15
        Align = faBottomOnly
        Caption = 'QTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel655: TRLLabel
        Left = 609
        Top = 87
        Width = 29
        Height = 15
        Align = faBottomOnly
        Caption = 'UNIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel656: TRLLabel
        Left = 665
        Top = 87
        Width = 41
        Height = 15
        Align = faBottomOnly
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText525: TRLDBText
        Left = 138
        Top = 19
        Width = 38
        Height = 15
        DataField = 'NOME'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText531: TRLDBText
        Left = 674
        Top = 1
        Width = 32
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = DM.dImpOC
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel661: TRLLabel
        Left = 526
        Top = 1
        Width = 55
        Height = 16
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel662: TRLLabel
        Left = 502
        Top = 35
        Width = 41
        Height = 15
        Caption = 'FRETE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText532: TRLDBText
        Left = 571
        Top = 34
        Width = 46
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FRETE'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel663: TRLLabel
        Left = 624
        Top = 35
        Width = 30
        Height = 15
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText533: TRLDBText
        Left = 660
        Top = 34
        Width = 46
        Height = 17
        AutoSize = False
        DataField = 'tpfrete'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel657: TRLLabel
        Left = 1
        Top = 35
        Width = 31
        Height = 15
        Caption = 'OBS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo25: TRLDBMemo
        Left = 35
        Top = 36
        Width = 448
        Height = 45
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'OBS'
        DataSource = DM.dImpOC
      end
    end
    object RLBand82: TRLBand
      Left = 38
      Top = 242
      Width = 718
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo23: TRLSystemInfo
        Left = 602
        Top = 1
        Width = 116
        Height = 15
        Align = faRightTop
        Info = itPageNumber
        Text = 'Pag.: '
      end
      object RLLabel672: TRLLabel
        Left = 0
        Top = 2
        Width = 140
        Height = 14
        Caption = 'thrsoftwares.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object rpOC_mod2: TRLReport
    Left = 31
    Top = -246
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = DM.dImpOC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Draft 12 cpi'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand1: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 24
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 607
        Top = 0
        Width = 149
        Height = 14
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Relat'#243'rio Impresso em:  '
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 429
      Width = 756
      Height = 273
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand2BeforePrint
      object RLLabel2: TRLLabel
        Left = 272
        Top = 7
        Width = 140
        Height = 15
        Alignment = taRightJustify
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 643
        Top = 7
        Width = 81
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total_1'
        DataSource = DM.dImpOC
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 511
        Top = 7
        Width = 59
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = DM.dImpOC
        DisplayMask = '###,###,###,##0.000'
        Info = riSum
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 371
        Top = 65
        Width = 41
        Height = 15
        Alignment = taRightJustify
        Caption = 'FRETE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 648
        Top = 65
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FRETE'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel10: TRLLabel
        Left = 299
        Top = 92
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Caption = 'TOTAL COMPRA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 688
        Top = 92
        Width = 36
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = DM.dImpOC
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel30: TRLLabel
        Left = 371
        Top = 26
        Width = 41
        Height = 15
        Alignment = taRightJustify
        Caption = 'IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = 345
        Top = 46
        Width = 67
        Height = 15
        Alignment = taRightJustify
        Caption = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 648
        Top = 46
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DESCONTO'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText30: TRLDBText
        Left = 648
        Top = 26
        Width = 76
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valipi'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel49: TRLLabel
        Left = 33
        Top = 253
        Width = 79
        Height = 15
        Caption = 'COMPRADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 310
        Top = 253
        Width = 66
        Height = 15
        Caption = 'VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 584
        Top = 253
        Width = 106
        Height = 15
        Caption = 'AUTORIZADO POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 17
        Top = 237
        Width = 122
        Height = 15
        Caption = '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 288
        Top = 237
        Width = 122
        Height = 15
        Caption = '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel54: TRLLabel
        Left = 564
        Top = 237
        Width = 157
        Height = 15
        Caption = '______________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel6: TRLPanel
        Left = 0
        Top = 125
        Width = 756
        Height = 54
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel13: TRLLabel
          Left = 3
          Top = 3
          Width = 31
          Height = 15
          Caption = 'OBS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 48
          Top = 3
          Width = 675
          Height = 45
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'OBS'
          DataSource = DM.dImpOC
        end
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 410
      Width = 756
      Height = 19
      object RLDBText2: TRLDBText
        Left = 680
        Top = 1
        Width = 44
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total_1'
        DataSource = DM.dImpOC
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 67
        Top = 1
        Width = 378
        Height = 15
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 46
        Top = 1
        Width = 17
        Height = 15
        Alignment = taRightJustify
        DataField = 'ref'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 614
        Top = 1
        Width = 23
        Height = 15
        Alignment = taRightJustify
        DataField = 'UNIT'
        DataSource = DM.dImpOC
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 546
        Top = 1
        Width = 22
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = DM.dImpOC
        Text = ''
      end
      object RLDBText41: TRLDBText
        Left = 451
        Top = 1
        Width = 17
        Height = 15
        Alignment = taRightJustify
        DataField = 'un'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText54: TRLDBText
        Left = 494
        Top = 1
        Width = 23
        Height = 15
        Alignment = taRightJustify
        DataField = 'pIpi'
        DataSource = DM.dImpOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 62
      Width = 756
      Height = 348
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel6: TRLLabel
        Left = 1
        Top = 332
        Width = 60
        Height = 15
        Align = faBottomOnly
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 541
        Top = 332
        Width = 27
        Height = 15
        Align = faBottomOnly
        Caption = 'QTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 609
        Top = 332
        Width = 29
        Height = 15
        Align = faBottomOnly
        Caption = 'UNIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 683
        Top = 332
        Width = 41
        Height = 15
        Align = faBottomOnly
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 139
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedLeft = True
        Borders.FixedRight = True
        Borders.FixedBottom = True
        object RLPanel2: TRLPanel
          Left = 1
          Top = 1
          Width = 249
          Height = 137
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          BeforePrint = RLPanel2BeforePrint
          object RLLabel3: TRLLabel
            Left = 3
            Top = -1
            Width = 121
            Height = 16
            Caption = 'Ordem de Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 108
            Top = 21
            Width = 11
            Height = 14
            DataField = 'Id'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel4: TRLLabel
            Left = 3
            Top = 40
            Width = 29
            Height = 14
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 108
            Top = 40
            Width = 32
            Height = 14
            DataField = 'DATA'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText14: TRLDBText
            Left = 108
            Top = 59
            Width = 45
            Height = 14
            DataField = 'previsao'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel15: TRLLabel
            Left = 3
            Top = 59
            Width = 99
            Height = 14
            Caption = 'Previs'#227'o Entrega:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 3
            Top = 80
            Width = 69
            Height = 14
            Caption = 'Forma Pgto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 108
            Top = 80
            Width = 52
            Height = 14
            DataField = 'formapgto'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel17: TRLLabel
            Left = 3
            Top = 101
            Width = 93
            Height = 14
            Caption = 'Condi'#231#245'es Pgto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 108
            Top = 101
            Width = 135
            Height = 15
            AutoSize = False
            DataField = 'desCP'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel12: TRLLabel
            Left = 3
            Top = 119
            Width = 35
            Height = 14
            Caption = 'Frete:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 108
            Top = 119
            Width = 18
            Height = 17
            AutoSize = False
            DataField = 'tpfrete'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel1: TRLLabel
            Left = 3
            Top = 21
            Width = 50
            Height = 14
            Caption = 'N'#250'mero:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel60: TRLLabel
            Left = 129
            Top = 119
            Width = 31
            Height = 14
            Caption = 'Frete:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLPanel3: TRLPanel
          Left = 250
          Top = 1
          Width = 504
          Height = 137
          Align = faLeft
          object RLLabel18: TRLLabel
            Left = 6
            Top = 2
            Width = 66
            Height = 15
            Caption = 'Solicitante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 97
            Top = 23
            Width = 404
            Height = 15
            AutoSize = False
            DataField = 'e_razao'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel19: TRLLabel
            Left = 6
            Top = 22
            Width = 76
            Height = 15
            Caption = 'Raz'#227'o Social'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 97
            Top = 41
            Width = 344
            Height = 15
            AutoSize = False
            DataField = 'e_endereco'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel20: TRLLabel
            Left = 6
            Top = 40
            Width = 74
            Height = 15
            Caption = 'Endere'#231'o/n'#186':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 97
            Top = 3
            Width = 404
            Height = 15
            AutoSize = False
            DataField = 'e_fantasia'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel23: TRLLabel
            Left = 6
            Top = 58
            Width = 41
            Height = 15
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 57
            Top = 59
            Width = 336
            Height = 15
            AutoSize = False
            DataField = 'e_bairro'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText23: TRLDBText
            Left = 83
            Top = 76
            Width = 348
            Height = 15
            AutoSize = False
            DataField = 'e_cidade'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel24: TRLLabel
            Left = 6
            Top = 75
            Width = 62
            Height = 15
            Caption = 'Cidade/UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 432
            Top = 59
            Width = 69
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'e_cep'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel22: TRLLabel
            Left = 397
            Top = 59
            Width = 28
            Height = 15
            Caption = 'Cep:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 70
            Top = 114
            Width = 109
            Height = 15
            AutoSize = False
            DataField = 'e_tel'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel25: TRLLabel
            Left = 4
            Top = 113
            Width = 55
            Height = 15
            Caption = 'Telefone:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 6
            Top = 94
            Width = 37
            Height = 15
            Caption = 'CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 49
            Top = 95
            Width = 146
            Height = 15
            AutoSize = False
            DataField = 'e_cnpj'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel27: TRLLabel
            Left = 202
            Top = 94
            Width = 22
            Height = 15
            Caption = 'I.E.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 231
            Top = 95
            Width = 117
            Height = 15
            AutoSize = False
            DataField = 'e_ie'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText25: TRLDBText
            Left = 388
            Top = 95
            Width = 113
            Height = 15
            AutoSize = False
            DataField = 'e_im'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel28: TRLLabel
            Left = 354
            Top = 94
            Width = 25
            Height = 15
            Caption = 'I.M.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText28: TRLDBText
            Left = 230
            Top = 114
            Width = 271
            Height = 15
            AutoSize = False
            DataField = 'e_mail'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel29: TRLLabel
            Left = 182
            Top = 113
            Width = 37
            Height = 15
            Caption = 'Email:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 447
            Top = 41
            Width = 54
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'e_num'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText29: TRLDBText
            Left = 464
            Top = 76
            Width = 37
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'e_uf'
            DataSource = DM.dImpOC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel57: TRLLabel
            Left = 437
            Top = 75
            Width = 20
            Height = 15
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Draft 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLPanel4: TRLPanel
        Left = 0
        Top = 241
        Width = 755
        Height = 81
        Align = faTopOnly
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedLeft = True
        Borders.FixedRight = True
        Borders.FixedBottom = True
        object RLDBText31: TRLDBText
          Left = 97
          Top = 20
          Width = 399
          Height = 15
          AutoSize = False
          DataField = 't_endereco'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel31: TRLLabel
          Left = 6
          Top = 20
          Width = 85
          Height = 16
          Caption = 'Endere'#231'o/n'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel32: TRLLabel
          Left = 502
          Top = 20
          Width = 47
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText33: TRLDBText
          Left = 553
          Top = 20
          Width = 196
          Height = 15
          AutoSize = False
          DataField = 't_bairro'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText34: TRLDBText
          Left = 225
          Top = 37
          Width = 358
          Height = 15
          AutoSize = False
          DataField = 't_cidade'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel33: TRLLabel
          Left = 148
          Top = 37
          Width = 74
          Height = 16
          Caption = 'Cidade/UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 41
          Top = 37
          Width = 101
          Height = 15
          AutoSize = False
          DataField = 't_cep'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel34: TRLLabel
          Left = 6
          Top = 37
          Width = 33
          Height = 16
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 412
          Top = 56
          Width = 93
          Height = 15
          AutoSize = False
          DataField = 't_telefone'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel35: TRLLabel
          Left = 346
          Top = 56
          Width = 64
          Height = 16
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 6
          Top = 56
          Width = 42
          Height = 16
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 49
          Top = 56
          Width = 150
          Height = 15
          AutoSize = False
          DataField = 't_cnpj'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel37: TRLLabel
          Left = 203
          Top = 56
          Width = 28
          Height = 16
          Caption = 'I.E.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 230
          Top = 56
          Width = 117
          Height = 15
          AutoSize = False
          DataField = 't_ie'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText40: TRLDBText
          Left = 549
          Top = 56
          Width = 204
          Height = 15
          AutoSize = False
          DataField = 't_email'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel39: TRLLabel
          Left = 505
          Top = 56
          Width = 44
          Height = 16
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText42: TRLDBText
          Left = 616
          Top = 37
          Width = 51
          Height = 15
          AutoSize = False
          DataField = 't_Uf'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel5: TRLLabel
          Left = 6
          Top = 4
          Width = 110
          Height = 15
          Caption = 'TRANSPORTADOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 122
          Top = 4
          Width = 45
          Height = 15
          DataField = 't_nome'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel59: TRLLabel
          Left = 589
          Top = 37
          Width = 25
          Height = 16
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel5: TRLPanel
        Left = 0
        Top = 139
        Width = 756
        Height = 102
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedLeft = True
        Borders.FixedRight = True
        Borders.FixedBottom = True
        object RLDBText32: TRLDBText
          Left = 97
          Top = 22
          Width = 652
          Height = 15
          AutoSize = False
          DataField = 'NOME'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel21: TRLLabel
          Left = 6
          Top = 22
          Width = 76
          Height = 15
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText39: TRLDBText
          Left = 97
          Top = 40
          Width = 344
          Height = 15
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel38: TRLLabel
          Left = 6
          Top = 40
          Width = 74
          Height = 15
          Caption = 'Endere'#231'o/n'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 502
          Top = 40
          Width = 41
          Height = 15
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText43: TRLDBText
          Left = 553
          Top = 40
          Width = 196
          Height = 15
          AutoSize = False
          DataField = 'bairro'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText44: TRLDBText
          Left = 225
          Top = 57
          Width = 358
          Height = 15
          AutoSize = False
          DataField = 'cidade'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel41: TRLLabel
          Left = 148
          Top = 57
          Width = 62
          Height = 15
          Caption = 'Cidade/UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText45: TRLDBText
          Left = 41
          Top = 57
          Width = 101
          Height = 15
          AutoSize = False
          DataField = 'cep'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel42: TRLLabel
          Left = 6
          Top = 57
          Width = 28
          Height = 15
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText46: TRLDBText
          Left = 412
          Top = 76
          Width = 93
          Height = 15
          AutoSize = False
          DataField = 'tel1'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel43: TRLLabel
          Left = 346
          Top = 76
          Width = 55
          Height = 15
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 6
          Top = 76
          Width = 37
          Height = 15
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText47: TRLDBText
          Left = 46
          Top = 76
          Width = 150
          Height = 15
          AutoSize = False
          DataField = 'cnpj'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel45: TRLLabel
          Left = 199
          Top = 76
          Width = 22
          Height = 15
          Caption = 'I.E.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText48: TRLDBText
          Left = 230
          Top = 76
          Width = 116
          Height = 15
          AutoSize = False
          DataField = 'ie'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText49: TRLDBText
          Left = 549
          Top = 76
          Width = 204
          Height = 15
          AutoSize = False
          DataField = 'EMAIL'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel46: TRLLabel
          Left = 505
          Top = 76
          Width = 37
          Height = 15
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText50: TRLDBText
          Left = 447
          Top = 40
          Width = 51
          Height = 15
          AutoSize = False
          DataField = 'num'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText51: TRLDBText
          Left = 616
          Top = 58
          Width = 51
          Height = 15
          AutoSize = False
          DataField = 'uf'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel47: TRLLabel
          Left = 6
          Top = 4
          Width = 84
          Height = 15
          Caption = 'FORNECEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText52: TRLDBText
          Left = 94
          Top = 4
          Width = 46
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'IDFORNECEDOR'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText53: TRLDBText
          Left = 143
          Top = 4
          Width = 606
          Height = 15
          DataField = 'fantasia'
          DataSource = DM.dImpOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel58: TRLLabel
          Left = 589
          Top = 58
          Width = 20
          Height = 15
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLLabel55: TRLLabel
        Left = 451
        Top = 332
        Width = 19
        Height = 15
        Align = faBottomOnly
        Caption = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = 494
        Top = 332
        Width = 26
        Height = 15
        Align = faBottomOnly
        Caption = '%IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 702
      Width = 756
      Height = 22
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 657
        Top = 1
        Width = 99
        Height = 14
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel14: TRLLabel
        Left = 0
        Top = 2
        Width = 140
        Height = 14
        Caption = 'thrsoftwares.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
