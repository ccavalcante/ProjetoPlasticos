object fImpNutricional: TfImpNutricional
  Left = 0
  Top = 0
  Caption = 'fImpNutricional'
  ClientHeight = 585
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object rlNutricional: TRLReport
    Left = 346
    Top = -280
    Width = 794
    Height = 1123
    Margins.TopMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dsNutricional
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 489
      Width = 718
      Height = 329
      AutoExpand = False
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand2BeforePrint
      object Label1: TLabel
        Left = 253
        Top = 280
        Width = 132
        Height = 16
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 253
        Top = 295
        Width = 125
        Height = 16
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 253
        Top = 310
        Width = 124
        Height = 16
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lFabricacao: TLabel
        Left = 391
        Top = 280
        Width = 132
        Height = 16
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lValidade: TLabel
        Left = 391
        Top = 295
        Width = 125
        Height = 16
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lLote: TLabel
        Left = 391
        Top = 310
        Width = 124
        Height = 16
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2
        Top = 240
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'Restri'#231#245'es e outras recomenda'#231#245'es:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label5: TLabel
        Left = 2
        Top = 164
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'Condi'#231#245'es de conserva'#231#227'o:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label6: TLabel
        Left = 50
        Top = 140
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'Prazo de validade:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label7: TLabel
        Left = 2
        Top = 41
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'Modo de usar:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label8: TLabel
        Left = 2
        Top = 8
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'Indica'#231#245'es de uso e esp'#233'cie animal a que se destina:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo2: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 180
        Width = 758
        Height = 60
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'Conservacao'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 2
        Top = 255
        Width = 758
        Height = 16
        DataField = 'restricao'
        DataSource = dsNutricional
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 2
        Top = 144
        Width = 758
        Height = 16
        DataField = 'Prazovalidade'
        DataSource = dsNutricional
        Text = ''
      end
      object RLDBMemo3: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 57
        Width = 758
        Height = 67
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'ModoUso'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 2
        Top = 25
        Width = 758
        Height = 16
        AutoSize = False
        DataField = 'IndicacaoUso'
        DataSource = dsNutricional
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 233
      Width = 718
      Height = 208
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label12: TLabel
        Left = 2
        Top = 166
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'N'#237'veis de Garantia:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label13: TLabel
        Left = 1
        Top = 98
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'Eventuais Substitutivos:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label14: TLabel
        Left = 1
        Top = 28
        Width = 715
        Height = 16
        AutoSize = False
        Caption = 'Composi'#231#227'o qualitativa:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 2
        Top = 183
        Width = 718
        Height = 16
        AutoSize = False
        DataField = 'garantia'
        DataSource = dsNutricional
        Text = ''
      end
      object RLDBMemo4: TRLDBMemo
        AlignWithMargins = True
        Left = 3
        Top = 114
        Width = 718
        Height = 53
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'Substituto'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo5: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 44
        Width = 718
        Height = 52
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'ComposicaoQuali'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 2
        Top = 6
        Width = 391
        Height = 16
        AutoSize = False
        DataField = 'descricao'
        DataSource = dsNutricional
        Text = ''
      end
      object RLDBText70: TRLDBText
        Left = 399
        Top = 6
        Width = 59
        Height = 18
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
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 441
      Width = 718
      Height = 48
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      DataSource = dsGarantia
      object RLBand4: TRLBand
        Left = 1
        Top = 1
        Width = 716
        Height = 16
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object Label9: TLabel
          Left = 339
          Top = -1
          Width = 53
          Height = 16
          Caption = 'Unidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 233
          Top = -1
          Width = 33
          Height = 16
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 3
          Top = -1
          Width = 55
          Height = 16
          Caption = 'Garantia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 191
          Top = 0
          Width = 9
          Height = 15
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw5: TRLDraw
          Left = 296
          Top = 0
          Width = 9
          Height = 15
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 436
          Top = 0
          Width = 17
          Height = 15
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
      object RLBand5: TRLBand
        Left = 1
        Top = 17
        Width = 716
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText4: TRLDBText
          Left = 8
          Top = 5
          Width = 50
          Height = 16
          DataField = 'garantia'
          DataSource = dsGarantia
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 236
          Top = 5
          Width = 30
          Height = 16
          Alignment = taRightJustify
          DataField = 'valor'
          DataSource = dsGarantia
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 339
          Top = 5
          Width = 53
          Height = 16
          DataField = 'unidade'
          DataSource = dsGarantia
          Text = ''
        end
        object RLDraw1: TRLDraw
          Left = 191
          Top = 0
          Width = 9
          Height = 21
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw2: TRLDraw
          Left = 296
          Top = 0
          Width = 9
          Height = 21
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw3: TRLDraw
          Left = 440
          Top = 0
          Width = 9
          Height = 21
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 19
      Width = 718
      Height = 214
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object Label15: TLabel
        Left = 3
        Top = 3
        Width = 94
        Height = 16
        Caption = 'Produzido por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 3
        Top = 19
        Width = 85
        Height = 16
        Caption = 'Raz'#227'o social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 3
        Top = 36
        Width = 64
        Height = 16
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 3
        Top = 55
        Width = 43
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 3
        Top = 71
        Width = 66
        Height = 16
        Caption = 'Munic'#237'pio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 3
        Top = 88
        Width = 46
        Height = 16
        Caption = 'Estado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 3
        Top = 104
        Width = 30
        Height = 16
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 3
        Top = 122
        Width = 59
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 3
        Top = 137
        Width = 38
        Height = 16
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 3
        Top = 153
        Width = 123
        Height = 16
        Caption = 'Inscri'#231#227'o estadual: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 3
        Top = 170
        Width = 123
        Height = 16
        Caption = 'Ind'#250'stria brasileira.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 3
        Top = 187
        Width = 31
        Height = 16
        Caption = 'SAC:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 103
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
      object RLDBText9: TRLDBText
        Left = 103
        Top = 19
        Width = 48
        Height = 16
        DataField = 'RAZAO'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 103
        Top = 36
        Width = 77
        Height = 16
        DataField = 'ENDERECO'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 103
        Top = 55
        Width = 53
        Height = 16
        DataField = 'BAIRRO'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 103
        Top = 71
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 103
        Top = 88
        Width = 21
        Height = 16
        DataField = 'UF'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 103
        Top = 104
        Width = 31
        Height = 16
        DataField = 'CEP'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = 103
        Top = 122
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText17: TRLDBText
        Left = 103
        Top = 137
        Width = 37
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 103
        Top = 187
        Width = 43
        Height = 16
        DataField = 'EMAIL'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 132
        Top = 153
        Width = 16
        Height = 16
        DataField = 'IE'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object rlNutricional_old: TRLReport
    Left = 8
    Top = 48
    Width = 378
    Height = 567
    Margins.LeftMargin = 4.000000000000000000
    Margins.TopMargin = 4.000000000000000000
    Margins.RightMargin = 4.000000000000000000
    Margins.BottomMargin = 4.000000000000000000
    DataSource = dsNutricional
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 100.000000000000000000
    PageSetup.PaperHeight = 150.000000000000000000
    object RLBand1: TRLBand
      Left = 15
      Top = 15
      Width = 348
      Height = 531
      Margins.LeftMargin = 1.000000000000000000
      Margins.TopMargin = 1.000000000000000000
      Margins.RightMargin = 1.000000000000000000
      Margins.BottomMargin = 1.000000000000000000
      AutoExpand = False
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand1BeforePrint
      object lFabricacaotxt: TLabel
        Left = 40
        Top = 478
        Width = 132
        Height = 16
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lValidadetxt: TLabel
        Left = 40
        Top = 493
        Width = 125
        Height = 16
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lLotetxt: TLabel
        Left = 40
        Top = 508
        Width = 124
        Height = 16
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lFabricacao_: TLabel
        Left = 178
        Top = 478
        Width = 132
        Height = 16
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lValidade_: TLabel
        Left = 178
        Top = 493
        Width = 125
        Height = 16
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lLote_: TLabel
        Left = 178
        Top = 508
        Width = 124
        Height = 16
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo1: TRLDBMemo
        AlignWithMargins = True
        Left = 7
        Top = 5
        Width = 320
        Height = 472
        Align = faTopOnly
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'ficha_tecnica'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object rlNovo: TRLReport
    Left = 67
    Top = 8
    Width = 416
    Height = 945
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 3.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 3.000000000000000000
    DataSource = dsNutricional
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 110.000000000000000000
    PageSetup.PaperHeight = 250.000000000000000000
    object RLBand7: TRLBand
      Left = 19
      Top = 355
      Width = 378
      Height = 37
      AutoExpand = False
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      BeforePrint = RLBand7BeforePrint
      object Label35: TLabel
        Left = 2
        Top = 4
        Width = 373
        Height = 16
        AutoSize = False
        Caption = 'Prazo de validade:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText21: TRLDBText
        Left = 2
        Top = 23
        Width = 49
        Height = 8
        DataField = 'Prazovalidade'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand8: TRLBand
      Left = 19
      Top = 149
      Width = 378
      Height = 46
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label40: TLabel
        Left = 2
        Top = 19
        Width = 374
        Height = 14
        AutoSize = False
        Caption = 'Composi'#231#227'o qualitativa:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText24: TRLDBText
        Left = 1
        Top = 1
        Width = 376
        Height = 16
        Margins.Top = 10
        Align = faTop
        AutoSize = False
        DataField = 'descricao'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText25: TRLDBText
        Left = 399
        Top = 6
        Width = 59
        Height = 18
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
      object RLDBMemo9: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 32
        Width = 376
        Height = 8
        Behavior = [beSiteExpander]
        DataField = 'ComposicaoQuali'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 19
      Top = 253
      Width = 378
      Height = 30
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      DataSource = dsGarantia
      object RLBand9: TRLBand
        Left = 1
        Top = 1
        Width = 376
        Height = 14
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object Label41: TLabel
          Left = 285
          Top = 0
          Width = 38
          Height = 10
          Caption = 'Unidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 227
          Top = 0
          Width = 26
          Height = 10
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 3
          Top = 0
          Width = 39
          Height = 10
          Caption = 'Garantia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 191
          Top = 0
          Width = 9
          Height = 13
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw8: TRLDraw
          Left = 276
          Top = 0
          Width = 9
          Height = 13
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw9: TRLDraw
          Left = 367
          Top = 0
          Width = 17
          Height = 13
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
      object RLBand10: TRLBand
        Left = 1
        Top = 15
        Width = 376
        Height = 15
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText26: TRLDBText
          Left = 8
          Top = 4
          Width = 29
          Height = 8
          DataField = 'garantia'
          DataSource = dsGarantia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText27: TRLDBText
          Left = 234
          Top = 4
          Width = 18
          Height = 8
          Alignment = taRightJustify
          DataField = 'valor'
          DataSource = dsGarantia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText28: TRLDBText
          Left = 285
          Top = 4
          Width = 27
          Height = 8
          DataField = 'unidade'
          DataSource = dsGarantia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw10: TRLDraw
          Left = 191
          Top = 0
          Width = 9
          Height = 14
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw11: TRLDraw
          Left = 276
          Top = 0
          Width = 9
          Height = 14
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 371
          Top = 0
          Width = 9
          Height = 14
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
    end
    object RLBand11: TRLBand
      Left = 19
      Top = 11
      Width = 378
      Height = 138
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object Label44: TLabel
        Left = 3
        Top = 3
        Width = 70
        Height = 10
        Caption = 'Produzido por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 3
        Top = 14
        Width = 62
        Height = 10
        Caption = 'Raz'#227'o social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label46: TLabel
        Left = 3
        Top = 25
        Width = 46
        Height = 10
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 3
        Top = 37
        Width = 33
        Height = 10
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 3
        Top = 48
        Width = 50
        Height = 10
        Caption = 'Munic'#237'pio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 3
        Top = 58
        Width = 36
        Height = 10
        Caption = 'Estado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 3
        Top = 68
        Width = 23
        Height = 10
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 3
        Top = 78
        Width = 43
        Height = 10
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 3
        Top = 88
        Width = 29
        Height = 10
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 3
        Top = 99
        Width = 89
        Height = 10
        Caption = 'Inscri'#231#227'o estadual: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 3
        Top = 110
        Width = 90
        Height = 10
        Caption = 'Ind'#250'stria brasileira.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label55: TLabel
        Left = 3
        Top = 120
        Width = 24
        Height = 10
        Caption = 'SAC:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText29: TRLDBText
        Left = 103
        Top = 3
        Width = 39
        Height = 10
        DataField = 'fantasia'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText30: TRLDBText
        Left = 103
        Top = 14
        Width = 37
        Height = 10
        DataField = 'RAZAO'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText31: TRLDBText
        Left = 103
        Top = 25
        Width = 64
        Height = 11
        DataField = 'ENDERECO'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText32: TRLDBText
        Left = 103
        Top = 37
        Width = 41
        Height = 10
        DataField = 'BAIRRO'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText33: TRLDBText
        Left = 103
        Top = 48
        Width = 40
        Height = 10
        DataField = 'CIDADE'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText34: TRLDBText
        Left = 103
        Top = 58
        Width = 16
        Height = 10
        DataField = 'UF'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText35: TRLDBText
        Left = 103
        Top = 68
        Width = 22
        Height = 10
        DataField = 'CEP'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText36: TRLDBText
        Left = 103
        Top = 78
        Width = 52
        Height = 10
        DataField = 'TELEFONE'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText37: TRLDBText
        Left = 103
        Top = 88
        Width = 28
        Height = 10
        DataField = 'CNPJ'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText38: TRLDBText
        Left = 103
        Top = 120
        Width = 33
        Height = 10
        DataField = 'EMAIL'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText39: TRLDBText
        Left = 103
        Top = 99
        Width = 12
        Height = 10
        DataField = 'IE'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand12: TRLBand
      Left = 19
      Top = 450
      Width = 378
      Height = 63
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object Label27: TLabel
        Left = 64
        Top = 8
        Width = 106
        Height = 11
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lFabricacao2: TLabel
        Left = 202
        Top = 6
        Width = 106
        Height = 11
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 64
        Top = 25
        Width = 98
        Height = 11
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lValidade2: TLabel
        Left = 202
        Top = 25
        Width = 98
        Height = 11
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 64
        Top = 41
        Width = 96
        Height = 11
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lLote2: TLabel
        Left = 202
        Top = 41
        Width = 96
        Height = 11
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand13: TRLBand
      Left = 19
      Top = 421
      Width = 378
      Height = 29
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label33: TLabel
        Left = 2
        Top = 1
        Width = 373
        Height = 14
        AutoSize = False
        Caption = 'Restri'#231#245'es e outras recomenda'#231#245'es:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo10: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 16
        Width = 373
        Height = 8
        Behavior = [beSiteExpander]
        DataField = 'restricao'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand14: TRLBand
      Left = 19
      Top = 392
      Width = 378
      Height = 29
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label34: TLabel
        Left = 2
        Top = 0
        Width = 373
        Height = 16
        AutoSize = False
        Caption = 'Condi'#231#245'es de conserva'#231#227'o:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo6: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 15
        Width = 373
        Height = 8
        Behavior = [beSiteExpander]
        DataField = 'Conservacao'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand15: TRLBand
      Left = 19
      Top = 283
      Width = 378
      Height = 39
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      BeforePrint = RLBand7BeforePrint
      object Label37: TLabel
        Left = 2
        Top = 5
        Width = 373
        Height = 16
        AutoSize = False
        Caption = 'Indica'#231#245'es de uso e esp'#233'cie animal a que se destina:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText22: TRLDBText
        Left = 2
        Top = 22
        Width = 373
        Height = 16
        AutoSize = False
        DataField = 'IndicacaoUso'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand16: TRLBand
      Left = 19
      Top = 322
      Width = 378
      Height = 33
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      BeforePrint = RLBand7BeforePrint
      object Label36: TLabel
        Left = 3
        Top = 1
        Width = 373
        Height = 16
        AutoSize = False
        Caption = 'Modo de usar:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo7: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 19
        Width = 373
        Height = 8
        Behavior = [beSiteExpander]
        DataField = 'ModoUso'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand17: TRLBand
      Left = 19
      Top = 195
      Width = 378
      Height = 27
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label39: TLabel
        Left = 2
        Top = 1
        Width = 374
        Height = 14
        AutoSize = False
        Caption = 'Eventuais Substitutivos:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo8: TRLDBMemo
        AlignWithMargins = True
        Left = 2
        Top = 14
        Width = 376
        Height = 8
        Behavior = [beSiteExpander]
        DataField = 'Substituto'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand18: TRLBand
      Left = 19
      Top = 222
      Width = 378
      Height = 31
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label38: TLabel
        Left = 2
        Top = 1
        Width = 373
        Height = 14
        AutoSize = False
        Caption = 'N'#237'veis de Garantia:'
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText23: TRLDBText
        Left = 2
        Top = 14
        Width = 374
        Height = 16
        AutoSize = False
        DataField = 'garantia'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object rlNovoHorizontal: TRLReport
    Left = 95
    Top = 49
    Width = 945
    Height = 416
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 3.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 3.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.Orientation = poLandscape
    PageSetup.PaperWidth = 110.000000000000000000
    PageSetup.PaperHeight = 250.000000000000000000
    BeforePrint = rlNovoHorizontalBeforePrint
    object RLBand23: TRLBand
      Left = 19
      Top = 11
      Width = 907
      Height = 138
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object Label58: TLabel
        Left = 3
        Top = 3
        Width = 70
        Height = 10
        Caption = 'Produzido por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label59: TLabel
        Left = 3
        Top = 14
        Width = 62
        Height = 10
        Caption = 'Raz'#227'o social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label60: TLabel
        Left = 3
        Top = 25
        Width = 46
        Height = 10
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label61: TLabel
        Left = 3
        Top = 37
        Width = 33
        Height = 10
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 3
        Top = 48
        Width = 50
        Height = 10
        Caption = 'Munic'#237'pio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label63: TLabel
        Left = 3
        Top = 58
        Width = 36
        Height = 10
        Caption = 'Estado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 3
        Top = 68
        Width = 23
        Height = 10
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label65: TLabel
        Left = 3
        Top = 78
        Width = 43
        Height = 10
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label66: TLabel
        Left = 3
        Top = 88
        Width = 29
        Height = 10
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label67: TLabel
        Left = 3
        Top = 99
        Width = 89
        Height = 10
        Caption = 'Inscri'#231#227'o estadual: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label68: TLabel
        Left = 3
        Top = 110
        Width = 90
        Height = 10
        Caption = 'Ind'#250'stria brasileira.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 3
        Top = 120
        Width = 24
        Height = 10
        Caption = 'SAC:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label73: TLabel
        Left = 456
        Top = 13
        Width = 106
        Height = 11
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label74: TLabel
        Left = 456
        Top = 30
        Width = 98
        Height = 11
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 456
        Top = 47
        Width = 96
        Height = 11
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label76: TLabel
        Left = 344
        Top = 48
        Width = 96
        Height = 11
        Caption = 'Lote:                       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label77: TLabel
        Left = 344
        Top = 32
        Width = 98
        Height = 11
        Caption = 'Data de Validade:   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label78: TLabel
        Left = 344
        Top = 13
        Width = 106
        Height = 11
        Caption = 'Data de Fabrica'#231#227'o: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText45: TRLDBText
        Left = 103
        Top = 3
        Width = 39
        Height = 10
        DataField = 'fantasia'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText46: TRLDBText
        Left = 103
        Top = 14
        Width = 37
        Height = 10
        DataField = 'RAZAO'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText47: TRLDBText
        Left = 103
        Top = 25
        Width = 64
        Height = 11
        DataField = 'ENDERECO'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText48: TRLDBText
        Left = 103
        Top = 37
        Width = 41
        Height = 10
        DataField = 'BAIRRO'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText49: TRLDBText
        Left = 103
        Top = 48
        Width = 40
        Height = 10
        DataField = 'CIDADE'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText50: TRLDBText
        Left = 103
        Top = 58
        Width = 16
        Height = 10
        DataField = 'UF'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText51: TRLDBText
        Left = 103
        Top = 68
        Width = 22
        Height = 10
        DataField = 'CEP'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText52: TRLDBText
        Left = 103
        Top = 78
        Width = 52
        Height = 10
        DataField = 'TELEFONE'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText53: TRLDBText
        Left = 103
        Top = 88
        Width = 28
        Height = 10
        DataField = 'CNPJ'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText54: TRLDBText
        Left = 103
        Top = 120
        Width = 33
        Height = 10
        DataField = 'EMAIL'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText55: TRLDBText
        Left = 103
        Top = 99
        Width = 12
        Height = 10
        DataField = 'IE'
        DataSource = DM.dParametro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand19: TRLBand
      Left = 19
      Top = 149
      Width = 907
      Height = 30
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label30: TLabel
        Left = 2
        Top = 19
        Width = 123
        Height = 14
        AutoSize = False
        Caption = 'Composi'#231#227'o qualitativa:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText20: TRLDBText
        Left = 1
        Top = 1
        Width = 905
        Height = 16
        Margins.Top = 10
        Align = faTop
        AutoSize = False
        DataField = 'descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText40: TRLDBText
        Left = 399
        Top = 3
        Width = 59
        Height = 18
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
      object RLDBMemo11: TRLDBMemo
        AlignWithMargins = True
        Left = 115
        Top = 19
        Width = 758
        Height = 10
        Behavior = [beSiteExpander]
        DataField = 'ComposicaoQuali'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand20: TRLBand
      Left = 19
      Top = 179
      Width = 907
      Height = 17
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label31: TLabel
        Left = 2
        Top = 1
        Width = 123
        Height = 14
        AutoSize = False
        Caption = 'Eventuais Substitutivos:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo12: TRLDBMemo
        AlignWithMargins = True
        Left = 115
        Top = 1
        Width = 758
        Height = 10
        Behavior = [beSiteExpander]
        DataField = 'Substituto'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand21: TRLBand
      Left = 19
      Top = 196
      Width = 907
      Height = 16
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label32: TLabel
        Left = 2
        Top = 1
        Width = 99
        Height = 14
        AutoSize = False
        Caption = 'N'#237'veis de Garantia:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLMemo1: TRLMemo
        Left = 90
        Top = 2
        Width = 775
        Height = 10
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand22: TRLBand
      Left = 19
      Top = 212
      Width = 907
      Height = 26
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      BeforePrint = RLBand7BeforePrint
      object Label56: TLabel
        Left = 2
        Top = 5
        Width = 245
        Height = 16
        AutoSize = False
        Caption = 'Indica'#231#245'es de uso e esp'#233'cie animal a que se destina:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText42: TRLDBText
        Left = 242
        Top = 5
        Width = 631
        Height = 16
        AutoSize = False
        DataField = 'IndicacaoUso'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand24: TRLBand
      Left = 19
      Top = 238
      Width = 907
      Height = 18
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      BeforePrint = RLBand7BeforePrint
      object Label57: TLabel
        Left = 3
        Top = 1
        Width = 80
        Height = 16
        AutoSize = False
        Caption = 'Modo de usar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo13: TRLDBMemo
        AlignWithMargins = True
        Left = 71
        Top = 2
        Width = 802
        Height = 10
        Behavior = [beSiteExpander]
        DataField = 'ModoUso'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand25: TRLBand
      Left = 19
      Top = 256
      Width = 907
      Height = 24
      AutoExpand = False
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      BeforePrint = RLBand7BeforePrint
      object Label70: TLabel
        Left = 2
        Top = 4
        Width = 94
        Height = 16
        AutoSize = False
        Caption = 'Prazo de validade:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText43: TRLDBText
        Left = 89
        Top = 4
        Width = 53
        Height = 10
        DataField = 'Prazovalidade'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand26: TRLBand
      Left = 19
      Top = 280
      Width = 907
      Height = 18
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label71: TLabel
        Left = 2
        Top = 0
        Width = 131
        Height = 16
        AutoSize = False
        Caption = 'Condi'#231#245'es de conserva'#231#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo14: TRLDBMemo
        AlignWithMargins = True
        Left = 130
        Top = 1
        Width = 743
        Height = 10
        Behavior = [beSiteExpander]
        DataField = 'Conservacao'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand27: TRLBand
      Left = 19
      Top = 298
      Width = 907
      Height = 19
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object Label72: TLabel
        Left = 2
        Top = 1
        Width = 182
        Height = 14
        AutoSize = False
        Caption = 'Restri'#231#245'es e outras recomenda'#231#245'es:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBMemo15: TRLDBMemo
        AlignWithMargins = True
        Left = 171
        Top = 2
        Width = 701
        Height = 10
        Behavior = [beSiteExpander]
        DataField = 'restricao'
        DataSource = dsNutricional
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qNutricional: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select dias_validade, ficha_tecnica, descricao,'
      
        'ComposicaoQuali , Substituto, garantia, IndicacaoUso, ModoUso , ' +
        'Prazovalidade, Conservacao, restricao '
      'from produto'
      'where produto.id = :produto')
    Params = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    Left = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    object qNutricionaldias_validade: TIntegerField
      FieldName = 'dias_validade'
      ReadOnly = True
    end
    object qNutricionalficha_tecnica: TWideMemoField
      FieldName = 'ficha_tecnica'
      BlobType = ftWideMemo
    end
    object qNutricionalComposicaoQuali: TWideMemoField
      FieldName = 'ComposicaoQuali'
      BlobType = ftWideMemo
    end
    object qNutricionalSubstituto: TWideMemoField
      FieldName = 'Substituto'
      BlobType = ftWideMemo
    end
    object qNutricionalgarantia: TWideStringField
      FieldName = 'garantia'
      Size = 250
    end
    object qNutricionalIndicacaoUso: TWideStringField
      FieldName = 'IndicacaoUso'
      Size = 250
    end
    object qNutricionalModoUso: TWideMemoField
      FieldName = 'ModoUso'
      BlobType = ftWideMemo
    end
    object qNutricionalPrazovalidade: TWideStringField
      FieldName = 'Prazovalidade'
      Size = 250
    end
    object qNutricionalConservacao: TWideMemoField
      FieldName = 'Conservacao'
      BlobType = ftWideMemo
    end
    object qNutricionalrestricao: TWideStringField
      FieldName = 'restricao'
      Size = 250
    end
    object qNutricionaldescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object dsNutricional: TDataSource
    DataSet = qNutricional
    Left = 72
  end
  object qGarantia: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select garantia, valor, unidade'
      'from GarantiaProduto'
      'where idProduto = :produto')
    Params = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    Left = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    object qGarantiagarantia: TWideStringField
      FieldName = 'garantia'
      Size = 100
    end
    object qGarantiavalor: TFloatField
      FieldName = 'valor'
    end
    object qGarantiaunidade: TWideStringField
      FieldName = 'unidade'
    end
  end
  object dsGarantia: TDataSource
    DataSet = qGarantia
    Left = 336
  end
  object qGarantia2: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select'
      'idProduto,'
      
        ' (g.garantia +'#39' '#39'+ cast(g.valor as nvarchar)+'#39' '#39'+ g.unidade+'#39', '#39 +
        ') as descricao'
      ''
      'from GarantiaProduto g'
      'where g.idProduto = :produto'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 618
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
  end
  object dsGarantia2: TDataSource
    DataSet = qGarantia2
    Left = 696
    Top = 16
  end
end
