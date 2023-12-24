object fImpressoes: TfImpressoes
  Left = 195
  Top = 121
  Width = 1055
  Height = 613
  AutoScroll = True
  Caption = 'fImpressoes'
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
  object rpImpPedido: TRLReport
    Left = 50
    Top = 3456
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
    BeforePrint = rpImpPedidoBeforePrint
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
        Left = 310
        Top = 33
        Width = 135
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Extrato da Venda'
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
      Top = 233
      Width = 756
      Height = 134
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand17AfterPrint
      BeforePrint = RLBand17BeforePrint
      object RLDraw3: TRLDraw
        Left = 474
        Top = 20
        Width = 278
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
        Left = 479
        Top = 22
        Width = 140
        Height = 15
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult11: TRLDBResult
        Left = 624
        Top = 22
        Width = 126
        Height = 15
        Alignment = taRightJustify
        DataField = 'TotalBrutoProd'
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
        Left = 452
        Top = 2
        Width = 56
        Height = 14
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 549
        Top = 40
        Width = 70
        Height = 15
        Caption = 'DESCONTO:'
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
        Left = 533
        Top = 59
        Width = 86
        Height = 15
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 669
        Top = 59
        Width = 81
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total'
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
      object RLPanel5: TRLPanel
        Left = 0
        Top = 79
        Width = 756
        Height = 55
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLLabel62: TRLLabel
          Left = 0
          Top = 22
          Width = 756
          Height = 16
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 
            'Docto                        Vencto          Valor              ' +
            '            '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLMemo1: TRLMemo
          Left = 0
          Top = 38
          Width = 756
          Height = 15
          Align = faTop
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLPanel4: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 22
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel28: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 33
            Top = 2
            Width = 717
            Height = 17
            Behavior = [beSiteExpander]
            DataField = 'obs_venda'
            DataSource = D
          end
        end
      end
      object RLDBResult23: TRLDBResult
        Left = 250
        Top = 2
        Width = 101
        Height = 14
        Alignment = taRightJustify
        DataField = 'totcubagem'
        DataSource = D
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBResult26: TRLDBResult
        Left = 339
        Top = 2
        Width = 68
        Height = 14
        Alignment = taRightJustify
        DataField = 'qtd_cx'
        DataSource = D
        DisplayMask = '###,###,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult43: TRLDBResult
        Left = 521
        Top = 1
        Width = 106
        Height = 14
        Alignment = taRightJustify
        DataField = 'TotalBrutoProd'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult45: TRLDBResult
        Left = 602
        Top = 1
        Width = 81
        Height = 14
        Alignment = taRightJustify
        DataField = 'descprod'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult46: TRLDBResult
        Left = 683
        Top = 2
        Width = 69
        Height = 14
        Alignment = taRightJustify
        DataField = 'totprod'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel327: TRLLabel
        Left = 1
        Top = 2
        Width = 43
        Height = 14
        Caption = 'TOTAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand19: TRLBand
      Left = 19
      Top = 91
      Width = 756
      Height = 125
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDraw2: TRLDraw
        Left = 0
        Top = 108
        Width = 750
        Height = 16
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
        Caption = 'VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText61: TRLDBText
        Left = 46
        Top = 0
        Width = 13
        Height = 15
        DataField = 'Id'
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
        Left = 175
        Top = 0
        Width = 33
        Height = 15
        DataField = 'DATA'
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
        Width = 37
        Height = 15
        Caption = 'DATA:'
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
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 1
        Top = 110
        Width = 47
        Height = 14
        Align = faBottomOnly
        Caption = 'Produto'
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
      object RLLabel54: TRLLabel
        Left = 450
        Top = 110
        Width = 57
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde Item'
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
        Left = 550
        Top = 110
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
      object RLLabel56: TRLLabel
        Left = 699
        Top = 110
        Width = 53
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Total Liq.'
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
        Left = 90
        Top = 77
        Width = 179
        Height = 15
        AutoSize = False
        DataField = 'desCond'
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
        Left = 1
        Top = 77
        Width = 85
        Height = 15
        Caption = 'COND. PAGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText68: TRLDBText
        Left = 374
        Top = 77
        Width = 126
        Height = 17
        AutoSize = False
        DataField = 'PrazoEntrega'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel59: TRLLabel
        Left = 271
        Top = 77
        Width = 102
        Height = 15
        Caption = 'PRAZO ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText74: TRLDBText
        Left = 714
        Top = 0
        Width = 36
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel90: TRLLabel
        Left = 533
        Top = 0
        Width = 99
        Height = 16
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 275
        Top = 0
        Width = 20
        Height = 15
        Caption = 'NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 295
        Top = 0
        Width = 13
        Height = 15
        DataField = 'nf'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 1
        Top = 38
        Width = 68
        Height = 15
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 72
        Top = 38
        Width = 678
        Height = 17
        object RLDBText4: TRLDBText
          Left = 0
          Top = 0
          Width = 56
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
        object RLDBText5: TRLDBText
          Left = 65
          Top = 0
          Width = 30
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel5: TRLLabel
          Left = 56
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 95
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 108
          Top = 0
          Width = 36
          Height = 17
          Align = faLeft
          DataField = 'Bairro'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel7: TRLLabel
          Left = 144
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 157
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 200
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 206
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel10: TRLLabel
          Left = 225
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 238
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
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
        Left = 61
        Top = 20
        Width = 689
        Height = 17
        object RLDBText10: TRLDBText
          Left = 0
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 65
          Top = 0
          Width = 37
          Height = 17
          Align = faLeft
          DataField = 'Nome'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel11: TRLLabel
          Left = 52
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel351: TRLLabel
          Left = 102
          Top = 0
          Width = 46
          Height = 17
          Align = faLeft
          Caption = '  CNPJ: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText305: TRLDBText
          Left = 148
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'cpf'
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
        Left = 1
        Top = 59
        Width = 69
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel3: TRLPanel
        Left = 73
        Top = 59
        Width = 677
        Height = 17
        object RLDBText12: TRLDBText
          Left = 0
          Top = 0
          Width = 66
          Height = 17
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 79
          Top = 0
          Width = 290
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel13: TRLLabel
          Left = 66
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel179: TRLLabel
          Left = 375
          Top = 0
          Width = 61
          Height = 15
          Caption = 'PACOTES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText206: TRLDBText
          Left = 437
          Top = 0
          Width = 109
          Height = 17
          AutoSize = False
          DataField = 'pacote'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel260: TRLLabel
          Left = 549
          Top = 0
          Width = 71
          Height = 15
          Caption = 'TIPO FRETE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText243: TRLDBText
          Left = 624
          Top = 0
          Width = 53
          Height = 17
          AutoSize = False
          DataField = 'tipoFrete'
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
        Left = 294
        Top = 110
        Width = 56
        Height = 14
        Align = faBottomOnly
        Caption = 'Cubagem'
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
        Left = 356
        Top = 110
        Width = 49
        Height = 14
        Align = faBottomOnly
        Caption = 'Qtde Cx.'
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
      object RLLabel236: TRLLabel
        Left = 413
        Top = 110
        Width = 30
        Height = 14
        Align = faBottomOnly
        Caption = 'Mult.'
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
      object RLLabel241: TRLLabel
        Left = 650
        Top = 110
        Width = 33
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Desc.'
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
      object RLDBText244: TRLDBText
        Left = 588
        Top = 77
        Width = 162
        Height = 17
        AutoSize = False
        DataField = 'transp_vendedor'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel275: TRLLabel
        Left = 501
        Top = 77
        Width = 85
        Height = 15
        Caption = 'REDESPACHO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel248: TRLLabel
        Left = 1
        Top = 93
        Width = 90
        Height = 15
        Caption = 'FORMA PAGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText222: TRLDBText
        Left = 90
        Top = 93
        Width = 177
        Height = 15
        AutoSize = False
        DataField = 'forma_pgto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel326: TRLLabel
        Left = 596
        Top = 110
        Width = 30
        Height = 14
        Align = faBottomOnly
        Caption = 'Total'
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
      object RLLabel350: TRLLabel
        Left = 359
        Top = 0
        Width = 72
        Height = 15
        Caption = 'Emiss'#227'o NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText304: TRLDBText
        Left = 432
        Top = 0
        Width = 30
        Height = 15
        DataField = 'dt_nf'
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
    object RLBand20: TRLBand
      Left = 19
      Top = 367
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
      Top = 216
      Width = 756
      Height = 17
      object RLDBText75: TRLDBText
        Left = 3
        Top = 1
        Width = 48
        Height = 14
        DataField = 'IdProduto'
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
        Left = 488
        Top = 1
        Width = 20
        Height = 14
        Alignment = taRightJustify
        DataField = 'Qtd'
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
        Left = 553
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
      object RLDBText78: TRLDBText
        Left = 715
        Top = 1
        Width = 37
        Height = 14
        Alignment = taRightJustify
        DataField = 'totprod'
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
        Left = 304
        Top = 1
        Width = 47
        Height = 14
        Alignment = taRightJustify
        DataField = 'cubagem'
        DataSource = D
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo8: TRLDBMemo
        Left = 101
        Top = 1
        Width = 191
        Height = 14
        Behavior = [beSiteExpander]
        DataField = 'descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText56: TRLDBText
        Left = 356
        Top = 1
        Width = 51
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd_cx'
        DataSource = D
        DisplayMask = '#,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText214: TRLDBText
        Left = 413
        Top = 1
        Width = 30
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'multiplo'
        DataSource = D
        DisplayMask = '#,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 634
        Top = 1
        Width = 49
        Height = 14
        Alignment = taRightJustify
        DataField = 'descprod'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText278: TRLDBText
        Left = 590
        Top = 1
        Width = 37
        Height = 14
        Alignment = taRightJustify
        DataField = 'TotalBrutoProd'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object RpCompra: TRLReport
    Left = 837
    Top = 23
    Width = 794
    Height = 1123
    DataSource = DM.dImpCompra
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Draft 12 cpi'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand1: TRLBand
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
      object RLDBText2: TRLDBText
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
      object RLSystemInfo2: TRLSystemInfo
        Left = 2
        Top = 19
        Width = 172
        Height = 15
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel8: TRLLabel
        Left = 224
        Top = 33
        Width = 269
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Compra de Produto / Materia Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 216
      Width = 718
      Height = 157
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand2AfterPrint
      BeforePrint = RLBand2BeforePrint
      object RLDraw18: TRLDraw
        Left = 330
        Top = 5
        Width = 388
        Height = 84
        Pen.Color = clGray
      end
      object RLLabel14: TRLLabel
        Left = 340
        Top = 8
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
      object RLDBResult3: TRLDBResult
        Left = 640
        Top = 7
        Width = 71
        Height = 15
        Alignment = taRightJustify
        DataField = 'totpro'
        DataSource = DM.dImpCompra
        DisplayMask = '###,###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 485
        Top = 7
        Width = 65
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = DM.dImpCompra
        DisplayMask = '###,###,###,##0.000'
        Info = riSum
        Text = ''
      end
      object RLLabel15: TRLLabel
        Left = 0
        Top = 123
        Width = 718
        Height = 18
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 
          'Docto                        Vencto                      Valor  ' +
          '                        '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 0
        Top = 141
        Width = 718
        Height = 16
        Align = faBottom
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo5: TRLDBMemo
        Left = -1
        Top = 106
        Width = 717
        Height = 15
        Behavior = [beSiteExpander]
        DataField = 'OBS'
        DataSource = DM.dImpCompra
      end
      object RLLabel84: TRLLabel
        Left = -1
        Top = 89
        Width = 72
        Height = 15
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel909: TRLLabel
        Left = 417
        Top = 29
        Width = 63
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel910: TRLLabel
        Left = 396
        Top = 50
        Width = 84
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR FRETE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel911: TRLLabel
        Left = 382
        Top = 71
        Width = 98
        Height = 15
        Alignment = taRightJustify
        Caption = 'TOTAL COMPRA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText697: TRLDBText
        Left = 594
        Top = 27
        Width = 117
        Height = 15
        Alignment = taRightJustify
        DataField = 'VALIPI'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText698: TRLDBText
        Left = 594
        Top = 48
        Width = 117
        Height = 15
        Alignment = taRightJustify
        DataField = 'FRETE'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText699: TRLDBText
        Left = 592
        Top = 70
        Width = 119
        Height = 16
        Alignment = taRightJustify
        DataField = 'TOTAL'
        DataSource = DM.dImpCompra
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 197
      Width = 718
      Height = 19
      object RLDBText14: TRLDBText
        Left = 677
        Top = 1
        Width = 34
        Height = 15
        Alignment = taRightJustify
        DataField = 'totpro'
        DataSource = DM.dImpCompra
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 67
        Top = 1
        Width = 371
        Height = 15
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = -12
        Top = 1
        Width = 75
        Height = 15
        Alignment = taRightJustify
        DataField = 'IDPRODUTO'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText17: TRLDBText
        Left = 581
        Top = 1
        Width = 23
        Height = 15
        Alignment = taRightJustify
        DataField = 'UNIT'
        DataSource = DM.dImpCompra
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 522
        Top = 1
        Width = 28
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = DM.dImpCompra
        Text = ''
      end
      object RLDBText696: TRLDBText
        Left = 462
        Top = 1
        Width = 17
        Height = 15
        Alignment = taRightJustify
        DataField = 'IPI'
        DataSource = DM.dImpCompra
        Text = ''
      end
      object RLDBText65: TRLDBText
        Left = 610
        Top = 1
        Width = 41
        Height = 15
        Alignment = taRightJustify
        DataField = 'DESCONTO_1'
        DataSource = DM.dImpCompra
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 91
      Width = 718
      Height = 106
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Draft 12 cpi'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand4BeforePrint
      object RLLabel16: TRLLabel
        Left = 2
        Top = 0
        Width = 38
        Height = 15
        Caption = 'NOTA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 45
        Top = 0
        Width = 62
        Height = 15
        DataField = 'NUMNOTA'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText20: TRLDBText
        Left = 232
        Top = 0
        Width = 33
        Height = 15
        DataField = 'DATA'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel17: TRLLabel
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
      object RLLabel18: TRLLabel
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
      object RLLabel19: TRLLabel
        Left = 1
        Top = 90
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
      object RLLabel20: TRLLabel
        Left = 523
        Top = 90
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
      object RLLabel21: TRLLabel
        Left = 575
        Top = 90
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
      object RLLabel22: TRLLabel
        Left = 670
        Top = 90
        Width = 41
        Height = 15
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel57: TRLLabel
        Left = 2
        Top = 36
        Width = 79
        Height = 15
        Caption = 'PAGAMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 74
        Top = 55
        Width = 63
        Height = 15
        DataField = 'BASEICMS'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel23: TRLLabel
        Left = 2
        Top = 55
        Width = 69
        Height = 15
        Caption = 'BASE ICMS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 204
        Top = 55
        Width = 53
        Height = 15
        DataField = 'VALICMS'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel24: TRLLabel
        Left = 166
        Top = 55
        Width = 35
        Height = 15
        Caption = 'ICMS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText69: TRLDBText
        Left = 325
        Top = 55
        Width = 38
        Height = 15
        DataField = 'VALIPI'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel60: TRLLabel
        Left = 302
        Top = 55
        Width = 20
        Height = 15
        Caption = 'IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 610
        Top = 1
        Width = 101
        Height = 16
        Alignment = taRightJustify
        DataField = 'TOTAL'
        DataSource = DM.dImpCompra
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel25: TRLLabel
        Left = 513
        Top = 1
        Width = 91
        Height = 16
        Caption = 'TOTAL NOTA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 420
        Top = 55
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
      object RLDBText24: TRLDBText
        Left = 463
        Top = 55
        Width = 46
        Height = 15
        AutoSize = False
        DataField = 'FRETE'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel27: TRLLabel
        Left = 565
        Top = 55
        Width = 45
        Height = 15
        Caption = 'Outros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText25: TRLDBText
        Left = 612
        Top = 55
        Width = 46
        Height = 15
        AutoSize = False
        DataField = 'OUTROS'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel896: TRLLabel
        Left = 450
        Top = 90
        Width = 29
        Height = 15
        Align = faBottomOnly
        Caption = '% IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel646: TRLLabel
        Left = 548
        Top = 36
        Width = 120
        Height = 15
        Alignment = taRightJustify
        Caption = 'MODALIDADE FRETE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ltpFrete: TRLLabel
        Left = 669
        Top = 36
        Width = 42
        Height = 15
        AutoSize = False
        Caption = '1-CIF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel647: TRLLabel
        Left = 347
        Top = 36
        Width = 82
        Height = 15
        Alignment = taRightJustify
        Caption = 'FORMA PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText472: TRLDBText
        Left = 431
        Top = 36
        Width = 112
        Height = 17
        AutoSize = False
        DataField = 'forma_pgto'
        DataSource = DM.dImpCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel650: TRLLabel
        Left = 2
        Top = 73
        Width = 81
        Height = 15
        Caption = 'SOLICITANTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel185: TRLPanel
        Left = 90
        Top = 73
        Width = 621
        Height = 15
        object RLDBText508: TRLDBText
          Left = 0
          Top = 0
          Width = 69
          Height = 15
          Align = faLeft
          DataField = 'idsolicitante'
          DataSource = DM.dImpCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText518: TRLDBText
          Left = 82
          Top = 0
          Width = 53
          Height = 15
          Align = faLeft
          DataField = 'nomeSol'
          DataSource = DM.dImpCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel651: TRLLabel
          Left = 69
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel186: TRLPanel
        Left = 90
        Top = 20
        Width = 621
        Height = 15
        object RLDBText63: TRLDBText
          Left = 0
          Top = 0
          Width = 101
          Height = 15
          Align = faLeft
          DataField = 'IDFORNECEDOR'
          DataSource = DM.dImpCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText64: TRLDBText
          Left = 114
          Top = 0
          Width = 38
          Height = 15
          Align = faLeft
          DataField = 'NOME'
          DataSource = DM.dImpCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel652: TRLLabel
          Left = 101
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel187: TRLPanel
        Left = 90
        Top = 37
        Width = 253
        Height = 15
        object RLDBText519: TRLDBText
          Left = 0
          Top = 0
          Width = 64
          Height = 15
          Align = faLeft
          DataField = 'idcondpgto'
          DataSource = DM.dImpCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText520: TRLDBText
          Left = 77
          Top = 0
          Width = 61
          Height = 15
          Align = faLeft
          DataField = 'DESPGTO'
          DataSource = DM.dImpCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel653: TRLLabel
          Left = 64
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLLabel661: TRLLabel
        Left = 617
        Top = 90
        Width = 34
        Height = 15
        Align = faBottomOnly
        Caption = 'DESC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 373
      Width = 718
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo3: TRLSystemInfo
        Left = 602
        Top = 1
        Width = 116
        Height = 15
        Align = faRightTop
        Info = itPageNumber
        Text = 'Pag.: '
      end
      object RLLabel673: TRLLabel
        Left = 0
        Top = 1
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
  object rpIMpCliente: TRLReport
    Left = 2491
    Top = 1173
    Width = 794
    Height = 1123
    DataSource = dsCli
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand6: TRLBand
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
      object RLDBText26: TRLDBText
        Left = 1
        Top = 3
        Width = 48
        Height = 16
        DataField = 'Razao'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 1
        Top = 19
        Width = 172
        Height = 15
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel29: TRLLabel
        Left = 327
        Top = 33
        Width = 63
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'CLiente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 91
      Width = 718
      Height = 414
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand9BeforePrint
      object RLLabel35: TRLLabel
        Left = 1
        Top = 5
        Width = 31
        Height = 15
        Caption = 'COD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText33: TRLDBText
        Left = 32
        Top = 5
        Width = 13
        Height = 15
        DataField = 'Id'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText34: TRLDBText
        Left = 192
        Top = 5
        Width = 57
        Height = 15
        DataField = 'dtcadastro'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel36: TRLLabel
        Left = 116
        Top = 5
        Width = 70
        Height = 15
        Caption = 'CADASTRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 1
        Top = 53
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText35: TRLDBText
        Left = 40
        Top = 142
        Width = 259
        Height = 17
        AutoSize = False
        DataField = 'pais'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel42: TRLLabel
        Left = 1
        Top = 142
        Width = 33
        Height = 15
        Caption = 'PA'#205'S:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText36: TRLDBText
        Left = 407
        Top = 142
        Width = 253
        Height = 17
        AutoSize = False
        DataField = 'Cidade'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel43: TRLLabel
        Left = 356
        Top = 142
        Width = 48
        Height = 15
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel47: TRLLabel
        Left = 293
        Top = 5
        Width = 33
        Height = 15
        Caption = 'TIPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText38: TRLDBText
        Left = 325
        Top = 5
        Width = 55
        Height = 15
        DataField = 'tppessoa'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel48: TRLLabel
        Left = 1
        Top = 95
        Width = 68
        Height = 15
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel8: TRLPanel
        Left = 74
        Top = 94
        Width = 641
        Height = 17
        object RLDBText39: TRLDBText
          Left = 0
          Top = 0
          Width = 56
          Height = 17
          Align = faLeft
          DataField = 'Endereco'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText40: TRLDBText
          Left = 65
          Top = 0
          Width = 30
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel49: TRLLabel
          Left = 56
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 95
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText41: TRLDBText
          Left = 108
          Top = 0
          Width = 36
          Height = 17
          Align = faLeft
          DataField = 'Bairro'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel61: TRLLabel
          Left = 144
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText42: TRLDBText
          Left = 157
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel63: TRLLabel
          Left = 200
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText43: TRLDBText
          Left = 206
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel64: TRLLabel
          Left = 225
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText44: TRLDBText
          Left = 238
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel9: TRLPanel
        Left = 61
        Top = 53
        Width = 652
        Height = 17
        object RLDBText46: TRLDBText
          Left = 0
          Top = 0
          Width = 37
          Height = 17
          Align = faLeft
          DataField = 'Nome'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText45: TRLDBText
          Left = 552
          Top = 0
          Width = 40
          Height = 15
          DataField = 'dtnasc'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object lRG: TRLLabel
        Left = 1
        Top = 119
        Width = 22
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel10: TRLPanel
        Left = 29
        Top = 118
        Width = 684
        Height = 17
        object RLDBText48: TRLDBText
          Left = 0
          Top = 0
          Width = 14
          Height = 17
          Align = faLeft
          DataField = 'rg'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object lCpf: TRLLabel
          Left = 217
          Top = 1
          Width = 28
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText47: TRLDBText
          Left = 253
          Top = 1
          Width = 19
          Height = 15
          DataField = 'cpf'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel44: TRLLabel
        Left = 429
        Top = 5
        Width = 90
        Height = 15
        Caption = 'CONTRIBUINTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText37: TRLDBText
        Left = 525
        Top = 6
        Width = 67
        Height = 15
        DataField = 'contribuinte'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel68: TRLLabel
        Left = 2
        Top = 28
        Width = 41
        Height = 15
        Caption = 'ATIVO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText49: TRLDBText
        Left = 49
        Top = 28
        Width = 28
        Height = 15
        DataField = 'ativo'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel69: TRLLabel
        Left = 95
        Top = 28
        Width = 43
        Height = 15
        Caption = 'LIMITE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText50: TRLDBText
        Left = 144
        Top = 28
        Width = 73
        Height = 15
        DataField = 'limiteCredito'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel65: TRLLabel
        Left = 572
        Top = 53
        Width = 35
        Height = 15
        Caption = 'Nasc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel70: TRLLabel
        Left = 3
        Top = 74
        Width = 46
        Height = 15
        Caption = 'RAZ'#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText51: TRLDBText
        Left = 60
        Top = 74
        Width = 655
        Height = 17
        AutoSize = False
        DataField = 'razao'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel71: TRLLabel
        Left = 1
        Top = 165
        Width = 64
        Height = 15
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText52: TRLDBText
        Left = 71
        Top = 165
        Width = 147
        Height = 17
        AutoSize = False
        DataField = 'tel1'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel72: TRLLabel
        Left = 241
        Top = 165
        Width = 74
        Height = 15
        Caption = 'TELEFONE 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText53: TRLDBText
        Left = 321
        Top = 165
        Width = 137
        Height = 17
        AutoSize = False
        DataField = 'tel2'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel73: TRLLabel
        Left = 474
        Top = 165
        Width = 74
        Height = 15
        Caption = 'TELEFONE 3:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText58: TRLDBText
        Left = 552
        Top = 165
        Width = 147
        Height = 17
        AutoSize = False
        DataField = 'tel3'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel74: TRLLabel
        Left = 4
        Top = 188
        Width = 41
        Height = 15
        Caption = 'EMAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText70: TRLDBText
        Left = 74
        Top = 188
        Width = 615
        Height = 17
        AutoSize = False
        DataField = 'email'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel30: TRLLabel
        Left = 4
        Top = 322
        Width = 31
        Height = 15
        Caption = 'OBS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 41
        Top = 322
        Width = 673
        Height = 15
        Behavior = [beSiteExpander]
        DataField = 'obs'
        DataSource = fCadCli.D
        Transparent = False
      end
      object RLPanel6: TRLPanel
        Left = 4
        Top = 215
        Width = 709
        Height = 89
        Borders.Sides = sdAll
        Borders.Style = bsHorizontal
        object RLLabel31: TRLLabel
          Left = 2
          Top = 9
          Width = 124
          Height = 15
          Caption = 'ENDERE'#199'O ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 139
          Top = 9
          Width = 74
          Height = 15
          DataField = 'End_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel32: TRLLabel
          Left = 1
          Top = 31
          Width = 96
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'COMPLEMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 103
          Top = 31
          Width = 96
          Height = 15
          DataField = 'Comple_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel39: TRLLabel
          Left = 1
          Top = 54
          Width = 33
          Height = 15
          Caption = 'PA'#205'S:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 40
          Top = 54
          Width = 249
          Height = 17
          AutoSize = False
          DataField = 'pais_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel41: TRLLabel
          Left = 295
          Top = 54
          Width = 20
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText72: TRLDBText
          Left = 321
          Top = 54
          Width = 68
          Height = 15
          DataField = 'UF_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel40: TRLLabel
          Left = 386
          Top = 54
          Width = 48
          Height = 15
          Caption = 'CIDADE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText71: TRLDBText
          Left = 437
          Top = 54
          Width = 253
          Height = 17
          AutoSize = False
          DataField = 'cidade_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel34: TRLLabel
          Left = 386
          Top = 31
          Width = 50
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'BAIRRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText31: TRLDBText
          Left = 441
          Top = 31
          Width = 85
          Height = 15
          DataField = 'Bairro_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 610
          Top = 31
          Width = 75
          Height = 15
          DataField = 'Cep_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel38: TRLLabel
          Left = 575
          Top = 31
          Width = 29
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 575
          Top = 9
          Width = 18
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText28: TRLDBText
          Left = 599
          Top = 9
          Width = 79
          Height = 15
          DataField = 'Num_entrega'
          DataSource = dsCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 505
      Width = 718
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo5: TRLSystemInfo
        Left = 602
        Top = 1
        Width = 116
        Height = 15
        Align = faRightTop
        Info = itPageNumber
        Text = 'Pag.: '
      end
      object RLLabel674: TRLLabel
        Left = 0
        Top = 1
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
  object rpImpPedido2vias: TRLReport
    Left = 8
    Top = 1173
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
    BeforePrint = rpImpPedido2viasBeforePrint
    object sub1: TRLSubDetail
      Left = 19
      Top = 38
      Width = 756
      Height = 455
      DataSource = D
      object RLAngleLabel1: TRLAngleLabel
        Left = 0
        Top = -252
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
      object RLBand11: TRLBand
        Left = 0
        Top = 225
        Width = 756
        Height = 131
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand11BeforePrint
        object RLDraw5: TRLDraw
          Left = 474
          Top = 22
          Width = 278
          Height = 55
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Pen.Style = psClear
        end
        object RLLabel67: TRLLabel
          Left = 479
          Top = 25
          Width = 140
          Height = 15
          Caption = 'TOTAL DOS PRODUTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult5: TRLDBResult
          Left = 624
          Top = 25
          Width = 126
          Height = 15
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
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
        object RLDBResult6: TRLDBResult
          Left = 451
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel75: TRLLabel
          Left = 549
          Top = 41
          Width = 70
          Height = 15
          Caption = 'DESCONTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult7: TRLDBResult
          Left = 643
          Top = 41
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
        object RLLabel76: TRLLabel
          Left = 533
          Top = 57
          Width = 86
          Height = 15
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult8: TRLDBResult
          Left = 669
          Top = 57
          Width = 81
          Height = 15
          Alignment = taRightJustify
          DataField = 'Total'
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
        object RLPanel7: TRLPanel
          Left = 0
          Top = 81
          Width = 756
          Height = 50
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel77: TRLLabel
            Left = 0
            Top = 18
            Width = 756
            Height = 16
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Docto                        Vencto                      Valor  ' +
              '                        '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo3: TRLMemo
            Left = 0
            Top = 34
            Width = 756
            Height = 14
            Align = faTop
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLPanel11: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 18
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            AfterPrint = RLPanel11AfterPrint
            BeforePrint = RLPanel11BeforePrint
            object RLLabel78: TRLLabel
              Left = 1
              Top = 2
              Width = 29
              Height = 15
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo3: TRLDBMemo
              Left = 33
              Top = 2
              Width = 679
              Height = 15
              Behavior = [beSiteExpander]
              DataField = 'obs_venda'
              DataSource = D
            end
          end
        end
        object RLDBResult24: TRLDBResult
          Left = 249
          Top = 3
          Width = 101
          Height = 14
          Alignment = taRightJustify
          DataField = 'totcubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBResult27: TRLDBResult
          Left = 337
          Top = 3
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'qtd_cx'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel338: TRLLabel
          Left = 3
          Top = 3
          Width = 43
          Height = 14
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult47: TRLDBResult
          Left = 520
          Top = 3
          Width = 106
          Height = 14
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult48: TRLDBResult
          Left = 602
          Top = 3
          Width = 81
          Height = 14
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult49: TRLDBResult
          Left = 683
          Top = 3
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
      object RLBand12: TRLBand
        Left = 0
        Top = 70
        Width = 756
        Height = 139
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand12BeforePrint
        object RLLabel79: TRLLabel
          Left = 1
          Top = 0
          Width = 45
          Height = 15
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText57: TRLDBText
          Left = 46
          Top = 0
          Width = 13
          Height = 15
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText59: TRLDBText
          Left = 177
          Top = 0
          Width = 33
          Height = 15
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel80: TRLLabel
          Left = 140
          Top = 0
          Width = 37
          Height = 15
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel81: TRLLabel
          Left = 1
          Top = 16
          Width = 53
          Height = 15
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel82: TRLLabel
          Left = 1
          Top = 124
          Width = 47
          Height = 14
          Align = faBottomOnly
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel83: TRLLabel
          Left = 450
          Top = 124
          Width = 57
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Qtde Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel85: TRLLabel
          Left = 550
          Top = 124
          Width = 24
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel86: TRLLabel
          Left = 699
          Top = 124
          Width = 53
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Total Liq.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel87: TRLLabel
          Left = 1
          Top = 87
          Width = 85
          Height = 15
          Caption = 'COND. PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText73: TRLDBText
          Left = 588
          Top = 104
          Width = 162
          Height = 15
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel88: TRLLabel
          Left = 486
          Top = 104
          Width = 102
          Height = 15
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText79: TRLDBText
          Left = 714
          Top = 0
          Width = 36
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel89: TRLLabel
          Left = 541
          Top = 0
          Width = 99
          Height = 16
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel91: TRLLabel
          Left = 271
          Top = 0
          Width = 20
          Height = 15
          Caption = 'NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText80: TRLDBText
          Left = 291
          Top = 0
          Width = 13
          Height = 15
          DataField = 'nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel92: TRLLabel
          Left = 1
          Top = 33
          Width = 68
          Height = 15
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel12: TRLPanel
          Left = 71
          Top = 34
          Width = 679
          Height = 17
          object RLDBText81: TRLDBText
            Left = 0
            Top = 0
            Width = 56
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
          object RLDBText82: TRLDBText
            Left = 65
            Top = 0
            Width = 30
            Height = 17
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel93: TRLLabel
            Left = 56
            Top = 0
            Width = 9
            Height = 17
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel94: TRLLabel
            Left = 95
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText83: TRLDBText
            Left = 108
            Top = 0
            Width = 36
            Height = 17
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel95: TRLLabel
            Left = 144
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText84: TRLDBText
            Left = 157
            Top = 0
            Width = 43
            Height = 17
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel96: TRLLabel
            Left = 200
            Top = 0
            Width = 6
            Height = 17
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText85: TRLDBText
            Left = 206
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel97: TRLLabel
            Left = 225
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText86: TRLDBText
            Left = 238
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'CEP'
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
        object RLPanel13: TRLPanel
          Left = 61
          Top = 16
          Width = 689
          Height = 17
          object RLDBText87: TRLDBText
            Left = 0
            Top = 0
            Width = 52
            Height = 17
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText88: TRLDBText
            Left = 65
            Top = 0
            Width = 37
            Height = 17
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel98: TRLLabel
            Left = 52
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel348: TRLLabel
            Left = 102
            Top = 0
            Width = 46
            Height = 17
            Align = faLeft
            Caption = '  CNPJ: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText299: TRLDBText
            Left = 148
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'cpf'
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
        object RLLabel99: TRLLabel
          Left = 1
          Top = 70
          Width = 69
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel14: TRLPanel
          Left = 73
          Top = 69
          Width = 677
          Height = 17
          object RLDBText89: TRLDBText
            Left = 0
            Top = 0
            Width = 66
            Height = 17
            Align = faLeft
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText90: TRLDBText
            Left = 79
            Top = 0
            Width = 290
            Height = 17
            Align = faLeft
            AutoSize = False
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel100: TRLLabel
            Left = 66
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel229: TRLLabel
            Left = 375
            Top = 0
            Width = 61
            Height = 15
            Caption = 'PACOTES:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText208: TRLDBText
            Left = 436
            Top = 0
            Width = 116
            Height = 17
            AutoSize = False
            DataField = 'pacote'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel276: TRLLabel
            Left = 557
            Top = 0
            Width = 71
            Height = 15
            Caption = 'TIPO FRETE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText245: TRLDBText
            Left = 624
            Top = 0
            Width = 53
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'tipoFrete'
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
        object RLPanel23: TRLPanel
          Left = 71
          Top = 51
          Width = 681
          Height = 17
          object RLDBText123: TRLDBText
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
          object RLDBText135: TRLDBText
            Left = 35
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText136: TRLDBText
            Left = 70
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel66: TRLLabel
            Left = 23
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel147: TRLLabel
            Left = 58
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel349: TRLLabel
            Left = 93
            Top = 0
            Width = 47
            Height = 17
            Align = faLeft
            Caption = ' EMAIL: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText303: TRLDBText
            Left = 140
            Top = 0
            Width = 34
            Height = 17
            Align = faLeft
            DataField = 'email'
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
        object RLLabel146: TRLLabel
          Left = 0
          Top = 52
          Width = 64
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel233: TRLLabel
          Left = 294
          Top = 124
          Width = 56
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Cubagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel237: TRLLabel
          Left = 356
          Top = 124
          Width = 49
          Height = 14
          Align = faBottomOnly
          Caption = 'Qtde Cx.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel238: TRLLabel
          Left = 413
          Top = 124
          Width = 30
          Height = 14
          Align = faBottomOnly
          Caption = 'Mult.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel242: TRLLabel
          Left = 650
          Top = 124
          Width = 33
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel277: TRLLabel
          Left = 503
          Top = 87
          Width = 85
          Height = 15
          Caption = 'REDESPACHO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText246: TRLDBText
          Left = 588
          Top = 87
          Width = 162
          Height = 17
          AutoSize = False
          DataField = 'transp_vendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel259: TRLLabel
          Left = 1
          Top = 104
          Width = 90
          Height = 15
          Caption = 'FORMA PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel339: TRLLabel
          Left = 596
          Top = 124
          Width = 30
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel347: TRLLabel
          Left = 365
          Top = 0
          Width = 72
          Height = 15
          Caption = 'Emiss'#227'o NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText293: TRLDBText
          Left = 439
          Top = 0
          Width = 30
          Height = 15
          DataField = 'dt_nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLPanel72: TRLPanel
          Left = 92
          Top = 87
          Width = 385
          Height = 15
          object RLDBText60: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText347: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel414: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' COND. PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel80: TRLPanel
          Left = 92
          Top = 104
          Width = 385
          Height = 15
          object RLDBText348: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'foma_pgto2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText223: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'forma_pgto'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel415: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' FORMA PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand14: TRLBand
        Left = 0
        Top = 209
        Width = 756
        Height = 16
        AutoExpand = False
        AutoSize = True
        object RLDBText91: TRLDBText
          Left = 3
          Top = 1
          Width = 48
          Height = 14
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText92: TRLDBText
          Left = 487
          Top = 1
          Width = 20
          Height = 14
          Alignment = taRightJustify
          DataField = 'Qtd'
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
        object RLDBText93: TRLDBText
          Left = 553
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
        object RLDBText94: TRLDBText
          Left = 715
          Top = 1
          Width = 37
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText212: TRLDBText
          Left = 303
          Top = 1
          Width = 47
          Height = 14
          Alignment = taRightJustify
          DataField = 'cubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo9: TRLDBMemo
          Left = 52
          Top = 1
          Width = 240
          Height = 14
          Behavior = [beSiteExpander]
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText96: TRLDBText
          Left = 356
          Top = 1
          Width = 49
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtd_cx'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText215: TRLDBText
          Left = 395
          Top = 1
          Width = 48
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'multiplo'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText95: TRLDBText
          Left = 634
          Top = 1
          Width = 49
          Height = 14
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText279: TRLDBText
          Left = 552
          Top = 1
          Width = 74
          Height = 14
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 70
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand8BeforePrint
        object RLDBText55: TRLDBText
          Left = 1
          Top = 0
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
        object RLSystemInfo6: TRLSystemInfo
          Left = 578
          Top = 3
          Width = 172
          Height = 15
          Alignment = taRightJustify
          Info = itNow
          Text = 'Relat'#243'rio Impresso em:  '
        end
        object lTelefone1: TRLLabel
          Left = 446
          Top = 16
          Width = 114
          Height = 16
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText120: TRLDBText
          Left = 2
          Top = 16
          Width = 48
          Height = 16
          DataField = 'Razao'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLPanel21: TRLPanel
          Left = 3
          Top = 32
          Width = 747
          Height = 17
          object RLDBText121: TRLDBText
            Left = 0
            Top = 0
            Width = 72
            Height = 17
            Align = faLeft
            DataField = 'Endereco'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText124: TRLDBText
            Left = 81
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'Num'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel135: TRLLabel
            Left = 72
            Top = 0
            Width = 9
            Height = 17
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel136: TRLLabel
            Left = 109
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText125: TRLDBText
            Left = 122
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'BAIRRO'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel137: TRLLabel
            Left = 170
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText126: TRLDBText
            Left = 183
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'Cidade'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel138: TRLLabel
            Left = 231
            Top = 0
            Width = 6
            Height = 17
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText127: TRLDBText
            Left = 237
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'UF'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel139: TRLLabel
            Left = 256
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText128: TRLDBText
            Left = 269
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'CEP'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLLabel145: TRLLabel
          Left = 310
          Top = 50
          Width = 135
          Height = 19
          Align = faCenterBottom
          Alignment = taRightJustify
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand13: TRLBand
        Left = 0
        Top = 356
        Width = 756
        Height = 53
        AutoExpand = False
        BandType = btFooter
        object rlPanelMeio: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 48
          Align = faTop
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel127: TRLLabel
            Left = 14
            Top = 10
            Width = 318
            Height = 15
            Caption = 'FAVOR CONFERIR A MERCADORIA NO ATO DA ENTREGA,'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel128: TRLLabel
            Left = 29
            Top = 25
            Width = 275
            Height = 15
            Caption = 'N'#195'O ACEITAMOS RECLAMA'#199#213'ES POSTERIORES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel129: TRLLabel
            Left = 370
            Top = 9
            Width = 348
            Height = 15
            Alignment = taRightJustify
            Caption = 'Rg: _________________     Data Entrega: ____/____/_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel130: TRLLabel
            Left = 372
            Top = 32
            Width = 346
            Height = 15
            Alignment = taRightJustify
            Caption = 'Ass.:_____________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object Sub2: TRLSubDetail
      Left = 19
      Top = 493
      Width = 756
      Height = 427
      DataSource = D
      AfterPrint = Sub2AfterPrint
      object RLAngleLabel2: TRLAngleLabel
        Left = 0
        Top = -252
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
      object RLBand15: TRLBand
        Left = 0
        Top = 239
        Width = 756
        Height = 183
        AutoExpand = False
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        IntegralHeight = False
        ParentFont = False
        BeforePrint = RLBand15BeforePrint
        object RLDraw6: TRLDraw
          Left = 474
          Top = 18
          Width = 278
          Height = 55
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Pen.Style = psClear
        end
        object RLLabel101: TRLLabel
          Left = 479
          Top = 22
          Width = 140
          Height = 15
          Caption = 'TOTAL DOS PRODUTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult9: TRLDBResult
          Left = 681
          Top = 1
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
          Text = ''
        end
        object RLDBResult10: TRLDBResult
          Left = 451
          Top = 1
          Width = 56
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Info = riSum
          Text = ''
        end
        object RLLabel102: TRLLabel
          Left = 549
          Top = 38
          Width = 70
          Height = 15
          Caption = 'DESCONTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult13: TRLDBResult
          Left = 643
          Top = 38
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
        object RLLabel103: TRLLabel
          Left = 533
          Top = 54
          Width = 86
          Height = 15
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult14: TRLDBResult
          Left = 669
          Top = 54
          Width = 81
          Height = 15
          Alignment = taRightJustify
          DataField = 'Total'
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
        object RLPanel15: TRLPanel
          Left = 0
          Top = 78
          Width = 756
          Height = 57
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel104: TRLLabel
            Left = 0
            Top = 23
            Width = 756
            Height = 16
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Docto                        Vencto                      Valor  ' +
              '                        '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo4: TRLMemo
            Left = 0
            Top = 39
            Width = 756
            Height = 15
            Align = faTop
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLPanel16: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 23
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            AfterPrint = RLPanel16AfterPrint
            BeforePrint = RLPanel16BeforePrint
            object RLLabel105: TRLLabel
              Left = 1
              Top = 5
              Width = 29
              Height = 15
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo4: TRLDBMemo
              Left = 29
              Top = 6
              Width = 721
              Height = 14
              Behavior = [beSiteExpander]
              DataField = 'obs_venda'
              DataSource = D
            end
          end
        end
        object RLPanel20: TRLPanel
          Left = 0
          Top = 135
          Width = 756
          Height = 48
          Align = faBottom
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel131: TRLLabel
            Left = 17
            Top = 10
            Width = 318
            Height = 15
            Caption = 'FAVOR CONFERIR A MERCADORIA NO ATO DA ENTREGA,'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel132: TRLLabel
            Left = 35
            Top = 25
            Width = 275
            Height = 15
            Caption = 'N'#195'O ACEITAMOS RECLAMA'#199#213'ES POSTERIORES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel133: TRLLabel
            Left = 369
            Top = 9
            Width = 348
            Height = 15
            Alignment = taRightJustify
            Caption = 'Rg: _________________     Data Entrega: ____/____/_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel134: TRLLabel
            Left = 371
            Top = 32
            Width = 346
            Height = 15
            Alignment = taRightJustify
            Caption = 'Ass.:_____________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLDBResult25: TRLDBResult
          Left = 247
          Top = 1
          Width = 101
          Height = 14
          Alignment = taRightJustify
          DataField = 'totcubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Text = ''
        end
        object RLDBResult28: TRLDBResult
          Left = 337
          Top = 1
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'qtd_cx'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Info = riSum
          Text = ''
        end
        object RLLabel340: TRLLabel
          Left = 3
          Top = 1
          Width = 43
          Height = 14
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult50: TRLDBResult
          Left = 624
          Top = 22
          Width = 126
          Height = 15
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult51: TRLDBResult
          Left = 602
          Top = 1
          Width = 81
          Height = 14
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult52: TRLDBResult
          Left = 520
          Top = 1
          Width = 106
          Height = 14
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
      object RLBand18: TRLBand
        Left = 0
        Top = 88
        Width = 756
        Height = 135
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel106: TRLLabel
          Left = 1
          Top = 0
          Width = 45
          Height = 15
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText97: TRLDBText
          Left = 46
          Top = 0
          Width = 13
          Height = 15
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText98: TRLDBText
          Left = 175
          Top = 0
          Width = 33
          Height = 15
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel107: TRLLabel
          Left = 136
          Top = 0
          Width = 37
          Height = 15
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel108: TRLLabel
          Left = 1
          Top = 20
          Width = 53
          Height = 13
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel109: TRLLabel
          Left = 1
          Top = 120
          Width = 47
          Height = 14
          Align = faBottomOnly
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel110: TRLLabel
          Left = 450
          Top = 120
          Width = 57
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Qtde Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel111: TRLLabel
          Left = 550
          Top = 120
          Width = 24
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel112: TRLLabel
          Left = 697
          Top = 120
          Width = 53
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Total Liq.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel113: TRLLabel
          Left = 1
          Top = 86
          Width = 85
          Height = 13
          Caption = 'COND. PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText100: TRLDBText
          Left = 590
          Top = 101
          Width = 160
          Height = 13
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel114: TRLLabel
          Left = 487
          Top = 101
          Width = 102
          Height = 13
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText101: TRLDBText
          Left = 714
          Top = 0
          Width = 36
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel115: TRLLabel
          Left = 520
          Top = 0
          Width = 99
          Height = 16
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel116: TRLLabel
          Left = 277
          Top = 0
          Width = 20
          Height = 15
          Caption = 'NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText102: TRLDBText
          Left = 295
          Top = 0
          Width = 13
          Height = 15
          DataField = 'nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel117: TRLLabel
          Left = 1
          Top = 36
          Width = 68
          Height = 13
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel17: TRLPanel
          Left = 72
          Top = 36
          Width = 678
          Height = 15
          object RLDBText103: TRLDBText
            Left = 0
            Top = 0
            Width = 56
            Height = 15
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
          object RLDBText104: TRLDBText
            Left = 65
            Top = 0
            Width = 30
            Height = 15
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel118: TRLLabel
            Left = 56
            Top = 0
            Width = 9
            Height = 15
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel119: TRLLabel
            Left = 95
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText105: TRLDBText
            Left = 108
            Top = 0
            Width = 36
            Height = 15
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel120: TRLLabel
            Left = 144
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText106: TRLDBText
            Left = 157
            Top = 0
            Width = 43
            Height = 15
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel121: TRLLabel
            Left = 200
            Top = 0
            Width = 6
            Height = 15
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText107: TRLDBText
            Left = 206
            Top = 0
            Width = 19
            Height = 15
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel122: TRLLabel
            Left = 225
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText108: TRLDBText
            Left = 238
            Top = 0
            Width = 28
            Height = 15
            Align = faLeft
            DataField = 'CEP'
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
        object RLPanel18: TRLPanel
          Left = 61
          Top = 20
          Width = 689
          Height = 15
          object RLDBText109: TRLDBText
            Left = 0
            Top = 0
            Width = 52
            Height = 15
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText110: TRLDBText
            Left = 65
            Top = 0
            Width = 37
            Height = 15
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel123: TRLLabel
            Left = 52
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel353: TRLLabel
            Left = 102
            Top = 0
            Width = 50
            Height = 15
            Align = faLeft
            Caption = ' - CNPJ: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText307: TRLDBText
            Left = 152
            Top = 0
            Width = 19
            Height = 15
            Align = faLeft
            DataField = 'cpf'
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
        object RLLabel124: TRLLabel
          Left = 1
          Top = 70
          Width = 69
          Height = 13
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel19: TRLPanel
          Left = 73
          Top = 70
          Width = 677
          Height = 15
          object RLDBText111: TRLDBText
            Left = 0
            Top = 0
            Width = 66
            Height = 15
            Align = faLeft
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText112: TRLDBText
            Left = 79
            Top = 0
            Width = 291
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel125: TRLLabel
            Left = 66
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel230: TRLLabel
            Left = 376
            Top = 0
            Width = 61
            Height = 15
            Caption = 'PACOTES:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText209: TRLDBText
            Left = 439
            Top = 0
            Width = 111
            Height = 17
            AutoSize = False
            DataField = 'pacote'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel278: TRLLabel
            Left = 552
            Top = 0
            Width = 71
            Height = 15
            Caption = 'TIPO FRETE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText247: TRLDBText
            Left = 624
            Top = 0
            Width = 53
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'tipoFrete'
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
        object RLLabel148: TRLLabel
          Left = -1
          Top = 53
          Width = 64
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel24: TRLPanel
          Left = 68
          Top = 52
          Width = 682
          Height = 17
          object RLDBText137: TRLDBText
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
          object RLDBText138: TRLDBText
            Left = 35
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText139: TRLDBText
            Left = 70
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel149: TRLLabel
            Left = 23
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel150: TRLLabel
            Left = 58
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel354: TRLLabel
            Left = 93
            Top = 0
            Width = 54
            Height = 17
            Align = faLeft
            Caption = ' - EMAIL: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText308: TRLDBText
            Left = 147
            Top = 0
            Width = 34
            Height = 17
            Align = faLeft
            DataField = 'email'
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
        object RLLabel234: TRLLabel
          Left = 294
          Top = 120
          Width = 56
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Cubagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel239: TRLLabel
          Left = 356
          Top = 120
          Width = 49
          Height = 14
          Align = faBottomOnly
          Caption = 'Qtde Cx.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel240: TRLLabel
          Left = 413
          Top = 120
          Width = 30
          Height = 14
          Align = faBottomOnly
          Caption = 'Mult.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel243: TRLLabel
          Left = 650
          Top = 120
          Width = 33
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel279: TRLLabel
          Left = 504
          Top = 86
          Width = 85
          Height = 15
          Caption = 'REDESPACHO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText248: TRLDBText
          Left = 590
          Top = 86
          Width = 160
          Height = 15
          AutoSize = False
          DataField = 'transp_vendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel280: TRLLabel
          Left = 1
          Top = 101
          Width = 90
          Height = 15
          Caption = 'FORMA PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel344: TRLLabel
          Left = 596
          Top = 120
          Width = 30
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel352: TRLLabel
          Left = 375
          Top = 0
          Width = 72
          Height = 15
          Caption = 'Emiss'#227'o NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText306: TRLDBText
          Left = 447
          Top = 0
          Width = 30
          Height = 15
          DataField = 'dt_nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLPanel81: TRLPanel
          Left = 92
          Top = 86
          Width = 385
          Height = 15
          object RLDBText99: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText249: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel416: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' COND. PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel82: TRLPanel
          Left = 92
          Top = 101
          Width = 385
          Height = 15
          object RLDBText356: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'foma_pgto2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText357: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'forma_pgto'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel423: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' FORMA PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand22: TRLBand
        Left = 0
        Top = 223
        Width = 756
        Height = 16
        AutoExpand = False
        AutoSize = True
        object RLDBText213: TRLDBText
          Left = 303
          Top = 0
          Width = 47
          Height = 14
          DataField = 'cubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText113: TRLDBText
          Left = 3
          Top = 0
          Width = 48
          Height = 14
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText114: TRLDBText
          Left = 487
          Top = 0
          Width = 20
          Height = 14
          Alignment = taRightJustify
          DataField = 'Qtd'
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
        object RLDBText115: TRLDBText
          Left = 553
          Top = 0
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
        object RLDBText116: TRLDBText
          Left = 713
          Top = 0
          Width = 37
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo10: TRLDBMemo
          Left = 52
          Top = 0
          Width = 240
          Height = 14
          Behavior = [beSiteExpander]
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText118: TRLDBText
          Left = 356
          Top = 1
          Width = 49
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtd_cx'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText216: TRLDBText
          Left = 395
          Top = 0
          Width = 48
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'multiplo'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText117: TRLDBText
          Left = 634
          Top = 0
          Width = 49
          Height = 14
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText291: TRLDBText
          Left = 552
          Top = 0
          Width = 74
          Height = 14
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand23: TRLBand
        Left = 0
        Top = 10
        Width = 756
        Height = 78
        AutoExpand = False
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand23BeforePrint
        object RLSystemInfo10: TRLSystemInfo
          Left = 578
          Top = 3
          Width = 172
          Height = 15
          Alignment = taRightJustify
          Info = itNow
          Text = 'Relat'#243'rio Impresso em:  '
        end
        object RLLabel126: TRLLabel
          Left = 310
          Top = 58
          Width = 135
          Height = 19
          Align = faCenterBottom
          Alignment = taRightJustify
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText119: TRLDBText
          Left = 1
          Top = 2
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
        object RLDBText122: TRLDBText
          Left = 2
          Top = 18
          Width = 48
          Height = 16
          DataField = 'Razao'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLPanel22: TRLPanel
          Left = 3
          Top = 34
          Width = 747
          Height = 17
          object RLDBText129: TRLDBText
            Left = 0
            Top = 0
            Width = 72
            Height = 17
            Align = faLeft
            DataField = 'Endereco'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText130: TRLDBText
            Left = 81
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'Num'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel140: TRLLabel
            Left = 72
            Top = 0
            Width = 9
            Height = 17
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel141: TRLLabel
            Left = 109
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText131: TRLDBText
            Left = 122
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'BAIRRO'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel142: TRLLabel
            Left = 170
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText132: TRLDBText
            Left = 183
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'Cidade'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel143: TRLLabel
            Left = 231
            Top = 0
            Width = 6
            Height = 17
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText133: TRLDBText
            Left = 237
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'UF'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel144: TRLLabel
            Left = 256
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText134: TRLDBText
            Left = 269
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'CEP'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object lTelefone2: TRLLabel
          Left = 446
          Top = 18
          Width = 114
          Height = 16
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand21: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 10
        BandType = btHeader
      end
    end
  end
  object rpImpPedido2vias_reduzido: TRLReport
    Left = 850
    Top = 3456
    Width = 794
    Height = 1123
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 19
      Width = 718
      Height = 542
      DataSource = D
      object RLAngleLabel3: TRLAngleLabel
        Left = 0
        Top = -252
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
      object RLBand24: TRLBand
        Left = 0
        Top = 170
        Width = 718
        Height = 97
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        AfterPrint = RLBand24AfterPrint
        BeforePrint = RLBand24BeforePrint
        object RLLabel151: TRLLabel
          Left = 356
          Top = 2
          Width = 129
          Height = 14
          Caption = 'TOTAL DOS PRODUTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult15: TRLDBResult
          Left = 640
          Top = 3
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Info = riSum
          Text = ''
        end
        object RLDBResult16: TRLDBResult
          Left = 519
          Top = 2
          Width = 52
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.000'
          Info = riSum
          Text = ''
        end
        object RLLabel152: TRLLabel
          Left = 421
          Top = 18
          Width = 64
          Height = 14
          Caption = 'DESCONTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult17: TRLDBResult
          Left = 618
          Top = 18
          Width = 91
          Height = 14
          Alignment = taRightJustify
          DataField = 'Desconto'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Text = ''
        end
        object RLLabel153: TRLLabel
          Left = 403
          Top = 34
          Width = 82
          Height = 14
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult18: TRLDBResult
          Left = 641
          Top = 34
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Text = ''
        end
        object RLPanel25: TRLPanel
          Left = 0
          Top = 52
          Width = 718
          Height = 45
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel154: TRLLabel
            Left = 0
            Top = 17
            Width = 718
            Height = 16
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Docto          Vencto               Valor                       ' +
              '   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo5: TRLMemo
            Left = 0
            Top = 33
            Width = 718
            Height = 14
            Align = faTop
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLPanel26: TRLPanel
            Left = 0
            Top = 0
            Width = 718
            Height = 17
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            object RLLabel155: TRLLabel
              Left = 1
              Top = 2
              Width = 28
              Height = 14
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo6: TRLDBMemo
              Left = 33
              Top = 2
              Width = 679
              Height = 14
              Behavior = [beSiteExpander]
              DataField = 'obs_venda'
              DataSource = D
            end
          end
        end
      end
      object RLBand25: TRLBand
        Left = 0
        Top = 62
        Width = 718
        Height = 93
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel156: TRLLabel
          Left = 1
          Top = 0
          Width = 42
          Height = 14
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText140: TRLDBText
          Left = 46
          Top = 0
          Width = 11
          Height = 14
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText141: TRLDBText
          Left = 212
          Top = 0
          Width = 25
          Height = 14
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel157: TRLLabel
          Left = 169
          Top = 1
          Width = 36
          Height = 14
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel158: TRLLabel
          Left = 1
          Top = 16
          Width = 50
          Height = 14
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel159: TRLLabel
          Left = 1
          Top = 81
          Width = 49
          Height = 11
          Align = faBottomOnly
          Caption = 'PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel160: TRLLabel
          Left = 549
          Top = 81
          Width = 22
          Height = 11
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'QTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel161: TRLLabel
          Left = 605
          Top = 81
          Width = 25
          Height = 11
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'UNIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel162: TRLLabel
          Left = 678
          Top = 81
          Width = 31
          Height = 11
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText142: TRLDBText
          Left = 358
          Top = 63
          Width = 103
          Height = 15
          AutoSize = False
          DataField = 'desCond'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel163: TRLLabel
          Left = 276
          Top = 63
          Width = 80
          Height = 14
          Caption = 'COND. PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText143: TRLDBText
          Left = 559
          Top = 63
          Width = 149
          Height = 14
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel164: TRLLabel
          Left = 463
          Top = 63
          Width = 95
          Height = 14
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText144: TRLDBText
          Left = 683
          Top = 0
          Width = 30
          Height = 14
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel165: TRLLabel
          Left = 479
          Top = 1
          Width = 82
          Height = 14
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel166: TRLLabel
          Left = 315
          Top = 1
          Width = 19
          Height = 14
          Caption = 'NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText145: TRLDBText
          Left = 338
          Top = 1
          Width = 53
          Height = 14
          DataField = 'NotaFiscal'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel167: TRLLabel
          Left = 1
          Top = 30
          Width = 61
          Height = 14
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel27: TRLPanel
          Left = 64
          Top = 31
          Width = 644
          Height = 14
          object RLDBText146: TRLDBText
            Left = 0
            Top = 0
            Width = 49
            Height = 14
            Align = faLeft
            DataField = 'Endereco'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText147: TRLDBText
            Left = 58
            Top = 0
            Width = 24
            Height = 14
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel168: TRLLabel
            Left = 49
            Top = 0
            Width = 9
            Height = 14
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel169: TRLLabel
            Left = 82
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText148: TRLDBText
            Left = 95
            Top = 0
            Width = 32
            Height = 14
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel170: TRLLabel
            Left = 127
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText149: TRLDBText
            Left = 140
            Top = 0
            Width = 36
            Height = 14
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel171: TRLLabel
            Left = 176
            Top = 0
            Width = 6
            Height = 14
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText150: TRLDBText
            Left = 182
            Top = 0
            Width = 16
            Height = 14
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel172: TRLLabel
            Left = 198
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText151: TRLDBText
            Left = 211
            Top = 0
            Width = 22
            Height = 14
            Align = faLeft
            DataField = 'CEP'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel28: TRLPanel
          Left = 61
          Top = 16
          Width = 652
          Height = 14
          object RLDBText152: TRLDBText
            Left = 0
            Top = 0
            Width = 43
            Height = 14
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText153: TRLDBText
            Left = 56
            Top = 0
            Width = 30
            Height = 14
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel173: TRLLabel
            Left = 43
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLLabel174: TRLLabel
          Left = 1
          Top = 63
          Width = 62
          Height = 14
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel29: TRLPanel
          Left = 64
          Top = 63
          Width = 206
          Height = 14
          object RLDBText154: TRLDBText
            Left = 0
            Top = 0
            Width = 21
            Height = 14
            Align = faLeft
            AutoSize = False
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText155: TRLDBText
            Left = 34
            Top = 0
            Width = 55
            Height = 14
            Align = faLeft
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel175: TRLLabel
            Left = 21
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLPanel30: TRLPanel
          Left = 64
          Top = 47
          Width = 644
          Height = 14
          object RLDBText156: TRLDBText
            Left = 0
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel1'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText157: TRLDBText
            Left = 32
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText158: TRLDBText
            Left = 64
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel176: TRLLabel
            Left = 20
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel177: TRLLabel
            Left = 52
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel228: TRLLabel
            Left = 437
            Top = 0
            Width = 57
            Height = 14
            Caption = 'PACOTES:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText207: TRLDBText
            Left = 495
            Top = 0
            Width = 149
            Height = 14
            AutoSize = False
            DataField = 'pacote'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLLabel178: TRLLabel
          Left = 0
          Top = 47
          Width = 59
          Height = 14
          Behavior = [beSiteExpander]
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand26: TRLBand
        Left = 0
        Top = 155
        Width = 718
        Height = 15
        AutoExpand = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText159: TRLDBText
          Left = 3
          Top = 0
          Width = 48
          Height = 14
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText160: TRLDBText
          Left = 551
          Top = 0
          Width = 20
          Height = 14
          Alignment = taRightJustify
          DataField = 'Qtd'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText161: TRLDBText
          Left = 609
          Top = 0
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
        object RLDBText162: TRLDBText
          Left = 672
          Top = 0
          Width = 37
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText163: TRLDBText
          Left = 76
          Top = 0
          Width = 61
          Height = 14
          Alignment = taRightJustify
          DataField = 'cod_manual'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText164: TRLDBText
          Left = 143
          Top = 0
          Width = 378
          Height = 15
          AutoSize = False
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand27: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 62
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand27BeforePrint
        object RLDBText165: TRLDBText
          Left = 1
          Top = 0
          Width = 46
          Height = 14
          DataField = 'fantasia'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo7: TRLSystemInfo
          Left = 566
          Top = 0
          Width = 149
          Height = 14
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itNow
          ParentFont = False
          Text = 'Relat'#243'rio Impresso em:  '
        end
        object RLPanel31: TRLPanel
          Left = 0
          Top = 30
          Width = 715
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBText167: TRLDBText
            Left = 0
            Top = 0
            Width = 57
            Height = 15
            Align = faLeft
            DataField = 'Endereco'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText168: TRLDBText
            Left = 66
            Top = 0
            Width = 23
            Height = 15
            Align = faLeft
            DataField = 'Num'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel180: TRLLabel
            Left = 57
            Top = 0
            Width = 9
            Height = 15
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel181: TRLLabel
            Left = 89
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText169: TRLDBText
            Left = 102
            Top = 0
            Width = 42
            Height = 15
            Align = faLeft
            DataField = 'BAIRRO'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel182: TRLLabel
            Left = 144
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText170: TRLDBText
            Left = 157
            Top = 0
            Width = 40
            Height = 15
            Align = faLeft
            DataField = 'Cidade'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel183: TRLLabel
            Left = 197
            Top = 0
            Width = 6
            Height = 15
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText171: TRLDBText
            Left = 203
            Top = 0
            Width = 16
            Height = 15
            Align = faLeft
            DataField = 'UF'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel184: TRLLabel
            Left = 219
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText172: TRLDBText
            Left = 232
            Top = 0
            Width = 22
            Height = 15
            Align = faLeft
            DataField = 'CEP'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLLabel185: TRLLabel
          Left = 309
          Top = 46
          Width = 100
          Height = 15
          Align = faCenterBottom
          Alignment = taRightJustify
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel41: TRLPanel
          Left = 1
          Top = 15
          Width = 714
          Height = 14
          object RLDBText166: TRLDBText
            Left = 0
            Top = 0
            Width = 41
            Height = 14
            Align = faLeft
            DataField = 'Razao'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object ltelefone1R: TRLLabel
            Left = 41
            Top = 0
            Width = 95
            Height = 14
            Align = faLeft
            Caption = 'Extrato da Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand28: TRLBand
        Left = 0
        Top = 267
        Width = 718
        Height = 49
        AutoExpand = False
        BandType = btFooter
        object RLPanel32: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 45
          Align = faTop
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel186: TRLLabel
            Left = 40
            Top = 10
            Width = 260
            Height = 11
            Caption = 'FAVOR CONFERIR A MERCADORIA NO ATO DA ENTREGA,'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel187: TRLLabel
            Left = 55
            Top = 25
            Width = 217
            Height = 11
            Caption = 'N'#195'O ACEITAMOS RECLAMA'#199#213'ES POSTERIORES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel188: TRLLabel
            Left = 408
            Top = 4
            Width = 310
            Height = 14
            Alignment = taRightJustify
            Caption = 'Rg: _________________     Data Entrega: ____/____/_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel189: TRLLabel
            Left = 417
            Top = 27
            Width = 301
            Height = 14
            Alignment = taRightJustify
            Caption = 'Ass.:_____________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 561
      Width = 718
      Height = 542
      DataSource = D
      IntegralHeight = True
      AfterPrint = Sub2AfterPrint
      object RLAngleLabel4: TRLAngleLabel
        Left = 0
        Top = -252
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
      object RLBand29: TRLBand
        Left = 0
        Top = 185
        Width = 718
        Height = 141
        AutoExpand = False
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        IntegralHeight = False
        AfterPrint = RLBand29AfterPrint
        BeforePrint = RLBand29BeforePrint
        object RLLabel190: TRLLabel
          Left = 356
          Top = 2
          Width = 129
          Height = 14
          Alignment = taRightJustify
          Caption = 'TOTAL DOS PRODUTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult19: TRLDBResult
          Left = 644
          Top = 3
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult20: TRLDBResult
          Left = 519
          Top = 2
          Width = 52
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel191: TRLLabel
          Left = 421
          Top = 18
          Width = 64
          Height = 14
          Alignment = taRightJustify
          Caption = 'DESCONTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult21: TRLDBResult
          Left = 622
          Top = 19
          Width = 91
          Height = 14
          Alignment = taRightJustify
          DataField = 'Desconto'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel192: TRLLabel
          Left = 403
          Top = 34
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult22: TRLDBResult
          Left = 645
          Top = 35
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLPanel33: TRLPanel
          Left = 0
          Top = 50
          Width = 718
          Height = 46
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel193: TRLLabel
            Left = 0
            Top = 18
            Width = 718
            Height = 16
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Docto          Vencto               Valor                       ' +
              '   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo6: TRLMemo
            Left = 0
            Top = 34
            Width = 718
            Height = 14
            Align = faTop
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLPanel34: TRLPanel
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Align = faTop
            Behavior = [beSiteExpander]
            object RLLabel194: TRLLabel
              Left = 1
              Top = 3
              Width = 28
              Height = 14
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo7: TRLDBMemo
              Left = 30
              Top = 3
              Width = 679
              Height = 14
              Behavior = [beSiteExpander]
              DataField = 'obs_venda'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object RLPanel35: TRLPanel
          Left = 0
          Top = 96
          Width = 718
          Height = 45
          Align = faBottom
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel195: TRLLabel
            Left = 40
            Top = 10
            Width = 260
            Height = 11
            Caption = 'FAVOR CONFERIR A MERCADORIA NO ATO DA ENTREGA,'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel196: TRLLabel
            Left = 58
            Top = 25
            Width = 217
            Height = 11
            Caption = 'N'#195'O ACEITAMOS RECLAMA'#199#213'ES POSTERIORES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel197: TRLLabel
            Left = 407
            Top = 5
            Width = 310
            Height = 14
            Alignment = taRightJustify
            Caption = 'Rg: _________________     Data Entrega: ____/____/_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel198: TRLLabel
            Left = 416
            Top = 28
            Width = 301
            Height = 14
            Alignment = taRightJustify
            Caption = 'Ass.:_____________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand30: TRLBand
        Left = 0
        Top = 76
        Width = 718
        Height = 94
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel199: TRLLabel
          Left = 1
          Top = 0
          Width = 42
          Height = 14
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText173: TRLDBText
          Left = 46
          Top = 0
          Width = 11
          Height = 14
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText174: TRLDBText
          Left = 212
          Top = 0
          Width = 25
          Height = 14
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel200: TRLLabel
          Left = 169
          Top = 1
          Width = 36
          Height = 14
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel201: TRLLabel
          Left = 1
          Top = 16
          Width = 50
          Height = 14
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel202: TRLLabel
          Left = 1
          Top = 82
          Width = 49
          Height = 11
          Align = faBottomOnly
          Caption = 'PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel203: TRLLabel
          Left = 549
          Top = 82
          Width = 22
          Height = 11
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'QTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel204: TRLLabel
          Left = 605
          Top = 82
          Width = 25
          Height = 11
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'UNIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel205: TRLLabel
          Left = 678
          Top = 82
          Width = 31
          Height = 11
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText175: TRLDBText
          Left = 358
          Top = 60
          Width = 103
          Height = 14
          AutoSize = False
          DataField = 'desCond'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel206: TRLLabel
          Left = 276
          Top = 61
          Width = 80
          Height = 14
          Caption = 'COND. PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText176: TRLDBText
          Left = 559
          Top = 60
          Width = 154
          Height = 14
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel207: TRLLabel
          Left = 463
          Top = 60
          Width = 95
          Height = 14
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText177: TRLDBText
          Left = 683
          Top = 0
          Width = 30
          Height = 14
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel208: TRLLabel
          Left = 479
          Top = 1
          Width = 82
          Height = 14
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel209: TRLLabel
          Left = 315
          Top = 1
          Width = 19
          Height = 14
          Caption = 'NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText178: TRLDBText
          Left = 338
          Top = 1
          Width = 53
          Height = 14
          DataField = 'NotaFiscal'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel210: TRLLabel
          Left = 1
          Top = 31
          Width = 61
          Height = 14
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel36: TRLPanel
          Left = 72
          Top = 31
          Width = 641
          Height = 14
          object RLDBText179: TRLDBText
            Left = 0
            Top = 0
            Width = 49
            Height = 14
            Align = faLeft
            DataField = 'Endereco'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText180: TRLDBText
            Left = 58
            Top = 0
            Width = 24
            Height = 14
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel211: TRLLabel
            Left = 49
            Top = 0
            Width = 9
            Height = 14
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel212: TRLLabel
            Left = 82
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText181: TRLDBText
            Left = 95
            Top = 0
            Width = 32
            Height = 14
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel213: TRLLabel
            Left = 127
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText182: TRLDBText
            Left = 140
            Top = 0
            Width = 36
            Height = 14
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel214: TRLLabel
            Left = 176
            Top = 0
            Width = 6
            Height = 14
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText183: TRLDBText
            Left = 182
            Top = 0
            Width = 16
            Height = 14
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel215: TRLLabel
            Left = 198
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText184: TRLDBText
            Left = 211
            Top = 0
            Width = 22
            Height = 14
            Align = faLeft
            DataField = 'CEP'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel37: TRLPanel
          Left = 61
          Top = 16
          Width = 652
          Height = 14
          object RLDBText185: TRLDBText
            Left = 0
            Top = 0
            Width = 43
            Height = 14
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText186: TRLDBText
            Left = 56
            Top = 0
            Width = 30
            Height = 14
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel216: TRLLabel
            Left = 43
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLLabel217: TRLLabel
          Left = 1
          Top = 61
          Width = 62
          Height = 14
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel38: TRLPanel
          Left = 64
          Top = 61
          Width = 206
          Height = 14
          object RLDBText187: TRLDBText
            Left = 0
            Top = 0
            Width = 21
            Height = 14
            Align = faLeft
            AutoSize = False
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText188: TRLDBText
            Left = 34
            Top = 0
            Width = 55
            Height = 14
            Align = faLeft
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel218: TRLLabel
            Left = 21
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLLabel219: TRLLabel
          Left = -1
          Top = 46
          Width = 59
          Height = 14
          Behavior = [beSiteExpander]
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel39: TRLPanel
          Left = 68
          Top = 46
          Width = 644
          Height = 14
          object RLDBText189: TRLDBText
            Left = 0
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel1'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText190: TRLDBText
            Left = 32
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText191: TRLDBText
            Left = 64
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel220: TRLLabel
            Left = 20
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel221: TRLLabel
            Left = 52
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel231: TRLLabel
            Left = 433
            Top = 0
            Width = 57
            Height = 14
            Caption = 'PACOTES:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText210: TRLDBText
            Left = 491
            Top = 0
            Width = 149
            Height = 14
            AutoSize = False
            DataField = 'pacote'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
      end
      object RLBand31: TRLBand
        Left = 0
        Top = 170
        Width = 718
        Height = 15
        AutoExpand = False
        AutoSize = True
        object RLDBText192: TRLDBText
          Left = 3
          Top = 0
          Width = 48
          Height = 14
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText193: TRLDBText
          Left = 551
          Top = 0
          Width = 20
          Height = 14
          Alignment = taRightJustify
          DataField = 'Qtd'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText194: TRLDBText
          Left = 609
          Top = 0
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
        object RLDBText195: TRLDBText
          Left = 672
          Top = 0
          Width = 37
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText196: TRLDBText
          Left = 76
          Top = 0
          Width = 61
          Height = 14
          Alignment = taRightJustify
          DataField = 'cod_manual'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText197: TRLDBText
          Left = 143
          Top = 0
          Width = 355
          Height = 15
          AutoSize = False
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand32: TRLBand
        Left = 0
        Top = 10
        Width = 718
        Height = 66
        AutoExpand = False
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand32BeforePrint
        object RLSystemInfo9: TRLSystemInfo
          Left = 566
          Top = 2
          Width = 149
          Height = 14
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itNow
          ParentFont = False
          Text = 'Relat'#243'rio Impresso em:  '
        end
        object RLLabel222: TRLLabel
          Left = 309
          Top = 50
          Width = 100
          Height = 15
          Align = faCenterBottom
          Alignment = taRightJustify
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText198: TRLDBText
          Left = 1
          Top = 2
          Width = 46
          Height = 14
          DataField = 'fantasia'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLPanel40: TRLPanel
          Left = 3
          Top = 34
          Width = 712
          Height = 14
          object RLDBText200: TRLDBText
            Left = 0
            Top = 0
            Width = 57
            Height = 14
            Align = faLeft
            DataField = 'Endereco'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText201: TRLDBText
            Left = 66
            Top = 0
            Width = 23
            Height = 14
            Align = faLeft
            DataField = 'Num'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel223: TRLLabel
            Left = 57
            Top = 0
            Width = 9
            Height = 14
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel224: TRLLabel
            Left = 89
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText202: TRLDBText
            Left = 102
            Top = 0
            Width = 42
            Height = 14
            Align = faLeft
            DataField = 'BAIRRO'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel225: TRLLabel
            Left = 144
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText203: TRLDBText
            Left = 157
            Top = 0
            Width = 40
            Height = 14
            Align = faLeft
            DataField = 'Cidade'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel226: TRLLabel
            Left = 197
            Top = 0
            Width = 6
            Height = 14
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText204: TRLDBText
            Left = 203
            Top = 0
            Width = 16
            Height = 14
            Align = faLeft
            DataField = 'UF'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel227: TRLLabel
            Left = 219
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText205: TRLDBText
            Left = 232
            Top = 0
            Width = 22
            Height = 14
            Align = faLeft
            DataField = 'CEP'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel42: TRLPanel
          Left = 4
          Top = 18
          Width = 714
          Height = 14
          object RLDBText199: TRLDBText
            Left = 0
            Top = 0
            Width = 41
            Height = 14
            Align = faLeft
            DataField = 'Razao'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object lTelefone2R: TRLLabel
            Left = 41
            Top = 0
            Width = 95
            Height = 14
            Align = faLeft
            Caption = 'Extrato da Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand33: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 10
        BandType = btHeader
      end
    end
  end
  object rpImpOrcamento: TRLReport
    Left = 8
    Top = 2314
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = dOrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Orcamento'
    BeforePrint = rpImpPedidoBeforePrint
    object RLBand34: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 124
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand34BeforePrint
      object ImgOrc: TImage
        Left = 4
        Top = 4
        Width = 189
        Height = 105
        Stretch = True
      end
      object RLDBText217: TRLDBText
        Left = 225
        Top = 20
        Width = 82
        Height = 19
        DataField = 'e_fantasia'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo11: TRLSystemInfo
        Left = 631
        Top = 4
        Width = 119
        Height = 15
        Alignment = taRightJustify
        Info = itNow
        Text = 'Impresso em:  '
      end
      object RLLabel244: TRLLabel
        Left = 309
        Top = 80
        Width = 154
        Height = 32
        Alignment = taRightJustify
        Caption = 'Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel250: TRLLabel
        Left = 638
        Top = 92
        Width = 22
        Height = 16
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText218: TRLDBText
        Left = 732
        Top = 92
        Width = 18
        Height = 19
        Alignment = taRightJustify
        DataField = 'Id'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object lEndOrc: TRLLabel
        Left = 227
        Top = 42
        Width = 14
        Height = 14
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ltelOrc: TRLLabel
        Left = 227
        Top = 60
        Width = 14
        Height = 14
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel251: TRLLabel
        Left = 617
        Top = 62
        Width = 43
        Height = 16
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText219: TRLDBText
        Left = 712
        Top = 61
        Width = 38
        Height = 18
        Alignment = taRightJustify
        DataField = 'DATA'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand35: TRLBand
      Left = 19
      Top = 296
      Width = 756
      Height = 202
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand35AfterPrint
      BeforePrint = RLBand35BeforePrint
      object RLDraw1: TRLDraw
        Left = 152
        Top = 6
        Width = 603
        Height = 64
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Pen.Style = psClear
      end
      object RLLabel245: TRLLabel
        Left = 163
        Top = 11
        Width = 140
        Height = 15
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult29: TRLDBResult
        Left = 651
        Top = 11
        Width = 99
        Height = 15
        Alignment = taRightJustify
        DataField = 'vTotLiq'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'R$ '
      end
      object RLDBResult30: TRLDBResult
        Left = 490
        Top = 11
        Width = 59
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.#'
        Info = riSum
        Text = ''
      end
      object RLLabel246: TRLLabel
        Left = 233
        Top = 29
        Width = 70
        Height = 15
        Caption = 'DESCONTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult31: TRLDBResult
        Left = 625
        Top = 30
        Width = 125
        Height = 15
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Text = 'R$ '
      end
      object RLLabel247: TRLLabel
        Left = 217
        Top = 48
        Width = 86
        Height = 15
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult32: TRLDBResult
        Left = 637
        Top = 48
        Width = 113
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'R$ '
      end
      object RLDBResult33: TRLDBResult
        Left = 251
        Top = 11
        Width = 121
        Height = 15
        Alignment = taRightJustify
        DataField = 'totcubagem'
        DataSource = dOrc
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBResult34: TRLDBResult
        Left = 356
        Top = 11
        Width = 75
        Height = 15
        Alignment = taRightJustify
        DataField = 'qtd_cx'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.###'
        Info = riSum
        Text = ''
      end
      object RLPanel48: TRLPanel
        Left = 0
        Top = 123
        Width = 756
        Height = 79
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object lCli: TRLLabel
          Left = 33
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lemp: TRLLabel
          Left = 418
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lclicpf: TRLLabel
          Left = 34
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lEmpCpf: TRLLabel
          Left = 419
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel43: TRLPanel
        Left = 0
        Top = 101
        Width = 756
        Height = 22
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLPanel44: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 20
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel249: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo11: TRLDBMemo
            Left = 33
            Top = 2
            Width = 717
            Height = 15
            Behavior = [beSiteExpander]
            DataField = 'obs_venda_up'
            DataSource = dOrc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object RLBand36: TRLBand
      Left = 19
      Top = 162
      Width = 756
      Height = 118
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel252: TRLLabel
        Left = 1
        Top = 5
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText220: TRLDBText
        Left = 92
        Top = 78
        Width = 340
        Height = 17
        AutoSize = False
        DataField = 'desCond'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel257: TRLLabel
        Left = 1
        Top = 78
        Width = 85
        Height = 15
        Caption = 'COND. PAGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel261: TRLLabel
        Left = 1
        Top = 23
        Width = 68
        Height = 15
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel45: TRLPanel
        Left = 74
        Top = 23
        Width = 678
        Height = 17
        object RLDBText224: TRLDBText
          Left = 0
          Top = 0
          Width = 56
          Height = 17
          Align = faLeft
          DataField = 'Endereco'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText225: TRLDBText
          Left = 65
          Top = 0
          Width = 30
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel262: TRLLabel
          Left = 56
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel263: TRLLabel
          Left = 95
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText226: TRLDBText
          Left = 108
          Top = 0
          Width = 36
          Height = 17
          Align = faLeft
          DataField = 'Bairro'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel264: TRLLabel
          Left = 144
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText227: TRLDBText
          Left = 157
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel265: TRLLabel
          Left = 200
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText228: TRLDBText
          Left = 206
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel266: TRLLabel
          Left = 225
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText229: TRLDBText
          Left = 238
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel46: TRLPanel
        Left = 61
        Top = 5
        Width = 689
        Height = 17
        object RLDBText230: TRLDBText
          Left = 0
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText231: TRLDBText
          Left = 65
          Top = 0
          Width = 50
          Height = 17
          Align = faLeft
          DataField = 'nomeCli'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel267: TRLLabel
          Left = 52
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLLabel268: TRLLabel
        Left = 1
        Top = 60
        Width = 69
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel47: TRLPanel
        Left = 73
        Top = 60
        Width = 677
        Height = 16
        object RLDBText232: TRLDBText
          Left = 0
          Top = 0
          Width = 66
          Height = 16
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText233: TRLDBText
          Left = 79
          Top = 0
          Width = 190
          Height = 16
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel269: TRLLabel
          Left = 66
          Top = 0
          Width = 13
          Height = 16
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel270: TRLLabel
          Left = 275
          Top = 0
          Width = 61
          Height = 15
          Caption = 'PACOTES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText234: TRLDBText
          Left = 337
          Top = 0
          Width = 81
          Height = 15
          AutoSize = False
          DataField = 'pacote'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel258: TRLLabel
          Left = 419
          Top = 0
          Width = 102
          Height = 15
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText221: TRLDBText
          Left = 523
          Top = 0
          Width = 154
          Height = 15
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel49: TRLPanel
        Left = 1
        Top = 96
        Width = 754
        Height = 21
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel253: TRLLabel
          Left = 0
          Top = 1
          Width = 296
          Height = 20
          Align = faClient
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Produto'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel271: TRLLabel
          Left = 296
          Top = 1
          Width = 70
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Cubagem'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel272: TRLLabel
          Left = 366
          Top = 1
          Width = 60
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Qtde Cx.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel273: TRLLabel
          Left = 426
          Top = 1
          Width = 56
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Multiplo'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel254: TRLLabel
          Left = 482
          Top = 1
          Width = 64
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Qtde Item'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel255: TRLLabel
          Left = 546
          Top = 1
          Width = 76
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'R$ Unit'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel274: TRLLabel
          Left = 622
          Top = 1
          Width = 60
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'R$ Desc.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel256: TRLLabel
          Left = 682
          Top = 1
          Width = 72
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'R$ Total'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLLabel346: TRLLabel
        Left = 457
        Top = 78
        Width = 82
        Height = 15
        Caption = 'FORMA PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText292: TRLDBText
        Left = 540
        Top = 78
        Width = 210
        Height = 17
        AutoSize = False
        DataField = 'forma_pgto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel184: TRLPanel
        Left = 72
        Top = 41
        Width = 678
        Height = 17
        BeforePrint = RLPanel184BeforePrint
        object RLDBText692: TRLDBText
          Left = 0
          Top = 0
          Width = 23
          Height = 17
          Align = faLeft
          DataField = 'tel1'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText693: TRLDBText
          Left = 32
          Top = 0
          Width = 23
          Height = 17
          Align = faLeft
          DataField = 'tel2'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel891: TRLLabel
          Left = 23
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = '/ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel893: TRLLabel
          Left = 55
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = '/ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText695: TRLDBText
          Left = 64
          Top = 0
          Width = 23
          Height = 17
          Align = faLeft
          DataField = 'tel3'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel892: TRLLabel
        Left = 2
        Top = 42
        Width = 64
        Height = 15
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand37: TRLBand
      Left = 19
      Top = 498
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo12: TRLSystemInfo
        Left = 640
        Top = 1
        Width = 116
        Height = 15
        Align = faRightTop
        Info = itPageNumber
        Text = 'Pag.: '
      end
      object RLLabel675: TRLLabel
        Left = 1
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
    object RLBand38: TRLBand
      Left = 19
      Top = 280
      Width = 756
      Height = 16
      object RLDBText235: TRLDBText
        Left = 0
        Top = 0
        Width = 40
        Height = 82
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'IdProduto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText236: TRLDBText
        Left = 483
        Top = 0
        Width = 64
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'Qtd'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText237: TRLDBText
        Left = 547
        Top = 0
        Width = 76
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'vUnitLiq'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText238: TRLDBText
        Left = 683
        Top = 0
        Width = 73
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'vTotLiq'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText239: TRLDBText
        Left = 298
        Top = 0
        Width = 68
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'cubagem'
        DataSource = dOrc
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo12: TRLDBMemo
        Left = 40
        Top = 0
        Width = 257
        Height = 65
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'descricao'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText240: TRLDBText
        Left = 367
        Top = 0
        Width = 60
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'qtd_cx'
        DataSource = dOrc
        DisplayMask = '#,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText241: TRLDBText
        Left = 427
        Top = 0
        Width = 56
        Height = 82
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'multiplo'
        DataSource = dOrc
        DisplayMask = '#,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText242: TRLDBText
        Left = 623
        Top = 0
        Width = 60
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'descprod'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object rpImpSeparacao: TRLReport
    Left = 1654
    Top = 23
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
    object RLBand39: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 35
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText250: TRLDBText
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
      object RLSystemInfo13: TRLSystemInfo
        Left = 578
        Top = 3
        Width = 172
        Height = 15
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
    end
    object RLBand40: TRLBand
      Left = 19
      Top = 335
      Width = 756
      Height = 45
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult36: TRLDBResult
        Left = 412
        Top = 2
        Width = 95
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'QTD'
        DataSource = D
        DisplayMask = '###,###,###,##0.###'
        Info = riSum
        Text = ''
      end
      object RLLabel284: TRLLabel
        Left = 180
        Top = 6
        Width = 58
        Height = 14
        Caption = 'T O T A I S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult39: TRLDBResult
        Left = 625
        Top = 2
        Width = 125
        Height = 15
        Alignment = taRightJustify
        DataField = 'totcubagem'
        DataSource = D
        DisplayMask = '#,##0.000000'
        Text = ''
      end
      object RLDBResult40: TRLDBResult
        Left = 507
        Top = 2
        Width = 118
        Height = 19
        Alignment = taCenter
        AutoSize = False
        DataField = 'qtd_cx'
        DataSource = D
        DisplayMask = '#,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel282: TRLLabel
        Left = 180
        Top = 25
        Width = 73
        Height = 14
        Caption = 'PESO BRUTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult35: TRLDBResult
        Left = 257
        Top = 25
        Width = 96
        Height = 14
        Alignment = taRightJustify
        DataField = 'totPesoBruto'
        DataSource = D
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
    object RLBand41: TRLBand
      Left = 19
      Top = 73
      Width = 756
      Height = 235
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDraw4: TRLDraw
        Left = 539
        Top = 22
        Width = 211
        Height = 85
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        Pen.Style = psClear
      end
      object RLLabel287: TRLLabel
        Left = 545
        Top = 28
        Width = 61
        Height = 15
        Caption = 'Pedido N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText251: TRLDBText
        Left = 717
        Top = 28
        Width = 27
        Height = 27
        Alignment = taRightJustify
        DataField = 'Id'
        DataSource = D
        DisplayMask = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText252: TRLDBText
        Left = 164
        Top = 22
        Width = 25
        Height = 13
        DataField = 'DATA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel288: TRLLabel
        Left = 123
        Top = 22
        Width = 36
        Height = 13
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel289: TRLLabel
        Left = 1
        Top = 4
        Width = 50
        Height = 14
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel290: TRLLabel
        Left = 2
        Top = 216
        Width = 49
        Height = 19
        Align = faBottomOnly
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'C'#243'digo'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel291: TRLLabel
        Left = 412
        Top = 216
        Width = 96
        Height = 19
        Align = faBottomOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Quantidade'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText254: TRLDBText
        Left = 107
        Top = 54
        Width = 126
        Height = 13
        AutoSize = False
        DataField = 'PrazoEntrega'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel295: TRLLabel
        Left = 0
        Top = 54
        Width = 95
        Height = 12
        Caption = 'PRAZO ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel297: TRLLabel
        Left = 545
        Top = 61
        Width = 91
        Height = 15
        Caption = 'Total Cubagem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText256: TRLDBText
        Left = 642
        Top = 61
        Width = 102
        Height = 15
        Alignment = taRightJustify
        DataField = 'totcubagem'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel298: TRLLabel
        Left = 1
        Top = 102
        Width = 61
        Height = 14
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel52: TRLPanel
        Left = 66
        Top = 102
        Width = 451
        Height = 14
        object RLDBText257: TRLDBText
          Left = 0
          Top = 0
          Width = 49
          Height = 14
          Align = faLeft
          DataField = 'Endereco'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText258: TRLDBText
          Left = 58
          Top = 0
          Width = 24
          Height = 14
          Align = faLeft
          DataField = 'Num'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel299: TRLLabel
          Left = 49
          Top = 0
          Width = 9
          Height = 14
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel300: TRLLabel
          Left = 82
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText259: TRLDBText
          Left = 95
          Top = 0
          Width = 32
          Height = 14
          Align = faLeft
          DataField = 'Bairro'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel53: TRLPanel
        Left = 60
        Top = 4
        Width = 690
        Height = 14
        object RLDBText263: TRLDBText
          Left = 0
          Top = 0
          Width = 43
          Height = 14
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText264: TRLDBText
          Left = 56
          Top = 0
          Width = 30
          Height = 14
          Align = faLeft
          DataField = 'Nome'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel304: TRLLabel
          Left = 43
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLLabel309: TRLLabel
        Left = 625
        Top = 216
        Width = 125
        Height = 19
        Align = faBottomOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Cubagem'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel310: TRLLabel
        Left = 507
        Top = 216
        Width = 118
        Height = 19
        Align = faBottomOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Caixas'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText269: TRLDBText
        Left = 107
        Top = 68
        Width = 162
        Height = 13
        AutoSize = False
        DataField = 'transp_vendedor'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel313: TRLLabel
        Left = 1
        Top = 68
        Width = 77
        Height = 12
        Caption = 'REDESPACHO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText267: TRLDBText
        Left = 107
        Top = 82
        Width = 109
        Height = 13
        AutoSize = False
        DataField = 'pacote'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel307: TRLLabel
        Left = 1
        Top = 82
        Width = 57
        Height = 12
        Caption = 'PACOTES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel54: TRLPanel
        Left = 59
        Top = 35
        Width = 418
        Height = 14
        object RLDBText266: TRLDBText
          Left = 0
          Top = 0
          Width = 36
          Height = 14
          Align = faLeft
          DataField = 'Cidade'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel305: TRLLabel
          Left = 36
          Top = 0
          Width = 6
          Height = 14
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText268: TRLDBText
          Left = 42
          Top = 0
          Width = 16
          Height = 14
          Align = faLeft
          DataField = 'UF'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel308: TRLLabel
        Left = 545
        Top = 80
        Width = 44
        Height = 15
        Caption = 'Caixas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel281: TRLLabel
        Left = 0
        Top = 22
        Width = 41
        Height = 13
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText253: TRLDBText
        Left = 45
        Top = 22
        Width = 11
        Height = 13
        DataField = 'Id'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel294: TRLLabel
        Left = 1
        Top = 141
        Width = 112
        Height = 14
        Caption = 'LOCAL DE ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel296: TRLLabel
        Left = 1
        Top = 167
        Width = 98
        Height = 14
        Caption = 'AGENDADO PARA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel301: TRLLabel
        Left = 2
        Top = 193
        Width = 28
        Height = 14
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel302: TRLLabel
        Left = 1
        Top = 36
        Width = 45
        Height = 13
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel55: TRLPanel
        Left = 66
        Top = 115
        Width = 451
        Height = 14
        object RLDBText255: TRLDBText
          Left = 0
          Top = 0
          Width = 36
          Height = 14
          Align = faLeft
          DataField = 'Cidade'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel303: TRLLabel
          Left = 36
          Top = 0
          Width = 6
          Height = 14
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText260: TRLDBText
          Left = 42
          Top = 0
          Width = 16
          Height = 14
          Align = faLeft
          DataField = 'UF'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel314: TRLLabel
          Left = 58
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText261: TRLDBText
          Left = 71
          Top = 0
          Width = 22
          Height = 14
          Align = faLeft
          DataField = 'CEP'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel306: TRLLabel
        Left = 289
        Top = 22
        Width = 59
        Height = 13
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText262: TRLDBText
        Left = 351
        Top = 22
        Width = 126
        Height = 14
        AutoSize = False
        DataField = 'tel1'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel292: TRLLabel
        Left = 51
        Top = 216
        Width = 361
        Height = 19
        Align = faBottomOnly
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Descri'#231#227'o'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lTotCx: TRLLabel
        Left = 693
        Top = 80
        Width = 51
        Height = 16
        Alignment = taRightJustify
        Caption = 'Caixas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel283: TRLLabel
        Left = 45
        Top = 193
        Width = 705
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '______________________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel285: TRLLabel
        Left = 114
        Top = 167
        Width = 636
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '___________________________  AS _______ HRS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel286: TRLLabel
        Left = 127
        Top = 141
        Width = 623
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_______________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand43: TRLBand
      Left = 19
      Top = 308
      Width = 756
      Height = 27
      object RLDBText271: TRLDBText
        Left = 2
        Top = -1
        Width = 49
        Height = 27
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'referencia'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLDBText275: TRLDBText
        Left = 625
        Top = -1
        Width = 125
        Height = 27
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'cubagem'
        DataSource = D
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLDBText276: TRLDBText
        Left = 507
        Top = -1
        Width = 118
        Height = 27
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'qtd_cx'
        DataSource = D
        DisplayMask = '#,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLDBText277: TRLDBText
        Left = 412
        Top = -1
        Width = 95
        Height = 27
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'Qtd'
        DataSource = D
        DisplayMask = '#,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLDBText265: TRLDBText
        Left = 51
        Top = -1
        Width = 361
        Height = 27
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
    end
    object RLBand83: TRLBand
      Left = 19
      Top = 380
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo33: TRLSystemInfo
        Left = 651
        Top = 4
        Width = 99
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel676: TRLLabel
        Left = 0
        Top = 4
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
  end
  object rpImpPedidoMatricial: TRLReport
    Left = -16
    Top = 10
    Width = 794
    Height = 518
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dMt
    DefaultFilter = DM.RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Draft'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 137.000000000000000000
    PageSetup.ForceEmulation = True
    PrintEmpty = False
    JobTitle = 'Impresao'
    object RLBand42: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 29
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText270: TRLDBText
        Left = 1
        Top = 0
        Width = 54
        Height = 16
        Align = faTopOnly
        DataField = 'fantasia'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo15: TRLSystemInfo
        Left = 631
        Top = 0
        Width = 119
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        Info = itNow
        ParentFont = False
        Text = 'Impresso em:  '
      end
      object RLLabel293: TRLLabel
        Left = 0
        Top = 12
        Width = 114
        Height = 16
        Align = faLeftBottom
        Alignment = taJustify
        Caption = 'Extrato da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand44: TRLBand
      Left = 19
      Top = 165
      Width = 756
      Height = 94
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand44AfterPrint
      BeforePrint = RLBand44BeforePrint
      object RLLabel311: TRLLabel
        Left = 175
        Top = 1
        Width = 129
        Height = 14
        Alignment = taRightJustify
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult37: TRLDBResult
        Left = 670
        Top = 1
        Width = 80
        Height = 14
        Alignment = taRightJustify
        DataField = 'totprod'
        DataSource = dMt
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult38: TRLDBResult
        Left = 453
        Top = 1
        Width = 92
        Height = 14
        Alignment = taRightJustify
        DataField = 'Qtd_peso'
        DataSource = dMt
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel312: TRLLabel
        Left = 240
        Top = 16
        Width = 64
        Height = 14
        Alignment = taRightJustify
        Caption = 'DESCONTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult41: TRLDBResult
        Left = 646
        Top = 16
        Width = 104
        Height = 14
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = dMt
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel315: TRLLabel
        Left = 222
        Top = 31
        Width = 82
        Height = 14
        Alignment = taRightJustify
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult42: TRLDBResult
        Left = 671
        Top = 32
        Width = 79
        Height = 14
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dMt
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLPanel50: TRLPanel
        Left = 0
        Top = 47
        Width = 756
        Height = 47
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLLabel316: TRLLabel
          Left = 0
          Top = 17
          Width = 756
          Height = 14
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 
            'Docto            Vencto                      Valor              ' +
            '           '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo7: TRLMemo
          Left = 0
          Top = 31
          Width = 756
          Height = 12
          Align = faTop
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLPanel51: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 17
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel317: TRLLabel
            Left = 3
            Top = 0
            Width = 28
            Height = 14
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draf 12 cpi'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo13: TRLDBMemo
            Left = 33
            Top = 0
            Width = 717
            Height = 14
            Behavior = [beSiteExpander]
            DataField = 'obs_venda'
            DataSource = dMt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Draf 12 cpi'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLDBResult44: TRLDBResult
        Left = 336
        Top = 1
        Width = 75
        Height = 14
        Alignment = taRightJustify
        DataField = 'qtd_cx'
        DataSource = dMt
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
    object RLBand45: TRLBand
      Left = 19
      Top = 48
      Width = 756
      Height = 102
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Draft 12 cpi'
      Font.Style = []
      ParentFont = False
      object RLLabel318: TRLLabel
        Left = 1
        Top = 0
        Width = 42
        Height = 14
        Caption = 'VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText272: TRLDBText
        Left = 64
        Top = 0
        Width = 16
        Height = 16
        DataField = 'Id'
        DataSource = dMt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText273: TRLDBText
        Left = 207
        Top = 0
        Width = 32
        Height = 14
        DataField = 'DATA'
        DataSource = dMt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel319: TRLLabel
        Left = 169
        Top = -1
        Width = 36
        Height = 14
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel321: TRLLabel
        Left = 1
        Top = 87
        Width = 47
        Height = 14
        Align = faBottomOnly
        Caption = 'Produto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel322: TRLLabel
        Left = 499
        Top = 87
        Width = 46
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde Kg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel323: TRLLabel
        Left = 587
        Top = 87
        Width = 24
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Unit'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel324: TRLLabel
        Left = 723
        Top = 87
        Width = 30
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel328: TRLLabel
        Left = 385
        Top = -1
        Width = 19
        Height = 14
        Caption = 'NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText280: TRLDBText
        Left = 408
        Top = 0
        Width = 53
        Height = 14
        DataField = 'NotaFiscal'
        DataSource = dMt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel56: TRLPanel
        Left = 0
        Top = 31
        Width = 750
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draf 12 cpi'
        Font.Style = []
        ParentFont = False
        object RLDBText281: TRLDBText
          Left = 64
          Top = 0
          Width = 49
          Height = 15
          Align = faLeft
          DataField = 'Endereco'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText282: TRLDBText
          Left = 122
          Top = 0
          Width = 30
          Height = 15
          Align = faLeft
          DataField = 'Num'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = '  '
        end
        object RLLabel330: TRLLabel
          Left = 113
          Top = 0
          Width = 9
          Height = 15
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel331: TRLLabel
          Left = 152
          Top = 0
          Width = 10
          Height = 15
          Align = faLeft
          Caption = '- '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText283: TRLDBText
          Left = 162
          Top = 0
          Width = 32
          Height = 15
          Align = faLeft
          DataField = 'Bairro'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel332: TRLLabel
          Left = 194
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText284: TRLDBText
          Left = 207
          Top = 0
          Width = 42
          Height = 15
          Align = faLeft
          DataField = 'Cidade'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = '  '
        end
        object RLLabel333: TRLLabel
          Left = 249
          Top = 0
          Width = 12
          Height = 15
          Align = faLeft
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText285: TRLDBText
          Left = 261
          Top = 0
          Width = 19
          Height = 15
          Align = faLeft
          DataField = 'UF'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel334: TRLLabel
          Left = 280
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText286: TRLDBText
          Left = 293
          Top = 0
          Width = 25
          Height = 15
          Align = faLeft
          DataField = 'CEP'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel329: TRLLabel
          Left = 0
          Top = 0
          Width = 64
          Height = 15
          Align = faLeft
          Caption = 'ENDERE'#199'O: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel57: TRLPanel
        Left = 3
        Top = 19
        Width = 750
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLPanel57BeforePrint
        object RLDBText287: TRLDBText
          Left = 64
          Top = 0
          Width = 43
          Height = 15
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText288: TRLDBText
          Left = 107
          Top = 0
          Width = 30
          Height = 15
          Align = faLeft
          DataField = 'Nome'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel335: TRLLabel
          Left = 137
          Top = 0
          Width = 7
          Height = 15
          Align = faLeft
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel320: TRLLabel
          Left = 0
          Top = 0
          Width = 64
          Height = 15
          Align = faLeft
          Caption = 'CLIENTE: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel654: TRLLabel
          Left = 669
          Top = 0
          Width = 62
          Height = 15
          Align = faRight
          Caption = 'TELEFONE: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lTel1: TRLLabel
          Left = 731
          Top = 0
          Width = 6
          Height = 15
          Align = faRight
          Caption = ' '
        end
        object lTel2: TRLLabel
          Left = 744
          Top = 0
          Width = 6
          Height = 15
          Align = faRight
          Caption = ' '
        end
        object RLLabel655: TRLLabel
          Left = 737
          Top = 0
          Width = 7
          Height = 15
          Align = faRight
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel58: TRLPanel
        Left = 0
        Top = 46
        Width = 750
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText289: TRLDBText
          Left = 64
          Top = 0
          Width = 26
          Height = 16
          Align = faLeft
          AutoSize = False
          DataField = 'IdVendedor'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText290: TRLDBText
          Left = 103
          Top = 0
          Width = 180
          Height = 16
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel337: TRLLabel
          Left = 90
          Top = 0
          Width = 13
          Height = 16
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel325: TRLLabel
          Left = 697
          Top = 0
          Width = 53
          Height = 16
          Align = faRight
          Alignment = taRightJustify
          Caption = ' COND: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText274: TRLDBText
          Left = 642
          Top = 0
          Width = 55
          Height = 16
          Align = faRight
          Alignment = taRightJustify
          DataField = 'desCond'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel345: TRLLabel
          Left = 507
          Top = 0
          Width = 67
          Height = 16
          Align = faRight
          Alignment = taRightJustify
          Caption = '  FORMA: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText294: TRLDBText
          Left = 574
          Top = 0
          Width = 68
          Height = 16
          Align = faRight
          Alignment = taRightJustify
          DataField = 'forma_pgto'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel336: TRLLabel
          Left = 0
          Top = 0
          Width = 64
          Height = 16
          Align = faLeft
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLLabel341: TRLLabel
        Left = 382
        Top = 87
        Width = 29
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel342: TRLLabel
        Left = 429
        Top = 87
        Width = 30
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Mult.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel343: TRLLabel
        Left = 650
        Top = 87
        Width = 33
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Desc.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLPanel121: TRLPanel
        Left = 0
        Top = 66
        Width = 750
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draf 12 cpi'
        Font.Style = []
        ParentFont = False
        object RLDBText526: TRLDBText
          Left = 91
          Top = 0
          Width = 64
          Height = 15
          Align = faLeft
          DataField = 'End_entrega'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText527: TRLDBText
          Left = 164
          Top = 0
          Width = 73
          Height = 15
          Align = faLeft
          DataField = 'Num_entrega'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = '  '
        end
        object RLLabel648: TRLLabel
          Left = 155
          Top = 0
          Width = 9
          Height = 15
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel649: TRLLabel
          Left = 237
          Top = 0
          Width = 10
          Height = 15
          Align = faLeft
          Caption = '- '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText528: TRLDBText
          Left = 247
          Top = 0
          Width = 75
          Height = 15
          Align = faLeft
          DataField = 'Bairro_entrega'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel658: TRLLabel
          Left = 322
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText529: TRLDBText
          Left = 335
          Top = 0
          Width = 84
          Height = 15
          Align = faLeft
          DataField = 'cidade_entrega'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = '  '
        end
        object RLLabel659: TRLLabel
          Left = 419
          Top = 0
          Width = 12
          Height = 15
          Align = faLeft
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText530: TRLDBText
          Left = 431
          Top = 0
          Width = 62
          Height = 15
          Align = faLeft
          DataField = 'UF_entrega'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel660: TRLLabel
          Left = 493
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText534: TRLDBText
          Left = 506
          Top = 0
          Width = 68
          Height = 15
          Align = faLeft
          DataField = 'Cep_entrega'
          DataSource = dMt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel664: TRLLabel
          Left = 0
          Top = 0
          Width = 91
          Height = 15
          Align = faLeft
          Caption = 'END. ENTREGA: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object lQtdDev: TRLLabel
        Left = 230
        Top = 87
        Width = 52
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde Dev'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lQtdKgDev: TRLLabel
        Left = 288
        Top = 87
        Width = 69
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde Kg Dev'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand47: TRLBand
      Left = 19
      Top = 150
      Width = 756
      Height = 15
      object RLDBText295: TRLDBText
        Left = 0
        Top = 0
        Width = 48
        Height = 14
        Align = faTopOnly
        DataField = 'IdProduto'
        DataSource = dMt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText296: TRLDBText
        Left = 495
        Top = 0
        Width = 50
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'Qtd_peso'
        DataSource = dMt
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText297: TRLDBText
        Left = 570
        Top = 0
        Width = 41
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'vUnitLiq'
        DataSource = dMt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText298: TRLDBText
        Left = 713
        Top = 0
        Width = 37
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'totprod'
        DataSource = dMt
        DisplayMask = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo14: TRLDBMemo
        Left = 50
        Top = 0
        Width = 174
        Height = 14
        Align = faTopOnly
        Behavior = [beSiteExpander]
        DataField = 'descricao'
        DataSource = dMt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText300: TRLDBText
        Left = 368
        Top = 0
        Width = 43
        Height = 15
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd_cx'
        DataSource = dMt
        DisplayMask = '#,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText301: TRLDBText
        Left = 417
        Top = 0
        Width = 42
        Height = 15
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'multiplo'
        DataSource = dMt
        DisplayMask = '#,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText302: TRLDBText
        Left = 634
        Top = 0
        Width = 49
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'descprod'
        DataSource = dMt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rldbQtdDev: TRLDBText
        Left = 239
        Top = 0
        Width = 43
        Height = 15
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd_cxdev'
        DataSource = dMt
        DisplayMask = '#,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlDBQtdKgDev: TRLDBText
        Left = 321
        Top = 0
        Width = 36
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'qtddev'
        DataSource = dMt
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object rpImpExpedicao_sem_usuo: TRLReport
    Left = 2491
    Top = 23
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
    object RLBand46: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 41
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel387: TRLLabel
        Left = 0
        Top = 0
        Width = 756
        Height = 40
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'EXPEDI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand48: TRLBand
      Left = 19
      Top = 274
      Width = 756
      Height = 62
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLPanel67: TRLPanel
        Left = 0
        Top = 29
        Width = 756
        Height = 32
        Align = faTop
        BeforePrint = RLPanel67BeforePrint
        object RLLabel355: TRLLabel
          Left = 0
          Top = 0
          Width = 756
          Height = 14
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 
            '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
            '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
            '- - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - -' +
            ' - - - - - - - - - - -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel356: TRLLabel
          Left = 0
          Top = 16
          Width = 79
          Height = 16
          Align = faBottomOnly
          Caption = 'EXPEDI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel376: TRLLabel
          Left = 502
          Top = 18
          Width = 248
          Height = 14
          Align = faBottomOnly
          Caption = 'Respons'#225'vel: ____________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel375: TRLLabel
          Left = 328
          Top = 18
          Width = 134
          Height = 14
          Align = faBottomOnly
          Caption = 'Data: ____/____/________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel68: TRLPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 29
        Align = faTop
        object RLPanel120: TRLPanel
          Left = 332
          Top = 0
          Width = 352
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          object RLDBResult57: TRLDBResult
            Left = 1
            Top = 0
            Width = 72
            Height = 17
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.Color = clGray
            DataField = 'qtd_cx'
            DataSource = D
            DisplayMask = '###,###,###,##0.###'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel645: TRLLabel
            Left = 73
            Top = 0
            Width = 52
            Height = 17
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBResult53: TRLDBResult
            Left = 125
            Top = 0
            Width = 58
            Height = 17
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.Color = clGray
            DataField = 'volume'
            DataSource = D
            DisplayMask = '#0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBResult55: TRLDBResult
            Left = 183
            Top = 0
            Width = 69
            Height = 17
            Align = faLeft
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Borders.Color = clGray
            DataField = 'totPesoBruto'
            DataSource = D
            DisplayMask = '#,##0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBResult54: TRLDBResult
            Left = 252
            Top = 0
            Width = 99
            Height = 17
            Align = faClient
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clGray
            DataField = 'totcubagem'
            DataSource = D
            DisplayMask = '#,##0.000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
      end
    end
    object RLBand49: TRLBand
      Left = 19
      Top = 79
      Width = 756
      Height = 179
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText311: TRLDBText
        Left = 231
        Top = 0
        Width = 25
        Height = 13
        DataField = 'DATA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel358: TRLLabel
        Left = 200
        Top = 0
        Width = 29
        Height = 14
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel60: TRLPanel
        Left = 0
        Top = 17
        Width = 752
        Height = 14
        object RLDBText317: TRLDBText
          Left = 48
          Top = 0
          Width = 43
          Height = 14
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText318: TRLDBText
          Left = 104
          Top = 0
          Width = 30
          Height = 14
          Align = faLeft
          DataField = 'Nome'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel367: TRLLabel
          Left = 91
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel359: TRLLabel
          Left = 0
          Top = 0
          Width = 48
          Height = 14
          Align = faLeft
          Caption = 'Cliente: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLLabel374: TRLLabel
        Left = 0
        Top = 0
        Width = 41
        Height = 13
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText323: TRLDBText
        Left = 45
        Top = 0
        Width = 11
        Height = 13
        DataField = 'Id'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel59: TRLPanel
        Left = 1
        Top = 55
        Width = 752
        Height = 14
        object RLDBText314: TRLDBText
          Left = 50
          Top = 0
          Width = 36
          Height = 14
          Align = faLeft
          DataField = 'Cidade'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel366: TRLLabel
          Left = 86
          Top = 0
          Width = 6
          Height = 14
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText315: TRLDBText
          Left = 92
          Top = 0
          Width = 16
          Height = 14
          Align = faLeft
          DataField = 'UF'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel365: TRLLabel
          Left = 0
          Top = 0
          Width = 50
          Height = 14
          Align = faLeft
          Caption = 'Cidade:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel665: TRLLabel
          Left = 552
          Top = 0
          Width = 73
          Height = 14
          Align = faRight
          Caption = '   Vendedor: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText535: TRLDBText
          Left = 625
          Top = 0
          Width = 59
          Height = 14
          Align = faRight
          DataField = 'IdVendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel666: TRLLabel
          Left = 684
          Top = 0
          Width = 13
          Height = 14
          Align = faRight
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText536: TRLDBText
          Left = 697
          Top = 0
          Width = 55
          Height = 14
          Align = faRight
          DataField = 'nomeVend'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel380: TRLLabel
        Left = 385
        Top = -1
        Width = 74
        Height = 14
        Caption = 'Data Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText325: TRLDBText
        Left = 460
        Top = 0
        Width = 68
        Height = 14
        DataField = 'PrazoEntrega'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel62: TRLPanel
        Left = 0
        Top = 35
        Width = 753
        Height = 14
        object RLLabel363: TRLLabel
          Left = 0
          Top = 0
          Width = 61
          Height = 14
          Align = faLeft
          Caption = 'Telefone:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText313: TRLDBText
          Left = 61
          Top = 0
          Width = 114
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'tel1'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText326: TRLDBText
          Left = 229
          Top = 0
          Width = 109
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'tel1'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel373: TRLLabel
          Left = 338
          Top = 0
          Width = 47
          Height = 14
          Align = faLeft
          Caption = '  Email : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText333: TRLDBText
          Left = 385
          Top = 0
          Width = 354
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'email'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel383: TRLLabel
          Left = 175
          Top = 0
          Width = 54
          Height = 14
          Align = faLeft
          Caption = '  Celular: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel63: TRLPanel
        Left = 0
        Top = 72
        Width = 752
        Height = 14
        object RLLabel378: TRLLabel
          Left = 0
          Top = 0
          Width = 138
          Height = 14
          Align = faLeft
          Caption = 'Codi'#231#227'o de Pagamento:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel364: TRLLabel
          Left = 442
          Top = 0
          Width = 135
          Height = 14
          Align = faLeft
          Caption = '  Forma de Pagamento:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText309: TRLDBText
          Left = 577
          Top = 0
          Width = 166
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'forma_pgto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText321: TRLDBText
          Left = 138
          Top = 0
          Width = 57
          Height = 14
          Align = faLeft
          DataField = 'IdCondPgto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText322: TRLDBText
          Left = 205
          Top = 0
          Width = 237
          Height = 14
          Align = faLeft
          DataField = 'desCond'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel372: TRLLabel
          Left = 195
          Top = 0
          Width = 10
          Height = 14
          Align = faLeft
          Caption = '- '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel61: TRLPanel
        Left = 1
        Top = 91
        Width = 752
        Height = 14
        object RLLabel362: TRLLabel
          Left = 0
          Top = 0
          Width = 98
          Height = 14
          Align = faLeft
          Caption = 'Transportadora:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText312: TRLDBText
          Left = 98
          Top = 0
          Width = 253
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'NomeT'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel370: TRLLabel
          Left = 351
          Top = 0
          Width = 86
          Height = 14
          Align = faLeft
          Caption = '  Redespacho:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText319: TRLDBText
          Left = 437
          Top = 0
          Width = 300
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'NomeD'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel64: TRLPanel
        Left = 1
        Top = 111
        Width = 752
        Height = 14
        object RLLabel377: TRLLabel
          Left = 0
          Top = 0
          Width = 34
          Height = 14
          Align = faLeft
          Caption = 'Obs:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText310: TRLDBText
          Left = 34
          Top = 0
          Width = 703
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'Obs'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel357: TRLLabel
        Left = 1
        Top = 125
        Width = 753
        Height = 14
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 
          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
          '- - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - -' +
          ' - - - - - - - - - - -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel371: TRLLabel
        Left = 0
        Top = 137
        Width = 53
        Height = 16
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel65: TRLPanel
        Left = 0
        Top = 162
        Width = 756
        Height = 17
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel360: TRLLabel
          Left = 0
          Top = 0
          Width = 32
          Height = 17
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Seq.'
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
        object RLLabel382: TRLLabel
          Left = 83
          Top = 0
          Width = 249
          Height = 17
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
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
        object RLLabel361: TRLLabel
          Left = 332
          Top = 0
          Width = 72
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'DZ'
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
        object RLLabel369: TRLLabel
          Left = 404
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
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
        object RLLabel368: TRLLabel
          Left = 681
          Top = 0
          Width = 72
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Obs'
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
        object RLLabel379: TRLLabel
          Left = 32
          Top = 0
          Width = 51
          Height = 17
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Produto'
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
        object RLLabel381: TRLLabel
          Left = 456
          Top = 0
          Width = 57
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Volume'
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
        object RLLabel384: TRLLabel
          Left = 513
          Top = 0
          Width = 69
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Peso'
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
        object RLLabel388: TRLLabel
          Left = 582
          Top = 0
          Width = 99
          Height = 17
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'M'#179
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
    end
    object RLBand50: TRLBand
      Left = 19
      Top = 258
      Width = 756
      Height = 16
      BeforePrint = RLBand50BeforePrint
      object RLPanel66: TRLPanel
        Left = 0
        Top = -3
        Width = 754
        Height = 19
        BeforePrint = RLPanel66BeforePrint
        object RLLabel390: TRLLabel
          Left = 0
          Top = 0
          Width = 32
          Height = 19
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText328: TRLDBText
          Left = 32
          Top = 0
          Width = 51
          Height = 19
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'referencia'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText332: TRLDBText
          Left = 83
          Top = 0
          Width = 249
          Height = 19
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText331: TRLDBText
          Left = 332
          Top = 0
          Width = 72
          Height = 19
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'qtd_cx'
          DataSource = D
          DisplayMask = '#,##0.###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText329: TRLDBText
          Left = 456
          Top = 0
          Width = 58
          Height = 19
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'volume'
          DataSource = D
          DisplayMask = '#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText316: TRLDBText
          Left = 514
          Top = 0
          Width = 69
          Height = 19
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'totPesoBruto'
          DataSource = D
          DisplayMask = '#,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText320: TRLDBText
          Left = 583
          Top = 0
          Width = 100
          Height = 19
          Align = faLeft
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'cubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel389: TRLLabel
          Left = 404
          Top = 0
          Width = 52
          Height = 19
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = '(   )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel391: TRLLabel
          Left = 683
          Top = 0
          Width = 71
          Height = 19
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
    end
    object RLSubDetail3: TRLSubDetail
      Left = 19
      Top = 336
      Width = 756
      Height = 221
      DataSource = dPro
      Positioning = btSummary
      object RLBand51: TRLBand
        Left = 0
        Top = 21
        Width = 756
        Height = 18
        BeforePrint = RLBand51BeforePrint
        object RLLabel385: TRLLabel
          Left = 0
          Top = 0
          Width = 32
          Height = 18
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText324: TRLDBText
          Left = 32
          Top = 0
          Width = 51
          Height = 18
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'referencia'
          DataSource = dPro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText327: TRLDBText
          Left = 83
          Top = 0
          Width = 302
          Height = 18
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'descricao'
          DataSource = dPro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel386: TRLLabel
          Left = 463
          Top = 0
          Width = 58
          Height = 18
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = '(  )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel396: TRLLabel
          Left = 385
          Top = 0
          Width = 78
          Height = 18
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel399: TRLLabel
          Left = 521
          Top = 0
          Width = 74
          Height = 18
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLBand52: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 21
        BandType = btColumnHeader
        object RLPanel69: TRLPanel
          Left = 0
          Top = 4
          Width = 756
          Height = 17
          Align = faBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLLabel392: TRLLabel
            Left = 0
            Top = 0
            Width = 32
            Height = 17
            Align = faLeft
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.Color = clGray
            Caption = 'Seq.'
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
          object RLLabel393: TRLLabel
            Left = 83
            Top = 0
            Width = 302
            Height = 17
            Align = faLeft
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.Color = clGray
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
          object RLLabel394: TRLLabel
            Left = 385
            Top = 0
            Width = 78
            Height = 17
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.Color = clGray
            Caption = 'Quantidade'
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
          object RLLabel395: TRLLabel
            Left = 463
            Top = 0
            Width = 58
            Height = 17
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.Color = clGray
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
          object RLLabel397: TRLLabel
            Left = 32
            Top = 0
            Width = 51
            Height = 17
            Align = faLeft
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.Color = clGray
            Caption = 'Produto'
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
          object RLLabel398: TRLLabel
            Left = 521
            Top = 0
            Width = 74
            Height = 17
            Align = faLeft
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.Color = clGray
            Caption = 'Volume'
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
      end
      object RLBand53: TRLBand
        Left = 0
        Top = 39
        Width = 756
        Height = 170
        BandType = btSummary
        BeforePrint = RLBand53BeforePrint
        object RLPanel71: TRLPanel
          Left = 0
          Top = 61
          Width = 756
          Height = 42
          Align = faTop
          object RLLabel400: TRLLabel
            Left = 9
            Top = 9
            Width = 133
            Height = 14
            Caption = 'N'#186' de Caixas:  _________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel401: TRLLabel
            Left = 182
            Top = 9
            Width = 130
            Height = 14
            Caption = 'N'#186' de Sacos:  _________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel402: TRLLabel
            Left = 338
            Top = 9
            Width = 141
            Height = 14
            Caption = 'N'#186' de Pacotes:  _________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel403: TRLLabel
            Left = 502
            Top = 9
            Width = 191
            Height = 14
            Caption = 'Quantidade de Volume:  _________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel404: TRLLabel
            Left = 0
            Top = 28
            Width = 756
            Height = 14
            Align = faBottom
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - - -' +
              ' - - - - - - - - - - -'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel70: TRLPanel
          Left = 0
          Top = 103
          Width = 756
          Height = 58
          Align = faTop
          object RLLabel407: TRLLabel
            Left = 9
            Top = 40
            Width = 162
            Height = 14
            Caption = 'Nota Fiscal N'#186':  _____________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel410: TRLLabel
            Left = 195
            Top = 40
            Width = 153
            Height = 14
            Caption = 'Valor R$:  ________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel408: TRLLabel
            Left = 365
            Top = 40
            Width = 183
            Height = 14
            Caption = 'Emitido Por:  __________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel409: TRLLabel
            Left = 564
            Top = 40
            Width = 181
            Height = 14
            Caption = 'Vencimento:  _________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel405: TRLLabel
            Left = 0
            Top = 12
            Width = 103
            Height = 16
            Caption = 'LAN'#199'AMENTOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel406: TRLLabel
            Left = 146
            Top = 14
            Width = 134
            Height = 14
            Caption = 'Data: ____/____/________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel73: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 61
          Align = faTop
          object RLPanel77: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 18
            Align = faTop
            object lVazia1: TRLLabel
              Left = 0
              Top = 0
              Width = 32
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Caption = 'seq'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel440: TRLLabel
              Left = 83
              Top = 0
              Width = 302
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel441: TRLLabel
              Left = 463
              Top = 0
              Width = 58
              Height = 18
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Caption = '(  )'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel442: TRLLabel
              Left = 521
              Top = 0
              Width = 74
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel443: TRLLabel
              Left = 32
              Top = 0
              Width = 51
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel444: TRLLabel
              Left = 385
              Top = 0
              Width = 78
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLPanel78: TRLPanel
            Left = 0
            Top = 18
            Width = 756
            Height = 18
            Align = faTop
            object lVazia2: TRLLabel
              Left = 0
              Top = 0
              Width = 32
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Caption = 'seq'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel446: TRLLabel
              Left = 83
              Top = 0
              Width = 302
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel447: TRLLabel
              Left = 463
              Top = 0
              Width = 58
              Height = 18
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Caption = '(  )'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel448: TRLLabel
              Left = 521
              Top = 0
              Width = 74
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel449: TRLLabel
              Left = 32
              Top = 0
              Width = 51
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel450: TRLLabel
              Left = 385
              Top = 0
              Width = 78
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLPanel79: TRLPanel
            Left = 0
            Top = 36
            Width = 756
            Height = 18
            Align = faTop
            object lVazia3: TRLLabel
              Left = 0
              Top = 0
              Width = 32
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Caption = 'seq'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel452: TRLLabel
              Left = 83
              Top = 0
              Width = 302
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel453: TRLLabel
              Left = 463
              Top = 0
              Width = 58
              Height = 18
              Align = faLeft
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Caption = '(  )'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel454: TRLLabel
              Left = 521
              Top = 0
              Width = 74
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel455: TRLLabel
              Left = 32
              Top = 0
              Width = 51
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
            object RLLabel456: TRLLabel
              Left = 385
              Top = 0
              Width = 78
              Height = 18
              Align = faLeft
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              ParentFont = False
            end
          end
        end
      end
    end
    object RLBand84: TRLBand
      Left = 19
      Top = 557
      Width = 756
      Height = 23
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo14: TRLSystemInfo
        Left = 651
        Top = 4
        Width = 99
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel677: TRLLabel
        Left = 0
        Top = 4
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
  end
  object rpImpDev: TRLReport
    Left = 1662
    Top = 1173
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dDev
    DefaultFilter = DM.RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand54: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 31
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText330: TRLDBText
        Left = 1
        Top = 0
        Width = 54
        Height = 16
        Align = faTopOnly
        DataField = 'fantasia'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo16: TRLSystemInfo
        Left = 631
        Top = 0
        Width = 119
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        Info = itNow
        ParentFont = False
        Text = 'Impresso em:  '
      end
      object RLLabel411: TRLLabel
        Left = 275
        Top = 14
        Width = 206
        Height = 16
        Align = faCenterBottom
        Alignment = taCenter
        Caption = 'DEVOLU'#199#195'O DE MERCADORIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand55: TRLBand
      Left = 19
      Top = 156
      Width = 756
      Height = 46
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel412: TRLLabel
        Left = 493
        Top = 15
        Width = 132
        Height = 16
        Alignment = taRightJustify
        Caption = 'TOTAL DEVOLU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult56: TRLDBResult
        Left = 663
        Top = 15
        Width = 90
        Height = 16
        Alignment = taRightJustify
        DataField = 'totprod'
        DataSource = dDev
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
    object RLBand56: TRLBand
      Left = 19
      Top = 50
      Width = 756
      Height = 89
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Draft 12 cpi'
      Font.Style = []
      ParentFont = False
      object RLLabel417: TRLLabel
        Left = 1
        Top = 0
        Width = 73
        Height = 14
        Caption = 'DEVOLU'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText334: TRLDBText
        Left = 78
        Top = 0
        Width = 13
        Height = 14
        DataField = 'Id'
        DataSource = dDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft '
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText335: TRLDBText
        Left = 207
        Top = 1
        Width = 25
        Height = 14
        DataField = 'DATA'
        DataSource = dDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel418: TRLLabel
        Left = 169
        Top = 0
        Width = 36
        Height = 14
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel419: TRLLabel
        Left = 1
        Top = 74
        Width = 47
        Height = 14
        Align = faBottomOnly
        Caption = 'Produto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel420: TRLLabel
        Left = 562
        Top = 74
        Width = 46
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde Kg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel421: TRLLabel
        Left = 646
        Top = 74
        Width = 24
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Unit'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel422: TRLLabel
        Left = 723
        Top = 74
        Width = 30
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLPanel74: TRLPanel
        Left = 0
        Top = 29
        Width = 750
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draf 12 cpi'
        Font.Style = []
        ParentFont = False
        object RLDBText337: TRLDBText
          Left = 64
          Top = 0
          Width = 49
          Height = 15
          Align = faLeft
          DataField = 'Endereco'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText338: TRLDBText
          Left = 122
          Top = 0
          Width = 30
          Height = 15
          Align = faLeft
          DataField = 'Num'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = '  '
        end
        object RLLabel424: TRLLabel
          Left = 113
          Top = 0
          Width = 9
          Height = 15
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel425: TRLLabel
          Left = 152
          Top = 0
          Width = 10
          Height = 15
          Align = faLeft
          Caption = '- '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText339: TRLDBText
          Left = 162
          Top = 0
          Width = 32
          Height = 15
          Align = faLeft
          DataField = 'Bairro'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel426: TRLLabel
          Left = 194
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText340: TRLDBText
          Left = 207
          Top = 0
          Width = 42
          Height = 15
          Align = faLeft
          DataField = 'Cidade'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = '  '
        end
        object RLLabel427: TRLLabel
          Left = 249
          Top = 0
          Width = 12
          Height = 15
          Align = faLeft
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText341: TRLDBText
          Left = 261
          Top = 0
          Width = 19
          Height = 15
          Align = faLeft
          DataField = 'UF'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel428: TRLLabel
          Left = 280
          Top = 0
          Width = 13
          Height = 15
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText342: TRLDBText
          Left = 293
          Top = 0
          Width = 25
          Height = 15
          Align = faLeft
          DataField = 'CEP'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel429: TRLLabel
          Left = 0
          Top = 0
          Width = 64
          Height = 15
          Align = faLeft
          Caption = 'ENDERE'#199'O: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel75: TRLPanel
        Left = 0
        Top = 15
        Width = 750
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        object RLDBText343: TRLDBText
          Left = 61
          Top = 0
          Width = 43
          Height = 15
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText344: TRLDBText
          Left = 104
          Top = 0
          Width = 29
          Height = 15
          Align = faLeft
          DataField = 'Nome'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel430: TRLLabel
          Left = 133
          Top = 0
          Width = 7
          Height = 15
          Align = faLeft
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel431: TRLLabel
          Left = 0
          Top = 0
          Width = 61
          Height = 15
          Align = faLeft
          Caption = 'CLIENTE: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel76: TRLPanel
        Left = 0
        Top = 44
        Width = 750
        Height = 15
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText345: TRLDBText
          Left = 64
          Top = 0
          Width = 59
          Height = 14
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText346: TRLDBText
          Left = 136
          Top = 0
          Width = 180
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = dDev
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel432: TRLLabel
          Left = 123
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel435: TRLLabel
          Left = 0
          Top = 0
          Width = 64
          Height = 14
          Align = faLeft
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Draft 12 cpi'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLLabel436: TRLLabel
        Left = 448
        Top = 74
        Width = 29
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Qtde'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel437: TRLLabel
        Left = 508
        Top = 74
        Width = 30
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Mult.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel438: TRLLabel
        Left = 390
        Top = 74
        Width = 38
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Venda'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand57: TRLBand
      Left = 19
      Top = 139
      Width = 756
      Height = 17
      object RLDBText349: TRLDBText
        Left = 1
        Top = 0
        Width = 94
        Height = 14
        Align = faTopOnly
        DataField = 'IdProduto'
        DataSource = dDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText350: TRLDBText
        Left = 566
        Top = 0
        Width = 42
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'qtd_dev'
        DataSource = dDev
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText351: TRLDBText
        Left = 626
        Top = 0
        Width = 44
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'unit_dev'
        DataSource = dDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText352: TRLDBText
        Left = 713
        Top = 0
        Width = 37
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'totprod'
        DataSource = dDev
        DisplayMask = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo16: TRLDBMemo
        Left = 101
        Top = 0
        Width = 264
        Height = 14
        Align = faTopOnly
        Behavior = [beSiteExpander]
        DataField = 'descricao'
        DataSource = dDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText353: TRLDBText
        Left = 435
        Top = 0
        Width = 43
        Height = 15
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'qtd_cx_dev'
        DataSource = dDev
        DisplayMask = '#,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText354: TRLDBText
        Left = 496
        Top = 0
        Width = 42
        Height = 15
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'multiplo'
        DataSource = dDev
        DisplayMask = '#,##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText355: TRLDBText
        Left = 373
        Top = 0
        Width = 55
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'idvenda_IT'
        DataSource = dDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand85: TRLBand
      Left = 19
      Top = 202
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo24: TRLSystemInfo
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
      object RLLabel679: TRLLabel
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
  end
  object rpImpPedido2vias_2: TRLReport
    Left = 846
    Top = 2314
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
    object RLSubDetail4: TRLSubDetail
      Left = 19
      Top = 38
      Width = 756
      Height = 477
      DataSource = D
      object RLAngleLabel5: TRLAngleLabel
        Left = 0
        Top = -252
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
      object RLBand58: TRLBand
        Left = 0
        Top = 224
        Width = 756
        Height = 131
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand58BeforePrint
        object RLDraw7: TRLDraw
          Left = 474
          Top = 22
          Width = 278
          Height = 55
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Pen.Style = psClear
        end
        object RLLabel433: TRLLabel
          Left = 479
          Top = 25
          Width = 140
          Height = 15
          Caption = 'TOTAL DOS PRODUTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult58: TRLDBResult
          Left = 624
          Top = 25
          Width = 126
          Height = 15
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
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
        object RLDBResult59: TRLDBResult
          Left = 392
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel434: TRLLabel
          Left = 549
          Top = 41
          Width = 70
          Height = 15
          Caption = 'DESCONTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult60: TRLDBResult
          Left = 643
          Top = 41
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
        object RLLabel439: TRLLabel
          Left = 533
          Top = 57
          Width = 86
          Height = 15
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult61: TRLDBResult
          Left = 669
          Top = 57
          Width = 81
          Height = 15
          Alignment = taRightJustify
          DataField = 'Total'
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
        object RLPanel83: TRLPanel
          Left = 0
          Top = 79
          Width = 756
          Height = 52
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel445: TRLLabel
            Left = 0
            Top = 20
            Width = 756
            Height = 16
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Docto                        Vencto                      Valor  ' +
              '                        '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo8: TRLMemo
            Left = 0
            Top = 36
            Width = 756
            Height = 14
            Align = faTop
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLPanel84: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 20
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            object RLLabel451: TRLLabel
              Left = 1
              Top = 2
              Width = 29
              Height = 15
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo15: TRLDBMemo
              Left = 33
              Top = 2
              Width = 679
              Height = 17
              Behavior = [beSiteExpander]
              DataField = 'obs_venda'
              DataSource = D
            end
          end
        end
        object RLDBResult62: TRLDBResult
          Left = 651
          Top = 3
          Width = 101
          Height = 14
          Alignment = taRightJustify
          DataField = 'totcubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBResult63: TRLDBResult
          Left = 275
          Top = 3
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'qtd_cx'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel457: TRLLabel
          Left = 3
          Top = 3
          Width = 43
          Height = 14
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult64: TRLDBResult
          Left = 557
          Top = 3
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult65: TRLDBResult
          Left = 487
          Top = 3
          Width = 81
          Height = 14
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult66: TRLDBResult
          Left = 602
          Top = 2
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'pesoBrCx'
          DataSource = D
          DisplayMask = '#,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
      object RLBand59: TRLBand
        Left = 0
        Top = 70
        Width = 756
        Height = 139
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand59BeforePrint
        object RLLabel458: TRLLabel
          Left = 1
          Top = 0
          Width = 45
          Height = 15
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText358: TRLDBText
          Left = 46
          Top = 0
          Width = 13
          Height = 15
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText359: TRLDBText
          Left = 177
          Top = 0
          Width = 33
          Height = 15
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel459: TRLLabel
          Left = 140
          Top = 0
          Width = 37
          Height = 15
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel460: TRLLabel
          Left = 1
          Top = 16
          Width = 53
          Height = 15
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel461: TRLLabel
          Left = 1
          Top = 124
          Width = 28
          Height = 14
          Align = faBottomOnly
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel462: TRLLabel
          Left = 468
          Top = 124
          Width = 46
          Height = 14
          Align = faBottomOnly
          Caption = 'R$ Unid.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel463: TRLLabel
          Left = 519
          Top = 124
          Width = 49
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel464: TRLLabel
          Left = 733
          Top = 124
          Width = 19
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'M3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel465: TRLLabel
          Left = 1
          Top = 87
          Width = 85
          Height = 15
          Caption = 'COND. PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText360: TRLDBText
          Left = 588
          Top = 104
          Width = 162
          Height = 15
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel466: TRLLabel
          Left = 486
          Top = 104
          Width = 102
          Height = 15
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText361: TRLDBText
          Left = 714
          Top = 0
          Width = 36
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel467: TRLLabel
          Left = 541
          Top = 0
          Width = 99
          Height = 16
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel468: TRLLabel
          Left = 271
          Top = 0
          Width = 20
          Height = 15
          Caption = 'NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText362: TRLDBText
          Left = 291
          Top = 0
          Width = 13
          Height = 15
          DataField = 'nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel469: TRLLabel
          Left = 1
          Top = 33
          Width = 68
          Height = 15
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel85: TRLPanel
          Left = 71
          Top = 34
          Width = 679
          Height = 17
          object RLDBText363: TRLDBText
            Left = 0
            Top = 0
            Width = 56
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
          object RLDBText364: TRLDBText
            Left = 65
            Top = 0
            Width = 30
            Height = 17
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel470: TRLLabel
            Left = 56
            Top = 0
            Width = 9
            Height = 17
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel471: TRLLabel
            Left = 95
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText365: TRLDBText
            Left = 108
            Top = 0
            Width = 36
            Height = 17
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel472: TRLLabel
            Left = 144
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText366: TRLDBText
            Left = 157
            Top = 0
            Width = 43
            Height = 17
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel473: TRLLabel
            Left = 200
            Top = 0
            Width = 6
            Height = 17
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText367: TRLDBText
            Left = 206
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel474: TRLLabel
            Left = 225
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText368: TRLDBText
            Left = 238
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'CEP'
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
        object RLPanel86: TRLPanel
          Left = 61
          Top = 16
          Width = 689
          Height = 17
          object RLDBText369: TRLDBText
            Left = 0
            Top = 0
            Width = 52
            Height = 17
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText370: TRLDBText
            Left = 65
            Top = 0
            Width = 37
            Height = 17
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel475: TRLLabel
            Left = 52
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel476: TRLLabel
            Left = 102
            Top = 0
            Width = 46
            Height = 17
            Align = faLeft
            Caption = '  CNPJ: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText371: TRLDBText
            Left = 148
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'cpf'
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
        object RLLabel477: TRLLabel
          Left = 1
          Top = 70
          Width = 69
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel87: TRLPanel
          Left = 73
          Top = 69
          Width = 677
          Height = 17
          object RLDBText372: TRLDBText
            Left = 0
            Top = 0
            Width = 66
            Height = 17
            Align = faLeft
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText373: TRLDBText
            Left = 79
            Top = 0
            Width = 290
            Height = 17
            Align = faLeft
            AutoSize = False
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel478: TRLLabel
            Left = 66
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel479: TRLLabel
            Left = 375
            Top = 0
            Width = 61
            Height = 15
            Caption = 'PACOTES:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText374: TRLDBText
            Left = 436
            Top = 0
            Width = 116
            Height = 17
            AutoSize = False
            DataField = 'pacote'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel480: TRLLabel
            Left = 557
            Top = 0
            Width = 71
            Height = 15
            Caption = 'TIPO FRETE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText375: TRLDBText
            Left = 624
            Top = 0
            Width = 53
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'tipoFrete'
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
        object RLPanel88: TRLPanel
          Left = 71
          Top = 51
          Width = 679
          Height = 17
          object RLDBText376: TRLDBText
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
          object RLDBText377: TRLDBText
            Left = 35
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText378: TRLDBText
            Left = 70
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel481: TRLLabel
            Left = 23
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel482: TRLLabel
            Left = 58
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel483: TRLLabel
            Left = 93
            Top = 0
            Width = 47
            Height = 17
            Align = faLeft
            Caption = ' EMAIL: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText379: TRLDBText
            Left = 140
            Top = 0
            Width = 34
            Height = 17
            Align = faLeft
            DataField = 'email'
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
        object RLLabel484: TRLLabel
          Left = 0
          Top = 52
          Width = 64
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel485: TRLLabel
          Left = 297
          Top = 124
          Width = 46
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Volume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel486: TRLLabel
          Left = 349
          Top = 124
          Width = 46
          Height = 14
          Align = faBottomOnly
          Caption = 'Qtde DZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel487: TRLLabel
          Left = 401
          Top = 124
          Width = 47
          Height = 14
          Align = faBottomOnly
          Caption = 'Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel488: TRLLabel
          Left = 653
          Top = 124
          Width = 31
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel489: TRLLabel
          Left = 503
          Top = 87
          Width = 85
          Height = 15
          Caption = 'REDESPACHO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText380: TRLDBText
          Left = 588
          Top = 87
          Width = 162
          Height = 17
          AutoSize = False
          DataField = 'transp_vendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel490: TRLLabel
          Left = 1
          Top = 104
          Width = 90
          Height = 15
          Caption = 'FORMA PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel491: TRLLabel
          Left = 580
          Top = 124
          Width = 46
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel492: TRLLabel
          Left = 365
          Top = 0
          Width = 72
          Height = 15
          Caption = 'Emiss'#227'o NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText381: TRLDBText
          Left = 439
          Top = 0
          Width = 30
          Height = 15
          DataField = 'dt_nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLPanel89: TRLPanel
          Left = 92
          Top = 87
          Width = 385
          Height = 15
          object RLDBText382: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText383: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel493: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' COND. PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel90: TRLPanel
          Left = 92
          Top = 104
          Width = 385
          Height = 15
          object RLDBText384: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'foma_pgto2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText385: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'forma_pgto'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel494: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' FORMA PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLLabel495: TRLLabel
          Left = 52
          Top = 124
          Width = 57
          Height = 14
          Align = faBottomOnly
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand60: TRLBand
        Left = 0
        Top = 209
        Width = 756
        Height = 15
        AutoExpand = False
        AutoSize = True
        BeforePrint = RLBand60BeforePrint
        object RLDBText386: TRLDBText
          Left = 3
          Top = 0
          Width = 48
          Height = 14
          Align = faTopOnly
          AutoSize = False
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText387: TRLDBText
          Left = 401
          Top = 0
          Width = 47
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qtd'
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
        object RLDBText388: TRLDBText
          Left = 454
          Top = 0
          Width = 60
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
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
        object RLDBText389: TRLDBText
          Left = 619
          Top = 0
          Width = 65
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'pesoBrCx'
          DataSource = D
          DisplayMask = '#,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText390: TRLDBText
          Left = 705
          Top = 0
          Width = 47
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'cubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo17: TRLDBMemo
          Left = 52
          Top = 0
          Width = 240
          Height = 14
          Align = faTopOnly
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText391: TRLDBText
          Left = 297
          Top = 0
          Width = 46
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtd_cx'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText392: TRLDBText
          Left = 347
          Top = 0
          Width = 48
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtdDivisor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText393: TRLDBText
          Left = 519
          Top = 0
          Width = 49
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'descprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText394: TRLDBText
          Left = 589
          Top = 0
          Width = 37
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'totprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand61: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 70
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand61BeforePrint
        object RLDBText395: TRLDBText
          Left = 1
          Top = 0
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
        object RLSystemInfo17: TRLSystemInfo
          Left = 578
          Top = 3
          Width = 172
          Height = 15
          Alignment = taRightJustify
          Info = itNow
          Text = 'Relat'#243'rio Impresso em:  '
        end
        object lTelefone3: TRLLabel
          Left = 458
          Top = 16
          Width = 114
          Height = 16
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText396: TRLDBText
          Left = 2
          Top = 16
          Width = 48
          Height = 16
          DataField = 'Razao'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLPanel91: TRLPanel
          Left = 3
          Top = 32
          Width = 747
          Height = 17
          object RLDBText397: TRLDBText
            Left = 0
            Top = 0
            Width = 72
            Height = 17
            Align = faLeft
            DataField = 'Endereco'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText398: TRLDBText
            Left = 81
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'Num'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel496: TRLLabel
            Left = 72
            Top = 0
            Width = 9
            Height = 17
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel497: TRLLabel
            Left = 109
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText399: TRLDBText
            Left = 122
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'BAIRRO'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel498: TRLLabel
            Left = 170
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText400: TRLDBText
            Left = 183
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'Cidade'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel499: TRLLabel
            Left = 231
            Top = 0
            Width = 6
            Height = 17
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText401: TRLDBText
            Left = 237
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'UF'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel500: TRLLabel
            Left = 256
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText402: TRLDBText
            Left = 269
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'CEP'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLLabel501: TRLLabel
          Left = 310
          Top = 50
          Width = 135
          Height = 19
          Align = faCenterBottom
          Alignment = taRightJustify
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand62: TRLBand
        Left = 0
        Top = 355
        Width = 756
        Height = 100
        AutoExpand = False
        BandType = btFooter
        object RLPanel92: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 48
          Align = faTop
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel502: TRLLabel
            Left = 14
            Top = 10
            Width = 318
            Height = 15
            Caption = 'FAVOR CONFERIR A MERCADORIA NO ATO DA ENTREGA,'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel503: TRLLabel
            Left = 29
            Top = 25
            Width = 275
            Height = 15
            Caption = 'N'#195'O ACEITAMOS RECLAMA'#199#213'ES POSTERIORES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel504: TRLLabel
            Left = 370
            Top = 9
            Width = 348
            Height = 15
            Alignment = taRightJustify
            Caption = 'Rg: _________________     Data Entrega: ____/____/_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel505: TRLLabel
            Left = 372
            Top = 32
            Width = 346
            Height = 15
            Alignment = taRightJustify
            Caption = 'Ass.:_____________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object RLSubDetail5: TRLSubDetail
      Left = 19
      Top = 515
      Width = 756
      Height = 424
      DataSource = D
      AfterPrint = Sub2AfterPrint
      object RLAngleLabel6: TRLAngleLabel
        Left = 0
        Top = -252
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
      object RLBand63: TRLBand
        Left = 0
        Top = 238
        Width = 756
        Height = 183
        AutoExpand = False
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        IntegralHeight = False
        ParentFont = False
        BeforePrint = RLBand63BeforePrint
        object RLDraw8: TRLDraw
          Left = 474
          Top = 18
          Width = 278
          Height = 55
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Pen.Style = psClear
        end
        object RLLabel506: TRLLabel
          Left = 479
          Top = 22
          Width = 140
          Height = 15
          Caption = 'TOTAL DOS PRODUTOS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult67: TRLDBResult
          Left = 673
          Top = 1
          Width = 79
          Height = 14
          Alignment = taRightJustify
          DataField = 'cubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Info = riSum
          Text = ''
        end
        object RLDBResult68: TRLDBResult
          Left = 392
          Top = 1
          Width = 56
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Info = riSum
          Text = ''
        end
        object RLLabel507: TRLLabel
          Left = 549
          Top = 38
          Width = 70
          Height = 15
          Caption = 'DESCONTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult69: TRLDBResult
          Left = 643
          Top = 38
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
        object RLLabel508: TRLLabel
          Left = 533
          Top = 54
          Width = 86
          Height = 15
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult70: TRLDBResult
          Left = 669
          Top = 54
          Width = 81
          Height = 15
          Alignment = taRightJustify
          DataField = 'Total'
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
        object RLPanel93: TRLPanel
          Left = 0
          Top = 78
          Width = 756
          Height = 57
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel509: TRLLabel
            Left = 0
            Top = 23
            Width = 756
            Height = 16
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Docto                        Vencto                      Valor  ' +
              '                        '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo9: TRLMemo
            Left = 0
            Top = 39
            Width = 756
            Height = 15
            Align = faTop
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLPanel94: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 23
            Align = faTop
            Behavior = [beSiteExpander]
            object RLLabel510: TRLLabel
              Left = 1
              Top = 5
              Width = 29
              Height = 15
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo18: TRLDBMemo
              Left = 29
              Top = 6
              Width = 721
              Height = 14
              Behavior = [beSiteExpander]
              DataField = 'obs_venda'
              DataSource = D
            end
          end
        end
        object RLPanel95: TRLPanel
          Left = 0
          Top = 135
          Width = 756
          Height = 48
          Align = faBottom
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel511: TRLLabel
            Left = 17
            Top = 10
            Width = 318
            Height = 15
            Caption = 'FAVOR CONFERIR A MERCADORIA NO ATO DA ENTREGA,'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel512: TRLLabel
            Left = 35
            Top = 25
            Width = 275
            Height = 15
            Caption = 'N'#195'O ACEITAMOS RECLAMA'#199#213'ES POSTERIORES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel513: TRLLabel
            Left = 369
            Top = 9
            Width = 348
            Height = 15
            Alignment = taRightJustify
            Caption = 'Rg: _________________     Data Entrega: ____/____/_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel514: TRLLabel
            Left = 371
            Top = 32
            Width = 346
            Height = 15
            Alignment = taRightJustify
            Caption = 'Ass.:_____________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLDBResult71: TRLDBResult
          Left = 477
          Top = 1
          Width = 91
          Height = 14
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#,##0.00'
          Text = ''
        end
        object RLDBResult72: TRLDBResult
          Left = 275
          Top = 2
          Width = 68
          Height = 14
          Alignment = taRightJustify
          DataField = 'qtd_cx'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Info = riSum
          Text = ''
        end
        object RLLabel515: TRLLabel
          Left = 3
          Top = 1
          Width = 43
          Height = 14
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult73: TRLDBResult
          Left = 624
          Top = 22
          Width = 126
          Height = 15
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult74: TRLDBResult
          Left = 600
          Top = 1
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'pesoBrCx'
          DataSource = D
          DisplayMask = '#,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult75: TRLDBResult
          Left = 557
          Top = 1
          Width = 69
          Height = 14
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
      object RLBand64: TRLBand
        Left = 0
        Top = 88
        Width = 756
        Height = 135
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel516: TRLLabel
          Left = 1
          Top = 0
          Width = 45
          Height = 15
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText403: TRLDBText
          Left = 46
          Top = 0
          Width = 13
          Height = 15
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText404: TRLDBText
          Left = 175
          Top = 0
          Width = 33
          Height = 15
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel517: TRLLabel
          Left = 136
          Top = 0
          Width = 37
          Height = 15
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel518: TRLLabel
          Left = 1
          Top = 20
          Width = 53
          Height = 13
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel523: TRLLabel
          Left = 1
          Top = 86
          Width = 85
          Height = 13
          Caption = 'COND. PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText405: TRLDBText
          Left = 590
          Top = 101
          Width = 160
          Height = 13
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel524: TRLLabel
          Left = 487
          Top = 101
          Width = 102
          Height = 13
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText406: TRLDBText
          Left = 714
          Top = 0
          Width = 36
          Height = 16
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          DisplayMask = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel525: TRLLabel
          Left = 520
          Top = 0
          Width = 99
          Height = 16
          Caption = 'TOTAL VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel526: TRLLabel
          Left = 277
          Top = 0
          Width = 20
          Height = 15
          Caption = 'NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText407: TRLDBText
          Left = 295
          Top = 0
          Width = 13
          Height = 15
          DataField = 'nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel527: TRLLabel
          Left = 1
          Top = 36
          Width = 68
          Height = 13
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel96: TRLPanel
          Left = 72
          Top = 36
          Width = 678
          Height = 15
          object RLDBText408: TRLDBText
            Left = 0
            Top = 0
            Width = 56
            Height = 15
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
          object RLDBText409: TRLDBText
            Left = 65
            Top = 0
            Width = 30
            Height = 15
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel528: TRLLabel
            Left = 56
            Top = 0
            Width = 9
            Height = 15
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel529: TRLLabel
            Left = 95
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText410: TRLDBText
            Left = 108
            Top = 0
            Width = 36
            Height = 15
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel530: TRLLabel
            Left = 144
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText411: TRLDBText
            Left = 157
            Top = 0
            Width = 43
            Height = 15
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel531: TRLLabel
            Left = 200
            Top = 0
            Width = 6
            Height = 15
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText412: TRLDBText
            Left = 206
            Top = 0
            Width = 19
            Height = 15
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel532: TRLLabel
            Left = 225
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText413: TRLDBText
            Left = 238
            Top = 0
            Width = 28
            Height = 15
            Align = faLeft
            DataField = 'CEP'
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
        object RLPanel97: TRLPanel
          Left = 61
          Top = 20
          Width = 689
          Height = 15
          object RLDBText414: TRLDBText
            Left = 0
            Top = 0
            Width = 52
            Height = 15
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText415: TRLDBText
            Left = 65
            Top = 0
            Width = 37
            Height = 15
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel533: TRLLabel
            Left = 52
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel534: TRLLabel
            Left = 102
            Top = 0
            Width = 50
            Height = 15
            Align = faLeft
            Caption = ' - CNPJ: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText416: TRLDBText
            Left = 152
            Top = 0
            Width = 19
            Height = 15
            Align = faLeft
            DataField = 'cpf'
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
        object RLLabel535: TRLLabel
          Left = 1
          Top = 70
          Width = 69
          Height = 13
          Behavior = [beSiteExpander]
          Caption = 'VENDEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel98: TRLPanel
          Left = 73
          Top = 70
          Width = 677
          Height = 15
          object RLDBText417: TRLDBText
            Left = 0
            Top = 0
            Width = 66
            Height = 15
            Align = faLeft
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText418: TRLDBText
            Left = 79
            Top = 0
            Width = 291
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel536: TRLLabel
            Left = 66
            Top = 0
            Width = 13
            Height = 15
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel537: TRLLabel
            Left = 376
            Top = 0
            Width = 61
            Height = 15
            Caption = 'PACOTES:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText419: TRLDBText
            Left = 439
            Top = 0
            Width = 111
            Height = 17
            AutoSize = False
            DataField = 'pacote'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel538: TRLLabel
            Left = 552
            Top = 0
            Width = 71
            Height = 15
            Caption = 'TIPO FRETE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText420: TRLDBText
            Left = 624
            Top = 0
            Width = 53
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'tipoFrete'
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
        object RLLabel539: TRLLabel
          Left = -1
          Top = 53
          Width = 64
          Height = 15
          Behavior = [beSiteExpander]
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel99: TRLPanel
          Left = 68
          Top = 52
          Width = 682
          Height = 17
          object RLDBText421: TRLDBText
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
          object RLDBText422: TRLDBText
            Left = 35
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText423: TRLDBText
            Left = 70
            Top = 0
            Width = 23
            Height = 17
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel540: TRLLabel
            Left = 23
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel541: TRLLabel
            Left = 58
            Top = 0
            Width = 12
            Height = 17
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel542: TRLLabel
            Left = 93
            Top = 0
            Width = 54
            Height = 17
            Align = faLeft
            Caption = ' - EMAIL: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText424: TRLDBText
            Left = 147
            Top = 0
            Width = 34
            Height = 17
            Align = faLeft
            DataField = 'email'
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
        object RLLabel547: TRLLabel
          Left = 504
          Top = 86
          Width = 85
          Height = 15
          Caption = 'REDESPACHO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText425: TRLDBText
          Left = 590
          Top = 86
          Width = 160
          Height = 15
          AutoSize = False
          DataField = 'transp_vendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel548: TRLLabel
          Left = 1
          Top = 101
          Width = 90
          Height = 15
          Caption = 'FORMA PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel550: TRLLabel
          Left = 375
          Top = 0
          Width = 72
          Height = 15
          Caption = 'Emiss'#227'o NF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText426: TRLDBText
          Left = 447
          Top = 0
          Width = 30
          Height = 15
          DataField = 'dt_nf'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLPanel100: TRLPanel
          Left = 92
          Top = 86
          Width = 385
          Height = 15
          object RLDBText427: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText428: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'desCond2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel551: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' COND. PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel101: TRLPanel
          Left = 92
          Top = 101
          Width = 385
          Height = 15
          object RLDBText429: TRLDBText
            Left = 228
            Top = 0
            Width = 133
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'foma_pgto2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText430: TRLDBText
            Left = 0
            Top = 0
            Width = 125
            Height = 15
            Align = faLeft
            AutoSize = False
            DataField = 'forma_pgto'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel552: TRLLabel
            Left = 125
            Top = 0
            Width = 103
            Height = 15
            Align = faLeft
            Caption = ' FORMA PAGTO2: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLLabel519: TRLLabel
          Left = 2
          Top = 120
          Width = 28
          Height = 14
          Align = faBottomOnly
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel520: TRLLabel
          Left = 52
          Top = 120
          Width = 57
          Height = 14
          Align = faBottomOnly
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel521: TRLLabel
          Left = 297
          Top = 120
          Width = 46
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Volume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel522: TRLLabel
          Left = 349
          Top = 120
          Width = 46
          Height = 14
          Align = faBottomOnly
          Caption = 'Qtde DZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel543: TRLLabel
          Left = 401
          Top = 120
          Width = 47
          Height = 14
          Align = faBottomOnly
          Caption = 'Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel544: TRLLabel
          Left = 468
          Top = 120
          Width = 46
          Height = 14
          Align = faBottomOnly
          Caption = 'R$ Unid.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel545: TRLLabel
          Left = 519
          Top = 120
          Width = 49
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel546: TRLLabel
          Left = 580
          Top = 120
          Width = 46
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel549: TRLLabel
          Left = 653
          Top = 120
          Width = 31
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel559: TRLLabel
          Left = 733
          Top = 120
          Width = 19
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'M3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand65: TRLBand
        Left = 0
        Top = 223
        Width = 756
        Height = 15
        AutoExpand = False
        AutoSize = True
        object RLDBText431: TRLDBText
          Left = 687
          Top = 0
          Width = 65
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'cubagem'
          DataSource = D
          DisplayMask = '#,##0.000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText432: TRLDBText
          Left = 3
          Top = 0
          Width = 48
          Height = 14
          Align = faTopOnly
          AutoSize = False
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText433: TRLDBText
          Left = 401
          Top = 0
          Width = 47
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qtd'
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
        object RLDBText434: TRLDBText
          Left = 454
          Top = 0
          Width = 60
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
        object RLDBText435: TRLDBText
          Left = 571
          Top = 0
          Width = 55
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'totprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo19: TRLDBMemo
          Left = 52
          Top = 0
          Width = 240
          Height = 14
          Align = faTopOnly
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText436: TRLDBText
          Left = 297
          Top = 0
          Width = 46
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtd_cx'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText437: TRLDBText
          Left = 520
          Top = 0
          Width = 48
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'descprod'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText438: TRLDBText
          Left = 629
          Top = 0
          Width = 55
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'pesoBrCx'
          DataSource = D
          DisplayMask = '#,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText439: TRLDBText
          Left = 349
          Top = 0
          Width = 46
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'qtdDivisor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand66: TRLBand
        Left = 0
        Top = 10
        Width = 756
        Height = 78
        AutoExpand = False
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand66BeforePrint
        object RLSystemInfo18: TRLSystemInfo
          Left = 578
          Top = 3
          Width = 172
          Height = 15
          Alignment = taRightJustify
          Info = itNow
          Text = 'Relat'#243'rio Impresso em:  '
        end
        object RLLabel553: TRLLabel
          Left = 310
          Top = 58
          Width = 135
          Height = 19
          Align = faCenterBottom
          Alignment = taRightJustify
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText440: TRLDBText
          Left = 1
          Top = 2
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
        object RLDBText441: TRLDBText
          Left = 2
          Top = 18
          Width = 48
          Height = 16
          DataField = 'Razao'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLPanel102: TRLPanel
          Left = 3
          Top = 34
          Width = 747
          Height = 17
          object RLDBText442: TRLDBText
            Left = 0
            Top = 0
            Width = 72
            Height = 17
            Align = faLeft
            DataField = 'Endereco'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText443: TRLDBText
            Left = 81
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'Num'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel554: TRLLabel
            Left = 72
            Top = 0
            Width = 9
            Height = 17
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel555: TRLLabel
            Left = 109
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText444: TRLDBText
            Left = 122
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'BAIRRO'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel556: TRLLabel
            Left = 170
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText445: TRLDBText
            Left = 183
            Top = 0
            Width = 48
            Height = 17
            Align = faLeft
            DataField = 'Cidade'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel557: TRLLabel
            Left = 231
            Top = 0
            Width = 6
            Height = 17
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText446: TRLDBText
            Left = 237
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'UF'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel558: TRLLabel
            Left = 256
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText447: TRLDBText
            Left = 269
            Top = 0
            Width = 28
            Height = 17
            Align = faLeft
            DataField = 'CEP'
            DataSource = DM.dParametro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object lTelefone4: TRLLabel
          Left = 458
          Top = 18
          Width = 114
          Height = 16
          Caption = 'Extrato da Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand67: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 10
        BandType = btHeader
      end
    end
  end
  object rpImpPedidoDZ: TRLReport
    Left = 8
    Top = 6937
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
    object RLAngleLabel7: TRLAngleLabel
      Left = 22
      Top = 41
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
    object RLBand73: TRLBand
      Left = 19
      Top = 267
      Width = 756
      Height = 154
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand73AfterPrint
      BeforePrint = RLBand73BeforePrint
      object RLDraw10: TRLDraw
        Left = 474
        Top = 16
        Width = 278
        Height = 84
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        Pen.Style = psClear
      end
      object RLLabel413: TRLLabel
        Left = 490
        Top = 18
        Width = 129
        Height = 14
        Alignment = taRightJustify
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult83: TRLDBResult
        Left = 625
        Top = 18
        Width = 125
        Height = 14
        Alignment = taRightJustify
        DataField = 'TotalBrutoProd'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult84: TRLDBResult
        Left = 400
        Top = 1
        Width = 52
        Height = 14
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'QTD'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel562: TRLLabel
        Left = 540
        Top = 33
        Width = 79
        Height = 14
        Alignment = taRightJustify
        Caption = '(-) DESCONTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult85: TRLDBResult
        Left = 625
        Top = 33
        Width = 125
        Height = 14
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel563: TRLLabel
        Left = 533
        Top = 82
        Width = 86
        Height = 15
        Alignment = taRightJustify
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult86: TRLDBResult
        Left = 625
        Top = 82
        Width = 125
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total'
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
      object RLPanel110: TRLPanel
        Left = 0
        Top = 104
        Width = 756
        Height = 50
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLLabel568: TRLLabel
          Left = 0
          Top = 18
          Width = 756
          Height = 16
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 
            'DOCUMENTO                               VENCIMENTO          VALO' +
            'R          PAGAMENTO       VALOR PAGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLMemo10: TRLMemo
          Left = 0
          Top = 34
          Width = 756
          Height = 14
          Align = faTop
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object RLPanel111: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 18
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel569: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo22: TRLDBMemo
            Left = 36
            Top = 2
            Width = 679
            Height = 15
            Behavior = [beSiteExpander]
            DataField = 'Obs'
            DataSource = D
          end
        end
      end
      object RLDBResult87: TRLDBResult
        Left = 653
        Top = 1
        Width = 101
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'totcubagem'
        DataSource = D
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBResult88: TRLDBResult
        Left = 348
        Top = 1
        Width = 48
        Height = 14
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'qtd_cx'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel570: TRLLabel
        Left = 3
        Top = 1
        Width = 43
        Height = 14
        Align = faTopOnly
        Caption = 'TOTAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult89: TRLDBResult
        Left = 588
        Top = 1
        Width = 46
        Height = 14
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'volume'
        DataSource = D
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult90: TRLDBResult
        Left = 590
        Top = 1
        Width = 97
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'totPesoBruto'
        DataSource = D
        DisplayMask = '#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult91: TRLDBResult
        Left = 478
        Top = 1
        Width = 106
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'TotalBrutoProd'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel696: TRLLabel
        Left = 542
        Top = 48
        Width = 77
        Height = 14
        Alignment = taRightJustify
        Caption = '(+) VALOR IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult104: TRLDBResult
        Left = 627
        Top = 48
        Width = 123
        Height = 14
        Alignment = taRightJustify
        DataField = 'totipi'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel773: TRLLabel
        Left = 523
        Top = 63
        Width = 96
        Height = 14
        Alignment = taRightJustify
        Caption = '(+) VALOR FRETE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult105: TRLDBResult
        Left = 638
        Top = 63
        Width = 112
        Height = 14
        Alignment = taRightJustify
        DataField = 'v_adicional'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand74: TRLBand
      Left = 19
      Top = 108
      Width = 756
      Height = 144
      AutoExpand = False
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand74BeforePrint
      object RLDraw13: TRLDraw
        Left = 0
        Top = 129
        Width = 754
        Height = 14
        Brush.Color = 15395562
        Pen.Style = psClear
      end
      object RLLabel571: TRLLabel
        Left = 1
        Top = 0
        Width = 45
        Height = 15
        Caption = 'VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText336: TRLDBText
        Left = 46
        Top = 0
        Width = 13
        Height = 15
        DataField = 'Id'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText474: TRLDBText
        Left = 177
        Top = 0
        Width = 33
        Height = 15
        DataField = 'DATA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel597: TRLLabel
        Left = 140
        Top = 0
        Width = 37
        Height = 15
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel598: TRLLabel
        Left = 1
        Top = 16
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel599: TRLLabel
        Left = 33
        Top = 129
        Width = 24
        Height = 14
        Align = faBottomOnly
        Caption = 'Ref.'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel600: TRLLabel
        Left = 400
        Top = 129
        Width = 52
        Height = 14
        Align = faBottomOnly
        Caption = 'Qtde P'#231's'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel601: TRLLabel
        Left = 478
        Top = 129
        Width = 43
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'R$ Unit.'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel602: TRLLabel
        Left = 538
        Top = 129
        Width = 46
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'R$ Total'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText475: TRLDBText
        Left = 588
        Top = 112
        Width = 162
        Height = 13
        AutoSize = False
        DataField = 'PrazoEntrega'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel604: TRLLabel
        Left = 491
        Top = 112
        Width = 95
        Height = 13
        Caption = 'PRAZO ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText476: TRLDBText
        Left = 714
        Top = 0
        Width = 36
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = D
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel605: TRLLabel
        Left = 541
        Top = 0
        Width = 99
        Height = 16
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel606: TRLLabel
        Left = 271
        Top = 0
        Width = 20
        Height = 15
        Caption = 'NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText477: TRLDBText
        Left = 291
        Top = 0
        Width = 13
        Height = 15
        DataField = 'nf'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel607: TRLLabel
        Left = 1
        Top = 33
        Width = 61
        Height = 14
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel112: TRLPanel
        Left = 65
        Top = 33
        Width = 685
        Height = 14
        object RLDBText478: TRLDBText
          Left = 0
          Top = 0
          Width = 49
          Height = 14
          Align = faLeft
          DataField = 'Endereco'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText479: TRLDBText
          Left = 58
          Top = 0
          Width = 24
          Height = 14
          Align = faLeft
          DataField = 'Num'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel608: TRLLabel
          Left = 49
          Top = 0
          Width = 9
          Height = 14
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel609: TRLLabel
          Left = 82
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText480: TRLDBText
          Left = 95
          Top = 0
          Width = 32
          Height = 14
          Align = faLeft
          DataField = 'Bairro'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel610: TRLLabel
          Left = 127
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText481: TRLDBText
          Left = 140
          Top = 0
          Width = 36
          Height = 14
          Align = faLeft
          DataField = 'Cidade'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel611: TRLLabel
          Left = 176
          Top = 0
          Width = 6
          Height = 14
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText482: TRLDBText
          Left = 182
          Top = 0
          Width = 16
          Height = 14
          Align = faLeft
          DataField = 'UF'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel612: TRLLabel
          Left = 198
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText483: TRLDBText
          Left = 211
          Top = 0
          Width = 22
          Height = 14
          Align = faLeft
          DataField = 'CEP'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel618: TRLLabel
          Left = 566
          Top = 0
          Width = 66
          Height = 14
          Align = faRight
          Caption = 'TIPO FRETE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText490: TRLDBText
          Left = 632
          Top = 0
          Width = 53
          Height = 14
          Align = faRight
          AutoSize = False
          DataField = 'tipoFrete'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel113: TRLPanel
        Left = 61
        Top = 16
        Width = 689
        Height = 17
        object RLDBText484: TRLDBText
          Left = 0
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText485: TRLDBText
          Left = 65
          Top = 0
          Width = 424
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'razao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel613: TRLLabel
          Left = 52
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel614: TRLLabel
          Left = 489
          Top = 0
          Width = 46
          Height = 17
          Align = faLeft
          Caption = '  CNPJ: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText486: TRLDBText
          Left = 535
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'cpf'
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
      object RLLabel615: TRLLabel
        Left = 1
        Top = 65
        Width = 62
        Height = 14
        Behavior = [beSiteExpander]
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel114: TRLPanel
        Left = 65
        Top = 65
        Width = 685
        Height = 14
        BeforePrint = RLPanel114BeforePrint
        object RLDBText487: TRLDBText
          Left = 0
          Top = 0
          Width = 59
          Height = 14
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText488: TRLDBText
          Left = 72
          Top = 0
          Width = 55
          Height = 14
          Align = faLeft
          DataField = 'nomeVend'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel616: TRLLabel
          Left = 59
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel667: TRLLabel
          Left = 127
          Top = 0
          Width = 103
          Height = 14
          Align = faLeft
          Behavior = [beSiteExpander]
          Caption = '     GERENTE CIAL:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText537: TRLDBText
          Left = 230
          Top = 0
          Width = 48
          Height = 14
          Align = faLeft
          DataField = 'idgerente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel668: TRLLabel
          Left = 278
          Top = 0
          Width = 13
          Height = 14
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText538: TRLDBText
          Left = 291
          Top = 0
          Width = 47
          Height = 14
          Align = faLeft
          DataField = 'nomeGer'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel663: TRLLabel
          Left = 551
          Top = 0
          Width = 76
          Height = 14
          Align = faRight
          Caption = 'PED. CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText521: TRLDBText
          Left = 627
          Top = 0
          Width = 58
          Height = 14
          Align = faRight
          DataField = 'seq_cliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel115: TRLPanel
        Left = 65
        Top = 51
        Width = 685
        Height = 14
        object RLDBText491: TRLDBText
          Left = 0
          Top = 0
          Width = 20
          Height = 14
          Align = faLeft
          DataField = 'tel1'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText492: TRLDBText
          Left = 32
          Top = 0
          Width = 20
          Height = 14
          Align = faLeft
          DataField = 'tel2'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText493: TRLDBText
          Left = 64
          Top = 0
          Width = 20
          Height = 14
          Align = faLeft
          DataField = 'tel3'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel619: TRLLabel
          Left = 20
          Top = 0
          Width = 12
          Height = 14
          Align = faLeft
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel620: TRLLabel
          Left = 52
          Top = 0
          Width = 12
          Height = 14
          Align = faLeft
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel621: TRLLabel
          Left = 84
          Top = 0
          Width = 46
          Height = 14
          Align = faLeft
          Caption = ' EMAIL: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText494: TRLDBText
          Left = 130
          Top = 0
          Width = 27
          Height = 14
          Align = faLeft
          DataField = 'email'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel622: TRLLabel
        Left = 0
        Top = 50
        Width = 59
        Height = 14
        Behavior = [beSiteExpander]
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel623: TRLLabel
        Left = 734
        Top = 129
        Width = 20
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'm3'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel624: TRLLabel
        Left = 348
        Top = 129
        Width = 48
        Height = 14
        Align = faBottomOnly
        Caption = 'Qtde Dz.'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel625: TRLLabel
        Left = 588
        Top = 129
        Width = 46
        Height = 14
        Align = faBottomOnly
        Caption = 'Volume'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel627: TRLLabel
        Left = 509
        Top = 97
        Width = 77
        Height = 14
        Caption = 'REDESPACHO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText495: TRLDBText
        Left = 588
        Top = 97
        Width = 162
        Height = 14
        AutoSize = False
        DataField = 'NomeD'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel629: TRLLabel
        Left = 656
        Top = 129
        Width = 31
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Peso'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel630: TRLLabel
        Left = 365
        Top = 0
        Width = 72
        Height = 15
        Caption = 'Emiss'#227'o NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText496: TRLDBText
        Left = 439
        Top = 0
        Width = 30
        Height = 15
        DataField = 'dt_nf'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel116: TRLPanel
        Left = 1
        Top = 81
        Width = 474
        Height = 14
        object RLDBText497: TRLDBText
          Left = 304
          Top = 0
          Width = 144
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'desCond'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLDBText498: TRLDBText
          Left = 89
          Top = 0
          Width = 126
          Height = 14
          Align = faLeft
          AutoSize = False
          DataField = 'desCond2'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel631: TRLLabel
          Left = 0
          Top = 0
          Width = 89
          Height = 14
          Align = faLeft
          Caption = 'COND. PAGTO2: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel603: TRLLabel
          Left = 215
          Top = 0
          Width = 89
          Height = 14
          Align = faLeft
          Caption = '   COND. PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel117: TRLPanel
        Left = 0
        Top = 97
        Width = 475
        Height = 13
        object RLDBText499: TRLDBText
          Left = 95
          Top = 0
          Width = 127
          Height = 13
          Align = faLeft
          AutoSize = False
          DataField = 'foma_pgto2'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLDBText500: TRLDBText
          Left = 317
          Top = 0
          Width = 144
          Height = 13
          Align = faLeft
          AutoSize = False
          DataField = 'forma_pgto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ' '
        end
        object RLLabel632: TRLLabel
          Left = 0
          Top = 0
          Width = 95
          Height = 13
          Align = faLeft
          Caption = 'FORMA PAGTO2: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel628: TRLLabel
          Left = 222
          Top = 0
          Width = 95
          Height = 13
          Align = faLeft
          Caption = '   FORMA PAGTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLLabel644: TRLLabel
        Left = 74
        Top = 129
        Width = 57
        Height = 14
        Align = faBottomOnly
        Caption = 'Descri'#231#227'o'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel626: TRLLabel
        Left = 0
        Top = 129
        Width = 27
        Height = 14
        Align = faBottomOnly
        Caption = 'Seq.'
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel617: TRLLabel
        Left = 0
        Top = 112
        Width = 56
        Height = 14
        Caption = 'USU'#193'RIO: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText489: TRLDBText
        Left = 59
        Top = 112
        Width = 51
        Height = 14
        AutoSize = False
        DataField = 'nomefunc'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel721: TRLLabel
        Left = 477
        Top = 81
        Width = 109
        Height = 14
        Caption = 'TRANSPORTADORA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText591: TRLDBText
        Left = 588
        Top = 81
        Width = 162
        Height = 14
        AutoSize = False
        DataField = 'NomeT'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel885: TRLLabel
        Left = 275
        Top = 112
        Width = 42
        Height = 14
        Caption = 'Tabela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText670: TRLDBText
        Left = 317
        Top = 112
        Width = 158
        Height = 14
        AutoSize = False
        DataField = 'destabela'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand75: TRLBand
      Left = 19
      Top = 252
      Width = 756
      Height = 15
      AutoExpand = False
      AutoSize = True
      BeforePrint = RLBand75BeforePrint
      object RLDBText501: TRLDBText
        Left = 33
        Top = 0
        Width = 38
        Height = 14
        Align = faTopOnly
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
      object RLDBText502: TRLDBText
        Left = 400
        Top = 0
        Width = 52
        Height = 14
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'Qtd'
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
      object RLDBText503: TRLDBText
        Left = 500
        Top = 0
        Width = 21
        Height = 14
        Align = faTopOnly
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
      object RLDBText504: TRLDBText
        Left = 510
        Top = 0
        Width = 74
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'TotalBrutoProd'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText505: TRLDBText
        Left = 707
        Top = 0
        Width = 47
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'cubagem'
        DataSource = D
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo23: TRLDBMemo
        Left = 74
        Top = 0
        Width = 272
        Height = 14
        Align = faTopOnly
        Behavior = [beSiteExpander]
        DataField = 'descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText506: TRLDBText
        Left = 348
        Top = 0
        Width = 48
        Height = 15
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'qtd_cx'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText507: TRLDBText
        Left = 588
        Top = 0
        Width = 46
        Height = 15
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'volume'
        DataSource = D
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText509: TRLDBText
        Left = 622
        Top = 0
        Width = 65
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'totPesoBruto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object lSeq: TRLLabel
        Left = 0
        Top = 0
        Width = 28
        Height = 14
        Align = faTopOnly
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = clGray
        Caption = 'seq'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand76: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 70
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand76BeforePrint
      object RLDBText510: TRLDBText
        Left = 1
        Top = 0
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
      object RLSystemInfo21: TRLSystemInfo
        Left = 578
        Top = 3
        Width = 172
        Height = 15
        Alignment = taRightJustify
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel633: TRLLabel
        Left = 297
        Top = 16
        Width = 114
        Height = 16
        Caption = 'Extrato da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText511: TRLDBText
        Left = 2
        Top = 16
        Width = 48
        Height = 16
        DataField = 'Razao'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLPanel118: TRLPanel
        Left = 3
        Top = 32
        Width = 747
        Height = 17
        object RLDBText512: TRLDBText
          Left = 0
          Top = 0
          Width = 72
          Height = 17
          Align = faLeft
          DataField = 'Endereco'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText513: TRLDBText
          Left = 81
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel634: TRLLabel
          Left = 72
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel635: TRLLabel
          Left = 109
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText514: TRLDBText
          Left = 122
          Top = 0
          Width = 48
          Height = 17
          Align = faLeft
          DataField = 'BAIRRO'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel636: TRLLabel
          Left = 170
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText515: TRLDBText
          Left = 183
          Top = 0
          Width = 48
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel637: TRLLabel
          Left = 231
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText516: TRLDBText
          Left = 237
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel638: TRLLabel
          Left = 256
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText517: TRLDBText
          Left = 269
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel639: TRLLabel
        Left = 310
        Top = 50
        Width = 135
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Extrato da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand77: TRLBand
      Left = 19
      Top = 421
      Width = 756
      Height = 53
      AutoExpand = False
      BandType = btFooter
      object RLPanel119: TRLPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 48
        Align = faTop
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel640: TRLLabel
          Left = 14
          Top = 10
          Width = 318
          Height = 15
          Caption = 'FAVOR CONFERIR A MERCADORIA NO ATO DA ENTREGA,'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel641: TRLLabel
          Left = 29
          Top = 25
          Width = 275
          Height = 15
          Caption = 'N'#195'O ACEITAMOS RECLAMA'#199#213'ES POSTERIORES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel642: TRLLabel
          Left = 370
          Top = 9
          Width = 348
          Height = 15
          Alignment = taRightJustify
          Caption = 'Rg: _________________     Data Entrega: ____/____/_______'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel643: TRLLabel
          Left = 372
          Top = 32
          Width = 346
          Height = 15
          Alignment = taRightJustify
          Caption = 'Ass.:_____________________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object rpImpSepSemValor: TRLReport
    Left = 837
    Top = 4633
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
    object RLBand86: TRLBand
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
      object RLDBText541: TRLDBText
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
      object RLSystemInfo25: TRLSystemInfo
        Left = 1
        Top = 19
        Width = 172
        Height = 15
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel680: TRLLabel
        Left = 300
        Top = 33
        Width = 156
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Folha de Separa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand87: TRLBand
      Left = 19
      Top = 245
      Width = 756
      Height = 105
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult97: TRLDBResult
        Left = 669
        Top = 2
        Width = 60
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLPanel122: TRLPanel
        Left = 0
        Top = 79
        Width = 756
        Height = 26
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLPanel123: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 22
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel685: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo24: TRLDBMemo
            Left = 33
            Top = 2
            Width = 717
            Height = 17
            Behavior = [beSiteExpander]
            DataField = 'obs_venda'
            DataSource = D
          end
        end
      end
      object RLDBResult100: TRLDBResult
        Left = 43
        Top = 2
        Width = 44
        Height = 15
        Alignment = taRightJustify
        DataField = 'Id'
        DataSource = D
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = ''
      end
      object RLLabel686: TRLLabel
        Left = 1
        Top = 2
        Width = 39
        Height = 15
        Caption = 'ITENS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel683: TRLLabel
        Left = 584
        Top = 2
        Width = 48
        Height = 15
        Alignment = taRightJustify
        Caption = 'TOTAIS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand88: TRLBand
      Left = 19
      Top = 91
      Width = 756
      Height = 133
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDraw12: TRLDraw
        Left = 0
        Top = 115
        Width = 755
        Height = 16
        Brush.Color = 15132390
        Color = 15132390
        ParentColor = False
        Pen.Style = psClear
        Transparent = False
      end
      object RLLabel687: TRLLabel
        Left = 1
        Top = 0
        Width = 45
        Height = 15
        Caption = 'VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText542: TRLDBText
        Left = 46
        Top = 0
        Width = 13
        Height = 15
        DataField = 'Id'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText543: TRLDBText
        Left = 175
        Top = 0
        Width = 33
        Height = 15
        DataField = 'DATA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel688: TRLLabel
        Left = 137
        Top = 0
        Width = 37
        Height = 15
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel689: TRLLabel
        Left = 1
        Top = 20
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel690: TRLLabel
        Left = 105
        Top = 118
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
      object RLLabel691: TRLLabel
        Left = 700
        Top = 118
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
      object RLDBText544: TRLDBText
        Left = 90
        Top = 77
        Width = 179
        Height = 15
        AutoSize = False
        DataField = 'desCond'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel694: TRLLabel
        Left = 1
        Top = 77
        Width = 85
        Height = 15
        Caption = 'COND. PAGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText545: TRLDBText
        Left = 374
        Top = 77
        Width = 126
        Height = 17
        AutoSize = False
        DataField = 'PrazoEntrega'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel695: TRLLabel
        Left = 271
        Top = 77
        Width = 102
        Height = 15
        Caption = 'PRAZO ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel697: TRLLabel
        Left = 275
        Top = 0
        Width = 20
        Height = 15
        Caption = 'NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText547: TRLDBText
        Left = 295
        Top = 0
        Width = 13
        Height = 15
        DataField = 'nf'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel698: TRLLabel
        Left = 1
        Top = 38
        Width = 68
        Height = 15
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel124: TRLPanel
        Left = 72
        Top = 38
        Width = 678
        Height = 17
        object RLDBText548: TRLDBText
          Left = 0
          Top = 0
          Width = 56
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
        object RLDBText549: TRLDBText
          Left = 65
          Top = 0
          Width = 30
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel699: TRLLabel
          Left = 56
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel700: TRLLabel
          Left = 95
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText550: TRLDBText
          Left = 108
          Top = 0
          Width = 36
          Height = 17
          Align = faLeft
          DataField = 'Bairro'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel701: TRLLabel
          Left = 144
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText551: TRLDBText
          Left = 157
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel702: TRLLabel
          Left = 200
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText552: TRLDBText
          Left = 206
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel703: TRLLabel
          Left = 225
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText553: TRLDBText
          Left = 238
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
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
      object RLPanel125: TRLPanel
        Left = 61
        Top = 20
        Width = 689
        Height = 17
        object RLDBText554: TRLDBText
          Left = 0
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText555: TRLDBText
          Left = 65
          Top = 0
          Width = 37
          Height = 17
          Align = faLeft
          DataField = 'Nome'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel704: TRLLabel
          Left = 52
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel705: TRLLabel
          Left = 102
          Top = 0
          Width = 46
          Height = 17
          Align = faLeft
          Caption = '  CNPJ: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText556: TRLDBText
          Left = 148
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'cpf'
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
      object RLLabel706: TRLLabel
        Left = 1
        Top = 59
        Width = 69
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel126: TRLPanel
        Left = 73
        Top = 59
        Width = 677
        Height = 17
        object RLDBText557: TRLDBText
          Left = 0
          Top = 0
          Width = 66
          Height = 17
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText558: TRLDBText
          Left = 79
          Top = 0
          Width = 290
          Height = 17
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel707: TRLLabel
          Left = 66
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel708: TRLLabel
          Left = 375
          Top = 0
          Width = 61
          Height = 15
          Caption = 'PACOTES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText559: TRLDBText
          Left = 437
          Top = 0
          Width = 109
          Height = 17
          AutoSize = False
          DataField = 'pacote'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel709: TRLLabel
          Left = 549
          Top = 0
          Width = 71
          Height = 15
          Caption = 'TIPO FRETE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText560: TRLDBText
          Left = 624
          Top = 0
          Width = 53
          Height = 17
          AutoSize = False
          DataField = 'tipoFrete'
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
      object RLDBText561: TRLDBText
        Left = 588
        Top = 77
        Width = 162
        Height = 17
        AutoSize = False
        DataField = 'transp_vendedor'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel714: TRLLabel
        Left = 501
        Top = 77
        Width = 85
        Height = 15
        Caption = 'REDESPACHO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel715: TRLLabel
        Left = 1
        Top = 93
        Width = 90
        Height = 15
        Caption = 'FORMA PAGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText562: TRLDBText
        Left = 90
        Top = 93
        Width = 177
        Height = 15
        AutoSize = False
        DataField = 'forma_pgto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel717: TRLLabel
        Left = 359
        Top = 0
        Width = 72
        Height = 15
        Caption = 'Emiss'#227'o NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText563: TRLDBText
        Left = 432
        Top = 0
        Width = 30
        Height = 15
        DataField = 'dt_nf'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel681: TRLLabel
        Left = 612
        Top = 118
        Width = 20
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Un.'
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
      object RLLabel682: TRLLabel
        Left = 1
        Top = 118
        Width = 47
        Height = 14
        Align = faBottomOnly
        Caption = 'Produto'
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
    object RLBand89: TRLBand
      Left = 19
      Top = 350
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo26: TRLSystemInfo
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
      object RLLabel718: TRLLabel
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
    object RLBand90: TRLBand
      Left = 19
      Top = 224
      Width = 756
      Height = 21
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Color = clGray
      object RLDBText564: TRLDBText
        Left = 1
        Top = 0
        Width = 85
        Height = 17
        Align = faTopOnly
        AutoSize = False
        DataField = 'IdProduto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText565: TRLDBText
        Left = 642
        Top = 0
        Width = 87
        Height = 17
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Qtd'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo26: TRLDBMemo
        Left = 105
        Top = 0
        Width = 477
        Height = 17
        Align = faTopOnly
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText566: TRLDBText
        Left = 597
        Top = 0
        Width = 35
        Height = 17
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'unidade_nfe'
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
  end
  object rpImpOrcamento3: TRLReport
    Left = 826
    Top = 5792
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = dOrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Orcamento'
    BeforePrint = rpImpOrcamento3BeforePrint
    object RLBand91: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 124
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand91BeforePrint
      object imgOrc3: TImage
        Left = 4
        Top = 4
        Width = 189
        Height = 105
        Stretch = True
      end
      object RLDBText546: TRLDBText
        Left = 225
        Top = 20
        Width = 82
        Height = 19
        DataField = 'e_fantasia'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo27: TRLSystemInfo
        Left = 631
        Top = 4
        Width = 119
        Height = 15
        Alignment = taRightJustify
        Info = itNow
        Text = 'Impresso em:  '
      end
      object RLLabel684: TRLLabel
        Left = 309
        Top = 80
        Width = 154
        Height = 32
        Alignment = taRightJustify
        Caption = 'Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel692: TRLLabel
        Left = 638
        Top = 92
        Width = 22
        Height = 16
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText567: TRLDBText
        Left = 732
        Top = 92
        Width = 18
        Height = 19
        Alignment = taRightJustify
        DataField = 'Id'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object lendorc3: TRLLabel
        Left = 227
        Top = 42
        Width = 14
        Height = 14
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ltelorc3: TRLLabel
        Left = 227
        Top = 60
        Width = 14
        Height = 14
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel710: TRLLabel
        Left = 617
        Top = 62
        Width = 43
        Height = 16
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText568: TRLDBText
        Left = 712
        Top = 61
        Width = 38
        Height = 18
        Alignment = taRightJustify
        DataField = 'DATA'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand92: TRLBand
      Left = 19
      Top = 285
      Width = 756
      Height = 202
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand92AfterPrint
      BeforePrint = RLBand92BeforePrint
      object RLDraw11: TRLDraw
        Left = 284
        Top = 6
        Width = 471
        Height = 64
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Pen.Style = psClear
      end
      object RLLabel711: TRLLabel
        Left = 289
        Top = 11
        Width = 140
        Height = 15
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult96: TRLDBResult
        Left = 669
        Top = 11
        Width = 81
        Height = 15
        Alignment = taRightJustify
        DataField = 'vTotLiq'
        DataSource = dOrc
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
      object RLDBResult98: TRLDBResult
        Left = 490
        Top = 11
        Width = 59
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.#'
        Info = riSum
        Text = ''
      end
      object RLLabel712: TRLLabel
        Left = 359
        Top = 29
        Width = 70
        Height = 15
        Caption = 'DESCONTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult99: TRLDBResult
        Left = 644
        Top = 30
        Width = 106
        Height = 15
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Text = ''
      end
      object RLLabel713: TRLLabel
        Left = 343
        Top = 48
        Width = 86
        Height = 15
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult101: TRLDBResult
        Left = 657
        Top = 48
        Width = 93
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLPanel127: TRLPanel
        Left = 0
        Top = 123
        Width = 756
        Height = 79
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object lCli3: TRLLabel
          Left = 33
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lemp3: TRLLabel
          Left = 418
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lClicpf3: TRLLabel
          Left = 34
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lEmpCpf3: TRLLabel
          Left = 419
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel128: TRLPanel
        Left = 0
        Top = 101
        Width = 756
        Height = 22
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLPanel129: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 20
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel722: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo27: TRLDBMemo
            Left = 33
            Top = 2
            Width = 717
            Height = 15
            Behavior = [beSiteExpander]
            DataField = 'obs_venda'
            DataSource = dOrc
          end
        end
      end
    end
    object RLBand93: TRLBand
      Left = 19
      Top = 162
      Width = 756
      Height = 107
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel723: TRLLabel
        Left = 1
        Top = 5
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText569: TRLDBText
        Left = 86
        Top = 63
        Width = 340
        Height = 17
        AutoSize = False
        DataField = 'desCond'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel724: TRLLabel
        Left = 1
        Top = 63
        Width = 85
        Height = 15
        Caption = 'COND. PAGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel725: TRLLabel
        Left = 1
        Top = 23
        Width = 68
        Height = 15
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel130: TRLPanel
        Left = 72
        Top = 23
        Width = 678
        Height = 17
        object RLDBText570: TRLDBText
          Left = 0
          Top = 0
          Width = 56
          Height = 17
          Align = faLeft
          DataField = 'Endereco'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText571: TRLDBText
          Left = 65
          Top = 0
          Width = 30
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel726: TRLLabel
          Left = 56
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel727: TRLLabel
          Left = 95
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText572: TRLDBText
          Left = 108
          Top = 0
          Width = 36
          Height = 17
          Align = faLeft
          DataField = 'Bairro'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel728: TRLLabel
          Left = 144
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText573: TRLDBText
          Left = 157
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel729: TRLLabel
          Left = 200
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText574: TRLDBText
          Left = 206
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel730: TRLLabel
          Left = 225
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText575: TRLDBText
          Left = 238
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel131: TRLPanel
        Left = 61
        Top = 5
        Width = 689
        Height = 17
        object RLDBText576: TRLDBText
          Left = 0
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText577: TRLDBText
          Left = 65
          Top = 0
          Width = 50
          Height = 17
          Align = faLeft
          DataField = 'nomeCli'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel731: TRLLabel
          Left = 52
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLLabel732: TRLLabel
        Left = 1
        Top = 44
        Width = 69
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel132: TRLPanel
        Left = 73
        Top = 44
        Width = 677
        Height = 16
        object RLDBText578: TRLDBText
          Left = 0
          Top = 0
          Width = 66
          Height = 16
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText579: TRLDBText
          Left = 79
          Top = 0
          Width = 190
          Height = 16
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel733: TRLLabel
          Left = 66
          Top = 0
          Width = 13
          Height = 16
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel734: TRLLabel
          Left = 275
          Top = 0
          Width = 61
          Height = 15
          Caption = 'PACOTES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText580: TRLDBText
          Left = 337
          Top = 0
          Width = 81
          Height = 15
          AutoSize = False
          DataField = 'pacote'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel735: TRLLabel
          Left = 419
          Top = 0
          Width = 102
          Height = 15
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText581: TRLDBText
          Left = 523
          Top = 0
          Width = 154
          Height = 15
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel133: TRLPanel
        Left = 1
        Top = 85
        Width = 754
        Height = 21
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel736: TRLLabel
          Left = 0
          Top = 1
          Width = 483
          Height = 20
          Align = faClient
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Produto'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel740: TRLLabel
          Left = 483
          Top = 1
          Width = 64
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Qtde'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel741: TRLLabel
          Left = 547
          Top = 1
          Width = 76
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Unit'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel742: TRLLabel
          Left = 623
          Top = 1
          Width = 60
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Desc.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel743: TRLLabel
          Left = 683
          Top = 1
          Width = 71
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Total'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLLabel744: TRLLabel
        Left = 457
        Top = 63
        Width = 82
        Height = 15
        Caption = 'FORMA PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText582: TRLDBText
        Left = 540
        Top = 63
        Width = 210
        Height = 17
        AutoSize = False
        DataField = 'forma_pgto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand94: TRLBand
      Left = 19
      Top = 487
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo28: TRLSystemInfo
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
      object RLLabel745: TRLLabel
        Left = 1
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
    object RLBand95: TRLBand
      Left = 19
      Top = 269
      Width = 756
      Height = 16
      object RLDBText583: TRLDBText
        Left = 0
        Top = 0
        Width = 89
        Height = 72
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'IdProduto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText584: TRLDBText
        Left = 483
        Top = 0
        Width = 64
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'Qtd'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText585: TRLDBText
        Left = 547
        Top = 0
        Width = 76
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'vUnitLiq'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText586: TRLDBText
        Left = 683
        Top = 0
        Width = 73
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'vTotLiq'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo28: TRLDBMemo
        Left = 87
        Top = 0
        Width = 396
        Height = 65
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        DataField = 'descricao'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText590: TRLDBText
        Left = 623
        Top = 0
        Width = 60
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'descprod'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object rpImpTela: TRLReport
    Left = 8
    Top = 5792
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = fGridVenda.dVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand96: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText587: TRLDBText
        Left = 1
        Top = 3
        Width = 48
        Height = 16
        DataField = 'Razao'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo29: TRLSystemInfo
        Left = 584
        Top = 0
        Width = 172
        Height = 15
        Align = faRightTop
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel693: TRLLabel
        Left = 299
        Top = 23
        Width = 158
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand97: TRLBand
      Left = 19
      Top = 135
      Width = 756
      Height = 17
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText588: TRLDBText
        Left = 1
        Top = 0
        Width = 72
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'Id'
        DataSource = fGridVenda.dVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText589: TRLDBText
        Left = 77
        Top = 0
        Width = 75
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'data'
        DataSource = fGridVenda.dVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText593: TRLDBText
        Left = 501
        Top = 0
        Width = 23
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'total'
        DataSource = fGridVenda.dVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText604: TRLDBText
        Left = 530
        Top = 0
        Width = 89
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'desStatus'
        DataSource = fGridVenda.dVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText691: TRLDBText
        Left = 623
        Top = 0
        Width = 130
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'descond'
        DataSource = fGridVenda.dVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo25: TRLDBMemo
        Left = 158
        Top = 0
        Width = 279
        Height = 14
        Align = faTopOnly
        Behavior = [beSiteExpander]
        DataField = 'razaoCli'
        DataSource = fGridVenda.dVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand98: TRLBand
      Left = 19
      Top = 176
      Width = 756
      Height = 24
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo30: TRLSystemInfo
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
      object RLLabel770: TRLLabel
        Left = 0
        Top = 1
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
    object RLBand99: TRLBand
      Left = 19
      Top = 81
      Width = 756
      Height = 54
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel719: TRLLabel
        Left = 1
        Top = 39
        Width = 38
        Height = 14
        Align = faBottomOnly
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel738: TRLLabel
        Left = 158
        Top = 39
        Width = 42
        Height = 14
        Align = faBottomOnly
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lPeriodo: TRLLabel
        Left = 0
        Top = 0
        Width = 50
        Height = 15
        Align = faLeftTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel746: TRLLabel
        Left = 478
        Top = 39
        Width = 46
        Height = 14
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'R$ Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel749: TRLLabel
        Left = 77
        Top = 39
        Width = 26
        Height = 14
        Align = faBottomOnly
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel750: TRLLabel
        Left = 530
        Top = 39
        Width = 38
        Height = 14
        Align = faBottomOnly
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lEmpresa: TRLLabel
        Left = 349
        Top = 0
        Width = 57
        Height = 15
        Align = faCenterTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lSt: TRLLabel
        Left = 738
        Top = 0
        Width = 18
        Height = 15
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lFiltro: TRLLabel
        Left = 1
        Top = 17
        Width = 34
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel890: TRLLabel
        Left = 623
        Top = 39
        Width = 71
        Height = 14
        Align = faBottomOnly
        Caption = 'Cond Pgmto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand100: TRLBand
      Left = 19
      Top = 152
      Width = 756
      Height = 24
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult102: TRLDBResult
        Left = 467
        Top = 2
        Width = 65
        Height = 15
        Alignment = taRightJustify
        DataField = 'total'
        DataSource = fGridVenda.dVenda
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
      object RLDBResult103: TRLDBResult
        Left = 60
        Top = 2
        Width = 44
        Height = 15
        DataField = 'Id'
        DataSource = fGridVenda.dVenda
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = ''
      end
      object RLLabel716: TRLLabel
        Left = 1
        Top = 2
        Width = 55
        Height = 15
        Caption = 'Pedidos: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel720: TRLLabel
        Left = 375
        Top = 2
        Width = 44
        Height = 15
        Alignment = taRightJustify
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object rpImpExpedicaoNova: TRLReport
    Left = 10
    Top = 1329
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
    object RLBand101: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 41
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel737: TRLLabel
        Left = 0
        Top = 0
        Width = 756
        Height = 40
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'EXPEDI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand102: TRLBand
      Left = 19
      Top = 278
      Width = 756
      Height = 147
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLPanel149: TRLPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 20
        Align = faTop
        object lvaz1: TRLLabel
          Left = 0
          Top = 0
          Width = 29
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel808: TRLLabel
          Left = 75
          Top = 0
          Width = 392
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel809: TRLLabel
          Left = 562
          Top = 0
          Width = 28
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = '(  )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel810: TRLLabel
          Left = 590
          Top = 0
          Width = 45
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel811: TRLLabel
          Left = 29
          Top = 0
          Width = 46
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel812: TRLLabel
          Left = 467
          Top = 0
          Width = 45
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel739: TRLLabel
          Left = 635
          Top = 0
          Width = 50
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel747: TRLLabel
          Left = 512
          Top = 0
          Width = 50
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel767: TRLLabel
          Left = 685
          Top = 0
          Width = 70
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLPanel150: TRLPanel
        Left = 0
        Top = 20
        Width = 756
        Height = 20
        Align = faTop
        object lvaz2: TRLLabel
          Left = 0
          Top = 0
          Width = 29
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel814: TRLLabel
          Left = 75
          Top = 0
          Width = 392
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel815: TRLLabel
          Left = 562
          Top = 0
          Width = 28
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = '(  )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel816: TRLLabel
          Left = 590
          Top = 0
          Width = 45
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel817: TRLLabel
          Left = 29
          Top = 0
          Width = 46
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel818: TRLLabel
          Left = 467
          Top = 0
          Width = 45
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel748: TRLLabel
          Left = 635
          Top = 0
          Width = 50
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel751: TRLLabel
          Left = 512
          Top = 0
          Width = 50
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel769: TRLLabel
          Left = 685
          Top = 0
          Width = 70
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLPanel151: TRLPanel
        Left = 0
        Top = 40
        Width = 756
        Height = 20
        Align = faTop
        BeforePrint = RLPanel151BeforePrint
        object lvaz3: TRLLabel
          Left = 0
          Top = 0
          Width = 29
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel820: TRLLabel
          Left = 75
          Top = 0
          Width = 392
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel821: TRLLabel
          Left = 562
          Top = 0
          Width = 28
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = '(  )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel822: TRLLabel
          Left = 590
          Top = 0
          Width = 45
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel823: TRLLabel
          Left = 29
          Top = 0
          Width = 46
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel824: TRLLabel
          Left = 467
          Top = 0
          Width = 45
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel759: TRLLabel
          Left = 635
          Top = 0
          Width = 50
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel760: TRLLabel
          Left = 512
          Top = 0
          Width = 50
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel772: TRLLabel
          Left = 685
          Top = 0
          Width = 70
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLPanel146: TRLPanel
        Left = 0
        Top = 60
        Width = 756
        Height = 27
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        object RLPanel139: TRLPanel
          Left = 591
          Top = 0
          Width = 164
          Height = 26
          Align = faRight
        end
        object RLPanel140: TRLPanel
          Left = 467
          Top = 0
          Width = 124
          Height = 26
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Borders.Color = clGray
          object RLDBResult110: TRLDBResult
            Left = 3
            Top = 5
            Width = 119
            Height = 16
            Alignment = taCenter
            DataField = 'volume'
            DataSource = D
            DisplayMask = '###,###,###,##0.#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = ''
          end
        end
        object RLLabel763: TRLLabel
          Left = 263
          Top = 5
          Width = 122
          Height = 16
          Caption = 'Total Embalagens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel152: TRLPanel
        Left = 0
        Top = 87
        Width = 756
        Height = 26
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        object RLPanel155: TRLPanel
          Left = 591
          Top = 0
          Width = 164
          Height = 25
          Align = faRight
        end
        object RLPanel157: TRLPanel
          Left = 467
          Top = 0
          Width = 124
          Height = 25
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Borders.Color = clGray
          object RLDBResult112: TRLDBResult
            Left = 3
            Top = 5
            Width = 119
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'totPesoBruto'
            DataSource = D
            DisplayMask = '###,###,###,##0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = ''
          end
        end
        object RLLabel764: TRLLabel
          Left = 308
          Top = 5
          Width = 75
          Height = 16
          Caption = 'Peso Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel148: TRLPanel
        Left = 0
        Top = 113
        Width = 756
        Height = 26
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        object RLPanel153: TRLPanel
          Left = 591
          Top = 0
          Width = 164
          Height = 25
          Align = faRight
        end
        object RLPanel154: TRLPanel
          Left = 467
          Top = 0
          Width = 124
          Height = 25
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Borders.Color = clGray
          object RLDBResult106: TRLDBResult
            Left = 3
            Top = 5
            Width = 120
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'totcubagem'
            DataSource = D
            DisplayMask = '###,##0.000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
        object RLLabel778: TRLLabel
          Left = 314
          Top = 5
          Width = 69
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cubagem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand103: TRLBand
      Left = 19
      Top = 79
      Width = 756
      Height = 158
      AutoSize = True
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLPanel134: TRLPanel
        Left = 591
        Top = 111
        Width = 165
        Height = 30
        Align = faRightTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.Color = clGray
        object RLLabel762: TRLLabel
          AlignWithMargins = True
          Left = 32
          Top = 4
          Width = 106
          Height = 24
          Alignment = taCenter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clGray
          Caption = 'Altera'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLPanel142: TRLPanel
        Left = 0
        Top = 79
        Width = 756
        Height = 17
        Align = faTop
        AutoExpand = True
        AutoSize = True
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        object RLLabel771: TRLLabel
          Left = 1
          Top = 1
          Width = 76
          Height = 15
          Align = faLeft
          Caption = ' Obs Cliente: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo29: TRLDBMemo
          Left = 77
          Top = 1
          Width = 668
          Height = 15
          Behavior = [beSiteExpander]
          DataField = 'obs_1'
          DataSource = D
        end
      end
      object RLPanel143: TRLPanel
        Left = 0
        Top = 141
        Width = 756
        Height = 17
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLLabel774: TRLLabel
          Left = 0
          Top = 0
          Width = 29
          Height = 17
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Seq.'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel775: TRLLabel
          Left = 75
          Top = 0
          Width = 392
          Height = 17
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Descri'#231#227'o'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel776: TRLLabel
          Left = 467
          Top = 0
          Width = 45
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Qtde DZ'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel779: TRLLabel
          Left = 29
          Top = 0
          Width = 46
          Height = 17
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Ref.'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel781: TRLLabel
          Left = 590
          Top = 0
          Width = 46
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Qtde DZ'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel782: TRLLabel
          Left = 635
          Top = 0
          Width = 51
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Qtde Emb.'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel765: TRLLabel
          Left = 685
          Top = 0
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Obs.'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel777: TRLLabel
          Left = 562
          Top = 0
          Width = 28
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'C'#243'd.'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel780: TRLLabel
          Left = 512
          Top = 0
          Width = 50
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'Qtde Emb.'
          Color = 15132390
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLPanel135: TRLPanel
        Left = 0
        Top = 96
        Width = 756
        Height = 15
        Align = faTop
        AutoExpand = True
        AutoSize = True
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        object RLLabel752: TRLLabel
          Left = 1
          Top = 0
          Width = 75
          Height = 14
          Align = faLeft
          Caption = ' Obs Pedido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo30: TRLDBMemo
          Left = 82
          Top = -1
          Width = 669
          Height = 15
          Behavior = [beSiteExpander]
          DataField = 'Obs'
          DataSource = D
        end
      end
      object RLPanel136: TRLPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 79
        Align = faTop
        object RLPanel145: TRLPanel
          Left = 0
          Top = 0
          Width = 593
          Height = 79
          Align = faLeftTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clGray
          object RLPanel141: TRLPanel
            Left = 4
            Top = 25
            Width = 579
            Height = 18
            object RLLabel768: TRLLabel
              Left = 0
              Top = 0
              Width = 113
              Height = 18
              Align = faLeft
              AutoSize = False
              Caption = 'Transportadora:  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText610: TRLDBText
              Left = 113
              Top = 0
              Width = 45
              Height = 18
              Align = faLeft
              DataField = 'NomeT'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
          end
          object RLPanel137: TRLPanel
            Left = 4
            Top = 4
            Width = 579
            Height = 18
            object RLDBText594: TRLDBText
              Left = 57
              Top = 0
              Width = 61
              Height = 18
              Align = faLeft
              DataField = 'IdCliente'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ''
            end
            object RLDBText595: TRLDBText
              Left = 134
              Top = 0
              Width = 40
              Height = 18
              Align = faLeft
              DataField = 'razao'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ''
            end
            object RLLabel754: TRLLabel
              Left = 118
              Top = 0
              Width = 16
              Height = 18
              Align = faLeft
              Caption = ' - '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel755: TRLLabel
              Left = 0
              Top = 0
              Width = 57
              Height = 18
              Align = faLeft
              AutoSize = False
              Caption = 'Cliente: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLLabel761: TRLLabel
            Left = 4
            Top = 62
            Width = 90
            Height = 16
            Caption = 'Data Entrega:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText601: TRLDBText
            Left = 98
            Top = 62
            Width = 83
            Height = 16
            DataField = 'PrazoEntrega'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel672: TRLLabel
            Left = 4
            Top = 43
            Width = 100
            Height = 16
            Caption = 'Representante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText522: TRLDBText
            Left = 117
            Top = 43
            Width = 66
            Height = 16
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel138: TRLPanel
          Left = 588
          Top = 0
          Width = 168
          Height = 79
          Align = faRightTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Borders.Color = clGray
          object RLLabel756: TRLLabel
            Left = 2
            Top = 7
            Width = 53
            Height = 16
            Caption = 'Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel753: TRLLabel
            Left = 2
            Top = 53
            Width = 37
            Height = 16
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText592: TRLDBText
            Left = 119
            Top = 53
            Width = 42
            Height = 17
            Alignment = taRightJustify
            DataField = 'DATA'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText596: TRLDBText
            Left = 144
            Top = 7
            Width = 17
            Height = 18
            Alignment = taRightJustify
            DataField = 'Id'
            DataSource = D
            DisplayMask = '#000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLLabel662: TRLLabel
            Left = 2
            Top = 29
            Width = 86
            Height = 16
            Caption = 'Ped. Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText66: TRLDBText
            Left = 75
            Top = 29
            Width = 86
            Height = 18
            Alignment = taRightJustify
            DataField = 'seq_cliente'
            DataSource = D
            DisplayMask = '#000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
        end
      end
    end
    object RLBand104: TRLBand
      Left = 19
      Top = 237
      Width = 756
      Height = 41
      AutoSize = True
      BeforePrint = RLBand104BeforePrint
      object RLPanel144: TRLPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 21
        BeforePrint = RLPanel144BeforePrint
        object RLLabel783: TRLLabel
          Left = 0
          Top = 0
          Width = 29
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = 'seq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText613: TRLDBText
          Left = 29
          Top = 0
          Width = 46
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'referencia'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText614: TRLDBText
          Left = 75
          Top = 0
          Width = 392
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText615: TRLDBText
          Left = 467
          Top = 0
          Width = 45
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'qtd_cx'
          DataSource = D
          DisplayMask = '#,##0.###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText616: TRLDBText
          Left = 512
          Top = 0
          Width = 50
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          DataField = 'Dvolume1'
          DataSource = D
          DisplayMask = '#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel784: TRLLabel
          Left = 562
          Top = 0
          Width = 28
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Caption = '(  )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel757: TRLLabel
          Left = 590
          Top = 0
          Width = 45
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel758: TRLLabel
          Left = 635
          Top = 0
          Width = 50
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel766: TRLLabel
          Left = 685
          Top = 0
          Width = 70
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
      object pDoisVolumes: TRLPanel
        Left = 0
        Top = 20
        Width = 755
        Height = 21
        AutoSize = True
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        BeforePrint = RLPanel144BeforePrint
        object RLDBText525: TRLDBText
          Left = 512
          Top = 0
          Width = 50
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clGray
          DataField = 'Dvolume2'
          DataSource = D
          DisplayMask = '#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel924: TRLLabel
          Left = 562
          Top = 0
          Width = 28
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clGray
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel925: TRLLabel
          Left = 590
          Top = 0
          Width = 45
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel926: TRLLabel
          Left = 635
          Top = 0
          Width = 50
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel927: TRLLabel
          Left = 685
          Top = 0
          Width = 70
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
        end
      end
    end
    object RLBand108: TRLBand
      Left = 19
      Top = 483
      Width = 756
      Height = 23
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo31: TRLSystemInfo
        Left = 657
        Top = 4
        Width = 99
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel825: TRLLabel
        Left = 0
        Top = 4
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
    object RLBand107: TRLBand
      Left = 19
      Top = 425
      Width = 756
      Height = 58
      BandType = btSummary
      object RLPanel147: TRLPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 56
        Align = faTop
        object RLLabel801: TRLLabel
          Left = 0
          Top = 30
          Width = 743
          Height = 16
          Caption = 
            'Faturado por:  ____________________________________________ Data' +
            ': _____/____/_______        NFe n'#186' ______________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel806: TRLLabel
          Left = 0
          Top = 6
          Width = 744
          Height = 16
          Caption = 
            'Separado por: _____________________________________________ Conf' +
            'erido por: _________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object rpFolhaSepracao5: TRLReport
    Left = 2491
    Top = 2338
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
    object RLBand105: TRLBand
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
      object RLDBText597: TRLDBText
        Left = 0
        Top = 0
        Width = 54
        Height = 16
        Align = faLeftTop
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
      object RLSystemInfo32: TRLSystemInfo
        Left = 637
        Top = 0
        Width = 119
        Height = 15
        Align = faRightTop
        Info = itNow
        Text = 'Impresso em:  '
      end
      object RLLabel785: TRLLabel
        Left = 332
        Top = 33
        Width = 91
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'ROMANEIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand106: TRLBand
      Left = 19
      Top = 199
      Width = 756
      Height = 116
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand106BeforePrint
      object RLDBResult107: TRLDBResult
        Left = 655
        Top = 0
        Width = 100
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'totcubagem'
        DataSource = D
        DisplayMask = '###,###,###,##0.0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLPanel156: TRLPanel
        Left = 0
        Top = 73
        Width = 756
        Height = 43
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLPanel158: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 26
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel786: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo31: TRLDBMemo
            Left = 33
            Top = 2
            Width = 717
            Height = 17
            Behavior = [beSiteExpander]
            DataField = 'obs_venda'
            DataSource = D
          end
        end
        object RLLabel795: TRLLabel
          Left = 0
          Top = 22
          Width = 756
          Height = 21
          Align = faBottom
          Caption = 'CONFERENTE: __________________________________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLDBResult108: TRLDBResult
        Left = 384
        Top = 32
        Width = 172
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'totPesoBruto'
        DataSource = D
        DisplayMask = '###,###,###,##0.0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLLabel787: TRLLabel
        Left = 292
        Top = 32
        Width = 92
        Height = 22
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'PESO BRUTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel788: TRLLabel
        Left = 292
        Top = 0
        Width = 166
        Height = 24
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'T O T A I  S '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBResult109: TRLDBResult
        Left = 556
        Top = 0
        Width = 100
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'qtd_cx'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLDBResult111: TRLDBResult
        Left = 458
        Top = 0
        Width = 98
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'QTD'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
    end
    object RLBand109: TRLBand
      Left = 19
      Top = 91
      Width = 756
      Height = 88
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDraw14: TRLDraw
        Left = -2
        Top = 71
        Width = 755
        Height = 16
        Brush.Color = 15132390
        Color = 15132390
        ParentColor = False
        Pen.Style = psClear
        Transparent = False
      end
      object RLLabel830: TRLLabel
        Left = 556
        Top = 71
        Width = 99
        Height = 17
        Align = faBottomOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Caixas'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel789: TRLLabel
        Left = 1
        Top = 25
        Width = 55
        Height = 15
        Caption = 'PEDIDO:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText598: TRLDBText
        Left = 59
        Top = 25
        Width = 70
        Height = 15
        DataField = 'Id'
        DataSource = D
        DisplayMask = '#0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText599: TRLDBText
        Left = 175
        Top = 25
        Width = 33
        Height = 15
        DataField = 'DATA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel790: TRLLabel
        Left = 137
        Top = 25
        Width = 37
        Height = 15
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel792: TRLLabel
        Left = 66
        Top = 71
        Width = 392
        Height = 17
        Align = faBottomOnly
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Descri'#231#227'o'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLPanel159: TRLPanel
        Left = 0
        Top = 43
        Width = 750
        Height = 17
        object RLDBText609: TRLDBText
          Left = 54
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel802: TRLLabel
          Left = 97
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText611: TRLDBText
          Left = 103
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel797: TRLLabel
          Left = 0
          Top = 0
          Width = 54
          Height = 17
          Align = faLeft
          Caption = 'CIDADE:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel160: TRLPanel
        Left = 1
        Top = 5
        Width = 749
        Height = 17
        object RLDBText617: TRLDBText
          Left = 59
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText618: TRLDBText
          Left = 124
          Top = 0
          Width = 37
          Height = 17
          Align = faLeft
          DataField = 'Nome'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel804: TRLLabel
          Left = 111
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel791: TRLLabel
          Left = 0
          Top = 0
          Width = 59
          Height = 17
          Align = faLeft
          Caption = 'CLIENTE:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLLabel831: TRLLabel
        Left = 1
        Top = 71
        Width = 65
        Height = 17
        Align = faBottomOnly
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'C'#243'digo'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel794: TRLLabel
        Left = 458
        Top = 71
        Width = 98
        Height = 17
        Align = faBottomOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Quantidade'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel793: TRLLabel
        Left = 655
        Top = 71
        Width = 100
        Height = 17
        Align = faBottomOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        Caption = 'Cubagem'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand110: TRLBand
      Left = 19
      Top = 315
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo34: TRLSystemInfo
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
      object RLLabel832: TRLLabel
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
    object RLBand111: TRLBand
      Left = 19
      Top = 179
      Width = 756
      Height = 20
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.Color = clGray
      object RLDBText627: TRLDBText
        Left = 1
        Top = 0
        Width = 65
        Height = 20
        Align = faTopOnly
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'IdProduto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText628: TRLDBText
        Left = 655
        Top = 0
        Width = 100
        Height = 20
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'cubagem'
        DataSource = D
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo32: TRLDBMemo
        Left = 66
        Top = 0
        Width = 392
        Height = 20
        Align = faTopOnly
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText629: TRLDBText
        Left = 556
        Top = 0
        Width = 100
        Height = 20
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'qtd_cx'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText600: TRLDBText
        Left = 458
        Top = 0
        Width = 98
        Height = 20
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        DataField = 'Qtd'
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
  end
  object rpImpPedidoModelo5: TRLReport
    Left = 1650
    Top = 4616
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
    object RLSubDetail6: TRLSubDetail
      Left = 19
      Top = 38
      Width = 756
      Height = 522
      DataSource = D
      object RLBand112: TRLBand
        Left = 0
        Top = 156
        Width = 756
        Height = 118
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = clGray
        AfterPrint = RLBand112AfterPrint
        BeforePrint = RLBand112BeforePrint
        object RLDBResult114: TRLDBResult
          Left = 380
          Top = 1
          Width = 64
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLPanel161: TRLPanel
          Left = 0
          Top = 29
          Width = 756
          Height = 89
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLPanel162: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 18
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.Color = clGray
            object RLLabel803: TRLLabel
              Left = 1
              Top = 2
              Width = 29
              Height = 15
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo33: TRLDBMemo
              Left = 36
              Top = 1
              Width = 679
              Height = 15
              Behavior = [beSiteExpander]
              DataField = 'Obs'
              DataSource = D
            end
          end
          object RLPanel181: TRLPanel
            Left = 0
            Top = 18
            Width = 756
            Height = 68
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            object RLLabel800: TRLLabel
              Left = 0
              Top = 34
              Width = 441
              Height = 14
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'DOCUMENTO      VENCTO            VALOR  PAGTO       VALOR PAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLMemo11: TRLMemo
              Left = -1
              Top = 48
              Width = 442
              Height = 13
              Behavior = [beSiteExpander]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel862: TRLLabel
              Left = 1
              Top = 4
              Width = 80
              Height = 14
              Caption = 'COND. PAGTO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel864: TRLLabel
              Left = 1
              Top = 18
              Width = 86
              Height = 14
              Caption = 'FORMA PAGTO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText644: TRLDBText
              Left = 90
              Top = 18
              Width = 58
              Height = 14
              DataField = 'forma_pgto'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLDBText641: TRLDBText
              Left = 90
              Top = 4
              Width = 46
              Height = 14
              DataField = 'desCond'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel879: TRLLabel
              Left = 581
              Top = 26
              Width = 143
              Height = 15
              Alignment = taRightJustify
              Caption = 'RECEBIDO E CONFERIDO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel880: TRLLabel
              Left = 581
              Top = 45
              Width = 143
              Height = 15
              Alignment = taRightJustify
              Caption = '____________________'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText606: TRLDBText
              Left = 521
              Top = 3
              Width = 203
              Height = 18
              Alignment = taRightJustify
              DataField = 'tipo_entrega'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ' '
            end
          end
        end
        object RLDBResult117: TRLDBResult
          Left = 673
          Top = 1
          Width = 81
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel805: TRLLabel
          Left = 1
          Top = 1
          Width = 45
          Height = 15
          Align = faTopOnly
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult119: TRLDBResult
          Left = 573
          Top = 1
          Width = 94
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult121: TRLDBResult
          Left = 476
          Top = 1
          Width = 126
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
      object RLBand113: TRLBand
        Left = 0
        Top = 27
        Width = 756
        Height = 114
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDraw16: TRLDraw
          Left = 0
          Top = 99
          Width = 755
          Height = 14
          Brush.Color = 15395562
          Pen.Style = psClear
        end
        object RLLabel819: TRLLabel
          Left = 1
          Top = 0
          Width = 45
          Height = 15
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText602: TRLDBText
          Left = 46
          Top = 0
          Width = 13
          Height = 15
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText603: TRLDBText
          Left = 177
          Top = 0
          Width = 33
          Height = 15
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel826: TRLLabel
          Left = 140
          Top = 0
          Width = 37
          Height = 15
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel827: TRLLabel
          Left = 1
          Top = 21
          Width = 53
          Height = 15
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel833: TRLLabel
          Left = 479
          Top = 99
          Width = 43
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Unit.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel834: TRLLabel
          Left = 556
          Top = 99
          Width = 46
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Total'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText605: TRLDBText
          Left = 97
          Top = 70
          Width = 162
          Height = 13
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel835: TRLLabel
          Left = 0
          Top = 70
          Width = 95
          Height = 13
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel838: TRLLabel
          Left = 1
          Top = 38
          Width = 61
          Height = 14
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel163: TRLPanel
          Left = 65
          Top = 38
          Width = 685
          Height = 14
          object RLDBText612: TRLDBText
            Left = 0
            Top = 0
            Width = 49
            Height = 14
            Align = faLeft
            DataField = 'Endereco'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText619: TRLDBText
            Left = 58
            Top = 0
            Width = 24
            Height = 14
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel839: TRLLabel
            Left = 49
            Top = 0
            Width = 9
            Height = 14
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel840: TRLLabel
            Left = 82
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText620: TRLDBText
            Left = 95
            Top = 0
            Width = 32
            Height = 14
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel841: TRLLabel
            Left = 127
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText621: TRLDBText
            Left = 140
            Top = 0
            Width = 36
            Height = 14
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel842: TRLLabel
            Left = 176
            Top = 0
            Width = 6
            Height = 14
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText622: TRLDBText
            Left = 182
            Top = 0
            Width = 16
            Height = 14
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel843: TRLLabel
            Left = 198
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText623: TRLDBText
            Left = 211
            Top = 0
            Width = 22
            Height = 14
            Align = faLeft
            DataField = 'CEP'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel164: TRLPanel
          Left = 61
          Top = 21
          Width = 689
          Height = 17
          object RLDBText625: TRLDBText
            Left = 0
            Top = 0
            Width = 52
            Height = 17
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText626: TRLDBText
            Left = 65
            Top = 0
            Width = 37
            Height = 17
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel845: TRLLabel
            Left = 52
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel846: TRLLabel
            Left = 102
            Top = 0
            Width = 46
            Height = 17
            Align = faLeft
            Caption = '  CNPJ: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText630: TRLDBText
            Left = 148
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'cpf'
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
        object RLPanel165: TRLPanel
          Left = 428
          Top = 1
          Width = 322
          Height = 14
          object RLDBText631: TRLDBText
            Left = 195
            Top = 0
            Width = 59
            Height = 14
            Align = faRight
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText632: TRLDBText
            Left = 267
            Top = 0
            Width = 55
            Height = 14
            Align = faRight
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel848: TRLLabel
            Left = 254
            Top = 0
            Width = 13
            Height = 14
            Align = faRight
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel847: TRLLabel
            Left = 127
            Top = 0
            Width = 68
            Height = 14
            Align = faRight
            Behavior = [beSiteExpander]
            Caption = 'VENDEDOR:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel166: TRLPanel
          Left = 2
          Top = 54
          Width = 748
          Height = 14
          object RLDBText635: TRLDBText
            Left = 65
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel1'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText636: TRLDBText
            Left = 97
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText637: TRLDBText
            Left = 129
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel851: TRLLabel
            Left = 85
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel852: TRLLabel
            Left = 117
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel854: TRLLabel
            Left = 0
            Top = 0
            Width = 65
            Height = 14
            Align = faLeft
            Behavior = [beSiteExpander]
            Caption = 'TELEFONE:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLLabel856: TRLLabel
          Left = 415
          Top = 99
          Width = 29
          Height = 14
          Align = faBottomOnly
          Caption = 'Qtde'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel857: TRLLabel
          Left = 634
          Top = 99
          Width = 33
          Height = 14
          Align = faBottomOnly
          Caption = 'Desc.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel859: TRLLabel
          Left = 700
          Top = 99
          Width = 53
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Total Liq.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel866: TRLLabel
          Left = 0
          Top = 99
          Width = 47
          Height = 14
          Align = faBottomOnly
          Caption = 'Produto'
          Color = 15395562
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
      object RLBand114: TRLBand
        Left = 0
        Top = 141
        Width = 756
        Height = 15
        AutoExpand = False
        AutoSize = True
        object RLDBText647: TRLDBText
          Left = 1
          Top = 0
          Width = 48
          Height = 14
          Align = faTopOnly
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText648: TRLDBText
          Left = 392
          Top = 0
          Width = 52
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qtd'
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
        object RLDBText649: TRLDBText
          Left = 501
          Top = 0
          Width = 21
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'Unit'
          DataSource = D
          DisplayMask = '###,###,##0.0000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText650: TRLDBText
          Left = 528
          Top = 0
          Width = 74
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText651: TRLDBText
          Left = 716
          Top = 0
          Width = 37
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo34: TRLDBMemo
          Left = 55
          Top = 0
          Width = 319
          Height = 14
          Align = faTopOnly
          Behavior = [beSiteExpander]
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText653: TRLDBText
          Left = 621
          Top = 0
          Width = 46
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand115: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 27
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        object RLDBText655: TRLDBText
          Left = 0
          Top = 0
          Width = 59
          Height = 18
          Align = faLeftTop
          DataField = 'fantasia'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo35: TRLSystemInfo
          Left = 665
          Top = 14
          Width = 91
          Height = 12
          Align = faRightBottom
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = itNow
          ParentFont = False
          Text = 'Impresso em:  '
        end
      end
      object RLBand116: TRLBand
        Left = 0
        Top = 274
        Width = 756
        Height = 229
        AutoExpand = False
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = clGray
        object RLLabel796: TRLLabel
          Left = 0
          Top = 1
          Width = 94
          Height = 11
          Align = faLeftTop
          Caption = 'thrsoftwares.com.br'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel173: TRLPanel
          Left = 0
          Top = 19
          Width = 756
          Height = 210
          Align = faBottom
          Behavior = [beSiteExpander]
        end
      end
    end
    object RLSubDetail7: TRLSubDetail
      Left = 19
      Top = 560
      Width = 756
      Height = 522
      DataSource = D
      IntegralHeight = True
      object RLAngleLabel8: TRLAngleLabel
        Left = 2
        Top = 46
        Width = 751
        Height = 272
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#211'PIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14803425
        Font.Height = -189
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
      end
      object RLBand117: TRLBand
        Left = 0
        Top = 172
        Width = 756
        Height = 123
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = clGray
        AfterPrint = RLBand117AfterPrint
        BeforePrint = RLBand117BeforePrint
        object RLDBResult113: TRLDBResult
          Left = 380
          Top = 1
          Width = 64
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'QTD'
          DataSource = D
          DisplayMask = '###,###,###,##0.#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLPanel167: TRLPanel
          Left = 0
          Top = 13
          Width = 756
          Height = 110
          Align = faBottom
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLPanel168: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 18
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.Color = clGray
          end
          object RLPanel182: TRLPanel
            Left = 0
            Top = 18
            Width = 756
            Height = 19
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            object RLLabel799: TRLLabel
              Left = 5
              Top = 4
              Width = 29
              Height = 15
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo35: TRLDBMemo
              Left = 40
              Top = 3
              Width = 679
              Height = 15
              Behavior = [beSiteExpander]
              DataField = 'Obs'
              DataSource = D
            end
          end
          object RLPanel183: TRLPanel
            Left = 0
            Top = 37
            Width = 756
            Height = 68
            Align = faTop
            AutoExpand = True
            Behavior = [beSiteExpander]
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.FixedTop = True
            object RLDBText608: TRLDBText
              Left = 101
              Top = 6
              Width = 46
              Height = 14
              DataField = 'desCond'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel798: TRLLabel
              Left = 9
              Top = 12
              Width = 80
              Height = 14
              Caption = 'COND. PAGTO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel807: TRLLabel
              Left = 9
              Top = 26
              Width = 86
              Height = 14
              Caption = 'FORMA PAGTO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText624: TRLDBText
              Left = 98
              Top = 26
              Width = 58
              Height = 14
              DataField = 'forma_pgto'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Text = ''
            end
            object RLLabel813: TRLLabel
              Left = 8
              Top = 42
              Width = 441
              Height = 14
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'DOCUMENTO      VENCTO            VALOR  PAGTO       VALOR PAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLMemo12: TRLMemo
              Left = 7
              Top = 56
              Width = 442
              Height = 13
              Behavior = [beSiteExpander]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel828: TRLLabel
              Left = 589
              Top = 34
              Width = 143
              Height = 15
              Alignment = taRightJustify
              Caption = 'RECEBIDO E CONFERIDO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText633: TRLDBText
              Left = 529
              Top = 11
              Width = 203
              Height = 18
              Alignment = taRightJustify
              DataField = 'tipo_entrega'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Text = ' '
            end
            object RLLabel829: TRLLabel
              Left = 589
              Top = 53
              Width = 143
              Height = 15
              Alignment = taRightJustify
              Caption = '____________________'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLDBResult115: TRLDBResult
          Left = 673
          Top = 1
          Width = 81
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel836: TRLLabel
          Left = 1
          Top = 1
          Width = 45
          Height = 15
          Align = faTopOnly
          Caption = 'TOTAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult116: TRLDBResult
          Left = 573
          Top = 1
          Width = 94
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult118: TRLDBResult
          Left = 476
          Top = 1
          Width = 126
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
      object RLBand118: TRLBand
        Left = 0
        Top = 43
        Width = 756
        Height = 114
        AutoExpand = False
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDraw15: TRLDraw
          Left = 0
          Top = 99
          Width = 755
          Height = 14
          Brush.Color = 15395562
          Pen.Style = psClear
        end
        object RLLabel837: TRLLabel
          Left = 1
          Top = 0
          Width = 45
          Height = 15
          Caption = 'VENDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText634: TRLDBText
          Left = 46
          Top = 0
          Width = 13
          Height = 15
          DataField = 'Id'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText638: TRLDBText
          Left = 177
          Top = 0
          Width = 33
          Height = 15
          DataField = 'DATA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel844: TRLLabel
          Left = 140
          Top = 0
          Width = 37
          Height = 15
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel849: TRLLabel
          Left = 1
          Top = 21
          Width = 53
          Height = 15
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel850: TRLLabel
          Left = 479
          Top = 99
          Width = 43
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Unit.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel853: TRLLabel
          Left = 556
          Top = 99
          Width = 46
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'R$ Total'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText639: TRLDBText
          Left = 97
          Top = 70
          Width = 162
          Height = 13
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel855: TRLLabel
          Left = 0
          Top = 70
          Width = 95
          Height = 13
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel858: TRLLabel
          Left = 1
          Top = 38
          Width = 61
          Height = 14
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel169: TRLPanel
          Left = 65
          Top = 38
          Width = 685
          Height = 14
          object RLDBText640: TRLDBText
            Left = 0
            Top = 0
            Width = 49
            Height = 14
            Align = faLeft
            DataField = 'Endereco'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText642: TRLDBText
            Left = 58
            Top = 0
            Width = 24
            Height = 14
            Align = faLeft
            DataField = 'Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel860: TRLLabel
            Left = 49
            Top = 0
            Width = 9
            Height = 14
            Align = faLeft
            Caption = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel861: TRLLabel
            Left = 82
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText643: TRLDBText
            Left = 95
            Top = 0
            Width = 32
            Height = 14
            Align = faLeft
            DataField = 'Bairro'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel863: TRLLabel
            Left = 127
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText645: TRLDBText
            Left = 140
            Top = 0
            Width = 36
            Height = 14
            Align = faLeft
            DataField = 'Cidade'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel865: TRLLabel
            Left = 176
            Top = 0
            Width = 6
            Height = 14
            Align = faLeft
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText646: TRLDBText
            Left = 182
            Top = 0
            Width = 16
            Height = 14
            Align = faLeft
            DataField = 'UF'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel867: TRLLabel
            Left = 198
            Top = 0
            Width = 13
            Height = 14
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText652: TRLDBText
            Left = 211
            Top = 0
            Width = 22
            Height = 14
            Align = faLeft
            DataField = 'CEP'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel170: TRLPanel
          Left = 61
          Top = 21
          Width = 689
          Height = 17
          object RLDBText654: TRLDBText
            Left = 0
            Top = 0
            Width = 52
            Height = 17
            Align = faLeft
            DataField = 'IdCliente'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText656: TRLDBText
            Left = 65
            Top = 0
            Width = 37
            Height = 17
            Align = faLeft
            DataField = 'Nome'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel868: TRLLabel
            Left = 52
            Top = 0
            Width = 13
            Height = 17
            Align = faLeft
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel869: TRLLabel
            Left = 102
            Top = 0
            Width = 46
            Height = 17
            Align = faLeft
            Caption = '  CNPJ: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText657: TRLDBText
            Left = 148
            Top = 0
            Width = 19
            Height = 17
            Align = faLeft
            DataField = 'cpf'
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
        object RLPanel171: TRLPanel
          Left = 428
          Top = 1
          Width = 322
          Height = 14
          object RLDBText658: TRLDBText
            Left = 195
            Top = 0
            Width = 59
            Height = 14
            Align = faRight
            DataField = 'IdVendedor'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText659: TRLDBText
            Left = 267
            Top = 0
            Width = 55
            Height = 14
            Align = faRight
            DataField = 'nomeVend'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel870: TRLLabel
            Left = 254
            Top = 0
            Width = 13
            Height = 14
            Align = faRight
            Caption = ' - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel871: TRLLabel
            Left = 127
            Top = 0
            Width = 68
            Height = 14
            Align = faRight
            Behavior = [beSiteExpander]
            Caption = 'VENDEDOR:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel172: TRLPanel
          Left = 2
          Top = 54
          Width = 748
          Height = 14
          object RLDBText660: TRLDBText
            Left = 65
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel1'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText661: TRLDBText
            Left = 97
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText662: TRLDBText
            Left = 129
            Top = 0
            Width = 20
            Height = 14
            Align = faLeft
            DataField = 'tel3'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel872: TRLLabel
            Left = 85
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel873: TRLLabel
            Left = 117
            Top = 0
            Width = 12
            Height = 14
            Align = faLeft
            Caption = ' / '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel874: TRLLabel
            Left = 0
            Top = 0
            Width = 65
            Height = 14
            Align = faLeft
            Behavior = [beSiteExpander]
            Caption = 'TELEFONE:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLLabel875: TRLLabel
          Left = 415
          Top = 99
          Width = 29
          Height = 14
          Align = faBottomOnly
          Caption = 'Qtde'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel876: TRLLabel
          Left = 634
          Top = 99
          Width = 33
          Height = 14
          Align = faBottomOnly
          Caption = 'Desc.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel877: TRLLabel
          Left = 700
          Top = 99
          Width = 53
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Total Liq.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel878: TRLLabel
          Left = 0
          Top = 99
          Width = 47
          Height = 14
          Align = faBottomOnly
          Caption = 'Produto'
          Color = 15395562
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
      object RLBand119: TRLBand
        Left = 0
        Top = 157
        Width = 756
        Height = 15
        AutoExpand = False
        AutoSize = True
        object RLDBText663: TRLDBText
          Left = 1
          Top = 0
          Width = 48
          Height = 14
          Align = faTopOnly
          DataField = 'IdProduto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText664: TRLDBText
          Left = 392
          Top = 0
          Width = 52
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qtd'
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
        object RLDBText665: TRLDBText
          Left = 501
          Top = 0
          Width = 21
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'Unit'
          DataSource = D
          DisplayMask = '###,###,##0.0000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText666: TRLDBText
          Left = 528
          Top = 0
          Width = 74
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'TotalBrutoProd'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText667: TRLDBText
          Left = 716
          Top = 0
          Width = 37
          Height = 14
          Align = faTopOnly
          Alignment = taRightJustify
          DataField = 'totprod'
          DataSource = D
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo36: TRLDBMemo
          Left = 55
          Top = 0
          Width = 319
          Height = 14
          Align = faTopOnly
          Behavior = [beSiteExpander]
          DataField = 'descricao'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText668: TRLDBText
          Left = 621
          Top = 0
          Width = 46
          Height = 15
          Align = faTopOnly
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'descprod'
          DataSource = D
          DisplayMask = '#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand120: TRLBand
        Left = 0
        Top = 16
        Width = 756
        Height = 27
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Color = clGray
        object RLDBText669: TRLDBText
          Left = 0
          Top = 0
          Width = 59
          Height = 18
          Align = faLeftTop
          DataField = 'fantasia'
          DataSource = DM.dParametro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo37: TRLSystemInfo
          Left = 665
          Top = 14
          Width = 91
          Height = 12
          Align = faRightBottom
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = itNow
          ParentFont = False
          Text = 'Impresso em:  '
        end
      end
      object RLBand121: TRLBand
        Left = 0
        Top = 295
        Width = 756
        Height = 21
        AutoExpand = False
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = clGray
        object RLLabel881: TRLLabel
          Left = 0
          Top = 1
          Width = 94
          Height = 11
          Align = faLeftTop
          Caption = 'thrsoftwares.com.br'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand122: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 16
        BandType = btHeader
      end
    end
  end
  object rpImpOrcamento5: TRLReport
    Left = 1650
    Top = 5792
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = dOrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Orcamento'
    object RLBand123: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 124
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand123BeforePrint
      object Image1: TImage
        Left = 4
        Top = 4
        Width = 299
        Height = 101
        Stretch = True
      end
      object RLSystemInfo36: TRLSystemInfo
        Left = 631
        Top = 4
        Width = 119
        Height = 15
        Alignment = taRightJustify
        Info = itNow
        Text = 'Impresso em:  '
      end
      object RLLabel882: TRLLabel
        Left = 319
        Top = 79
        Width = 154
        Height = 32
        Alignment = taRightJustify
        Caption = 'Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel883: TRLLabel
        Left = 638
        Top = 92
        Width = 22
        Height = 16
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText671: TRLDBText
        Left = 732
        Top = 92
        Width = 18
        Height = 19
        Alignment = taRightJustify
        DataField = 'Id'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel886: TRLLabel
        Left = 617
        Top = 62
        Width = 43
        Height = 16
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText672: TRLDBText
        Left = 712
        Top = 61
        Width = 38
        Height = 18
        Alignment = taRightJustify
        DataField = 'DATA'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object lEmail: TRLLabel
        Left = 2
        Top = 107
        Width = 81
        Height = 15
        Caption = 'email/telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand124: TRLBand
      Left = 19
      Top = 285
      Width = 756
      Height = 202
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand124AfterPrint
      BeforePrint = RLBand124BeforePrint
      object RLDraw17: TRLDraw
        Left = 323
        Top = 6
        Width = 432
        Height = 64
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Pen.Style = psClear
      end
      object RLLabel887: TRLLabel
        Left = 335
        Top = 11
        Width = 140
        Height = 15
        Caption = 'TOTAL DOS PRODUTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult120: TRLDBResult
        Left = 669
        Top = 11
        Width = 81
        Height = 15
        Alignment = taRightJustify
        DataField = 'vTotLiq'
        DataSource = dOrc
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
      object RLDBResult122: TRLDBResult
        Left = 490
        Top = 11
        Width = 59
        Height = 15
        Alignment = taRightJustify
        DataField = 'QTD'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.#'
        Info = riSum
        Text = ''
      end
      object RLLabel888: TRLLabel
        Left = 405
        Top = 29
        Width = 70
        Height = 15
        Caption = 'DESCONTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult123: TRLDBResult
        Left = 644
        Top = 30
        Width = 106
        Height = 15
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Text = ''
      end
      object RLLabel889: TRLLabel
        Left = 389
        Top = 48
        Width = 86
        Height = 15
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult124: TRLDBResult
        Left = 657
        Top = 48
        Width = 93
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLPanel174: TRLPanel
        Left = 0
        Top = 123
        Width = 756
        Height = 79
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object lCli5: TRLLabel
          Left = 33
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lEmp5: TRLLabel
          Left = 418
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lCliCpf5: TRLLabel
          Left = 34
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lempcpf5: TRLLabel
          Left = 419
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel175: TRLPanel
        Left = 0
        Top = 101
        Width = 756
        Height = 22
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLPanel176: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 20
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel894: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo37: TRLDBMemo
            Left = 33
            Top = 2
            Width = 717
            Height = 15
            Behavior = [beSiteExpander]
            DataField = 'obs_venda'
            DataSource = dOrc
          end
        end
      end
    end
    object RLBand125: TRLBand
      Left = 19
      Top = 162
      Width = 756
      Height = 107
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel895: TRLLabel
        Left = 1
        Top = 5
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel897: TRLLabel
        Left = 1
        Top = 23
        Width = 68
        Height = 15
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel177: TRLPanel
        Left = 72
        Top = 23
        Width = 678
        Height = 17
        object RLDBText674: TRLDBText
          Left = 0
          Top = 0
          Width = 56
          Height = 17
          Align = faLeft
          DataField = 'Endereco'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText675: TRLDBText
          Left = 65
          Top = 0
          Width = 30
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel898: TRLLabel
          Left = 56
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel899: TRLLabel
          Left = 95
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText676: TRLDBText
          Left = 108
          Top = 0
          Width = 36
          Height = 17
          Align = faLeft
          DataField = 'Bairro'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel900: TRLLabel
          Left = 144
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText677: TRLDBText
          Left = 157
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel901: TRLLabel
          Left = 200
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText678: TRLDBText
          Left = 206
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel902: TRLLabel
          Left = 225
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText679: TRLDBText
          Left = 238
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel178: TRLPanel
        Left = 61
        Top = 5
        Width = 689
        Height = 17
        object RLDBText680: TRLDBText
          Left = 0
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText681: TRLDBText
          Left = 65
          Top = 0
          Width = 50
          Height = 17
          Align = faLeft
          DataField = 'nomeCli'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel903: TRLLabel
          Left = 52
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLLabel904: TRLLabel
        Left = 1
        Top = 44
        Width = 69
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel179: TRLPanel
        Left = 73
        Top = 44
        Width = 677
        Height = 16
        object RLDBText682: TRLDBText
          Left = 0
          Top = 0
          Width = 66
          Height = 16
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText683: TRLDBText
          Left = 79
          Top = 0
          Width = 190
          Height = 16
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel905: TRLLabel
          Left = 66
          Top = 0
          Width = 13
          Height = 16
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel906: TRLLabel
          Left = 275
          Top = 0
          Width = 61
          Height = 15
          Caption = 'PACOTES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText684: TRLDBText
          Left = 337
          Top = 0
          Width = 81
          Height = 15
          AutoSize = False
          DataField = 'pacote'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel907: TRLLabel
          Left = 419
          Top = 0
          Width = 102
          Height = 15
          Caption = 'PRAZO ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText685: TRLDBText
          Left = 523
          Top = 0
          Width = 154
          Height = 15
          AutoSize = False
          DataField = 'PrazoEntrega'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel180: TRLPanel
        Left = 1
        Top = 85
        Width = 754
        Height = 21
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel908: TRLLabel
          Left = 0
          Top = 1
          Width = 483
          Height = 20
          Align = faClient
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Produto'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel912: TRLLabel
          Left = 483
          Top = 1
          Width = 64
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Qtde'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel913: TRLLabel
          Left = 547
          Top = 1
          Width = 76
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Unit'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel914: TRLLabel
          Left = 623
          Top = 1
          Width = 60
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Desc.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel915: TRLLabel
          Left = 683
          Top = 1
          Width = 71
          Height = 20
          Align = faRight
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Total'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLLabel916: TRLLabel
        Left = 457
        Top = 63
        Width = 82
        Height = 15
        Caption = 'FORMA PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText686: TRLDBText
        Left = 540
        Top = 63
        Width = 210
        Height = 17
        AutoSize = False
        DataField = 'forma_pgto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText673: TRLDBText
        Left = 86
        Top = 63
        Width = 340
        Height = 17
        AutoSize = False
        DataField = 'desCond'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel884: TRLLabel
        Left = 0
        Top = 63
        Width = 77
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'COND. PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand126: TRLBand
      Left = 19
      Top = 487
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo38: TRLSystemInfo
        Left = 640
        Top = 1
        Width = 116
        Height = 15
        Align = faRightTop
        Info = itPageNumber
        Text = 'Pag.: '
      end
      object RLLabel917: TRLLabel
        Left = 1
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
    object RLBand127: TRLBand
      Left = 19
      Top = 269
      Width = 756
      Height = 16
      object RLDBText687: TRLDBText
        Left = 0
        Top = 0
        Width = 40
        Height = 82
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'IdProduto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText688: TRLDBText
        Left = 483
        Top = 0
        Width = 64
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'Qtd'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText689: TRLDBText
        Left = 547
        Top = 0
        Width = 76
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'vUnitLiq'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText690: TRLDBText
        Left = 683
        Top = 0
        Width = 73
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'vTotLiq'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo38: TRLDBMemo
        Left = 40
        Top = 0
        Width = 443
        Height = 65
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'descricao'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText694: TRLDBText
        Left = 623
        Top = 0
        Width = 60
        Height = 82
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'descprod'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object rpImpOrcamento2: TRLReport
    Left = 826
    Top = 6937
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = dOrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Orcamento'
    object RLBand68: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 124
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand68BeforePrint
      object imgOrc2: TImage
        Left = 4
        Top = 4
        Width = 189
        Height = 105
        Stretch = True
      end
      object RLDBText448: TRLDBText
        Left = 225
        Top = 20
        Width = 82
        Height = 19
        DataField = 'e_fantasia'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo19: TRLSystemInfo
        Left = 631
        Top = 4
        Width = 119
        Height = 15
        Alignment = taRightJustify
        Info = itNow
        Text = 'Impresso em:  '
      end
      object RLLabel560: TRLLabel
        Left = 309
        Top = 80
        Width = 154
        Height = 32
        Alignment = taRightJustify
        Caption = 'Or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel561: TRLLabel
        Left = 638
        Top = 92
        Width = 22
        Height = 16
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText449: TRLDBText
        Left = 732
        Top = 92
        Width = 18
        Height = 19
        Alignment = taRightJustify
        DataField = 'Id'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object lEndOrc2: TRLLabel
        Left = 227
        Top = 42
        Width = 14
        Height = 14
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTelOrc2: TRLLabel
        Left = 227
        Top = 60
        Width = 14
        Height = 14
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel564: TRLLabel
        Left = 617
        Top = 62
        Width = 43
        Height = 16
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText450: TRLDBText
        Left = 712
        Top = 61
        Width = 38
        Height = 18
        Alignment = taRightJustify
        DataField = 'DATA'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand69: TRLBand
      Left = 19
      Top = 298
      Width = 756
      Height = 220
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      AfterPrint = RLBand69AfterPrint
      BeforePrint = RLBand69BeforePrint
      object RLDraw9: TRLDraw
        Left = 280
        Top = 22
        Width = 475
        Height = 93
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Pen.Style = psClear
      end
      object RLLabel565: TRLLabel
        Left = 582
        Top = 25
        Width = 44
        Height = 15
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult76: TRLDBResult
        Left = 669
        Top = 25
        Width = 81
        Height = 15
        Alignment = taRightJustify
        DataField = 'totprod'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult77: TRLDBResult
        Left = 338
        Top = 2
        Width = 60
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'QTD'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel566: TRLLabel
        Left = 556
        Top = 43
        Width = 70
        Height = 15
        Caption = 'DESCONTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult78: TRLDBResult
        Left = 644
        Top = 43
        Width = 106
        Height = 15
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel567: TRLLabel
        Left = 540
        Top = 95
        Width = 86
        Height = 15
        Caption = 'TOTAL VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult79: TRLDBResult
        Left = 668
        Top = 95
        Width = 81
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBResult80: TRLDBResult
        Left = 652
        Top = 2
        Width = 101
        Height = 14
        Alignment = taRightJustify
        DataField = 'totcubagem'
        DataSource = dOrc
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBResult81: TRLDBResult
        Left = 282
        Top = 2
        Width = 55
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'qtd_cx'
        DataSource = dOrc
        DisplayMask = '#.##0.###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLPanel103: TRLPanel
        Left = 0
        Top = 141
        Width = 756
        Height = 79
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object lCli2: TRLLabel
          Left = 33
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lEmp2: TRLLabel
          Left = 418
          Top = 34
          Width = 300
          Height = 20
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lCliCpf2: TRLLabel
          Left = 34
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lEmpCpf2: TRLLabel
          Left = 419
          Top = 55
          Width = 200
          Height = 15
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel104: TRLPanel
        Left = 0
        Top = 119
        Width = 756
        Height = 22
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLPanel105: TRLPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 20
          Align = faTop
          AutoExpand = True
          Behavior = [beSiteExpander]
          object RLLabel572: TRLLabel
            Left = 1
            Top = 2
            Width = 29
            Height = 15
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo20: TRLDBMemo
            Left = 33
            Top = 2
            Width = 717
            Height = 15
            Behavior = [beSiteExpander]
            DataField = 'obs_venda'
            DataSource = dOrc
          end
        end
      end
      object RLDBResult82: TRLDBResult
        Left = 598
        Top = 2
        Width = 60
        Height = 14
        Alignment = taRightJustify
        DataField = 'totPesoBruto'
        DataSource = dOrc
        DisplayMask = '#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult92: TRLDBResult
        Left = 547
        Top = 2
        Width = 50
        Height = 14
        Alignment = taRightJustify
        DataField = 'volume'
        DataSource = dOrc
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult93: TRLDBResult
        Left = 477
        Top = 2
        Width = 70
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'totprod'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel656: TRLLabel
        Left = 585
        Top = 60
        Width = 41
        Height = 15
        Caption = 'FRETE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult94: TRLDBResult
        Left = 666
        Top = 60
        Width = 84
        Height = 15
        Alignment = taRightJustify
        DataField = 'totFre'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel657: TRLLabel
        Left = 605
        Top = 77
        Width = 20
        Height = 15
        Caption = 'IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult95: TRLDBResult
        Left = 670
        Top = 77
        Width = 80
        Height = 15
        Alignment = taRightJustify
        DataField = 'totIPI'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand70: TRLBand
      Left = 19
      Top = 162
      Width = 756
      Height = 107
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel573: TRLLabel
        Left = 1
        Top = 5
        Width = 53
        Height = 15
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText451: TRLDBText
        Left = 83
        Top = 64
        Width = 194
        Height = 15
        AutoSize = False
        DataField = 'desCond'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel574: TRLLabel
        Left = 1
        Top = 64
        Width = 80
        Height = 14
        Caption = 'COND. PAGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel575: TRLLabel
        Left = 1
        Top = 23
        Width = 68
        Height = 15
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel106: TRLPanel
        Left = 72
        Top = 23
        Width = 678
        Height = 17
        object RLDBText452: TRLDBText
          Left = 0
          Top = 0
          Width = 56
          Height = 17
          Align = faLeft
          DataField = 'Endereco'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText453: TRLDBText
          Left = 65
          Top = 0
          Width = 30
          Height = 17
          Align = faLeft
          DataField = 'Num'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel576: TRLLabel
          Left = 56
          Top = 0
          Width = 9
          Height = 17
          Align = faLeft
          Caption = ', '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel577: TRLLabel
          Left = 95
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText454: TRLDBText
          Left = 108
          Top = 0
          Width = 36
          Height = 17
          Align = faLeft
          DataField = 'Bairro'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel578: TRLLabel
          Left = 144
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText455: TRLDBText
          Left = 157
          Top = 0
          Width = 43
          Height = 17
          Align = faLeft
          DataField = 'Cidade'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel579: TRLLabel
          Left = 200
          Top = 0
          Width = 6
          Height = 17
          Align = faLeft
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText456: TRLDBText
          Left = 206
          Top = 0
          Width = 19
          Height = 17
          Align = faLeft
          DataField = 'UF'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel580: TRLLabel
          Left = 225
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText457: TRLDBText
          Left = 238
          Top = 0
          Width = 28
          Height = 17
          Align = faLeft
          DataField = 'CEP'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel107: TRLPanel
        Left = 61
        Top = 5
        Width = 689
        Height = 17
        object RLDBText458: TRLDBText
          Left = 0
          Top = 0
          Width = 52
          Height = 17
          Align = faLeft
          DataField = 'IdCliente'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText459: TRLDBText
          Left = 65
          Top = 0
          Width = 50
          Height = 17
          Align = faLeft
          DataField = 'nomeCli'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel581: TRLLabel
          Left = 52
          Top = 0
          Width = 13
          Height = 17
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLLabel582: TRLLabel
        Left = 1
        Top = 44
        Width = 69
        Height = 15
        Behavior = [beSiteExpander]
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel108: TRLPanel
        Left = 73
        Top = 44
        Width = 677
        Height = 16
        BeforePrint = RLPanel108BeforePrint
        object RLDBText460: TRLDBText
          Left = 0
          Top = 0
          Width = 66
          Height = 16
          Align = faLeft
          DataField = 'IdVendedor'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText461: TRLDBText
          Left = 79
          Top = 0
          Width = 190
          Height = 16
          Align = faLeft
          AutoSize = False
          DataField = 'nomeVend'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel583: TRLLabel
          Left = 66
          Top = 0
          Width = 13
          Height = 16
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel669: TRLLabel
          Left = 269
          Top = 0
          Width = 102
          Height = 16
          Align = faLeft
          Behavior = [beSiteExpander]
          Caption = '   GERENTE CIAL:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText539: TRLDBText
          Left = 371
          Top = 0
          Width = 55
          Height = 16
          Align = faLeft
          DataField = 'idgerente'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel670: TRLLabel
          Left = 426
          Top = 0
          Width = 13
          Height = 16
          Align = faLeft
          Caption = ' - '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText540: TRLDBText
          Left = 439
          Top = 0
          Width = 190
          Height = 16
          Align = faLeft
          AutoSize = False
          DataField = 'nomeger'
          DataSource = dOrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel109: TRLPanel
        Left = 1
        Top = 85
        Width = 754
        Height = 21
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel586: TRLLabel
          Left = 26
          Top = 1
          Width = 37
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Ref.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel587: TRLLabel
          Left = 657
          Top = 1
          Width = 97
          Height = 20
          Align = faClient
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'm3'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel588: TRLLabel
          Left = 546
          Top = 1
          Width = 51
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Volume'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel589: TRLLabel
          Left = 281
          Top = 1
          Width = 56
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Qtde Dz'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel590: TRLLabel
          Left = 337
          Top = 1
          Width = 60
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Qtde P'#231's'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel591: TRLLabel
          Left = 397
          Top = 1
          Width = 79
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'R$ Unid.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel593: TRLLabel
          Left = 476
          Top = 1
          Width = 70
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'R$ Total'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel595: TRLLabel
          Left = 63
          Top = 1
          Width = 218
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel596: TRLLabel
          Left = 597
          Top = 1
          Width = 60
          Height = 20
          Align = faLeft
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Peso'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel592: TRLLabel
          Left = 0
          Top = 1
          Width = 26
          Height = 20
          Align = faLeft
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Seq.'
          Color = 15395562
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLLabel594: TRLLabel
        Left = 280
        Top = 64
        Width = 78
        Height = 14
        Caption = 'FORMA PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText464: TRLDBText
        Left = 362
        Top = 64
        Width = 111
        Height = 15
        AutoSize = False
        DataField = 'forma_pgto'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel584: TRLLabel
        Left = 476
        Top = 64
        Width = 57
        Height = 14
        Caption = 'PACOTES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText462: TRLDBText
        Left = 536
        Top = 64
        Width = 28
        Height = 15
        AutoSize = False
        DataField = 'pacote'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel585: TRLLabel
        Left = 569
        Top = 64
        Width = 95
        Height = 14
        Caption = 'PRAZO ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText463: TRLDBText
        Left = 666
        Top = 64
        Width = 84
        Height = 15
        AutoSize = False
        DataField = 'PrazoEntrega'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand71: TRLBand
      Left = 19
      Top = 518
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo20: TRLSystemInfo
        Left = 640
        Top = 1
        Width = 116
        Height = 15
        Align = faRightTop
        Info = itPageNumber
        Text = 'Pag.: '
      end
      object RLLabel671: TRLLabel
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
    object RLBand72: TRLBand
      Left = 19
      Top = 269
      Width = 756
      Height = 29
      AutoSize = True
      BeforePrint = RLBand72BeforePrint
      object RLDBText465: TRLDBText
        Left = 27
        Top = 0
        Width = 37
        Height = 29
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'referencia'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText466: TRLDBText
        Left = 338
        Top = 0
        Width = 60
        Height = 29
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'Qtd'
        DataSource = dOrc
        DisplayMask = '###,###,###,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText467: TRLDBText
        Left = 398
        Top = 0
        Width = 79
        Height = 29
        Align = faLeft
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'Unit'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText468: TRLDBText
        Left = 477
        Top = 0
        Width = 70
        Height = 29
        Align = faLeft
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'totprod'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText469: TRLDBText
        Left = 658
        Top = 0
        Width = 98
        Height = 29
        Align = faClient
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'cubagem'
        DataSource = dOrc
        DisplayMask = '#,##0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo21: TRLDBMemo
        Left = 64
        Top = 0
        Width = 218
        Height = 29
        Align = faLeft
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'descricao'
        DataSource = dOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText470: TRLDBText
        Left = 282
        Top = 0
        Width = 56
        Height = 29
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'qtd_cx'
        DataSource = dOrc
        DisplayMask = '#,##0.#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText471: TRLDBText
        Left = 547
        Top = 0
        Width = 51
        Height = 29
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'volume'
        DataSource = dOrc
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText473: TRLDBText
        Left = 598
        Top = 0
        Width = 60
        Height = 29
        Align = faLeft
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'totPesoBruto'
        DataSource = dOrc
        DisplayMask = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object lseqOrc: TRLLabel
        Left = 0
        Top = 0
        Width = 27
        Height = 29
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = '000'
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
      'select '
      '  venda.*,'
      '  venda_i.*,'
      '  venda_i.total totprod,'
      '  venda_i.desconto  descprod,'
      '  cliente.*,'
      '  produto.descricao, '
      '  produto.cod_manual, '
      '  vendedor.nome nomeVend,'
      ' cond_pgto.descricao desCond,'
      ' venda.obs obs_venda,'
      ' produto.barras,'
      ' produto.referencia,'
      ' --produto.multiplo,'
      ' coalesce( venda_i.qtd * produto.pesobru,0 ) totPesoBruto,'
      ' venda_i.total + venda_i.desconto TotalBrutoProd,'
      ' nf.nf, nf.emissao dt_nf,'
      ' tra.nome NomeT,'
      ' trd.nome NomeD,'
      ' (coalesce(produto.pesobru,0.00000) * venda_i.volume ) pesoBrCx,'
      ' venda_I.Qtd / COALESCE(produto.divisor, 1) qtdDivisor,'
      ' venda_i.id idve_i,'
      ' c2.descricao desCond2,'
      ' cliente.usa_codigo,'
      ' ge.nome nomeGer,'
      'us.nome nomefunc, produto.unidade_nfe, '
      'tabela.descricao destabela,'
      
        'concat(produto.idcor, '#39' - '#39', cor.descricao) cor, produto.tamanho' +
        ', produto.referencia_base, '
      'case when COALESCE(produto.volume2, '#39#39') <> '#39#39' THEN '
      '       concat (Venda_I.volume/2 , '#39' '#39', produto.volume2)'
      '     else '#39#39' end Dvolume2, '
      '     case when COALESCE(produto.volume2, '#39#39') <> '#39#39' THEN '
      '       concat (Venda_I.volume/2 , '#39' '#39', produto.volume1)'
      '     else concat (Venda_I.volume, '#39' '#39', produto.volume1)'
      '     end Dvolume1'
      'from  venda'
      'left join venda_i  on venda_i.idvenda = venda.id'
      'left join produto on produto.id = venda_I.idproduto'
      'left join cliente on cliente.id = venda.idcliente'
      'left join vendedor on vendedor.id = venda.idvendedor'
      'left join cond_pgto on cond_pgto.id = venda.idcondpgto'
      'left join cond_pgto c2 on c2.id = venda.idcondpgto2'
      'left join nf on nf.id = venda.notafiscal'
      'left join transportadora tra on tra.id = venda.idtranspotadora'
      'left join transportadora trd on trd.id = venda.idtransp'
      'left join vendedor ge on ge.id = venda.idgerente'
      'left join usuario us on us.id = venda.idusuario'
      'left join tabela on tabela.id = venda.idtabela'
      'left join cor on cor.id = produto.idcor'
      'where '
      '  venda.id = :id')
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
    object QId: TIntegerField
      FieldName = 'Id'
      Required = True
      DisplayFormat = '0000000'
    end
    object QData: TDateTimeField
      FieldName = 'Data'
    end
    object QIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object QIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object QIdCondPgto: TIntegerField
      FieldName = 'IdCondPgto'
    end
    object QValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QPrazoEntrega: TWideStringField
      FieldName = 'PrazoEntrega'
      Size = 100
    end
    object QNotaFiscal: TIntegerField
      FieldName = 'NotaFiscal'
    end
    object QIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object QQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,###,##0.#'
    end
    object QUnit: TFloatField
      FieldName = 'Unit'
      DisplayFormat = '###,###,##0.00'
    end
    object QNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object QEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object QNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object QBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object QCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object QCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object QUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qtel1: TWideStringField
      FieldName = 'tel1'
      EditMask = '(99) 999999999;0;_'
    end
    object Qdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object Qcod_manual: TIntegerField
      FieldName = 'cod_manual'
    end
    object Qtotprod: TFloatField
      FieldName = 'totprod'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qcomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object QnomeVend: TWideStringField
      FieldName = 'nomeVend'
      Size = 80
    end
    object QdesCond: TWideStringField
      FieldName = 'desCond'
      Size = 100
    end
    object QEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object QObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object Qtel2: TWideStringField
      FieldName = 'tel2'
      EditMask = '(99) 999999999;0;_'
    end
    object Qtel3: TWideStringField
      FieldName = 'tel3'
      EditMask = '(99) 999999999;0;_'
    end
    object Qpacote: TWideStringField
      FieldName = 'pacote'
      Size = 50
    end
    object Qbarras: TWideStringField
      FieldName = 'barras'
    end
    object Qreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object Qtotcubagem: TFloatField
      FieldName = 'totcubagem'
      DisplayFormat = '###,##0.000000'
    end
    object Qcubagem: TFloatField
      FieldName = 'cubagem'
      DisplayFormat = '###,##0.000000'
    end
    object Qdescprod: TFloatField
      FieldName = 'descprod'
      DisplayFormat = '###,###,##0.00'
    end
    object Qqtd_cx: TFloatField
      FieldName = 'qtd_cx'
      DisplayFormat = '###,###,###,##0.###'
      EditFormat = '#0.#'
    end
    object Qmultiplo: TFloatField
      FieldName = 'multiplo'
    end
    object Qtransp_vendedor: TWideStringField
      FieldName = 'transp_vendedor'
      Size = 150
    end
    object QtipoFrete: TWideStringField
      FieldName = 'tipoFrete'
      Size = 3
    end
    object Qforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 100
    end
    object QtotPesoBruto: TFloatField
      FieldName = 'totPesoBruto'
      ReadOnly = True
      DisplayFormat = '#0.000'
    end
    object QTotalBrutoProd: TFloatField
      FieldName = 'TotalBrutoProd'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object Qnf: TIntegerField
      FieldName = 'nf'
    end
    object Qdt_nf: TDateTimeField
      FieldName = 'dt_nf'
    end
    object Qcpf: TWideStringField
      FieldName = 'cpf'
      EditMask = '##.###.###/####-##;0;_'
    end
    object QNomeT: TWideStringField
      FieldName = 'NomeT'
      Size = 80
    end
    object QNomeD: TWideStringField
      FieldName = 'NomeD'
      Size = 80
    end
    object QpesoBrCx: TFloatField
      FieldName = 'pesoBrCx'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
    end
    object QqtdDivisor: TFloatField
      FieldName = 'qtdDivisor'
      ReadOnly = True
    end
    object Qidve_i: TIntegerField
      FieldName = 'idve_i'
      Required = True
    end
    object QdesCond2: TWideStringField
      FieldName = 'desCond2'
      Size = 100
    end
    object Qfoma_pgto2: TWideStringField
      FieldName = 'foma_pgto2'
      Size = 100
    end
    object Qusa_codigo: TWideStringField
      FieldName = 'usa_codigo'
      Size = 1
    end
    object Qvolume: TIntegerField
      FieldName = 'volume'
      DisplayFormat = '#0'
    end
    object Qidgerente: TIntegerField
      FieldName = 'idgerente'
    end
    object QnomeGer: TWideStringField
      FieldName = 'nomeGer'
      Size = 80
    end
    object Qnomefunc: TWideStringField
      FieldName = 'nomefunc'
      Size = 50
    end
    object QIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object Qx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object QExpedido: TWideStringField
      FieldName = 'Expedido'
      Size = 1
    end
    object QGeradoNFe: TWideStringField
      FieldName = 'GeradoNFe'
      Size = 1
    end
    object QpComissao: TFloatField
      FieldName = 'pComissao'
    end
    object Qboleto: TWideStringField
      FieldName = 'boleto'
      Required = True
      Size = 1
    end
    object Qdesc_especial: TFloatField
      FieldName = 'desc_especial'
    end
    object Qidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object Qstatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object Qsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object Qidweb: TIntegerField
      FieldName = 'idweb'
    end
    object Qidcomercial: TIntegerField
      FieldName = 'idcomercial'
    end
    object Qidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object Qidorc: TIntegerField
      FieldName = 'idorc'
    end
    object QmotivoR: TWideStringField
      FieldName = 'motivoR'
      Size = 255
    end
    object QidUserR: TIntegerField
      FieldName = 'idUserR'
    end
    object QDataR: TDateTimeField
      FieldName = 'DataR'
    end
    object Qidtransp: TIntegerField
      FieldName = 'idtransp'
    end
    object QtelTransp: TWideStringField
      FieldName = 'telTransp'
    end
    object QpDesconto: TFloatField
      FieldName = 'pDesconto'
    end
    object Qidcondpgto2: TIntegerField
      FieldName = 'idcondpgto2'
    end
    object Qidtranspotadora: TIntegerField
      FieldName = 'idtranspotadora'
    end
    object QLinhaDigitavel: TWideStringField
      FieldName = 'LinhaDigitavel'
      Size = 50
    end
    object QLinkBoleto: TWideStringField
      FieldName = 'LinkBoleto'
      Size = 100
    end
    object QLinkDanfe: TWideStringField
      FieldName = 'LinkDanfe'
      Size = 100
    end
    object QpComissaoG: TFloatField
      FieldName = 'pComissaoG'
    end
    object QId_1: TIntegerField
      FieldName = 'Id_1'
      Required = True
    end
    object QIdVenda: TIntegerField
      FieldName = 'IdVenda'
      Required = True
    end
    object QTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object QDesconto_1: TFloatField
      FieldName = 'Desconto_1'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QTotal_1: TFloatField
      FieldName = 'Total_1'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qx_1: TWideStringField
      FieldName = 'x_1'
      Required = True
      Size = 1
    end
    object QRoyalties: TFloatField
      FieldName = 'Royalties'
    end
    object Qunit2: TFloatField
      FieldName = 'unit2'
    end
    object Qunitst: TFloatField
      FieldName = 'unitst'
    end
    object QpComissao_1: TFloatField
      FieldName = 'pComissao_1'
    end
    object Qordemcompra: TWideStringField
      FieldName = 'ordemcompra'
    end
    object Qsincronizado_1: TWideStringField
      FieldName = 'sincronizado_1'
      Required = True
      Size = 1
    end
    object QidWeb_1: TIntegerField
      FieldName = 'idWeb_1'
    end
    object QvCusto: TFloatField
      FieldName = 'vCusto'
    end
    object QvMargem: TFloatField
      FieldName = 'vMargem'
    end
    object QvUnitLiq: TFloatField
      FieldName = 'vUnitLiq'
    end
    object QvTotLiq: TFloatField
      FieldName = 'vTotLiq'
    end
    object QpDesconto_1: TFloatField
      FieldName = 'pDesconto_1'
    end
    object Qdevolvido: TWideStringField
      FieldName = 'devolvido'
      Required = True
      Size = 1
    end
    object QpComissaoG_1: TFloatField
      FieldName = 'pComissaoG_1'
    end
    object QId_2: TIntegerField
      FieldName = 'Id_2'
      Required = True
    end
    object Qrg: TWideStringField
      FieldName = 'rg'
    end
    object Qdtnasc: TDateTimeField
      FieldName = 'dtnasc'
    end
    object Qdtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
    end
    object Qobs_1: TWideMemoField
      FieldName = 'obs_1'
      BlobType = ftWideMemo
    end
    object Qex_1: TIntegerField
      FieldName = 'ex_1'
    end
    object QlimiteCredito: TFloatField
      FieldName = 'limiteCredito'
    end
    object Qidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object Qtppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
    object Qrazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object QEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object QNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object QBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object QCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object QidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object QUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object QComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object Qativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object Qpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object Qpais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object Qcontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object QprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object Qdia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object Qinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object Qimagem_serasa: TWideStringField
      FieldName = 'imagem_serasa'
      Size = 100
    end
    object Qcidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
    object Qidcond1: TIntegerField
      FieldName = 'idcond1'
    end
    object Qidcond2: TIntegerField
      FieldName = 'idcond2'
    end
    object QidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object QidRedes: TIntegerField
      FieldName = 'idRedes'
    end
    object Qunidade_nfe: TWideStringField
      FieldName = 'unidade_nfe'
      Required = True
      Size = 10
    end
    object Qtotipi: TFloatField
      FieldName = 'totipi'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qobs_venda: TWideMemoField
      FieldName = 'obs_venda'
      BlobType = ftWideMemo
    end
    object Qv_adicional: TFloatField
      FieldName = 'v_adicional'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qtipo_entrega: TWideStringField
      FieldName = 'tipo_entrega'
      Size = 50
    end
    object Qdestabela: TWideStringField
      FieldName = 'destabela'
      Size = 50
    end
    object Qcor: TWideStringField
      FieldName = 'cor'
      ReadOnly = True
      Size = 115
    end
    object Qtamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 5
    end
    object Qreferencia_base: TWideStringField
      FieldName = 'referencia_base'
    end
    object QDvolume2: TWideStringField
      FieldName = 'Dvolume2'
      ReadOnly = True
      Size = 33
    end
    object QDvolume1: TWideStringField
      FieldName = 'Dvolume1'
      ReadOnly = True
      Size = 33
    end
    object Qseq_cliente: TIntegerField
      FieldName = 'seq_cliente'
      DisplayFormat = '0000000'
    end
  end
  object D: TDataSource
    DataSet = Q
    Left = 44
    Top = 21
  end
  object qCli: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'select c.id, c.nome, c.Endereco, c.Num, c.Bairro, c.CEP, c.Cidad' +
        'e, c.uf, c.email, c.rg, c.cpf, '
      
        'c.dtnasc, c.dtcadastro, c.tel1, c.tel2, c.tel3, c.obs, c.limiteC' +
        'redito, case c.tppessoa when '#39'J'#39' then '#39'Jur'#237'dica'#39' else '#39'F'#237'sica'#39' e' +
        'nd tppessoa,'
      
        'c.razao, c.comple, c.End_entrega, c.Num_entrega, c.Bairro_entreg' +
        'a, c.Cep_entrega, cidade.nome cidade_entrega, c.UF_entrega, c.Co' +
        'mple_entrega,'
      
        'case c.ativo when '#39'S'#39' then '#39'Sim'#39' else '#39'N'#227'o'#39' end ativo, case c.pa' +
        'is when 1058 then '#39'Brasil'#39' else cast(c.pais as varchar(10)) end ' +
        'pais, '
      
        'case c.pais_entrega when 1058 then '#39'Brasil'#39' else cast(c.pais as ' +
        'varchar(10)) end pais_entrega, case c.contribuinte when '#39'S'#39' then' +
        ' '#39'Sim'#39' else '#39'N'#227'o'#39' end contribuinte'
      ' from Cliente c'
      ' left join cidade on cidade.id = c.idcidade_entrega'
      'where  c.id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 554
    Top = 42
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qCliid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qClinome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qCliEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qCliNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qCliBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qCliCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object qCliCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qCliuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object qCliemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qClirg: TWideStringField
      FieldName = 'rg'
    end
    object qClicpf: TWideStringField
      FieldName = 'cpf'
    end
    object qClidtnasc: TDateTimeField
      FieldName = 'dtnasc'
      EditMask = '!##/##/####;1;_'
    end
    object qClidtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
      EditMask = '!##/##/####;1;_'
    end
    object qClitel1: TWideStringField
      FieldName = 'tel1'
      EditMask = '(99)999999999;0;_'
    end
    object qClitel2: TWideStringField
      FieldName = 'tel2'
      EditMask = '(99)999999999;0;_'
    end
    object qClitel3: TWideStringField
      FieldName = 'tel3'
      EditMask = '(99)999999999;0;_'
    end
    object qCliobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object qClilimiteCredito: TFloatField
      FieldName = 'limiteCredito'
      DisplayFormat = '###,###,##0.00'
    end
    object qClitppessoa: TWideStringField
      FieldName = 'tppessoa'
      ReadOnly = True
      Size = 8
    end
    object qClirazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object qClicomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object qCliEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object qCliNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qCliBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qCliCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object qClicidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
    object qCliUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qCliComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qCliativo: TWideStringField
      FieldName = 'ativo'
      ReadOnly = True
      Size = 3
    end
    object qClipais: TWideStringField
      FieldName = 'pais'
      ReadOnly = True
      Size = 10
    end
    object qClipais_entrega: TWideStringField
      FieldName = 'pais_entrega'
      ReadOnly = True
      Size = 10
    end
    object qClicontribuinte: TWideStringField
      FieldName = 'contribuinte'
      ReadOnly = True
      Size = 3
    end
  end
  object dsCli: TDataSource
    DataSet = qCli
    Left = 760
    Top = 65524
  end
  object dOrc: TDataSource
    DataSet = qOrc
    Left = 207
    Top = 13
  end
  object qOrc: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select distinct'
      'coalesce( orc.nome, cliente.nome) nomeCli,  '
      'orc.*,'
      '  orc_i.*,'
      '  orc_i.total totprod,'
      '  orc_i.desconto  descprod,'
      '  cliente.*,'
      '  produto.descricao, '
      '  produto.cod_manual, '
      '  vendedor.nome nomeVend,'
      ' cond_pgto.descricao desCond,'
      ' orc.obs obs_venda,'
      ' upper(orc.obs) obs_venda_up,'
      ' produto.barras,'
      ' produto.referencia,'
      ' --produto.multiplo,'
      'case '
      '  when orc.status = '#39'D'#39' then   '#39'Digitado'#39
      '  when orc.status = '#39'C'#39' then   '#39'Cancelado'#39
      '  when orc.status = '#39'F'#39' then   '#39'Finalizado'#39
      'end desStatus,'
      'empresa.fantasia e_fantasia,'
      'empresa.endereco e_end,'
      'empresa.num e_num,'
      'empresa.bairro e_bai,'
      'empresa.cidade e_cid, '
      'empresa.uf e_uf,'
      'empresa.telefone e_tel,'
      'empresa.logo e_logo,'
      'empresa.cnpj e_cnpj,'
      'concat (empresa.email, '#39' Tel: '#39'+ '
      #39'('#39' + SUBSTRING(empresa.telefone, 1, 2) + '#39') '#39' + '
      
        '    SUBSTRING(empresa.telefone, 2, LEN(empresa.telefone) - 6) + ' +
        #39'-'#39' + '
      
        '    SUBSTRING(empresa.telefone, LEN(empresa.telefone) - 3, 4)) a' +
        's emailtel,'
      'cliente.cpf,'
      'orc_I.Qtd / COALESCE(produto.divisor, 1) qtdDivisor,'
      'coalesce( orc_i.qtd * produto.pesobru,0 ) totPesoBruto,'
      'ge.nome nomeger, produto.unidade_nfe'
      ''
      ' '
      'from  orc'
      'left join orc_i  on orc_i.idorc = orc.id'
      'left join produto on produto.id = orc_I.idproduto'
      'left join cliente on cliente.id = orc.idcliente'
      'left join vendedor on vendedor.id = orc.idvendedor'
      'left join cond_pgto on cond_pgto.id = orc.idcondpgto'
      'left join empresa on empresa.id = orc.idemp'
      'left join vendedor ge on ge.id = orc.idgerente'
      ''
      ''
      'where '
      '  orc.id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 159
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'Id'
      Required = True
      DisplayFormat = '0000000'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Data'
    end
    object IntegerField2: TIntegerField
      FieldName = 'IdVendedor'
    end
    object IntegerField3: TIntegerField
      FieldName = 'IdCliente'
    end
    object IntegerField4: TIntegerField
      FieldName = 'IdCondPgto'
    end
    object FloatField1: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object FloatField2: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,###,##0.00'
    end
    object WideStringField1: TWideStringField
      FieldName = 'PrazoEntrega'
      Size = 100
    end
    object IntegerField5: TIntegerField
      FieldName = 'NotaFiscal'
    end
    object IntegerField6: TIntegerField
      FieldName = 'IdProduto'
    end
    object FloatField4: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,###,##0.###'
    end
    object FloatField5: TFloatField
      FieldName = 'Unit'
      DisplayFormat = '###,###,##0.00'
    end
    object WideStringField3: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object WideStringField5: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object WideStringField6: TWideStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object WideStringField7: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object WideStringField9: TWideStringField
      FieldName = 'tel1'
      EditMask = '(99) 999999999;0;_'
    end
    object WideStringField10: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object IntegerField7: TIntegerField
      FieldName = 'cod_manual'
    end
    object FloatField6: TFloatField
      FieldName = 'totprod'
      DisplayFormat = '#,###,###,##0.00'
    end
    object WideStringField11: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object WideStringField12: TWideStringField
      FieldName = 'nomeVend'
      Size = 80
    end
    object WideStringField13: TWideStringField
      FieldName = 'desCond'
      Size = 100
    end
    object IntegerField8: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object WideStringField16: TWideStringField
      FieldName = 'pacote'
      Size = 50
    end
    object WideStringField17: TWideStringField
      FieldName = 'barras'
    end
    object WideStringField18: TWideStringField
      FieldName = 'referencia'
    end
    object FloatField7: TFloatField
      FieldName = 'totcubagem'
      DisplayFormat = '###,##0.000000'
    end
    object FloatField8: TFloatField
      FieldName = 'cubagem'
      DisplayFormat = '###,##0.000000'
    end
    object FloatField9: TFloatField
      FieldName = 'descprod'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'qtd_cx'
      EditFormat = '#0.#'
    end
    object qOrcdesStatus: TWideStringField
      FieldName = 'desStatus'
      ReadOnly = True
      Size = 10
    end
    object qOrcmultiplo: TFloatField
      FieldName = 'multiplo'
      DisplayFormat = '#0.###'
    end
    object qOrce_fantasia: TWideStringField
      FieldName = 'e_fantasia'
      Size = 60
    end
    object qOrce_end: TWideStringField
      FieldName = 'e_end'
      Size = 40
    end
    object qOrce_num: TWideStringField
      FieldName = 'e_num'
      Size = 10
    end
    object qOrce_bai: TWideStringField
      FieldName = 'e_bai'
      Size = 25
    end
    object qOrce_cid: TWideStringField
      FieldName = 'e_cid'
      Size = 25
    end
    object qOrce_uf: TWideStringField
      FieldName = 'e_uf'
      Size = 2
    end
    object qOrce_tel: TWideStringField
      FieldName = 'e_tel'
      Size = 30
    end
    object qOrce_logo: TWideStringField
      FieldName = 'e_logo'
      Size = 150
    end
    object qOrce_cnpj: TWideStringField
      FieldName = 'e_cnpj'
    end
    object qOrccpf: TWideStringField
      FieldName = 'cpf'
    end
    object qOrcnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qOrcnomeCli: TWideStringField
      FieldName = 'nomeCli'
      Size = 100
    end
    object qOrcforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 100
    end
    object qOrcemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qOrcqtdDivisor: TFloatField
      FieldName = 'qtdDivisor'
      ReadOnly = True
    end
    object qOrctotPesoBruto: TFloatField
      FieldName = 'totPesoBruto'
      ReadOnly = True
    end
    object qOrcvolume: TIntegerField
      FieldName = 'volume'
    end
    object qOrcvUnitLiq: TFloatField
      FieldName = 'vUnitLiq'
      DisplayFormat = '###,###,##0.0000000'
    end
    object qOrcvTotLiq: TFloatField
      FieldName = 'vTotLiq'
      DisplayFormat = '###,###,##0.00'
    end
    object qOrcidgerente: TIntegerField
      FieldName = 'idgerente'
    end
    object qOrcnomeger: TWideStringField
      FieldName = 'nomeger'
      Size = 80
    end
    object qOrcidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qOrcunidade_nfe: TWideStringField
      FieldName = 'unidade_nfe'
      Required = True
      Size = 10
    end
    object qOrcobs_venda: TWideMemoField
      FieldName = 'obs_venda'
      BlobType = ftWideMemo
    end
    object qOrctel3: TWideStringField
      FieldName = 'tel3'
      EditMask = '(99) 999999999;0;_'
    end
    object qOrctel2: TWideStringField
      FieldName = 'tel2'
      EditMask = '(99) 999999999;0;_'
    end
    object qOrcemailtel: TWideStringField
      FieldName = 'emailtel'
      ReadOnly = True
      Size = 97
    end
    object qOrctotFre: TFloatField
      FieldName = 'totFre'
      DisplayFormat = '###,###,##0.00'
    end
    object qOrctotIPI: TFloatField
      FieldName = 'totIPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qOrcobs_venda_up: TWideMemoField
      FieldName = 'obs_venda_up'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qMt: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      '  case when produto.multiplo = 1 then '
      '        venda_i.qtd_cx * produto.pesobru'
      '   else'
      '       venda_i.qtd end Qtd_peso,'
      '  venda.*,'
      '  venda_i.*,'
      '  venda_i.total totprod,'
      '  venda_i.desconto  descprod,'
      '  cliente.*,'
      '  produto.descricao, '
      '  produto.cod_manual, '
      '  vendedor.nome nomeVend,'
      ' cond_pgto.descricao desCond,'
      ' venda.obs obs_venda,'
      ' produto.barras,'
      ' produto.referencia,'
      ' --produto.multiplo,'
      ' coalesce( venda_i.qtd * produto.pesobru,0 ) totPesoBruto,'
      'produto.unidade_nfe,'
      'case when produto.idgrupo = 1 then 1 else 0 end g,'
      '(select sum(dev_i.Qtd_dev) from dev_i '
      ' inner join dev on dev.id = dev_i.IdDev'
      
        ' where dev.idvenda = venda_i.IdVenda and dev_i.idproduto = venda' +
        '_i.IdProduto) qtddev,'
      ' (select sum(dev_i.qtd_cx_dev) from dev_i '
      ' inner join dev on dev.id = dev_i.IdDev'
      
        ' where dev.idvenda = venda_i.IdVenda and dev_i.idproduto = venda' +
        '_i.IdProduto) qtd_cxdev'
      ''
      ''
      'from  venda'
      'left join venda_i  on venda_i.idvenda = venda.id'
      'left join produto on produto.id = venda_I.idproduto'
      'left join cliente on cliente.id = venda.idcliente'
      'left join vendedor on vendedor.id = venda.idvendedor'
      'left join cond_pgto on cond_pgto.id = venda.idcondpgto'
      ''
      ''
      'where '
      '  venda.id = :id'
      ''
      ''
      'order by g')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 287
    Top = 21
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qMtId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qMtData: TDateTimeField
      FieldName = 'Data'
    end
    object qMtIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qMtIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qMtIdCondPgto: TIntegerField
      FieldName = 'IdCondPgto'
    end
    object qMtValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtPrazoEntrega: TWideStringField
      FieldName = 'PrazoEntrega'
      Size = 100
    end
    object qMtNotaFiscal: TIntegerField
      FieldName = 'NotaFiscal'
    end
    object qMtIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qMtx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object qMtEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object qMtExpedido: TWideStringField
      FieldName = 'Expedido'
      Size = 1
    end
    object qMtGeradoNFe: TWideStringField
      FieldName = 'GeradoNFe'
      Size = 1
    end
    object qMtpComissao: TFloatField
      FieldName = 'pComissao'
    end
    object qMtObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object qMtboleto: TWideStringField
      FieldName = 'boleto'
      Required = True
      Size = 1
    end
    object qMtpacote: TWideStringField
      FieldName = 'pacote'
      Size = 50
    end
    object qMttotcubagem: TFloatField
      FieldName = 'totcubagem'
    end
    object qMtdesc_especial: TFloatField
      FieldName = 'desc_especial'
    end
    object qMtidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qMtstatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object qMtsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qMtidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qMtidcomercial: TIntegerField
      FieldName = 'idcomercial'
    end
    object qMtidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qMtidorc: TIntegerField
      FieldName = 'idorc'
    end
    object qMtpDesconto: TFloatField
      FieldName = 'pDesconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtmotivoR: TWideStringField
      FieldName = 'motivoR'
      Size = 255
    end
    object qMtidUserR: TIntegerField
      FieldName = 'idUserR'
    end
    object qMtDataR: TDateTimeField
      FieldName = 'DataR'
    end
    object qMttipoFrete: TWideStringField
      FieldName = 'tipoFrete'
      Size = 3
    end
    object qMttransp_vendedor: TWideStringField
      FieldName = 'transp_vendedor'
      Size = 150
    end
    object qMtidtransp: TIntegerField
      FieldName = 'idtransp'
    end
    object qMtforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 100
    end
    object qMttelTransp: TWideStringField
      FieldName = 'telTransp'
    end
    object qMtidcondpgto2: TIntegerField
      FieldName = 'idcondpgto2'
    end
    object qMtidtranspotadora: TIntegerField
      FieldName = 'idtranspotadora'
    end
    object qMtfoma_pgto2: TWideStringField
      FieldName = 'foma_pgto2'
      Size = 100
    end
    object qMtId_1: TIntegerField
      FieldName = 'Id_1'
      Required = True
    end
    object qMtIdVenda: TIntegerField
      FieldName = 'IdVenda'
      Required = True
    end
    object qMtIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qMtTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qMtQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qMtUnit: TFloatField
      FieldName = 'Unit'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtDesconto_1: TFloatField
      FieldName = 'Desconto_1'
    end
    object qMtTotal_1: TFloatField
      FieldName = 'Total_1'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtx_1: TWideStringField
      FieldName = 'x_1'
      Required = True
      Size = 1
    end
    object qMtRoyalties: TFloatField
      FieldName = 'Royalties'
    end
    object qMtunit2: TFloatField
      FieldName = 'unit2'
    end
    object qMtunitst: TFloatField
      FieldName = 'unitst'
    end
    object qMtpComissao_1: TFloatField
      FieldName = 'pComissao_1'
    end
    object qMtordemcompra: TWideStringField
      FieldName = 'ordemcompra'
    end
    object qMtcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object qMtqtd_cx: TFloatField
      FieldName = 'qtd_cx'
    end
    object qMtsincronizado_1: TWideStringField
      FieldName = 'sincronizado_1'
      Required = True
      Size = 1
    end
    object qMtidWeb_1: TIntegerField
      FieldName = 'idWeb_1'
    end
    object qMtpDesconto_1: TFloatField
      FieldName = 'pDesconto_1'
    end
    object qMtvCusto: TFloatField
      FieldName = 'vCusto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtvMargem: TFloatField
      FieldName = 'vMargem'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtvUnitLiq: TFloatField
      FieldName = 'vUnitLiq'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtvTotLiq: TFloatField
      FieldName = 'vTotLiq'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMttotprod: TFloatField
      FieldName = 'totprod'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtdescprod: TFloatField
      FieldName = 'descprod'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qMtId_2: TIntegerField
      FieldName = 'Id_2'
      Required = True
    end
    object qMtNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qMtEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qMtNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qMtBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qMtCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object qMtCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qMtUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qMtemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qMtrg: TWideStringField
      FieldName = 'rg'
    end
    object qMtcpf: TWideStringField
      FieldName = 'cpf'
    end
    object qMtdtnasc: TDateTimeField
      FieldName = 'dtnasc'
    end
    object qMtdtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
    end
    object qMttel1: TWideStringField
      FieldName = 'tel1'
    end
    object qMttel2: TWideStringField
      FieldName = 'tel2'
    end
    object qMttel3: TWideStringField
      FieldName = 'tel3'
    end
    object qMtobs_1: TWideMemoField
      FieldName = 'obs_1'
      BlobType = ftWideMemo
    end
    object qMtex_1: TIntegerField
      FieldName = 'ex_1'
    end
    object qMtlimiteCredito: TFloatField
      FieldName = 'limiteCredito'
    end
    object qMtidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object qMttppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
    object qMtrazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object qMtcomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object qMtEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object qMtNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qMtBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qMtCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object qMtidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object qMtUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qMtComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qMtativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object qMtpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qMtpais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object qMtcontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object qMtprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object qMtidtabela_1: TIntegerField
      FieldName = 'idtabela_1'
      Required = True
    end
    object qMtdia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object qMtinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object qMtimagem_serasa: TWideStringField
      FieldName = 'imagem_serasa'
      Size = 100
    end
    object qMtidvendedor_1: TIntegerField
      FieldName = 'idvendedor_1'
    end
    object qMtidweb_1_1: TIntegerField
      FieldName = 'idweb_1_1'
    end
    object qMtsincronizado_2: TWideStringField
      FieldName = 'sincronizado_2'
      Required = True
      Size = 1
    end
    object qMtcidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
    object qMtidcomercial_1: TIntegerField
      FieldName = 'idcomercial_1'
    end
    object qMtidemp_1: TIntegerField
      FieldName = 'idemp_1'
    end
    object qMtforma_pgto_1: TWideStringField
      FieldName = 'forma_pgto_1'
      Size = 100
    end
    object qMtidcond1: TIntegerField
      FieldName = 'idcond1'
    end
    object qMtidcond2: TIntegerField
      FieldName = 'idcond2'
    end
    object qMtidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object qMtidRedes: TIntegerField
      FieldName = 'idRedes'
    end
    object qMtfoma_pgto2_1: TWideStringField
      FieldName = 'foma_pgto2_1'
      Size = 100
    end
    object qMtdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qMtcod_manual: TIntegerField
      FieldName = 'cod_manual'
    end
    object qMtnomeVend: TWideStringField
      FieldName = 'nomeVend'
      Size = 80
    end
    object qMtdesCond: TWideStringField
      FieldName = 'desCond'
      Size = 100
    end
    object qMtobs_venda: TWideMemoField
      FieldName = 'obs_venda'
      BlobType = ftWideMemo
    end
    object qMtbarras: TWideStringField
      FieldName = 'barras'
    end
    object qMtreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object qMtmultiplo: TFloatField
      FieldName = 'multiplo'
      DisplayFormat = '###,###,###,##0.#'
    end
    object qMttotPesoBruto: TFloatField
      FieldName = 'totPesoBruto'
      ReadOnly = True
    end
    object qMtQtd_peso: TFloatField
      FieldName = 'Qtd_peso'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.#'
    end
    object qMtunidade_nfe: TWideStringField
      FieldName = 'unidade_nfe'
      Required = True
      Size = 10
    end
    object qMtg: TIntegerField
      FieldName = 'g'
      ReadOnly = True
    end
    object qMtqtddev: TFloatField
      FieldName = 'qtddev'
      ReadOnly = True
    end
    object qMtqtd_cxdev: TFloatField
      FieldName = 'qtd_cxdev'
      ReadOnly = True
    end
  end
  object dMt: TDataSource
    DataSet = qMt
    Left = 332
    Top = 13
  end
  object qPro: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select v.idproduto id, p.referencia, p.barras, p.descricao'
      '                from venda_i v '
      '                left join produto p on p.id = v.idproduto '
      '                where v.id in (  :id  )')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 408
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qProid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qProreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object qProbarras: TWideStringField
      FieldName = 'barras'
    end
    object qProdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object dPro: TDataSource
    DataSet = qPro
    Left = 440
    Top = 4
  end
  object qDev: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      '  dev.*,'
      '  dev_i.*,'
      '  dev_i.total_dev totprod,'
      '  cliente.*,'
      '  produto.descricao, '
      '  vendedor.nome nomeVend,'
      ' produto.barras,'
      ' produto.referencia,'
      ' --produto.multiplo,'
      ' venda_i.idvenda idvenda_IT'
      ''
      'from  dev'
      'left join dev_i  on dev_i.iddev = dev.id'
      'left join produto on produto.id = dev_I.idproduto'
      'left join cliente on cliente.id = dev.idcliente'
      'left join vendedor on vendedor.id = dev.idvendedor'
      
        'left join venda_i on venda_i.id = dev_i.idvenda_i and dev_i.idve' +
        'nda_i > 0'
      'where '
      '  dev.id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 492
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qDevId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qDevData: TDateTimeField
      FieldName = 'Data'
    end
    object qDevIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object qDevIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qDevIdvenda: TIntegerField
      FieldName = 'Idvenda'
    end
    object qDevnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object qDevValor: TFloatField
      FieldName = 'Valor'
    end
    object qDevObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
    object qDevchave: TWideStringField
      FieldName = 'chave'
      Size = 200
    end
    object qDevIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qDevidemp: TIntegerField
      FieldName = 'idemp'
      Required = True
    end
    object qDevStatus: TWideStringField
      FieldName = 'Status'
      Required = True
      Size = 1
    end
    object qDevx: TWideStringField
      FieldName = 'x'
      Required = True
      Size = 1
    end
    object qDevEx: TIntegerField
      FieldName = 'Ex'
      Required = True
    end
    object qDevidnf_dev: TIntegerField
      FieldName = 'idnf_dev'
    end
    object qDevId_1: TIntegerField
      FieldName = 'Id_1'
      Required = True
    end
    object qDevIdDev: TIntegerField
      FieldName = 'IdDev'
      Required = True
    end
    object qDevIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qDevTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qDevQtd: TFloatField
      FieldName = 'Qtd'
    end
    object qDevUnit: TFloatField
      FieldName = 'Unit'
    end
    object qDevTotal: TFloatField
      FieldName = 'Total'
    end
    object qDevx_1: TWideStringField
      FieldName = 'x_1'
      Required = True
      Size = 1
    end
    object qDevqtd_cx: TFloatField
      FieldName = 'qtd_cx'
    end
    object qDevidvenda_i: TIntegerField
      FieldName = 'idvenda_i'
    end
    object qDevqtd_dev: TFloatField
      FieldName = 'qtd_dev'
    end
    object qDevtotal_dev: TFloatField
      FieldName = 'total_dev'
    end
    object qDevqtd_cx_dev: TFloatField
      FieldName = 'qtd_cx_dev'
    end
    object qDevtotprod: TFloatField
      FieldName = 'totprod'
    end
    object qDevId_2: TIntegerField
      FieldName = 'Id_2'
      Required = True
    end
    object qDevNome_1: TWideStringField
      FieldName = 'Nome_1'
      Size = 100
    end
    object qDevEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object qDevNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object qDevBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object qDevCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qDevCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qDevUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qDevemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qDevrg: TWideStringField
      FieldName = 'rg'
    end
    object qDevcpf: TWideStringField
      FieldName = 'cpf'
    end
    object qDevdtnasc: TDateTimeField
      FieldName = 'dtnasc'
    end
    object qDevdtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
    end
    object qDevtel1: TWideStringField
      FieldName = 'tel1'
    end
    object qDevtel2: TWideStringField
      FieldName = 'tel2'
    end
    object qDevtel3: TWideStringField
      FieldName = 'tel3'
    end
    object qDevobs_1: TWideMemoField
      FieldName = 'obs_1'
      BlobType = ftWideMemo
    end
    object qDevex_1: TIntegerField
      FieldName = 'ex_1'
    end
    object qDevlimiteCredito: TFloatField
      FieldName = 'limiteCredito'
    end
    object qDevidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object qDevtppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
    object qDevrazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object qDevcomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object qDevEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object qDevNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object qDevBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object qDevCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      Size = 8
    end
    object qDevidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
    end
    object qDevUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object qDevComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object qDevativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object qDevpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object qDevpais_entrega: TIntegerField
      FieldName = 'pais_entrega'
      Required = True
    end
    object qDevcontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object qDevprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object qDevidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object qDevdia_fecha: TIntegerField
      FieldName = 'dia_fecha'
      Required = True
    end
    object qDevinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object qDevimagem_serasa: TWideStringField
      FieldName = 'imagem_serasa'
      Size = 100
    end
    object qDevidvendedor_1: TIntegerField
      FieldName = 'idvendedor_1'
    end
    object qDevidweb: TIntegerField
      FieldName = 'idweb'
    end
    object qDevsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object qDevcidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
    object qDevidcomercial: TIntegerField
      FieldName = 'idcomercial'
    end
    object qDevidemp_1: TIntegerField
      FieldName = 'idemp_1'
    end
    object qDevforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 100
    end
    object qDevidcond1: TIntegerField
      FieldName = 'idcond1'
    end
    object qDevidcond2: TIntegerField
      FieldName = 'idcond2'
    end
    object qDevidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object qDevidRedes: TIntegerField
      FieldName = 'idRedes'
    end
    object qDevfoma_pgto2: TWideStringField
      FieldName = 'foma_pgto2'
      Size = 100
    end
    object qDevdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qDevnomeVend: TWideStringField
      FieldName = 'nomeVend'
      Size = 80
    end
    object qDevbarras: TWideStringField
      FieldName = 'barras'
    end
    object qDevreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object qDevmultiplo: TFloatField
      FieldName = 'multiplo'
    end
    object qDevidvenda_IT: TIntegerField
      FieldName = 'idvenda_IT'
      Required = True
    end
    object qDevunit_dev: TFloatField
      FieldName = 'unit_dev'
    end
  end
  object dDev: TDataSource
    DataSet = qDev
    Left = 572
    Top = 9
  end
end
