object FImpNutricionalM2: TFImpNutricionalM2
  Left = 0
  Top = 0
  Caption = 'FImpNutricionalM2'
  ClientHeight = 529
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object rlNovoHorizontal: TRLReport
    Left = 8
    Top = 56
    Width = 945
    Height = 416
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 3.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 3.000000000000000000
    DataSource = dsDados
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
    object RLPanelLeft: TRLPanel
      Left = 19
      Top = 11
      Width = 518
      Height = 394
      Align = faLeft
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      Borders.FixedRight = True
      object RLPanelCabecalho: TRLPanel
        Left = 0
        Top = 0
        Width = 517
        Height = 133
        Align = faTop
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
        object Label76: TLabel
          Left = 359
          Top = 25
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
          Left = 359
          Top = 14
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
          Left = 359
          Top = 3
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
        object rllbDataFabricacao: TRLLabel
          Left = 466
          Top = 3
          Width = 49
          Height = 11
          Caption = 'Data de Fabrica'#231#227'o: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object rllbDataValidade: TRLLabel
          Left = 466
          Top = 14
          Width = 49
          Height = 11
          Caption = 'Data de Validade:   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object rllbLote: TRLLabel
          Left = 388
          Top = 25
          Width = 67
          Height = 11
          Caption = 'Lote:                       '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
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
      object RLRichTextClassificacao: TRLRichText
        Left = 0
        Top = 159
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextComposicaoQualitativa: TRLRichText
        Left = 0
        Top = 175
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextEventuaisSubs: TRLRichText
        Left = 0
        Top = 191
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextNiveisGarantia: TRLRichText
        Left = 0
        Top = 207
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextIndicacaoUso: TRLRichText
        Left = 0
        Top = 223
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextRestricoes: TRLRichText
        Left = 0
        Top = 255
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextModoUso: TRLRichText
        Left = 0
        Top = 239
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextConservacao: TRLRichText
        Left = 0
        Top = 271
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLRichTextPrazoValidade: TRLRichText
        Left = 0
        Top = 287
        Width = 517
        Height = 16
        Align = faTop
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 Classif' +
            'ica\'#39'e7\'#39'e3o: \b0 TESTE TESTE TESTE TESTE TESTE \f1\fs22\par'
          '}')
      end
      object RLLabelNomeProduto: TRLLabel
        Left = 0
        Top = 133
        Width = 517
        Height = 13
        Align = faTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabelNomeFantasia: TRLLabel
        Left = 0
        Top = 146
        Width = 517
        Height = 13
        Align = faTop
        Caption = 'RLNomeFantasia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Small Fonts'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLPanelClient: TRLPanel
      Left = 537
      Top = 11
      Width = 389
      Height = 394
      Margins.LeftMargin = 1.000000000000000000
      Align = faClient
      object RLRichText1: TRLRichText
        Left = 4
        Top = 360
        Width = 385
        Height = 34
        Align = faBottom
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Small Fonts'
        Font.Style = []
        Lines.Strings = (
          
            '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcha' +
            'rset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'
          
            '\viewkind4\uc1\pard\sa200\sl276\slmult1\qc\lang22\b\f0\fs12 Ind\' +
            #39'fastrica Brasileira\'
          
            '\sa200\sl276\slmult1 Produto isento de registro no Minist\'#39'e9rio' +
            ' da Agricultura, Pecu\'#39'e1ria e Abastecimento (MAPA), conforme N.' +
            ' 51 DE 03/08/2020\b0\f1\fs22\par'
          '}')
        ParentFont = False
      end
      object RLPanelTabelaReferenciaConsumo: TRLPanel
        Left = 1
        Top = 207
        Width = 396
        Height = 35
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel1: TRLLabel
          Left = 7
          Top = 0
          Width = 383
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tabela Refeer'#234'ncia - Consumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabelTituloGarantia: TRLLabel
          Left = 0
          Top = 9
          Width = 170
          Height = 10
          AutoSize = False
          Caption = 'Garantia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabelTituloVlrReferencia: TRLLabel
          Left = 182
          Top = 9
          Width = 71
          Height = 10
          AutoSize = False
          Caption = 'Vlr. Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabelTituloQtd100g: TRLLabel
          Left = 264
          Top = 9
          Width = 67
          Height = 10
          AutoSize = False
          Caption = 'Qtd. por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabelTituloPerc100g: TRLLabel
          Left = 337
          Top = 9
          Width = 53
          Height = 10
          AutoSize = False
          Caption = '% por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanelTabelaReferenciaMicrominerais_mgDia: TRLPanel
        Left = 1
        Top = 245
        Width = 396
        Height = 32
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel2: TRLLabel
          Left = 7
          Top = 0
          Width = 383
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tabela Refeer'#234'ncia - Microminerais (mg/dia)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 0
          Top = 11
          Width = 170
          Height = 10
          AutoSize = False
          Caption = 'Garantia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 182
          Top = 11
          Width = 71
          Height = 10
          AutoSize = False
          Caption = 'Vlr. Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 264
          Top = 11
          Width = 67
          Height = 10
          AutoSize = False
          Caption = 'Qtd. por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 337
          Top = 11
          Width = 53
          Height = 10
          AutoSize = False
          Caption = '% por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanelTabelaReferenciaMicrominerais_GDia: TRLPanel
        Left = 1
        Top = 283
        Width = 396
        Height = 32
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel7: TRLLabel
          Left = 7
          Top = 0
          Width = 383
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tabela Refeer'#234'ncia - Microminerais (g/dia)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 0
          Top = 11
          Width = 170
          Height = 10
          AutoSize = False
          Caption = 'Garantia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 182
          Top = 11
          Width = 71
          Height = 10
          AutoSize = False
          Caption = 'Vlr. Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 264
          Top = 11
          Width = 67
          Height = 10
          AutoSize = False
          Caption = 'Qtd. por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 337
          Top = 11
          Width = 53
          Height = 10
          AutoSize = False
          Caption = '% por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanelTabelaReferenciaVitaminasDia: TRLPanel
        Left = 1
        Top = 321
        Width = 396
        Height = 32
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel12: TRLLabel
          Left = 7
          Top = 0
          Width = 383
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tabela Refeer'#234'ncia - Vitaminas (vi/dia)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 0
          Top = 11
          Width = 170
          Height = 10
          AutoSize = False
          Caption = 'Garantia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 182
          Top = 11
          Width = 71
          Height = 10
          AutoSize = False
          Caption = 'Vlr. Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 264
          Top = 11
          Width = 67
          Height = 10
          AutoSize = False
          Caption = 'Qtd. por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 337
          Top = 11
          Width = 53
          Height = 10
          AutoSize = False
          Caption = '% por 100g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object qNutricional: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select dias_validade, ficha_tecnica, descricao, classificacao,'
      
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
    object qNutricionalIndicacaoUso: TWideMemoField
      FieldName = 'IndicacaoUso'
      BlobType = ftWideMemo
    end
    object qNutricionalclassificacao: TWideMemoField
      FieldName = 'classificacao'
      BlobType = ftWideMemo
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
  object cdsDados: TClientDataSet
    PersistDataPacket.Data = {
      580000009619E0BD01000000180000000200000000000300000058000543616D
      706F01004A0000000100055749445448020002003C0008436F6E746575646F04
      004B0000000100075355425459504502004900050054657874000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 408
    object cdsDadosCampo: TWideStringField
      FieldName = 'Campo'
      Size = 30
    end
    object cdsDadosConteudo: TMemoField
      FieldName = 'Conteudo'
      BlobType = ftMemo
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 72
    Top = 408
  end
  object qTabelaReferencia: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from TABELAREFERENCIAPRODUTO'
      'where idproduto = :IDPRODUTO'
      '    AND TIPOTABELA = :TIPOTABELA')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDPRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOTABELA'
        ParamType = ptUnknown
      end>
    Left = 72
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOTABELA'
        ParamType = ptUnknown
      end>
    object qTabelaReferenciaID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qTabelaReferenciaIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object qTabelaReferenciaTIPOTABELA: TIntegerField
      FieldName = 'TIPOTABELA'
    end
    object qTabelaReferenciaGARANTIA: TWideStringField
      FieldName = 'GARANTIA'
      Size = 100
    end
    object qTabelaReferenciaVALORREFERENCIA: TFloatField
      FieldName = 'VALORREFERENCIA'
    end
    object qTabelaReferenciaQTDFORNECIDA_100G: TFloatField
      FieldName = 'QTDFORNECIDA_100G'
    end
    object qTabelaReferenciaQTDPERCFORNECIDA_100G: TFloatField
      FieldName = 'QTDPERCFORNECIDA_100G'
    end
  end
end
