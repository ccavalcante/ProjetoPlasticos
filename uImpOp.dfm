object fImpOp: TfImpOp
  Left = 215
  Top = 145
  Width = 1013
  Height = 569
  HorzScrollBar.Position = 656
  VertScrollBar.Position = 294
  AutoScroll = True
  Caption = 'fImpOp'
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
    Left = -648
    Top = -262
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = fCnsOP.dOP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 19
      Top = 38
      Width = 756
      Height = 66
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 3
        Top = 8
        Width = 48
        Height = 16
        DataField = 'RAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 576
        Top = 8
        Width = 139
        Height = 16
        Info = itNow
        Text = '  '
      end
      object lTitulo: TRLLabel
        Left = 247
        Top = 46
        Width = 261
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de Ordem  de Produ'#231#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 19
      Top = 185
      Width = 756
      Height = 39
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel6: TRLLabel
        Left = 2
        Top = 14
        Width = 420
        Height = 15
        Caption = 
          'Data: ____/ ____/ ______      Assinatura: ______________________' +
          '_____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 135
      Width = 756
      Height = 18
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText12: TRLDBText
        Left = 51
        Top = 1
        Width = 203
        Height = 16
        AutoSize = False
        DataField = 'descricao'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 463
        Top = 1
        Width = 43
        Height = 15
        Alignment = taRightJustify
        DataField = 'SALDO'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 1
        Top = 1
        Width = 13
        Height = 15
        DataField = 'id'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 603
        Top = 1
        Width = 151
        Height = 16
        AutoSize = False
        DataField = 'StatusOp'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object dbLote: TRLDBText
        Left = 256
        Top = 1
        Width = 62
        Height = 15
        AutoSize = False
        DataField = 'Data'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object dbData: TRLDBText
        Left = 347
        Top = 1
        Width = 30
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object dbTipoE: TRLDBText
        Left = 398
        Top = 1
        Width = 50
        Height = 15
        Alignment = taRightJustify
        DataField = 'Montada'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 510
        Top = 1
        Width = 89
        Height = 16
        AutoSize = False
        DataField = 'nome'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 104
      Width = 756
      Height = 31
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel9: TRLLabel
        Left = 0
        Top = 15
        Width = 20
        Height = 15
        Align = faBottomOnly
        Caption = 'OP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 603
        Top = 15
        Width = 40
        Height = 15
        Align = faBottomOnly
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lLote: TRLLabel
        Left = 396
        Top = 15
        Width = 52
        Height = 15
        Align = faBottomOnly
        Caption = 'Montada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lData: TRLLabel
        Left = 471
        Top = 15
        Width = 35
        Height = 15
        Align = faBottomOnly
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTipoE: TRLLabel
        Left = 510
        Top = 15
        Width = 47
        Height = 15
        Align = faBottomOnly
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 51
        Top = 15
        Width = 48
        Height = 15
        Align = faBottomOnly
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 256
        Top = 15
        Width = 29
        Height = 15
        Align = faBottomOnly
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 346
        Top = 15
        Width = 31
        Height = 15
        Align = faBottomOnly
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 153
      Width = 756
      Height = 32
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult1: TRLDBResult
        Left = 426
        Top = 6
        Width = 80
        Height = 15
        Alignment = taRightJustify
        DataField = 'SALDO'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 359
        Top = 6
        Width = 89
        Height = 15
        Alignment = taRightJustify
        DataField = 'Montada'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 309
        Top = 6
        Width = 68
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = fCnsOP.dOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 2
        Top = 5
        Width = 64
        Height = 15
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand63: TRLBand
      Left = 19
      Top = 224
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo33: TRLSystemInfo
        Left = 654
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
      object RLLabel143: TRLLabel
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
  object rpRomaneioSubOp: TRLReport
    Left = 186
    Top = -262
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = dRom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rpRomaneioSubOpBeforePrint
    object RLGroup1: TRLGroup
      Left = 19
      Top = 38
      Width = 756
      Height = 891
      DataFields = 'NomeFor'
      PageBreaking = pbAfterPrint
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 0
        Width = 756
        Height = 512
        Background.AutoSize = False
        DataSource = dRomSubOp
        IntegralHeight = True
        Transparent = False
        BeforePrint = RLSubDetail1BeforePrint
        object RLBand10: TRLBand
          Left = 0
          Top = 245
          Width = 756
          Height = 110
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          AfterPrint = RLBand10AfterPrint
          BeforePrint = RLBand10BeforePrint
          object RLDBResult6: TRLDBResult
            Left = 619
            Top = 6
            Width = 68
            Height = 15
            Alignment = taRightJustify
            DataField = 'qtdM'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = ''
          end
          object RLLabel18: TRLLabel
            Left = 551
            Top = 5
            Width = 34
            Height = 15
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel62: TRLLabel
            Left = 21
            Top = 40
            Width = 683
            Height = 16
            Caption = 
              'Recebimento: ___/___/______ Hora: ___:___          _____________' +
              '_________________________________________'
          end
          object RLLabel63: TRLLabel
            Left = 21
            Top = 85
            Width = 684
            Height = 16
            Caption = 
              'Retorno....... : ___/___/______ Hora: ___:___          _________' +
              '_____________________________________________'
          end
          object RLDBText60: TRLDBText
            Left = 324
            Top = 57
            Width = 380
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'NomeFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 0
          Width = 756
          Height = 41
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText4: TRLDBText
            Left = 0
            Top = 1
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
          object RLSystemInfo3: TRLSystemInfo
            Left = 616
            Top = 0
            Width = 139
            Height = 16
            Info = itNow
            Text = '  '
          end
          object RLLabel7: TRLLabel
            Left = 337
            Top = 21
            Width = 82
            Height = 19
            Align = faCenterBottom
            Alignment = taRightJustify
            Caption = 'Romaneio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 227
          Width = 756
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText5: TRLDBText
            Left = 89
            Top = 1
            Width = 471
            Height = 16
            AutoSize = False
            DataField = 'desc_mp'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 1
            Top = 1
            Width = 55
            Height = 15
            DataField = 'idproduto'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 568
            Top = 1
            Width = 17
            Height = 15
            Alignment = taRightJustify
            DataField = 'un'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText10: TRLDBText
            Left = 658
            Top = 1
            Width = 29
            Height = 15
            Alignment = taRightJustify
            DataField = 'qtdM'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand9: TRLBand
          Left = 0
          Top = 41
          Width = 756
          Height = 186
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand9BeforePrint
          object RLDraw1: TRLDraw
            Left = 0
            Top = 69
            Width = 754
            Height = 24
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.Color = clGray
            Pen.Style = psClear
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 91
            Width = 754
            Height = 73
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.Color = clGray
            Brush.Color = 15527148
            Pen.Style = psClear
          end
          object RLLabel10: TRLLabel
            Left = 0
            Top = 170
            Width = 42
            Height = 15
            Align = faBottomOnly
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 90
            Top = 170
            Width = 48
            Height = 15
            Align = faBottomOnly
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 567
            Top = 170
            Width = 18
            Height = 15
            Align = faBottomOnly
            Caption = 'Un'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 657
            Top = 170
            Width = 30
            Height = 15
            Align = faBottomOnly
            Caption = 'Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 0
            Top = 4
            Width = 39
            Height = 15
            Caption = 'Nome:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 71
            Top = 4
            Width = 674
            Height = 16
            AutoSize = False
            DataField = 'NomeFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText17: TRLDBText
            Left = 71
            Top = 25
            Width = 529
            Height = 16
            AutoSize = False
            DataField = 'endFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel20: TRLLabel
            Left = 0
            Top = 25
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
          object RLDBText18: TRLDBText
            Left = 183
            Top = 73
            Width = 101
            Height = 16
            AutoSize = False
            DataField = 'Tipo'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel21: TRLLabel
            Left = 146
            Top = 73
            Width = 36
            Height = 15
            Caption = 'Envio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 73
            Top = 73
            Width = 22
            Height = 15
            Caption = 'Op:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 96
            Top = 73
            Width = 45
            Height = 16
            AutoSize = False
            DataField = 'IdSubOP'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText19: TRLDBText
            Left = 321
            Top = 73
            Width = 89
            Height = 16
            AutoSize = False
            DataField = 'Data'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel22: TRLLabel
            Left = 288
            Top = 73
            Width = 32
            Height = 15
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 414
            Top = 73
            Width = 33
            Height = 15
            Caption = 'Hora:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 606
            Top = 26
            Width = 51
            Height = 15
            Caption = 'N'#250'mero:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 663
            Top = 26
            Width = 82
            Height = 16
            AutoSize = False
            DataField = 'numFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel26: TRLLabel
            Left = 0
            Top = 47
            Width = 45
            Height = 15
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 71
            Top = 47
            Width = 268
            Height = 16
            AutoSize = False
            DataField = 'cidFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel27: TRLLabel
            Left = 348
            Top = 47
            Width = 20
            Height = 15
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 371
            Top = 47
            Width = 27
            Height = 16
            AutoSize = False
            DataField = 'ufFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText25: TRLDBText
            Left = 471
            Top = 47
            Width = 134
            Height = 16
            AutoSize = False
            DataField = 'tel1For'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel28: TRLLabel
            Left = 413
            Top = 47
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
          object RLDBText26: TRLDBText
            Left = 611
            Top = 47
            Width = 134
            Height = 16
            AutoSize = False
            DataField = 'tel2For'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel29: TRLLabel
            Left = 2
            Top = 94
            Width = 51
            Height = 15
            Caption = 'Produto:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText27: TRLDBText
            Left = 3
            Top = 110
            Width = 291
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'desc_pr'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText28: TRLDBText
            Left = 297
            Top = 110
            Width = 240
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'desc_SA'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel30: TRLLabel
            Left = 297
            Top = 94
            Width = 84
            Height = 15
            Caption = 'Semiacabado:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText29: TRLDBText
            Left = 608
            Top = 93
            Width = 141
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'desc_pc'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel31: TRLLabel
            Left = 543
            Top = 94
            Width = 61
            Height = 15
            Caption = 'Processo:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel32: TRLLabel
            Left = 527
            Top = 73
            Width = 33
            Height = 15
            Caption = 'Qtde:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 561
            Top = 73
            Width = 42
            Height = 16
            AutoSize = False
            DataField = 'Quantidade'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel8: TRLLabel
            Left = 609
            Top = 73
            Width = 89
            Height = 15
            Caption = 'Qtde Recebida:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText47: TRLDBText
            Left = 23
            Top = 73
            Width = 41
            Height = 16
            AutoSize = False
            DataField = 'Id'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel50: TRLLabel
            Left = 3
            Top = 73
            Width = 18
            Height = 15
            Caption = 'N'#186':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lHora: TRLLabel
            Left = 450
            Top = 73
            Width = 33
            Height = 15
            Caption = 'Hora:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel53: TRLLabel
            Left = 3
            Top = 128
            Width = 26
            Height = 15
            Caption = 'Cor:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText21: TRLDBText
            Left = 3
            Top = 144
            Width = 158
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'CorPro'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel54: TRLLabel
            Left = 183
            Top = 128
            Width = 59
            Height = 15
            Caption = 'Tamanho:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText37: TRLDBText
            Left = 183
            Top = 144
            Width = 108
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'tamanhoPro'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel55: TRLLabel
            Left = 297
            Top = 128
            Width = 26
            Height = 15
            Caption = 'Cor:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText49: TRLDBText
            Left = 297
            Top = 144
            Width = 158
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'CorSemi'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText50: TRLDBText
            Left = 477
            Top = 144
            Width = 108
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'tamanhoSemi'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel56: TRLLabel
            Left = 477
            Top = 128
            Width = 59
            Height = 15
            Caption = 'Tamanho:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText55: TRLDBText
            Left = 57
            Top = 93
            Width = 122
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'refpro'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText56: TRLDBText
            Left = 385
            Top = 93
            Width = 122
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'refSemi'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDraw7: TRLDraw
            Left = 295
            Top = 91
            Width = 1
            Height = 73
          end
          object RLDraw8: TRLDraw
            Left = 539
            Top = 91
            Width = 1
            Height = 73
          end
          object RLLabel61: TRLLabel
            Left = 543
            Top = 112
            Width = 67
            Height = 15
            Caption = 'Valor Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldbValor1: TRLDBText
            Left = 543
            Top = 133
            Width = 87
            Height = 24
            Color = 15527148
            DataField = 'Valor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = 'R$ '
            Transparent = False
          end
          object RLDBText63: TRLDBText
            Left = 701
            Top = 73
            Width = 42
            Height = 16
            AutoSize = False
            DataField = 'qtde_prod'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 610
          Width = 756
          Height = 18
          AlignToBottom = True
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
        object RLBand11: TRLBand
          Left = 0
          Top = 355
          Width = 756
          Height = 255
          BandType = btFooter
          object RLPanel1: TRLPanel
            Left = 0
            Top = 0
            Width = 756
            Height = 255
            Align = faClient
            AfterPrint = RLPanel1AfterPrint
          end
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 512
        Width = 756
        Height = 369
        Background.AutoSize = False
        DataSource = dRomSubOp
        IntegralHeight = True
        Transparent = False
        BeforePrint = RLSubDetail2BeforePrint
        object RLBand12: TRLBand
          Left = 0
          Top = 242
          Width = 756
          Height = 123
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          AfterPrint = RLBand12AfterPrint
          BeforePrint = RLBand12BeforePrint
          object RLDBResult4: TRLDBResult
            Left = 619
            Top = 5
            Width = 68
            Height = 15
            Alignment = taRightJustify
            DataField = 'qtdM'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = ''
          end
          object RLLabel11: TRLLabel
            Left = 551
            Top = 5
            Width = 34
            Height = 15
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel65: TRLLabel
            Left = 29
            Top = 48
            Width = 683
            Height = 16
            Caption = 
              'Recebimento: ___/___/______ Hora: ___:___          _____________' +
              '_________________________________________'
          end
          object RLDBText62: TRLDBText
            Left = 329
            Top = 65
            Width = 384
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'NomeFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel66: TRLLabel
            Left = 29
            Top = 93
            Width = 684
            Height = 16
            Caption = 
              'Retorno....... : ___/___/______ Hora: ___:___          _________' +
              '_____________________________________________'
          end
        end
        object RLBand13: TRLBand
          Left = 0
          Top = 0
          Width = 756
          Height = 41
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText6: TRLDBText
            Left = 0
            Top = 1
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
          object RLSystemInfo5: TRLSystemInfo
            Left = 616
            Top = 0
            Width = 139
            Height = 16
            Info = itNow
            Text = '  '
          end
          object RLLabel12: TRLLabel
            Left = 337
            Top = 21
            Width = 82
            Height = 19
            Align = faCenterBottom
            Alignment = taRightJustify
            Caption = 'Romaneio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand14: TRLBand
          Left = 0
          Top = 224
          Width = 756
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText8: TRLDBText
            Left = 89
            Top = 1
            Width = 471
            Height = 16
            AutoSize = False
            DataField = 'desc_mp'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText11: TRLDBText
            Left = 1
            Top = 1
            Width = 55
            Height = 15
            DataField = 'idproduto'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText15: TRLDBText
            Left = 568
            Top = 1
            Width = 17
            Height = 15
            Alignment = taRightJustify
            DataField = 'un'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText31: TRLDBText
            Left = 658
            Top = 1
            Width = 29
            Height = 15
            Alignment = taRightJustify
            DataField = 'qtdM'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand15: TRLBand
          Left = 0
          Top = 41
          Width = 756
          Height = 183
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDraw3: TRLDraw
            Left = 0
            Top = 92
            Width = 754
            Height = 70
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.Color = clGray
            Brush.Color = 15527148
            Pen.Style = psClear
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 69
            Width = 754
            Height = 24
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Borders.Color = clGray
            Pen.Style = psClear
          end
          object RLLabel13: TRLLabel
            Left = 0
            Top = 167
            Width = 42
            Height = 15
            Align = faBottomOnly
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 90
            Top = 167
            Width = 48
            Height = 15
            Align = faBottomOnly
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 567
            Top = 167
            Width = 18
            Height = 15
            Align = faBottomOnly
            Caption = 'Un'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 657
            Top = 167
            Width = 30
            Height = 15
            Align = faBottomOnly
            Caption = 'Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel35: TRLLabel
            Left = 0
            Top = 4
            Width = 39
            Height = 15
            Caption = 'Nome:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 71
            Top = 4
            Width = 674
            Height = 16
            AutoSize = False
            DataField = 'NomeFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText33: TRLDBText
            Left = 71
            Top = 25
            Width = 529
            Height = 16
            AutoSize = False
            DataField = 'endFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel36: TRLLabel
            Left = 0
            Top = 25
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
          object RLDBText34: TRLDBText
            Left = 174
            Top = 73
            Width = 101
            Height = 16
            AutoSize = False
            DataField = 'Tipo'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel37: TRLLabel
            Left = 137
            Top = 73
            Width = 36
            Height = 15
            Caption = 'Envio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 56
            Top = 73
            Width = 22
            Height = 15
            Caption = 'Op:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText35: TRLDBText
            Left = 81
            Top = 73
            Width = 52
            Height = 16
            AutoSize = False
            DataField = 'IdSubOP'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText36: TRLDBText
            Left = 312
            Top = 73
            Width = 89
            Height = 16
            AutoSize = False
            DataField = 'Data'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel39: TRLLabel
            Left = 279
            Top = 73
            Width = 32
            Height = 15
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 405
            Top = 73
            Width = 33
            Height = 15
            Caption = 'Hora:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel41: TRLLabel
            Left = 606
            Top = 26
            Width = 51
            Height = 15
            Caption = 'N'#250'mero:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText38: TRLDBText
            Left = 663
            Top = 26
            Width = 82
            Height = 16
            AutoSize = False
            DataField = 'numFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel42: TRLLabel
            Left = 0
            Top = 47
            Width = 45
            Height = 15
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText39: TRLDBText
            Left = 71
            Top = 47
            Width = 268
            Height = 16
            AutoSize = False
            DataField = 'cidFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel43: TRLLabel
            Left = 348
            Top = 47
            Width = 20
            Height = 15
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText40: TRLDBText
            Left = 371
            Top = 47
            Width = 27
            Height = 16
            AutoSize = False
            DataField = 'ufFor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText41: TRLDBText
            Left = 471
            Top = 47
            Width = 134
            Height = 16
            AutoSize = False
            DataField = 'tel1For'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel44: TRLLabel
            Left = 413
            Top = 47
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
          object RLDBText42: TRLDBText
            Left = 611
            Top = 47
            Width = 134
            Height = 16
            AutoSize = False
            DataField = 'tel2For'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel45: TRLLabel
            Left = 2
            Top = 94
            Width = 51
            Height = 15
            Caption = 'Produto:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText43: TRLDBText
            Left = 2
            Top = 110
            Width = 291
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'desc_pr'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText44: TRLDBText
            Left = 297
            Top = 110
            Width = 240
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'desc_SA'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel46: TRLLabel
            Left = 297
            Top = 94
            Width = 84
            Height = 15
            Caption = 'Semiacabado:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText45: TRLDBText
            Left = 607
            Top = 93
            Width = 146
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'desc_pc'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel47: TRLLabel
            Left = 543
            Top = 94
            Width = 61
            Height = 15
            Caption = 'Processo:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLLabel48: TRLLabel
            Left = 525
            Top = 73
            Width = 33
            Height = 15
            Caption = 'Qtde:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText46: TRLDBText
            Left = 559
            Top = 73
            Width = 42
            Height = 16
            AutoSize = False
            DataField = 'Quantidade'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel49: TRLLabel
            Left = 608
            Top = 73
            Width = 89
            Height = 15
            Caption = 'Qtde Recebida:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel51: TRLLabel
            Left = 1
            Top = 73
            Width = 18
            Height = 15
            Caption = 'N'#186':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText48: TRLDBText
            Left = 21
            Top = 73
            Width = 31
            Height = 16
            AutoSize = False
            DataField = 'Id'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object lHora2: TRLLabel
            Left = 443
            Top = 73
            Width = 40
            Height = 15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel57: TRLLabel
            Left = 2
            Top = 127
            Width = 26
            Height = 15
            Caption = 'Cor:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText51: TRLDBText
            Left = 2
            Top = 143
            Width = 158
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'CorPro'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel58: TRLLabel
            Left = 182
            Top = 127
            Width = 59
            Height = 15
            Caption = 'Tamanho:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText52: TRLDBText
            Left = 182
            Top = 143
            Width = 108
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'tamanhoPro'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel59: TRLLabel
            Left = 297
            Top = 127
            Width = 26
            Height = 15
            Caption = 'Cor:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText53: TRLDBText
            Left = 297
            Top = 143
            Width = 158
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'CorSemi'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel60: TRLLabel
            Left = 477
            Top = 127
            Width = 59
            Height = 15
            Caption = 'Tamanho:'
            Color = 15527148
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLDBText54: TRLDBText
            Left = 477
            Top = 143
            Width = 59
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'tamanhoSemi'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText57: TRLDBText
            Left = 54
            Top = 93
            Width = 122
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'refpro'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText58: TRLDBText
            Left = 382
            Top = 93
            Width = 122
            Height = 16
            AutoSize = False
            Color = 15527148
            DataField = 'refSemi'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDraw5: TRLDraw
            Left = 294
            Top = 92
            Width = 1
            Height = 70
          end
          object RLDraw6: TRLDraw
            Left = 540
            Top = 92
            Width = 1
            Height = 70
          end
          object RLLabel64: TRLLabel
            Left = 543
            Top = 111
            Width = 67
            Height = 15
            Caption = 'Valor Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldbValor2: TRLDBText
            Left = 543
            Top = 129
            Width = 87
            Height = 24
            Color = 15527148
            DataField = 'Valor'
            DataSource = dRomSubOp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Text = 'R$ '
            Transparent = False
          end
          object RLDBText64: TRLDBText
            Left = 701
            Top = 73
            Width = 42
            Height = 16
            AutoSize = False
            DataField = 'qtde_prod'
            DataSource = dRomSubOp
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
    end
    object RLBand16: TRLBand
      Left = 19
      Top = 929
      Width = 756
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 654
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
      object RLLabel52: TRLLabel
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
  object qRomSubOp: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      'processo_sa_i.idproduto,'
      'processo_sa_i.qtde,'
      'processo_sa_i.qtde * subop_producao.Quantidade qtdM,'
      'processo_sa_i.un,'
      'pr.descricao desc_mp,'
      ''
      'semi_acabado.descricao desc_SA,'
      'processo.descricao desc_pc,'
      'produto.descricao desc_pr,'
      ''
      
        'case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then  cas' +
        'e when parametro.usar_setor = '#39'S'#39' then setor.descricao else usua' +
        'rio.nome end else fornecedor.nome     end NomeFor,    '
      
        'case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then  cas' +
        'e when parametro.usar_setor = '#39'S'#39' then '#39#39' else usuario.Endereco ' +
        'end else fornecedor.Endereco end endFor ,   '
      
        'case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then  cas' +
        'e when parametro.usar_setor = '#39'S'#39' then '#39#39' else usuario.numero en' +
        'd else fornecedor.num      end numFor,    '
      
        'case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then  cas' +
        'e when parametro.usar_setor = '#39'S'#39' then '#39#39' else usuario.cidade en' +
        'd else fornecedor.cidade   end cidFor ,   '
      
        'case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then  cas' +
        'e when parametro.usar_setor = '#39'S'#39' then '#39#39' else usuario.uf end el' +
        'se fornecedor.uf       end ufFor,    '
      
        'case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then  cas' +
        'e when parametro.usar_setor = '#39'S'#39' then '#39#39' else usuario.telefone ' +
        'end else fornecedor.tel1     end tel1For ,   '
      
        'case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then  cas' +
        'e when parametro.usar_setor = '#39'S'#39' then '#39#39' else usuario.celular e' +
        'nd else fornecedor.tel2     end tel2For  ,'
      'subop_producao.*,'
      ''
      'concat(produto.idcor, '#39' - '#39', corP.descricao) CorPro,'
      'concat(semi_acabado.idcor, '#39' - '#39', corS.descricao) CorSemi,'
      
        'produto.tamanho tamanhoPro, semi_acabado.tamanho tamanhoSemi, pr' +
        'oduto.referencia refpro, semi_acabado.referencia refSemi,'
      'subop_producao.Quantidade * processo_sa.custo Valor'
      ''
      'from subop_producao'
      
        'left join usuario on usuario.id = subop_producao.idfornecedor an' +
        'd subop_producao.Tipo = '#39'INTERNO'#39
      
        'left join fornecedor on fornecedor.id = subop_producao.idfornece' +
        'dor and subop_producao.Tipo = '#39'EXTERNO'#39
      'left join OP OP2 on OP2.id = subop_producao.idsubop '
      'left join semi_acabado on semi_acabado.id = OP2.iDPRODUTO'
      'left join processo on processo.id = Subop_producao.idprocesso'
      'left join op on op.id = OP2.idopp'
      'left join produto on produto.id = op.idproduto'
      
        'left join processo_sa on processo_sa.idprocesso = subop_producao' +
        '.idprocesso and processo_sa.IdSemiAcabado = OP2.IdProduto'
      
        'left join processo_sa_i on processo_sa_i.idprocesso_sa = process' +
        'o_sa.id '
      'left join produto pr on pr.id = processo_sa_i.idproduto'
      'left join cor corP on corP.id = produto.idcor'
      'left join cor corS on corS.id = semi_acabado.idcor'
      'left join parametro on parametro.id = 1'
      
        'left join setor on setor.id = subop_producao.idfornecedor and su' +
        'bop_producao.Tipo = '#39'INTERNO'#39
      'where subop_producao.id = :id'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 688
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qRomSubOpidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qRomSubOpqtde: TFloatField
      FieldName = 'qtde'
      DisplayFormat = '#0.000###'
    end
    object qRomSubOpun: TWideStringField
      FieldName = 'un'
      Size = 10
    end
    object qRomSubOpdesc_mp: TWideStringField
      FieldName = 'desc_mp'
      Size = 150
    end
    object qRomSubOpdesc_SA: TWideStringField
      FieldName = 'desc_SA'
      Size = 100
    end
    object qRomSubOpdesc_pc: TWideStringField
      FieldName = 'desc_pc'
      Size = 100
    end
    object qRomSubOpdesc_pr: TWideStringField
      FieldName = 'desc_pr'
      Size = 150
    end
    object qRomSubOpNomeFor: TWideStringField
      FieldName = 'NomeFor'
      ReadOnly = True
      Size = 80
    end
    object qRomSubOpendFor: TWideStringField
      FieldName = 'endFor'
      ReadOnly = True
      Size = 80
    end
    object qRomSubOpnumFor: TWideStringField
      FieldName = 'numFor'
      ReadOnly = True
    end
    object qRomSubOpcidFor: TWideStringField
      FieldName = 'cidFor'
      ReadOnly = True
      Size = 50
    end
    object qRomSubOpufFor: TWideStringField
      FieldName = 'ufFor'
      ReadOnly = True
      Size = 2
    end
    object qRomSubOptel1For: TWideStringField
      FieldName = 'tel1For'
      ReadOnly = True
    end
    object qRomSubOptel2For: TWideStringField
      FieldName = 'tel2For'
      ReadOnly = True
    end
    object qRomSubOpId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qRomSubOpData: TDateTimeField
      FieldName = 'Data'
    end
    object qRomSubOpHora: TWideStringField
      FieldName = 'Hora'
      Size = 32
    end
    object qRomSubOpIdSubOP: TIntegerField
      FieldName = 'IdSubOP'
    end
    object qRomSubOpTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 100
    end
    object qRomSubOpIdFornecedor: TIntegerField
      FieldName = 'IdFornecedor'
    end
    object qRomSubOpQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qRomSubOpBaixadoEst: TWideStringField
      FieldName = 'BaixadoEst'
      Size = 1
    end
    object qRomSubOpIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qRomSubOpqtde_prod: TFloatField
      FieldName = 'qtde_prod'
    end
    object qRomSubOpx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
    object qRomSubOpqtdM: TFloatField
      FieldName = 'qtdM'
      ReadOnly = True
      DisplayFormat = '#0.000###'
    end
    object qRomSubOpCorPro: TWideStringField
      FieldName = 'CorPro'
      ReadOnly = True
      Size = 115
    end
    object qRomSubOpCorSemi: TWideStringField
      FieldName = 'CorSemi'
      ReadOnly = True
      Size = 115
    end
    object qRomSubOptamanhoPro: TWideStringField
      FieldName = 'tamanhoPro'
      Size = 5
    end
    object qRomSubOptamanhoSemi: TWideStringField
      FieldName = 'tamanhoSemi'
      Size = 5
    end
    object qRomSubOprefpro: TWideStringField
      FieldName = 'refpro'
    end
    object qRomSubOprefSemi: TWideStringField
      FieldName = 'refSemi'
    end
    object qRomSubOpValor: TFloatField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dRomSubOp: TDataSource
    DataSet = qRomSubOp
    Left = 719
    Top = 8
  end
  object qRom: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      '    subop_producao.id, '
      
        '    case when coalesce(subop_producao.Tipo,'#39#39') = '#39'INTERNO'#39' then ' +
        ' usuario.nome else fornecedor.nome     end NomeFor    '
      'from subop_producao'
      
        'left join usuario on usuario.id = subop_producao.idfornecedor an' +
        'd subop_producao.Tipo = '#39'INTERNO'#39
      
        'left join fornecedor on fornecedor.id = subop_producao.idfornece' +
        'dor and subop_producao.Tipo = '#39'EXTERNO'#39
      ''
      'where subop_producao.idsubop = :id'
      'and ( (:idP = 0) or (subop_producao.idProcesso = :idP))'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idP'
        ParamType = ptUnknown
      end>
    Left = 376
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idP'
        ParamType = ptUnknown
      end>
    object qRomNomeFor: TWideStringField
      FieldName = 'NomeFor'
      ReadOnly = True
      Size = 80
    end
    object qRomid: TIntegerField
      FieldName = 'id'
      Required = True
    end
  end
  object dRom: TDataSource
    DataSet = qRom
    Left = 416
    Top = 8
  end
end
