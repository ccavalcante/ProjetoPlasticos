object fImp_finan: TfImp_finan
  Left = 189
  Top = 119
  Caption = 'fImp_finan'
  ClientHeight = 749
  ClientWidth = 1054
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpSangria: TRLReport
    Left = 24
    Top = 112
    Width = 276
    Height = 193
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = dS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 73.000000000000000000
    PageSetup.PaperHeight = 51.000000000000000000
    PrintDialog = False
    JobTitle = 'Impresao'
    object RLBand3: TRLBand
      Left = 4
      Top = 4
      Width = 261
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBMemo3: TRLDBMemo
        Left = 0
        Top = 0
        Width = 261
        Height = 17
        Align = faTop
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataField = 'Fantasia'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 157
        Top = 20
        Width = 28
        Height = 14
        DataField = 'Hora'
        DataSource = dS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 50
        Top = 20
        Width = 26
        Height = 14
        DataField = 'Data'
        DataSource = dS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 2
        Top = 20
        Width = 46
        Height = 14
        Caption = 'Sangria: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 4
      Top = 40
      Width = 261
      Height = 138
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel8: TRLLabel
        Left = 2
        Top = 36
        Width = 64
        Height = 15
        Caption = 'Descri'#231#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 2
        Top = 51
        Width = 252
        Height = 17
        Behavior = [beSiteExpander]
        DataField = 'Descri'
        DataSource = dS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 0
        Top = 118
        Width = 261
        Height = 20
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel5: TRLLabel
          Left = 1
          Top = 3
          Width = 50
          Height = 15
          Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 53
          Top = 3
          Width = 204
          Height = 15
          AutoSize = False
          DataField = 'nomeusu'
          DataSource = dS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLDBText17: TRLDBText
        Left = 2
        Top = 2
        Width = 257
        Height = 15
        AutoSize = False
        DataField = 'titular'
        DataSource = dS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Conta:  '
      end
      object RLDBText18: TRLDBText
        Left = 2
        Top = 19
        Width = 257
        Height = 12
        AutoSize = False
        DataField = 'numTransacao'
        DataSource = dS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'N'#186' Trans.: '
      end
      object RLPanel5: TRLPanel
        Left = 0
        Top = 70
        Width = 261
        Height = 48
        Align = faBottom
        object RLLabel1: TRLLabel
          Left = 87
          Top = 0
          Width = 56
          Height = 15
          Caption = 'Dinheiro: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 87
          Top = 17
          Width = 52
          Height = 15
          Caption = 'Cheque: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 87
          Top = 33
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
        object RLDBText10: TRLDBText
          Left = 169
          Top = 0
          Width = 64
          Height = 15
          Alignment = taRightJustify
          DataField = 'F_Dinheiro'
          DataSource = dS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 169
          Top = 17
          Width = 61
          Height = 15
          Alignment = taRightJustify
          DataField = 'F_Cheque'
          DataSource = dS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 200
          Top = 33
          Width = 30
          Height = 15
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = dS
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
  object rpPag: TRLReport
    Left = 344
    Top = 112
    Width = 276
    Height = 189
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = dP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 73.000000000000000000
    PageSetup.PaperHeight = 50.000000000000000000
    PrintDialog = False
    JobTitle = 'Impresao'
    object RLBand1: TRLBand
      Left = 4
      Top = 4
      Width = 261
      Height = 59
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 0
        Width = 261
        Height = 17
        Align = faTop
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataField = 'Fantasia'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 165
        Top = 22
        Width = 28
        Height = 14
        DataField = 'Hora'
        DataSource = dP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 68
        Top = 22
        Width = 26
        Height = 14
        DataField = 'Data'
        DataSource = dP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 2
        Top = 22
        Width = 62
        Height = 14
        Caption = 'Pagamento: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 1
        Top = 41
        Width = 62
        Height = 14
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lFornec: TRLLabel
        Left = 67
        Top = 41
        Width = 191
        Height = 14
        AutoSize = False
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 4
      Top = 63
      Width = 261
      Height = 113
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel7: TRLLabel
        Left = 4
        Top = 40
        Width = 64
        Height = 15
        Caption = 'Descri'#231#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel2: TRLPanel
        Left = 0
        Top = 93
        Width = 261
        Height = 20
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel12: TRLLabel
          Left = 1
          Top = 3
          Width = 50
          Height = 15
          Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 53
          Top = 3
          Width = 204
          Height = 15
          AutoSize = False
          DataField = 'nomeusu'
          DataSource = dP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLDBMemo4: TRLDBMemo
        Left = 8
        Top = 56
        Width = 249
        Height = 15
        Behavior = [beSiteExpander]
        DataField = 'Descri'
        DataSource = dP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel3: TRLPanel
        Left = 0
        Top = 74
        Width = 261
        Height = 19
        Align = faBottom
        object RLLabel11: TRLLabel
          Left = 4
          Top = 1
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
        object RLDBText20: TRLDBText
          Left = 228
          Top = 1
          Width = 30
          Height = 15
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = dP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 147
          Top = 1
          Width = 34
          Height = 15
          Alignment = taRightJustify
          DataField = 'Fpgto'
          DataSource = dP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLDBText15: TRLDBText
        Left = 4
        Top = 1
        Width = 254
        Height = 15
        AutoSize = False
        DataField = 'titular'
        DataSource = dP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Conta:  '
      end
      object RLDBText19: TRLDBText
        Left = 4
        Top = 20
        Width = 254
        Height = 12
        AutoSize = False
        DataField = 'numTransacao'
        DataSource = dP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'N'#186' Trans.: '
      end
    end
  end
  object rpEnt: TRLReport
    Left = 656
    Top = 112
    Width = 276
    Height = 189
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = dE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 73.000000000000000000
    PageSetup.PaperHeight = 50.000000000000000000
    PrintDialog = False
    JobTitle = 'Impresao'
    object RLBand5: TRLBand
      Left = 4
      Top = 4
      Width = 261
      Height = 39
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBMemo5: TRLDBMemo
        Left = 0
        Top = 0
        Width = 261
        Height = 17
        Align = faTop
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataField = 'Fantasia'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 157
        Top = 22
        Width = 28
        Height = 14
        DataField = 'Hora'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 51
        Top = 22
        Width = 26
        Height = 14
        DataField = 'Data'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 22
        Width = 46
        Height = 14
        Caption = 'Entrada: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 4
      Top = 43
      Width = 261
      Height = 133
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel10: TRLLabel
        Left = 3
        Top = 34
        Width = 64
        Height = 15
        Caption = 'Descri'#231#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 190
        Top = 65
        Width = 64
        Height = 15
        Alignment = taRightJustify
        DataField = 'F_Dinheiro'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBMemo6: TRLDBMemo
        Left = 10
        Top = 50
        Width = 244
        Height = 15
        Behavior = [beSiteExpander]
        DataField = 'Descri'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 72
        Top = 65
        Width = 56
        Height = 15
        Caption = 'Dinheiro: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 193
        Top = 81
        Width = 61
        Height = 15
        Alignment = taRightJustify
        DataField = 'F_Cheque'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel14: TRLLabel
        Left = 72
        Top = 81
        Width = 52
        Height = 15
        Caption = 'Cheque: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 72
        Top = 97
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
      object RLDBText13: TRLDBText
        Left = 223
        Top = 97
        Width = 30
        Height = 15
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel4: TRLPanel
        Left = 0
        Top = 113
        Width = 261
        Height = 20
        Align = faBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel16: TRLLabel
          Left = 1
          Top = 3
          Width = 50
          Height = 15
          Caption = 'Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 53
          Top = 3
          Width = 204
          Height = 15
          AutoSize = False
          DataField = 'nomeusu'
          DataSource = dE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLDBText16: TRLDBText
        Left = 3
        Top = 1
        Width = 254
        Height = 15
        DataField = 'titular'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Conta:  '
      end
      object RLDBText22: TRLDBText
        Left = 3
        Top = 18
        Width = 254
        Height = 12
        AutoSize = False
        DataField = 'numTransacao'
        DataSource = dE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'N'#186' Trans.: '
      end
    end
  end
  object rpRecibo: TRLReport
    Left = 344
    Top = 332
    Width = 276
    Height = 567
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = dP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 73.000000000000000000
    PageSetup.PaperHeight = 150.000000000000000000
    PrintDialog = False
    PrintEmpty = False
    JobTitle = 'Impresao'
    object RLBand7: TRLBand
      Left = 4
      Top = 4
      Width = 261
      Height = 226
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLPanel6: TRLPanel
        Left = 0
        Top = 64
        Width = 261
        Height = 31
        Align = faTop
        AutoExpand = True
        Behavior = [beSiteExpander]
        object mTexto: TRLMemo
          Left = 5
          Top = 6
          Width = 250
          Height = 17
          Alignment = taJustify
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel7: TRLPanel
        Left = 0
        Top = 32
        Width = 261
        Height = 32
        Align = faTop
        object RLLabel24: TRLLabel
          Left = 5
          Top = 6
          Width = 73
          Height = 16
          Caption = 'R E C I B O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lValor: TRLLabel
          Left = 221
          Top = 3
          Width = 35
          Height = 19
          Alignment = taRightJustify
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel8: TRLPanel
        Left = 0
        Top = 95
        Width = 261
        Height = 128
        Align = faTop
        AutoExpand = True
        Behavior = [beSiteExpander]
        object lData: TRLLabel
          Left = 5
          Top = 18
          Width = 252
          Height = 14
          Caption = '____________________, ______/_____/________.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object mFornec: TRLMemo
          Left = 5
          Top = 81
          Width = 254
          Height = 17
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 5
          Top = 114
          Width = 12
          Height = 14
          Align = faBottomOnly
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLPanel9: TRLPanel
        Left = 0
        Top = 0
        Width = 261
        Height = 32
        Align = faTop
        object RLDBMemo7: TRLDBMemo
          Left = 0
          Top = 0
          Width = 261
          Height = 17
          Align = faTop
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'Fantasia'
          DataSource = DM.dParametro
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
  object qS: TZReadOnlyQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select  movcaixa.* ,'
      ' u.nome nomeUsu, conta.titular'
      'from movcaixa'
      'left join usuario u on u.id = movcaixa.idusuario'
      'left join conta on conta.id = movcaixa.idconta'
      'where movcaixa.id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 8
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qSId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qSData: TDateTimeField
      FieldName = 'Data'
    end
    object qSIdConta: TIntegerField
      FieldName = 'IdConta'
    end
    object qSidMov: TIntegerField
      FieldName = 'idMov'
    end
    object qSIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qSValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qSFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qSValorFpgto: TFloatField
      FieldName = 'ValorFpgto'
      DisplayFormat = '###,###,##0.00'
    end
    object qSDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object qSTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
    end
    object qSJuros: TFloatField
      FieldName = 'Juros'
      DisplayFormat = '###,###,##0.00'
    end
    object qSTPMov: TWideStringField
      FieldName = 'TPMov'
      Size = 1
    end
    object qSSegundaForma: TWideStringField
      FieldName = 'SegundaForma'
      Required = True
      Size = 1
    end
    object qSDescri: TWideStringField
      FieldName = 'Descri'
      Size = 100
    end
    object qSTroco: TFloatField
      FieldName = 'Troco'
    end
    object qSF_dinheiro: TFloatField
      FieldName = 'F_dinheiro'
      DisplayFormat = '###,###,##0.00'
    end
    object qSF_cheque: TFloatField
      FieldName = 'F_cheque'
      DisplayFormat = '###,###,##0.00'
    end
    object qSF_debito: TFloatField
      FieldName = 'F_debito'
      DisplayFormat = '###,###,##0.00'
    end
    object qSF_credito: TFloatField
      FieldName = 'F_credito'
      DisplayFormat = '###,###,##0.00'
    end
    object qSPendente: TWideStringField
      FieldName = 'Pendente'
      Required = True
      Size = 1
    end
    object qSnomeUsu: TWideStringField
      FieldName = 'nomeUsu'
      Size = 50
    end
    object qStitular: TWideStringField
      FieldName = 'titular'
      Size = 50
    end
  end
  object dS: TDataSource
    DataSet = qS
    Left = 40
    Top = 16
  end
  object qP: TZReadOnlyQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select  movcaixa.* ,'
      ' u.nome nomeUsu, conta.titular'
      'from movcaixa'
      'left join usuario u on u.id = movcaixa.idusuario'
      'left join conta on conta.id = movcaixa.idconta'
      'where movcaixa.id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qPId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qPData: TDateTimeField
      FieldName = 'Data'
    end
    object qPIdConta: TIntegerField
      FieldName = 'IdConta'
    end
    object qPidMov: TIntegerField
      FieldName = 'idMov'
    end
    object qPIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qPValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qPFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qPValorFpgto: TFloatField
      FieldName = 'ValorFpgto'
      DisplayFormat = '###,###,##0.00'
    end
    object qPDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object qPTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
    end
    object qPJuros: TFloatField
      FieldName = 'Juros'
      DisplayFormat = '###,###,##0.00'
    end
    object qPTPMov: TWideStringField
      FieldName = 'TPMov'
      Size = 1
    end
    object qPSegundaForma: TWideStringField
      FieldName = 'SegundaForma'
      Required = True
      Size = 1
    end
    object qPDescri: TWideStringField
      FieldName = 'Descri'
      Size = 100
    end
    object qPTroco: TFloatField
      FieldName = 'Troco'
      DisplayFormat = '###,###,##0.00'
    end
    object qPF_dinheiro: TFloatField
      FieldName = 'F_dinheiro'
      DisplayFormat = '###,###,##0.00'
    end
    object qPF_cheque: TFloatField
      FieldName = 'F_cheque'
      DisplayFormat = '###,###,##0.00'
    end
    object qPF_debito: TFloatField
      FieldName = 'F_debito'
      DisplayFormat = '###,###,##0.00'
    end
    object qPF_credito: TFloatField
      FieldName = 'F_credito'
      DisplayFormat = '###,###,##0.00'
    end
    object qPPendente: TWideStringField
      FieldName = 'Pendente'
      Required = True
      Size = 1
    end
    object qPnomeUsu: TWideStringField
      FieldName = 'nomeUsu'
      Size = 50
    end
    object qPtitular: TWideStringField
      FieldName = 'titular'
      Size = 50
    end
  end
  object dP: TDataSource
    DataSet = qP
    Left = 272
    Top = 40
  end
  object qE: TZReadOnlyQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select  movcaixa.* ,'
      ' u.nome nomeUsu, conta.titular'
      'from movcaixa'
      'left join usuario u on u.id = movcaixa.idusuario'
      'left join conta on conta.id = movcaixa.idconta'
      'where movcaixa.id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 344
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qEId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qEData: TDateTimeField
      FieldName = 'Data'
    end
    object qEIdConta: TIntegerField
      FieldName = 'IdConta'
    end
    object qEidMov: TIntegerField
      FieldName = 'idMov'
    end
    object qEIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object qEValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object qEFpgto: TWideStringField
      FieldName = 'Fpgto'
      Size = 50
    end
    object qEValorFpgto: TFloatField
      FieldName = 'ValorFpgto'
      DisplayFormat = '###,###,##0.00'
    end
    object qEDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,##0.00'
    end
    object qETotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
    end
    object qEJuros: TFloatField
      FieldName = 'Juros'
      DisplayFormat = '###,###,##0.00'
    end
    object qETPMov: TWideStringField
      FieldName = 'TPMov'
      Size = 1
    end
    object qESegundaForma: TWideStringField
      FieldName = 'SegundaForma'
      Required = True
      Size = 1
    end
    object qEDescri: TWideStringField
      FieldName = 'Descri'
      Size = 100
    end
    object qETroco: TFloatField
      FieldName = 'Troco'
      DisplayFormat = '###,###,##0.00'
    end
    object qEF_dinheiro: TFloatField
      FieldName = 'F_dinheiro'
      DisplayFormat = '###,###,##0.00'
    end
    object qEF_cheque: TFloatField
      FieldName = 'F_cheque'
      DisplayFormat = '###,###,##0.00'
    end
    object qEF_debito: TFloatField
      FieldName = 'F_debito'
      DisplayFormat = '###,###,##0.00'
    end
    object qEF_credito: TFloatField
      FieldName = 'F_credito'
      DisplayFormat = '###,###,##0.00'
    end
    object qEPendente: TWideStringField
      FieldName = 'Pendente'
      Required = True
      Size = 1
    end
    object qEnomeUsu: TWideStringField
      FieldName = 'nomeUsu'
      Size = 50
    end
    object qEtitular: TWideStringField
      FieldName = 'titular'
      Size = 50
    end
  end
  object dE: TDataSource
    DataSet = qE
    Left = 376
    Top = 8
  end
end
