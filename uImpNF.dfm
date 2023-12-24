object fImpNF: TfImpNF
  Left = 195
  Top = 122
  Width = 1080
  Height = 831
  VertScrollBar.Position = 131
  Caption = 'fImpNF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rp: TRLReport
    Left = 48
    Top = -99
    Width = 794
    Height = 1136
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Margins.LeftMargin = 0.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 0.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 300.500000000000000000
    BeforePrint = rpBeforePrint
    object RLBand3: TRLBand
      Left = 0
      Top = 410
      Width = 794
      Height = 503
      Background.Align = faBottom
      BandType = btFooter
      AfterPrint = RLBand3AfterPrint
      BeforePrint = RLBand3BeforePrint
      object RLDBText24: TRLDBText
        Left = 11
        Top = 112
        Width = 152
        Height = 15
        DataField = 'BASE_ICMS'
        DataSource = D
        Text = 'B.ICMS: '
      end
      object RLDBText25: TRLDBText
        Left = 175
        Top = 112
        Width = 172
        Height = 15
        DataField = 'VAL_ICMS'
        DataSource = D
        Text = 'Val. ICMS: '
      end
      object RLDBText26: TRLDBText
        Left = 702
        Top = 124
        Width = 49
        Height = 15
        Alignment = taRightJustify
        DataField = 'T_PROD'
        DataSource = D
      end
      object RLDBText27: TRLDBText
        Left = 361
        Top = 112
        Width = 133
        Height = 15
        DataField = 'FRETE'
        DataSource = D
        Text = 'Frete: '
      end
      object RLDBText28: TRLDBText
        Left = 176
        Top = 150
        Width = 172
        Height = 15
        DataField = 'VAL_IPI'
        DataSource = D
        Text = 'Val IPI: '
      end
      object RLDBText29: TRLDBText
        Left = 716
        Top = 156
        Width = 35
        Height = 15
        Alignment = taRightJustify
        DataField = 'T_NF'
        DataSource = D
      end
      object RLDBText30: TRLDBText
        Left = 19
        Top = 207
        Width = 77
        Height = 15
        DataField = 'TRANS_NOME'
        DataSource = D
      end
      object RLDBText31: TRLDBText
        Left = 441
        Top = 207
        Width = 25
        Height = 16
        AutoSize = False
        DataField = 'TPFRETE'
        DataSource = D
      end
      object RLDBText32: TRLDBText
        Left = 488
        Top = 207
        Width = 65
        Height = 16
        AutoSize = False
        DataField = 'TRANS_PLACA'
        DataSource = D
      end
      object RLDBText33: TRLDBText
        Left = 564
        Top = 207
        Width = 25
        Height = 16
        AutoSize = False
        DataField = 'TRANS_UFPLACA'
        DataSource = D
      end
      object RLDBText34: TRLDBText
        Left = 632
        Top = 238
        Width = 63
        Height = 15
        DataField = 'TRANS_IE'
        DataSource = D
      end
      object RLDBText35: TRLDBText
        Left = 19
        Top = 270
        Width = 77
        Height = 15
        DataField = 'QUANTIDADE'
        DataSource = D
      end
      object RLDBText36: TRLDBText
        Left = 136
        Top = 270
        Width = 56
        Height = 15
        DataField = 'ESPECIE'
        DataSource = D
      end
      object RLDBText37: TRLDBText
        Left = 360
        Top = 270
        Width = 42
        Height = 15
        DataField = 'MARCA'
        DataSource = D
      end
      object RLDBText38: TRLDBText
        Left = 472
        Top = 270
        Width = 49
        Height = 15
        DataField = 'NUMERO'
        DataSource = D
      end
      object RLDBText39: TRLDBText
        Left = 576
        Top = 270
        Width = 49
        Height = 15
        Alignment = taRightJustify
        DataField = 'PBRUTO'
        DataSource = D
      end
      object RLDBText40: TRLDBText
        Left = 672
        Top = 270
        Width = 63
        Height = 15
        Alignment = taRightJustify
        DataField = 'PLIQUIDO'
        DataSource = D
      end
      object RLDBText41: TRLDBText
        Left = 724
        Top = 463
        Width = 30
        Height = 18
        Alignment = taRightJustify
        DataField = 'NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText42: TRLDBText
        Left = 609
        Top = 207
        Width = 77
        Height = 15
        DataField = 'TRANS_CNPJ'
        DataSource = D
      end
      object RLDBText43: TRLDBText
        Left = 19
        Top = 238
        Width = 77
        Height = 15
        DataField = 'TRANS_ENDE'
        DataSource = D
      end
      object RLDBText44: TRLDBText
        Left = 392
        Top = 238
        Width = 91
        Height = 15
        DataField = 'TRANS_CIDADE'
        DataSource = D
      end
      object RLDBText45: TRLDBText
        Left = 594
        Top = 238
        Width = 33
        Height = 16
        AutoSize = False
        DataField = 'TRANS_UF'
        DataSource = D
      end
      object RLDBText91: TRLDBText
        Left = 702
        Top = 76
        Width = 49
        Height = 15
        Alignment = taRightJustify
        DataField = 'T_SERV'
        DataSource = D
      end
      object RLDBText92: TRLDBText
        Left = 672
        Top = 44
        Width = 77
        Height = 15
        DataField = 'VAL_ISS'
        DataSource = D
        Text = '***'
      end
      object RLDBMemo1: TRLDBMemo
        Left = 102
        Top = 307
        Width = 226
        Height = 169
        AutoSize = False
        Behavior = []
        DataField = 'OBS'
        DataSource = D
      end
      object RLDBText93: TRLDBText
        Left = 11
        Top = 11
        Width = 518
        Height = 15
        AutoSize = False
        DataField = 'SERV1'
        DataSource = D
      end
      object RLDBText94: TRLDBText
        Left = 11
        Top = 26
        Width = 518
        Height = 15
        AutoSize = False
        DataField = 'SERV2'
        DataSource = D
      end
      object RLDBText95: TRLDBText
        Left = 11
        Top = 41
        Width = 518
        Height = 15
        AutoSize = False
        DataField = 'SERV3'
        DataSource = D
      end
      object RLDBText96: TRLDBText
        Left = 11
        Top = 56
        Width = 518
        Height = 15
        AutoSize = False
        DataField = 'SERV4'
        DataSource = D
      end
      object RLDBText97: TRLDBText
        Left = 11
        Top = 71
        Width = 518
        Height = 15
        AutoSize = False
        DataField = 'SERV5'
        DataSource = D
      end
      object RLDBText98: TRLDBText
        Left = 11
        Top = 86
        Width = 518
        Height = 15
        AutoSize = False
        DataField = 'SERV6'
        DataSource = D
      end
      object RLDBText99: TRLDBText
        Left = 514
        Top = 11
        Width = 97
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALSERV1'
        DataSource = D
      end
      object RLDBText100: TRLDBText
        Left = 514
        Top = 26
        Width = 97
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALSERV2'
        DataSource = D
      end
      object RLDBText101: TRLDBText
        Left = 514
        Top = 56
        Width = 97
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALSERV4'
        DataSource = D
      end
      object RLDBText102: TRLDBText
        Left = 514
        Top = 41
        Width = 97
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALSERV3'
        DataSource = D
      end
      object RLDBText103: TRLDBText
        Left = 514
        Top = 71
        Width = 97
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALSEV5'
        DataSource = D
      end
      object RLDBText104: TRLDBText
        Left = 514
        Top = 86
        Width = 97
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALSER6'
        DataSource = D
      end
      object RLDBText105: TRLDBText
        Left = 11
        Top = 131
        Width = 152
        Height = 15
        DataField = 'BASEST'
        DataSource = D
        Text = 'BASE ICMS ST: '
      end
      object RLDBText106: TRLDBText
        Left = 175
        Top = 131
        Width = 172
        Height = 15
        DataField = 'VALICMSST'
        DataSource = D
        Text = 'Val. ICMS ST: '
      end
      object RLDBText107: TRLDBText
        Left = 11
        Top = 150
        Width = 152
        Height = 15
        DataField = 'BASE_IPI'
        DataSource = D
        Text = 'Base IPI:'
      end
      object RLDBText109: TRLDBText
        Left = 360
        Top = 130
        Width = 133
        Height = 15
        DataField = 'DESCONTO'
        DataSource = D
        Text = 'Desconto:'
      end
      object RLDBText110: TRLDBText
        Left = 360
        Top = 150
        Width = 133
        Height = 15
        DataField = 'DESPESAS'
        DataSource = D
        Text = 'Outras:'
      end
    end
    object RLBand2: TRLBand
      Left = 0
      Top = 396
      Width = 794
      Height = 14
      BeforePrint = RLBand2BeforePrint
      object RLDBText16: TRLDBText
        Left = 8
        Top = 0
        Width = 36
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'IDPRODUTO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 103
        Top = 0
        Width = 256
        Height = 15
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 349
        Top = 0
        Width = 22
        Height = 14
        Alignment = taRightJustify
        DataField = 'ST1'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 390
        Top = 0
        Width = 19
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'UNIDADE'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 424
        Top = 0
        Width = 41
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTD'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 487
        Top = 0
        Width = 41
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'UNIT'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 552
        Top = 0
        Width = 57
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 628
        Top = -1
        Width = 114
        Height = 14
        Caption = '    *             *                *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 0
      Top = 30
      Width = 794
      Height = 366
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object lS: TRLLabel
        Left = 485
        Top = 9
        Width = 14
        Height = 15
        Caption = 'X'
      end
      object lE: TRLLabel
        Left = 565
        Top = 9
        Width = 14
        Height = 15
        Caption = 'X'
      end
      object RLDBText1: TRLDBText
        Left = 736
        Top = 0
        Width = 30
        Height = 18
        Alignment = taRightJustify
        DataField = 'NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 19
        Top = 83
        Width = 56
        Height = 15
        DataField = 'NATOPER'
        DataSource = D
      end
      object RLDBText3: TRLDBText
        Left = 258
        Top = 83
        Width = 35
        Height = 15
        DataField = 'CFOP'
        DataSource = D
      end
      object RLDBText4: TRLDBText
        Left = 680
        Top = 132
        Width = 56
        Height = 15
        DataField = 'EMISSAO'
        DataSource = D
      end
      object RLDBText5: TRLDBText
        Left = 680
        Top = 162
        Width = 42
        Height = 15
        DataField = 'SAIDA'
        DataSource = D
      end
      object RLDBText6: TRLDBText
        Left = 680
        Top = 192
        Width = 35
        Height = 15
        DataField = 'HORA'
        DataSource = D
      end
      object RLDBText7: TRLDBText
        Left = 19
        Top = 132
        Width = 35
        Height = 15
        DataField = 'NOME'
        DataSource = D
      end
      object RLDBText8: TRLDBText
        Left = 496
        Top = 132
        Width = 35
        Height = 15
        DataField = 'CNPJ'
        DataSource = D
      end
      object RLDBText9: TRLDBText
        Left = 558
        Top = 162
        Width = 28
        Height = 15
        DataField = 'CEP'
        DataSource = D
      end
      object RLDBText10: TRLDBText
        Left = 19
        Top = 162
        Width = 63
        Height = 15
        DataField = 'ENDERECO'
        DataSource = D
      end
      object RLDBText11: TRLDBText
        Left = 448
        Top = 162
        Width = 49
        Height = 15
        DataField = 'BAIRRO'
        DataSource = D
      end
      object RLDBText12: TRLDBText
        Left = 19
        Top = 192
        Width = 49
        Height = 15
        DataField = 'CIDADE'
        DataSource = D
      end
      object RLDBText13: TRLDBText
        Left = 304
        Top = 192
        Width = 35
        Height = 15
        DataField = 'FONE'
        DataSource = D
      end
      object RLDBText14: TRLDBText
        Left = 426
        Top = 192
        Width = 21
        Height = 15
        DataField = 'UF'
        DataSource = D
      end
      object RLDBText15: TRLDBText
        Left = 488
        Top = 192
        Width = 21
        Height = 15
        DataField = 'IE'
        DataSource = D
      end
      object RLLabel3: TRLLabel
        Left = 680
        Top = 368
        Width = 63
        Height = 15
      end
      object lVenci: TRLLabel
        Left = 438
        Top = 248
        Width = 49
        Height = 15
        Alignment = taRightJustify
      end
      object lValor: TRLLabel
        Left = 438
        Top = 280
        Width = 49
        Height = 15
        Alignment = taRightJustify
      end
      object lValor2: TRLLabel
        Left = 575
        Top = 280
        Width = 56
        Height = 15
        Alignment = taRightJustify
      end
      object lVenci2: TRLLabel
        Left = 575
        Top = 248
        Width = 56
        Height = 15
        Alignment = taRightJustify
      end
      object lValor3: TRLLabel
        Left = 695
        Top = 280
        Width = 56
        Height = 15
        Alignment = taRightJustify
      end
      object lVenci3: TRLLabel
        Left = 695
        Top = 248
        Width = 56
        Height = 15
        Alignment = taRightJustify
      end
    end
  end
  object rpProge: TRLReport
    Left = 848
    Top = -100
    Width = 794
    Height = 809
    DataSource = D
    DefaultFilter = DM.RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Margins.LeftMargin = 0.000000000000000000
    Margins.TopMargin = 14.000000000000000000
    Margins.RightMargin = 0.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 214.000000000000000000
    object RLBand4: TRLBand
      Left = 0
      Top = 277
      Width = 794
      Height = 308
      BandType = btFooter
      AfterPrint = RLBand3AfterPrint
      BeforePrint = RLBand3BeforePrint
      object RLDBText46: TRLDBText
        Left = 19
        Top = 16
        Width = 70
        Height = 15
        DataField = 'BASE_ICMS'
        DataSource = D
      end
      object RLDBText47: TRLDBText
        Left = 176
        Top = 16
        Width = 63
        Height = 15
        DataField = 'VAL_ICMS'
        DataSource = D
      end
      object RLDBText48: TRLDBText
        Left = 702
        Top = 16
        Width = 49
        Height = 15
        Alignment = taRightJustify
        DataField = 'T_PROD'
        DataSource = D
      end
      object RLDBText49: TRLDBText
        Left = 19
        Top = 40
        Width = 42
        Height = 15
        DataField = 'FRETE'
        DataSource = D
      end
      object RLDBText50: TRLDBText
        Left = 480
        Top = 40
        Width = 56
        Height = 15
        DataField = 'VAL_IPI'
        DataSource = D
      end
      object RLDBText51: TRLDBText
        Left = 716
        Top = 40
        Width = 35
        Height = 15
        Alignment = taRightJustify
        DataField = 'T_NF'
        DataSource = D
      end
      object RLDBText52: TRLDBText
        Left = 19
        Top = 78
        Width = 77
        Height = 15
        DataField = 'TRANS_NOME'
        DataSource = D
      end
      object RLDBText53: TRLDBText
        Left = 475
        Top = 78
        Width = 25
        Height = 16
        AutoSize = False
        DataField = 'TPFRETE'
        DataSource = D
      end
      object RLDBText54: TRLDBText
        Left = 504
        Top = 78
        Width = 65
        Height = 16
        AutoSize = False
        DataField = 'TRANS_PLACA'
        DataSource = D
      end
      object RLDBText55: TRLDBText
        Left = 581
        Top = 78
        Width = 25
        Height = 16
        AutoSize = False
        DataField = 'TRANS_UFPLACA'
        DataSource = D
      end
      object RLDBText56: TRLDBText
        Left = 624
        Top = 101
        Width = 63
        Height = 15
        DataField = 'TRANS_IE'
        DataSource = D
      end
      object RLDBText57: TRLDBText
        Left = 19
        Top = 124
        Width = 77
        Height = 15
        DataField = 'QUANTIDADE'
        DataSource = D
      end
      object RLDBText58: TRLDBText
        Left = 104
        Top = 124
        Width = 56
        Height = 15
        DataField = 'ESPECIE'
        DataSource = D
      end
      object RLDBText59: TRLDBText
        Left = 256
        Top = 124
        Width = 42
        Height = 15
        DataField = 'MARCA'
        DataSource = D
      end
      object RLDBText60: TRLDBText
        Left = 416
        Top = 124
        Width = 49
        Height = 15
        DataField = 'NUMERO'
        DataSource = D
      end
      object RLDBText61: TRLDBText
        Left = 592
        Top = 124
        Width = 49
        Height = 15
        Alignment = taRightJustify
        DataField = 'PBRUTO'
        DataSource = D
      end
      object RLDBText62: TRLDBText
        Left = 688
        Top = 124
        Width = 63
        Height = 15
        Alignment = taRightJustify
        DataField = 'PLIQUIDO'
        DataSource = D
      end
      object RLDBText63: TRLDBText
        Left = 724
        Top = 337
        Width = 30
        Height = 18
        Alignment = taRightJustify
        DataField = 'NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText64: TRLDBText
        Left = 624
        Top = 78
        Width = 77
        Height = 15
        DataField = 'TRANS_CNPJ'
        DataSource = D
      end
      object RLDBText65: TRLDBText
        Left = 19
        Top = 101
        Width = 77
        Height = 15
        DataField = 'TRANS_ENDE'
        DataSource = D
      end
      object RLDBText66: TRLDBText
        Left = 392
        Top = 101
        Width = 91
        Height = 15
        DataField = 'TRANS_CIDADE'
        DataSource = D
      end
      object RLDBText67: TRLDBText
        Left = 581
        Top = 101
        Width = 33
        Height = 16
        AutoSize = False
        DataField = 'TRANS_UF'
        DataSource = D
      end
      object RLDBText23: TRLDBText
        Left = 720
        Top = 290
        Width = 30
        Height = 18
        Alignment = taRightJustify
        DataField = 'NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mFinan: TRLMemo
        Left = 20
        Top = 155
        Width = 485
        Height = 97
        AutoSize = False
        Behavior = []
        Lines.Strings = (
          '12/09/10  500,00   12/08/10  500,00  12/07/10  500,00'
          '12/09/10  500,00   12/08/10  500,00  12/07/10  500,00')
      end
    end
    object RLBand5: TRLBand
      Left = 0
      Top = 263
      Width = 794
      Height = 14
      object RLDBText68: TRLDBText
        Left = 0
        Top = 0
        Width = 36
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'IDPRODUTO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText69: TRLDBText
        Left = 72
        Top = 0
        Width = 257
        Height = 15
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText70: TRLDBText
        Left = 356
        Top = 0
        Width = 21
        Height = 14
        Alignment = taRightJustify
        DataField = 'ST'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText71: TRLDBText
        Left = 390
        Top = 0
        Width = 19
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'UNIDADE'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText72: TRLDBText
        Left = 448
        Top = 0
        Width = 62
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTD'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText73: TRLDBText
        Left = 544
        Top = 0
        Width = 53
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'UNIT'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText74: TRLDBText
        Left = 640
        Top = 0
        Width = 61
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText75: TRLDBText
        Left = 726
        Top = 0
        Width = 35
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ICMS'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 0
      Top = 53
      Width = 794
      Height = 210
      BandType = btHeader
      BeforePrint = RLBand6BeforePrint
      object lS2: TRLLabel
        Left = 482
        Top = 0
        Width = 14
        Height = 15
        Caption = 'X'
      end
      object lE2: TRLLabel
        Left = 554
        Top = 0
        Width = 14
        Height = 15
        Caption = 'X'
      end
      object RLDBText76: TRLDBText
        Left = 720
        Top = 0
        Width = 30
        Height = 18
        Alignment = taRightJustify
        DataField = 'NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText77: TRLDBText
        Left = 19
        Top = 77
        Width = 56
        Height = 15
        DataField = 'NATOPER'
        DataSource = D
      end
      object RLDBText78: TRLDBText
        Left = 256
        Top = 77
        Width = 35
        Height = 15
        DataField = 'CFOP'
        DataSource = D
      end
      object RLDBText79: TRLDBText
        Left = 680
        Top = 115
        Width = 56
        Height = 15
        DataField = 'EMISSAO'
        DataSource = D
      end
      object RLDBText80: TRLDBText
        Left = 680
        Top = 137
        Width = 42
        Height = 15
        DataField = 'SAIDA'
        DataSource = D
      end
      object RLDBText81: TRLDBText
        Left = 680
        Top = 160
        Width = 35
        Height = 15
        DataField = 'HORA'
        DataSource = D
      end
      object RLDBText82: TRLDBText
        Left = 19
        Top = 115
        Width = 35
        Height = 15
        DataField = 'NOME'
        DataSource = D
      end
      object RLDBText83: TRLDBText
        Left = 496
        Top = 115
        Width = 35
        Height = 15
        DataField = 'CNPJ'
        DataSource = D
      end
      object RLDBText84: TRLDBText
        Left = 582
        Top = 137
        Width = 28
        Height = 15
        DataField = 'CEP'
        DataSource = D
      end
      object RLDBText85: TRLDBText
        Left = 19
        Top = 137
        Width = 63
        Height = 15
        DataField = 'ENDERECO'
        DataSource = D
      end
      object RLDBText86: TRLDBText
        Left = 416
        Top = 137
        Width = 49
        Height = 15
        DataField = 'BAIRRO'
        DataSource = D
      end
      object RLDBText87: TRLDBText
        Left = 19
        Top = 160
        Width = 49
        Height = 15
        DataField = 'CIDADE'
        DataSource = D
      end
      object RLDBText88: TRLDBText
        Left = 296
        Top = 160
        Width = 35
        Height = 15
        DataField = 'FONE'
        DataSource = D
      end
      object RLDBText89: TRLDBText
        Left = 450
        Top = 160
        Width = 21
        Height = 15
        DataField = 'UF'
        DataSource = D
      end
      object RLDBText90: TRLDBText
        Left = 477
        Top = 160
        Width = 21
        Height = 15
        DataField = 'IE'
        DataSource = D
      end
    end
  end
  object D: TDataSource
    DataSet = Q
    Left = 32
    Top = 99
  end
  object Q: TIBQuery
    Database = DM.DBThR
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select NF.*,   NF_IT.* '
      'from NF '
      'left join NF_IT on NF_IT.IDNF = NF.ID '
      'Where NF.ID = :cod ')
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object QID: TIntegerField
      FieldName = 'ID'
      Origin = 'NF.ID'
      Required = True
    end
    object QNF: TIntegerField
      FieldName = 'NF'
      Origin = 'NF.NF'
      DisplayFormat = '0#####'
    end
    object QEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'NF.EMISSAO'
    end
    object QSAIDA: TDateField
      FieldName = 'SAIDA'
      Origin = 'NF.SAIDA'
    end
    object QHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'NF.HORA'
    end
    object QTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'NF.TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'NF.CFOP'
      Size = 10
    end
    object QNATOPER: TIBStringField
      FieldName = 'NATOPER'
      Origin = 'NF.NATOPER'
      Size = 50
    end
    object QIDPRODUTOR: TIntegerField
      FieldName = 'IDPRODUTOR'
      Origin = 'NF.IDPRODUTOR'
    end
    object QNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'NF.NOME'
      Size = 50
    end
    object QCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'NF.CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
    end
    object QIE: TIBStringField
      FieldName = 'IE'
      Origin = 'NF.IE'
    end
    object QENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'NF.ENDERECO'
      Size = 40
    end
    object QBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'NF.BAIRRO'
      Size = 30
    end
    object QCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'NF.CEP'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object QCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'NF.CIDADE'
      Size = 30
    end
    object QFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'NF.FONE'
      EditMask = '(99)9999-9999;0;_'
      Size = 10
    end
    object QUF: TIBStringField
      FieldName = 'UF'
      Origin = 'NF.UF'
      Size = 2
    end
    object QBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'NF.BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QVAL_ICMS: TIBBCDField
      FieldName = 'VAL_ICMS'
      Origin = 'NF.VAL_ICMS'
      Precision = 18
      Size = 2
    end
    object QBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = 'NF.BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QVAL_IPI: TIBBCDField
      FieldName = 'VAL_IPI'
      Origin = 'NF.VAL_IPI'
      Precision = 18
      Size = 2
    end
    object QT_PROD: TIBBCDField
      FieldName = 'T_PROD'
      Origin = 'NF.T_PROD'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QT_NF: TIBBCDField
      FieldName = 'T_NF'
      Origin = 'NF.T_NF'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = 'NF.FRETE'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QIDTRANSPORTADORA: TIntegerField
      FieldName = 'IDTRANSPORTADORA'
      Origin = 'NF.IDTRANSPORTADORA'
    end
    object QTRANS_NOME: TIBStringField
      FieldName = 'TRANS_NOME'
      Origin = 'NF.TRANS_NOME'
      Size = 50
    end
    object QTRANS_CNPJ: TIBStringField
      FieldName = 'TRANS_CNPJ'
      Origin = 'NF.TRANS_CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
    end
    object QTRANS_IE: TIBStringField
      FieldName = 'TRANS_IE'
      Origin = 'NF.TRANS_IE'
    end
    object QTRANS_PLACA: TIBStringField
      FieldName = 'TRANS_PLACA'
      Origin = 'NF.TRANS_PLACA'
      Size = 10
    end
    object QTRANS_UFPLACA: TIBStringField
      FieldName = 'TRANS_UFPLACA'
      Origin = 'NF.TRANS_UFPLACA'
      Size = 2
    end
    object QTRANS_ENDE: TIBStringField
      FieldName = 'TRANS_ENDE'
      Origin = 'NF.TRANS_ENDE'
      Size = 40
    end
    object QTRANS_CIDADE: TIBStringField
      FieldName = 'TRANS_CIDADE'
      Origin = 'NF.TRANS_CIDADE'
      Size = 30
    end
    object QTRANS_UF: TIBStringField
      FieldName = 'TRANS_UF'
      Origin = 'NF.TRANS_UF'
      Size = 2
    end
    object QQUANTIDADE: TIBStringField
      FieldName = 'QUANTIDADE'
      Origin = 'NF.QUANTIDADE'
    end
    object QESPECIE: TIBStringField
      FieldName = 'ESPECIE'
      Origin = 'NF.ESPECIE'
    end
    object QMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = 'NF.MARCA'
    end
    object QNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'NF.NUMERO'
    end
    object QPBRUTO: TIBBCDField
      FieldName = 'PBRUTO'
      Origin = 'NF.PBRUTO'
      Precision = 18
      Size = 2
    end
    object QPLIQUIDO: TIBBCDField
      FieldName = 'PLIQUIDO'
      Origin = 'NF.PLIQUIDO'
      Precision = 18
      Size = 2
    end
    object QOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'NF.OBS'
      Size = 8
    end
    object QTPFRETE: TIBStringField
      FieldName = 'TPFRETE'
      Origin = 'NF.TPFRETE'
      FixedChar = True
      Size = 1
    end
    object QTPNF: TIBStringField
      FieldName = 'TPNF'
      Origin = 'NF.TPNF'
    end
    object QID1: TIntegerField
      FieldName = 'ID1'
      Origin = 'NF_IT.ID'
    end
    object QIDNF: TIntegerField
      FieldName = 'IDNF'
      Origin = 'NF_IT.IDNF'
    end
    object QIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'NF_IT.IDPRODUTO'
    end
    object QDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'NF_IT.DESCRICAO'
      Size = 60
    end
    object QST: TIBStringField
      FieldName = 'ST'
      Origin = 'NF_IT.ST'
      Size = 3
    end
    object QUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'NF_IT.UNIDADE'
      Size = 10
    end
    object QQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'NF_IT.QTD'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 2
    end
    object QUNIT: TIBBCDField
      FieldName = 'UNIT'
      Origin = 'NF_IT.UNIT'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'NF_IT.TOTAL'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QICMS: TIBBCDField
      DisplayLabel = 'icms'
      FieldName = 'ICMS'
      Origin = 'NF_IT.ICMS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QST1: TIBStringField
      FieldName = 'ST1'
      Origin = 'NF_IT.ST'
      Size = 3
    end
    object QT_SERV: TIBBCDField
      FieldName = 'T_SERV'
      Origin = 'NF.T_SERV'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QVAL_ISS: TIBBCDField
      FieldName = 'VAL_ISS'
      Origin = 'NF.VAL_ISS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QTIPO1: TIBStringField
      DisplayLabel = 'TOTAL'
      FieldName = 'TIPO1'
      Origin = 'NF_IT.TIPO'
      FixedChar = True
      Size = 1
    end
    object QSERV1: TIBStringField
      FieldName = 'SERV1'
      Origin = 'NF.SERV1'
      Size = 60
    end
    object QVALSERV1: TIBBCDField
      FieldName = 'VALSERV1'
      Origin = 'NF.VALSERV1'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QSERV2: TIBStringField
      FieldName = 'SERV2'
      Origin = 'NF.SERV2'
      Size = 60
    end
    object QVALSERV2: TIBBCDField
      FieldName = 'VALSERV2'
      Origin = 'NF.VALSERV2'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QSERV3: TIBStringField
      FieldName = 'SERV3'
      Origin = 'NF.SERV3'
      Size = 60
    end
    object QVALSERV3: TIBBCDField
      FieldName = 'VALSERV3'
      Origin = 'NF.VALSERV3'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QSERV4: TIBStringField
      FieldName = 'SERV4'
      Origin = 'NF.SERV4'
      Size = 60
    end
    object QVALSERV4: TIBBCDField
      FieldName = 'VALSERV4'
      Origin = 'NF.VALSERV4'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QSERV5: TIBStringField
      FieldName = 'SERV5'
      Origin = 'NF.SERV5'
      Size = 60
    end
    object QVALSEV5: TIBBCDField
      FieldName = 'VALSEV5'
      Origin = 'NF.VALSEV5'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QSERV6: TIBStringField
      FieldName = 'SERV6'
      Origin = 'NF.SERV6'
      Size = 60
    end
    object QVALSER6: TIBBCDField
      FieldName = 'VALSER6'
      Origin = 'NF.VALSER6'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QMARGEMST: TIBBCDField
      FieldName = 'MARGEMST'
      Origin = 'NF.MARGEMST'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object QBASEST: TIBBCDField
      FieldName = 'BASEST'
      Origin = 'NF.BASEST'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QVALICMSST: TIBBCDField
      FieldName = 'VALICMSST'
      Origin = 'NF.VALICMSST'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'NF.DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object QDESPESAS: TIBBCDField
      FieldName = 'DESPESAS'
      Origin = 'NF.DESPESAS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object qServ: TIBQuery
    Database = DM.DBThR
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  NF_IT.* '
      'from NF_IT'
      'Where NF_IT.IDNF = :cod and '
      '            NF_IT.tipo = '#39'S'#39)
    Left = 8
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qServID: TIntegerField
      FieldName = 'ID'
      Origin = 'NF_IT.ID'
      Required = True
    end
    object qServIDNF: TIntegerField
      FieldName = 'IDNF'
      Origin = 'NF_IT.IDNF'
    end
    object qServIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'NF_IT.IDPRODUTO'
    end
    object qServDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'NF_IT.DESCRICAO'
      Size = 60
    end
    object qServST: TIBStringField
      FieldName = 'ST'
      Origin = 'NF_IT.ST'
      Size = 3
    end
    object qServUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'NF_IT.UNIDADE'
      Size = 10
    end
    object qServQTD: TIBBCDField
      FieldName = 'QTD'
      Origin = 'NF_IT.QTD'
      Precision = 18
      Size = 2
    end
    object qServUNIT: TIBBCDField
      FieldName = 'UNIT'
      Origin = 'NF_IT.UNIT'
      Precision = 18
      Size = 2
    end
    object qServTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'NF_IT.TOTAL'
      Precision = 18
      Size = 2
    end
    object qServICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'NF_IT.ICMS'
      Precision = 18
      Size = 2
    end
    object qServTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'NF_IT.TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object qFinan: TIBQuery
    Database = DM.DBThR
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  venci, valor from THR030'
      'where codrec = :COD '
      'and tipo = '#39'N'#39
      'and Entrada = '#39'N'#39
      'and estorno = 0')
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object qFinanVENCI: TDateField
      FieldName = 'VENCI'
      Origin = 'THR030.VENCI'
    end
    object qFinanVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'THR030.VALOR'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
end
