object fImpRefBase: TfImpRefBase
  Left = 0
  Top = 0
  Width = 914
  Height = 571
  AutoScroll = True
  Caption = 'fImpRefBase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpImpPedido: TRLReport
    Left = 24
    Top = 66
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Impresao'
    object lCancelada: TRLAngleLabel
      Left = 41
      Top = 29
      Width = 718
      Height = 452
      Alignment = taCenter
      Angle = 45.000000000000000000
      AutoSize = False
      Caption = 'Venda Cancelada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14540253
      Font.Height = -64
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object RLBand16: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 53
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText54: TRLDBText
        Left = 1
        Top = 3
        Width = 54
        Height = 16
        DataField = 'fantasia'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 1
        Top = 19
        Width = 172
        Height = 15
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object lTitulo: TRLLabel
        Left = 301
        Top = 33
        Width = 154
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'PEDIDO DE VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand17: TRLBand
      Left = 19
      Top = 257
      Width = 756
      Height = 116
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDraw3: TRLDraw
        Left = 520
        Top = 20
        Width = 232
        Height = 57
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        Pen.Style = psClear
      end
      object RLLabel45: TRLLabel
        Left = 541
        Top = 22
        Width = 68
        Height = 15
        Caption = 'Total Bruto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult11: TRLDBResult
        Left = 643
        Top = 22
        Width = 107
        Height = 15
        Alignment = taRightJustify
        DataField = 'TotItem'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult12: TRLDBResult
        Left = 170
        Top = 6
        Width = 57
        Height = 15
        DataField = 'qtd'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 549
        Top = 40
        Width = 60
        Height = 15
        Caption = 'Desconto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 643
        Top = 40
        Width = 107
        Height = 15
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 531
        Top = 59
        Width = 78
        Height = 15
        Caption = 'Total L'#237'quido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 643
        Top = 59
        Width = 107
        Height = 15
        Alignment = taRightJustify
        DataField = 'total'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 101
        Width = 756
        Height = 15
        Align = faBottom
        Behavior = [beSiteExpander]
        DataField = 'obs'
        DataSource = D
      end
      object RLLabel28: TRLLabel
        Left = 0
        Top = 84
        Width = 756
        Height = 17
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 100
        Top = 6
        Width = 64
        Height = 15
        Caption = 'Qtde Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand19: TRLBand
      Left = 19
      Top = 91
      Width = 756
      Height = 136
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand19BeforePrint
      object RLDraw2: TRLDraw
        Left = 0
        Top = 119
        Width = 756
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Brush.Color = 15132390
        Color = 15132390
        ParentColor = False
        Pen.Style = psClear
        Transparent = False
      end
      object RLLabel46: TRLLabel
        Left = 1
        Top = 0
        Width = 45
        Height = 15
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText61: TRLDBText
        Left = 47
        Top = 0
        Width = 46
        Height = 15
        DataField = 'idvenda'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText62: TRLDBText
        Left = 196
        Top = 0
        Width = 27
        Height = 15
        DataField = 'data'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel51: TRLLabel
        Left = 137
        Top = 0
        Width = 55
        Height = 15
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 1
        Top = 20
        Width = 45
        Height = 15
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 1
        Top = 121
        Width = 42
        Height = 14
        Align = faBottomOnly
        Caption = 'C'#243'digo'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel55: TRLLabel
        Left = 655
        Top = 121
        Width = 24
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Unit'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText67: TRLDBText
        Left = 555
        Top = 3
        Width = 195
        Height = 15
        AutoSize = False
        DataField = 'cond_pgto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel58: TRLLabel
        Left = 482
        Top = 3
        Width = 71
        Height = 15
        Caption = 'Cond Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 1
        Top = 38
        Width = 60
        Height = 15
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 70
        Top = 38
        Width = 680
        Height = 17
        object RLDBText4: TRLDBText
          Left = 0
          Top = 0
          Width = 55
          Height = 17
          Align = faLeft
          DataField = 'Endereco'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel2: TRLPanel
        Left = 70
        Top = 20
        Width = 406
        Height = 17
        object RLDBText11: TRLDBText
          Left = 0
          Top = 0
          Width = 39
          Height = 17
          Align = faLeft
          DataField = 'cliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 78
        Width = 37
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel3: TRLPanel
        Left = 70
        Top = 78
        Width = 238
        Height = 17
        object RLDBText12: TRLDBText
          Left = 0
          Top = 0
          Width = 26
          Height = 17
          Align = faLeft
          DataField = 'cnpj'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel232: TRLLabel
        Left = 271
        Top = 121
        Width = 23
        Height = 14
        Align = faBottomOnly
        Caption = 'Cor'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel235: TRLLabel
        Left = 398
        Top = 121
        Width = 36
        Height = 14
        Align = faBottomOnly
        Caption = 'Grade'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel326: TRLLabel
        Left = 699
        Top = 121
        Width = 53
        Height = 14
        Align = faBottomOnly
        Caption = 'VlorTotal'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 1
        Top = 58
        Width = 62
        Height = 15
        Caption = 'Cidade/UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel6: TRLPanel
        Left = 70
        Top = 58
        Width = 238
        Height = 17
        object RLDBText2: TRLDBText
          Left = 0
          Top = 0
          Width = 50
          Height = 17
          Align = faLeft
          DataField = 'cidadeuf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel7: TRLPanel
        Left = 348
        Top = 58
        Width = 402
        Height = 17
        object RLDBText5: TRLDBText
          Left = 0
          Top = 0
          Width = 23
          Height = 17
          Align = faLeft
          DataField = 'cep'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel6: TRLLabel
        Left = 315
        Top = 58
        Width = 29
        Height = 15
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 315
        Top = 80
        Width = 16
        Height = 15
        Caption = 'IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel8: TRLPanel
        Left = 348
        Top = 80
        Width = 135
        Height = 17
        object RLDBText6: TRLDBText
          Left = 0
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          DataField = 'ie'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel8: TRLLabel
        Left = 503
        Top = 21
        Width = 50
        Height = 15
        Caption = 'Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 555
        Top = 20
        Width = 195
        Height = 17
        AutoSize = False
        DataField = 'PrazoEntrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel9: TRLPanel
        Left = 71
        Top = 98
        Width = 237
        Height = 17
        object RLDBText8: TRLDBText
          Left = 0
          Top = 0
          Width = 54
          Height = 17
          Align = faLeft
          DataField = 'vendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel9: TRLLabel
        Left = 0
        Top = 98
        Width = 61
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 492
        Top = 98
        Width = 62
        Height = 15
        Caption = 'Transport:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel10: TRLPanel
        Left = 560
        Top = 98
        Width = 193
        Height = 17
        object RLDBText9: TRLDBText
          Left = 0
          Top = 0
          Width = 84
          Height = 17
          Align = faLeft
          DataField = 'transportadora'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel11: TRLPanel
        Left = 560
        Top = 81
        Width = 190
        Height = 17
        object RLDBText10: TRLDBText
          Left = 0
          Top = 0
          Width = 23
          Height = 17
          Align = faLeft
          DataField = 'tel1'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel11: TRLLabel
        Left = 492
        Top = 81
        Width = 55
        Height = 15
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 76
        Top = 121
        Width = 57
        Height = 14
        Align = faBottomOnly
        Caption = 'Descri'#231#227'o'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 584
        Top = 121
        Width = 29
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand20: TRLBand
      Left = 19
      Top = 373
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo8: TRLSystemInfo
        Left = 657
        Top = 1
        Width = 99
        Height = 14
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel678: TRLLabel
        Left = 0
        Top = 2
        Width = 118
        Height = 14
        Caption = 'thrsoftwares.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 19
      Top = 227
      Width = 756
      Height = 30
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand7BeforePrint
      object RLDBText75: TRLDBText
        Left = 3
        Top = 1
        Width = 53
        Height = 14
        DataField = 'referencia'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText76: TRLDBText
        Left = 595
        Top = 1
        Width = 18
        Height = 14
        Alignment = taRightJustify
        DataField = 'qtd'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText77: TRLDBText
        Left = 658
        Top = 1
        Width = 21
        Height = 14
        Alignment = taRightJustify
        DataField = 'Unit'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText211: TRLDBText
        Left = 271
        Top = 1
        Width = 21
        Height = 14
        DataField = 'cor'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBMemo8: TRLDBMemo
        Left = 76
        Top = 0
        Width = 189
        Height = 14
        Behavior = [beSiteExpander]
        DataField = 'descpro'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText278: TRLDBText
        Left = 715
        Top = 1
        Width = 37
        Height = 14
        Alignment = taRightJustify
        DataField = 'TotItem'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object M1: TRLMemo
        Left = 315
        Top = 14
        Width = 32
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object M2: TRLMemo
        Left = 357
        Top = 14
        Width = 40
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object M3: TRLMemo
        Left = 407
        Top = 14
        Width = 40
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object M4: TRLMemo
        Left = 457
        Top = 14
        Width = 40
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object M5: TRLMemo
        Left = 502
        Top = 14
        Width = 40
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lTam1: TRLLabel
        Left = 313
        Top = 0
        Width = 36
        Height = 14
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTam2: TRLLabel
        Left = 359
        Top = 0
        Width = 36
        Height = 14
        Alignment = taCenter
        Caption = 'lTam1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTam3: TRLLabel
        Left = 409
        Top = 0
        Width = 36
        Height = 14
        Alignment = taCenter
        Caption = 'lTam1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTam4: TRLLabel
        Left = 459
        Top = 0
        Width = 36
        Height = 14
        Alignment = taCenter
        Caption = 'lTam1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTam5: TRLLabel
        Left = 504
        Top = 0
        Width = 36
        Height = 14
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Q: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'select venda.id idvenda, venda.data, concat(venda.IdCondPgto, '#39' ' +
        '- '#39', Cond_Pgto.Descricao) cond_pgto, concat(cliente.id, '#39' - '#39', c' +
        'liente.nome) cliente, '
      
        'concat(cliente.endereco, '#39' - '#39', cliente.Num, '#39' - '#39', cliente.bair' +
        'ro) endereco, concat(cliente.cidade, '#39'/'#39', cliente.uf) cidadeuf, '
      
        'cliente.cep, cliente.cpf cnpj, cliente.rg ie, cliente.tel1, conc' +
        'at(venda.idvendedor, '#39' - '#39', vendedor.NOME) vendedor, concat(vend' +
        'a.idtranspotadora, '#39' - '#39', TRANSPORTADORA.NOME) transportadora,'
      
        'p.referencia_base, p.idcor, concat(p.idcor, '#39'.'#39', p.referencia_ba' +
        'se) referencia, cor.descricao cor,'
      
        'sum(venda_i.Qtd) qtd, venda_i.Unit, (sum(venda_i.Qtd) * venda_i.' +
        'Unit) TotItem, venda.valor, venda.Desconto, venda.total, '
      
        '(select top 1 descricao from produto where produto.referencia_ba' +
        'se = p.referencia_base) descpro, p.idgrupo, venda.obs, cliente.e' +
        'mail, cliente.tppessoa'
      'from Venda_I '
      'inner join produto p on p.id = venda_i.IdProduto'
      'inner join venda on venda.id = Venda_I.idvenda'
      'inner join cliente on cliente.id = venda.IdCliente'
      'left join cor on cor.id = p.idcor'
      'left join Cond_Pgto on Cond_Pgto.id = venda.IdCondPgto'
      
        'left join TRANSPORTADORA on transportadora.id = venda.idtranspot' +
        'adora'
      'left join vendedor on vendedor.id = venda.idvendedor'
      'where venda.id = :id'
      
        'group by venda.id, venda.data, venda.IdCondPgto, Cond_Pgto.Descr' +
        'icao, cliente.id, cliente.nome, cliente.endereco, cliente.num, c' +
        'liente.bairro, cliente.cidade, cliente.uf, '
      
        'cliente.cep, cliente.cpf, cliente.rg, cliente.tel1, cliente.id, ' +
        'venda.idvendedor, vendedor.nome, venda.idtranspotadora, transpor' +
        'tadora.nome, '
      'Venda_I.Unit, venda.valor, venda.desconto, venda.total,'
      
        'p.referencia_base, p.idcor, cor.descricao, p.idcor, p.idgrupo, v' +
        'enda.obs, cliente.email, cliente.tppessoa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 12
    Top = 29
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object Qidvenda: TIntegerField
      FieldName = 'idvenda'
      Required = True
    end
    object Qdata: TDateTimeField
      FieldName = 'data'
    end
    object Qcond_pgto: TWideStringField
      FieldName = 'cond_pgto'
      ReadOnly = True
      Size = 115
    end
    object Qcliente: TWideStringField
      FieldName = 'cliente'
      ReadOnly = True
      Size = 115
    end
    object Qendereco: TWideStringField
      FieldName = 'endereco'
      ReadOnly = True
      Size = 96
    end
    object Qcidadeuf: TWideStringField
      FieldName = 'cidadeuf'
      ReadOnly = True
      Size = 53
    end
    object Qcep: TWideStringField
      FieldName = 'cep'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object Qcnpj: TWideStringField
      FieldName = 'cnpj'
      EditMask = '##.###.###/####-##;0;_'
    end
    object Qie: TWideStringField
      FieldName = 'ie'
    end
    object Qtel1: TWideStringField
      FieldName = 'tel1'
      EditMask = '(99) 999999999;0;_'
    end
    object Qvendedor: TWideStringField
      FieldName = 'vendedor'
      ReadOnly = True
      Size = 95
    end
    object Qtransportadora: TWideStringField
      FieldName = 'transportadora'
      ReadOnly = True
      Size = 95
    end
    object Qreferencia_base: TWideStringField
      FieldName = 'referencia_base'
    end
    object Qidcor: TIntegerField
      FieldName = 'idcor'
    end
    object Qreferencia: TWideStringField
      FieldName = 'referencia'
      ReadOnly = True
      Size = 33
    end
    object Qcor: TWideStringField
      FieldName = 'cor'
      ReadOnly = True
      Size = 115
    end
    object Qqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.#'
    end
    object QUnit: TFloatField
      FieldName = 'Unit'
      DisplayFormat = '###,###,###,##0.0000000'
    end
    object QTotItem: TFloatField
      FieldName = 'TotItem'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qvalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qtotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qdescpro: TWideStringField
      FieldName = 'descpro'
      ReadOnly = True
      Size = 150
    end
    object Qidgrupo: TIntegerField
      FieldName = 'idgrupo'
    end
    object Qobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object Qemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object Qtppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
  end
  object D: TDataSource
    DataSet = Q
    Left = 44
    Top = 21
  end
  object qRefSemi: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'SELECT '#39'VENDAS'#39' descricao, '#39#39' descricao, sum(coalesce(Venda_I.Qt' +
        'd,0)) qtd, produto.tamanho'
      'from produto'
      
        'inner join Venda_I on Venda_I.IdProduto = produto.Id --and Venda' +
        '_I.IdVenda in (select id from venda where status in ('#39'D'#39', '#39'G'#39', '#39 +
        'H'#39'))'
      
        'where produto.referencia_base = :ref and produto.idcor = :cor an' +
        'd venda_i.idvenda = :venda'
      'group by produto.tamanho')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ref'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ref'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end>
    object qRefSemiqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object qRefSemitamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 5
    end
  end
  object dRefSemi: TDataSource
    Left = 224
    Top = 16
  end
end
