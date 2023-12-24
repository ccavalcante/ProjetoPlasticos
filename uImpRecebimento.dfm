object fImpRecebimento: TfImpRecebimento
  Left = 244
  Top = 118
  Width = 1011
  Height = 546
  HorzScrollBar.Position = 79
  VertScrollBar.Position = 214
  AutoScroll = True
  Caption = 'fImpRecebimento'
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
  object rp: TRLReport
    Left = 184
    Top = -32
    Width = 794
    Height = 1123
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 27
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo23: TRLSystemInfo
        Left = 614
        Top = 1
        Width = 104
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Impresso em:  '
      end
      object RLDBText85: TRLDBText
        Left = 2
        Top = 1
        Width = 48
        Height = 16
        DataField = 'RAZAO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 473
      Width = 718
      Height = 19
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel22: TRLLabel
        Left = 0
        Top = 1
        Width = 153
        Height = 16
        Align = faLeftTop
        AutoSize = False
        Caption = 'thrsoftwares.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 65
      Width = 718
      Height = 408
      DataFields = 'idBaixa'
      BeforePrint = RLGroup1BeforePrint
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 46
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel1: TRLLabel
          Left = 309
          Top = 3
          Width = 78
          Height = 19
          Caption = 'R e c i b o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 189
          Top = 31
          Width = 38
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 250
          Top = 31
          Width = 96
          Height = 14
          Align = faBottomOnly
          Caption = 'Data Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 393
          Top = 31
          Width = 91
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Valor da Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 499
          Top = 31
          Width = 91
          Height = 14
          Align = faBottomOnly
          Caption = 'Data Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 653
          Top = 31
          Width = 62
          Height = 14
          Align = faBottomOnly
          Alignment = taRightJustify
          Caption = 'Valor Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 1
          Top = 31
          Width = 66
          Height = 14
          Align = faBottomOnly
          Caption = 'Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand3BeforePrint
        object RLDBText2: TRLDBText
          Left = 1
          Top = 1
          Width = 170
          Height = 14
          AutoSize = False
          DataField = 'Documento'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 192
          Top = 1
          Width = 37
          Height = 14
          Alignment = taRightJustify
          DataField = 'codrec'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 458
          Top = 1
          Width = 26
          Height = 14
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 499
          Top = 1
          Width = 52
          Height = 14
          DataField = 'DTPAGTO'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 660
          Top = 1
          Width = 55
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALPAGO'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 250
          Top = 1
          Width = 31
          Height = 14
          DataField = 'VENCI'
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
      object RLBand4: TRLBand
        Left = 0
        Top = 62
        Width = 718
        Height = 275
        AutoSize = True
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        IntegralHeight = False
        BeforePrint = RLBand4BeforePrint
        object RLPanel4: TRLPanel
          Left = 0
          Top = 1
          Width = 718
          Height = 17
          Align = faTop
          object RLLabel3: TRLLabel
            Left = 525
            Top = 0
            Width = 43
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            Caption = 'TOTAL:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 568
            Top = 0
            Width = 150
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALPAGO'
            DataSource = D
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
        object RLPanel5: TRLPanel
          Left = 0
          Top = 18
          Width = 718
          Height = 17
          Align = faTop
          object lForma1: TRLLabel
            Left = 521
            Top = 0
            Width = 47
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            Caption = 'Forma 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lvalor1: TRLLabel
            Left = 568
            Top = 0
            Width = 150
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL RECEBIDO:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLPanel6: TRLPanel
          Left = 0
          Top = 35
          Width = 718
          Height = 17
          Align = faTop
          Visible = False
          object lForma2: TRLLabel
            Left = 521
            Top = 0
            Width = 47
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            Caption = 'Forma 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object lValor2: TRLLabel
            Left = 568
            Top = 0
            Width = 150
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'TOTAL RECEBIDO:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLPanel7: TRLPanel
          Left = 0
          Top = 52
          Width = 718
          Height = 17
          Align = faTop
          object lTotal: TRLLabel
            Left = 470
            Top = 0
            Width = 98
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            Caption = 'TOTAL RECEBIDO:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object edRecebido: TRLDBResult
            Left = 568
            Top = 0
            Width = 150
            Height = 17
            Align = faRight
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALPAGO'
            DataSource = D
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
          object lCredito: TRLLabel
            Left = 302
            Top = 0
            Width = 98
            Height = 16
            Alignment = taRightJustify
            Caption = 'TOTAL RECEBIDO:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Visible = False
          end
        end
        object RLPanel12: TRLPanel
          Left = 0
          Top = 190
          Width = 718
          Height = 102
          Align = faTop
          object lAssina: TRLLabel
            Left = 36
            Top = 42
            Width = 646
            Height = 18
            Align = faCenter
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clGray
            Caption = 'Recibo de Recebimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel13: TRLPanel
          Left = 0
          Top = 69
          Width = 718
          Height = 121
          Align = faTop
          AutoExpand = True
          AutoSize = True
          object RLPanel8: TRLPanel
            Left = 0
            Top = 0
            Width = 718
            Height = 28
            Align = faTop
            AutoExpand = True
            AutoSize = True
            object RLPanel9: TRLPanel
              Left = 0
              Top = 14
              Width = 359
              Height = 14
              AutoExpand = True
              AutoSize = True
              object RLMemo1: TRLMemo
                Left = 0
                Top = 0
                Width = 359
                Height = 14
                Align = faTop
                Behavior = [beSiteExpander]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Lines.Strings = (
                  'Tp  Bco Numero Ag   Conta           Valor')
                ParentFont = False
              end
            end
            object RLPanel10: TRLPanel
              Left = 0
              Top = 0
              Width = 718
              Height = 14
              Align = faTop
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Borders.Color = clGray
              object RLLabel2: TRLLabel
                Left = 0
                Top = 3
                Width = 112
                Height = 11
                Caption = 'Descri'#231#227'o dos cheques:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLPanel11: TRLPanel
              Left = 358
              Top = 14
              Width = 360
              Height = 14
              AutoExpand = True
              AutoSize = True
              object RLMemo2: TRLMemo
                Left = 0
                Top = 0
                Width = 360
                Height = 14
                Align = faTop
                Behavior = [beSiteExpander]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                Lines.Strings = (
                  'Tp  Bco Numero Ag   Conta           Valor')
                ParentFont = False
              end
            end
          end
          object RLPanel3: TRLPanel
            Left = 0
            Top = 28
            Width = 718
            Height = 93
            Align = faTop
            AutoExpand = True
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Borders.Color = clGray
            object RLLabel7: TRLLabel
              Left = 20
              Top = 12
              Width = 106
              Height = 17
              Caption = 'RECEBEMOS DE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lNome: TRLLabel
              Left = 132
              Top = 12
              Width = 569
              Height = 17
              AutoSize = False
              Caption = 'Recibo de Recebimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lExtenso: TRLMemo
              Left = 108
              Top = 35
              Width = 593
              Height = 39
              Behavior = [beSiteExpander]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel6: TRLLabel
              Left = 20
              Top = 35
              Width = 82
              Height = 17
              Caption = 'O TOTAL DE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel23: TRLLabel
              Left = 20
              Top = 75
              Width = 23
              Height = 17
              Caption = 'EM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lData: TRLLabel
              Left = 49
              Top = 76
              Width = 652
              Height = 17
              AutoSize = False
              Caption = 'Recibo de Recebimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object rpB: TRLReport
    Left = -79
    Top = 80
    Width = 276
    Height = 567
    Margins.LeftMargin = 2.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 2.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 73.000000000000000000
    PageSetup.PaperHeight = 150.000000000000000000
    object RLBand5: TRLBand
      Left = 8
      Top = 0
      Width = 260
      Height = 54
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText8: TRLDBText
        Left = 0
        Top = 0
        Width = 260
        Height = 15
        Align = faTop
        Alignment = taCenter
        DataField = 'RAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 0
        Top = 15
        Width = 260
        Height = 15
        Align = faTop
        Alignment = taCenter
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 0
        Top = 32
        Width = 32
        Height = 15
        DataField = 'TEL1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 233
        Top = 35
        Width = 27
        Height = 12
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 8
      Top = 54
      Width = 260
      Height = 35
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel4: TRLLabel
        Left = 37
        Top = 6
        Width = 172
        Height = 19
        Caption = 'Recibo de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 8
      Top = 89
      Width = 260
      Height = 89
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText11: TRLDBText
        Left = 7
        Top = 25
        Width = 45
        Height = 14
        DataField = 'CODREC'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 80
        Top = 25
        Width = 33
        Height = 14
        DataField = 'VENCI'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 219
        Top = 25
        Width = 40
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 80
        Top = 66
        Width = 52
        Height = 14
        DataField = 'DTPAGTO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 204
        Top = 66
        Width = 55
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALPAGO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 7
        Top = 6
        Width = 38
        Height = 14
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 80
        Top = 6
        Width = 70
        Height = 14
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 227
        Top = 6
        Width = 32
        Height = 14
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 80
        Top = 46
        Width = 65
        Height = 14
        Caption = 'Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 197
        Top = 49
        Width = 62
        Height = 14
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 8
      Top = 178
      Width = 260
      Height = 158
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand8BeforePrint
      object RLDBText17: TRLDBText
        Left = 0
        Top = 143
        Width = 260
        Height = 15
        Align = faBottom
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'RAZAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Draft 12 cpi'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 166
        Top = 3
        Width = 93
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALPAGO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel19: TRLLabel
        Left = 25
        Top = 23
        Width = 98
        Height = 14
        Alignment = taRightJustify
        Caption = 'TOTAL RECEBIDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 80
        Top = 3
        Width = 43
        Height = 14
        Alignment = taRightJustify
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edRecebido2: TRLDBResult
        Left = 166
        Top = 23
        Width = 93
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALPAGO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLPanel1: TRLPanel
        Left = 0
        Top = 86
        Width = 260
        Height = 57
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLLabel21: TRLLabel
          Left = 0
          Top = 0
          Width = 260
          Height = 14
          Align = faTop
          Caption = 'O TOTAL DE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lExtenso2: TRLMemo
          Left = 0
          Top = 14
          Width = 260
          Height = 14
          Align = faTop
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel2: TRLPanel
        Left = 0
        Top = 51
        Width = 260
        Height = 35
        Align = faBottom
        AutoExpand = True
        Behavior = [beSiteExpander]
        object RLLabel17: TRLLabel
          Left = 0
          Top = 0
          Width = 260
          Height = 14
          Align = faTop
          Caption = 'RECEBEMOS DE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 0
          Top = 14
          Width = 260
          Height = 14
          Align = faTop
          Behavior = [beSiteExpander]
          DataField = 'NOME'
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
  end
  object D: TDataSource
    DataSet = Q
    Left = 40
    Top = 8
  end
  object Q: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'select r.idvenda codrec, r.idcliente idcli,   r.* , c.razao nome' +
        ' , c.email, e.razao'
      'from creceber r'
      'left join cliente c on c.id = r.idcliente'
      'left join empresa e on e.id = r.idemp '
      'where r.idbaixa = :id'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 11
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QDocumento: TWideStringField
      FieldName = 'Documento'
      Size = 100
    end
    object QVenci: TDateTimeField
      FieldName = 'Venci'
    end
    object QTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QidBaixa: TIntegerField
      FieldName = 'idBaixa'
    end
    object QDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object QValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object Qemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object Qcodrec: TIntegerField
      FieldName = 'codrec'
    end
    object Qidcli: TIntegerField
      FieldName = 'idcli'
    end
    object Qrazao: TWideStringField
      FieldName = 'razao'
      Size = 60
    end
    object QidBaixa2: TIntegerField
      FieldName = 'idBaixa2'
    end
  end
  object qForma: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select r.fpgto1 forma, sum(r.valor1) valor'
      'from creceber r'
      'where r.idbaixa in (93,94)'
      'group by r.fpgto1'
      ''
      'union all'
      ''
      'select r.fpgto2 forma, sum(r.valor2) valor'
      'from creceber r'
      'where r.idbaixa in (93,94)'
      'group by r.fpgto2'
      ''
      'union all'
      ''
      'select m.fpgto forma, m.valor'
      'from movcaixa m'
      'where m.tpmov = '#39'Z'#39' and m.id in (93,94) and m.segundaforma = '#39'N'#39
      ''
      'union all'
      ''
      'select m.fpgto forma, m.valor'
      'from movcaixa m'
      
        'where m.tpmov = '#39'Z'#39' and m.id in (93,94)  and m.segundaforma = '#39'S' +
        #39)
    Params = <>
    Left = 27
    Top = 88
    object qFormaforma: TWideStringField
      FieldName = 'forma'
      Size = 50
    end
    object qFormavalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
  end
  object qCheq: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'select '#39'Rec'#39' tipo, c.banco, c.numero, c.agencia, c.conta, c.valo' +
        'r, c.venci, c.emitente'
      'from cheques c'
      'where c.idmovcaixa = :id'
      ''
      'union all'
      ''
      
        'select '#39'Emi'#39' tipo, ch.banco, ch.numero, ch.agencia, ch.conta, ch' +
        '.valor, ch.venci, '#39'   '#39' emitente'
      'from chemitido ch'
      'where ch.idthr050 = :id'
      ''
      ''
      ''
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 27
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qCheqtipo: TWideStringField
      FieldName = 'tipo'
      Size = 3
    end
    object qCheqbanco: TWideStringField
      FieldName = 'banco'
      Size = 3
    end
    object qCheqnumero: TWideStringField
      FieldName = 'numero'
      Size = 12
    end
    object qCheqagencia: TWideStringField
      FieldName = 'agencia'
      Size = 10
    end
    object qCheqconta: TWideStringField
      FieldName = 'conta'
    end
    object qCheqvalor: TFloatField
      FieldName = 'valor'
    end
    object qCheqvenci: TDateTimeField
      FieldName = 'venci'
    end
    object qCheqemitente: TWideStringField
      FieldName = 'emitente'
      Size = 80
    end
  end
end
