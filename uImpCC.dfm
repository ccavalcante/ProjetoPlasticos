object fImpCC: TfImpCC
  Left = 232
  Top = 174
  Width = 1039
  Height = 558
  HorzScrollBar.Position = 632
  VertScrollBar.Position = 1453
  AutoScroll = True
  Caption = 'fImpCC'
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
  object RLReport1: TRLReport
    Left = -603
    Top = -228
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
      Height = 117
      BandType = btColumnHeader
      BeforePrint = RLBand1BeforePrint
      object lData: TRLLabel
        Left = 0
        Top = 8
        Width = 34
        Height = 16
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 32
        Width = 34
        Height = 16
        Caption = 'teste'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 48
        Width = 151
        Height = 16
        Caption = 'Rua Carlos de Laet, 5982'
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 64
        Width = 62
        Height = 16
        Caption = 'Boqueir'#227'o'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 80
        Width = 70
        Height = 16
        Caption = 'Curitiba-PR'
      end
      object RLLabel5: TRLLabel
        Left = 0
        Top = 96
        Width = 334
        Height = 16
        Caption = 'CNPJ/ MF: 85000.966/0001-81    INS.EST: 101.88328-08'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 155
      Width = 718
      Height = 159
      object RLLabel6: TRLLabel
        Left = 0
        Top = 8
        Width = 130
        Height = 16
        Caption = 'Prezado (s) Senhores'
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 24
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = D
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 0
        Top = 48
        Width = 544
        Height = 16
        Caption = 
          'Ref: Confer'#234'ncia de Documento Fiscal e Comunica'#231#227'o de incorre'#231#245'e' +
          's  da nossa Nota Fiscal '
      end
      object RLDBText2: TRLDBText
        Left = 545
        Top = 48
        Width = 21
        Height = 16
        DataField = 'NF'
        DataSource = D
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 64
        Width = 671
        Height = 16
        Caption = 
          'Em face do que determina a Legisla'#231#227'o Fiscal vigente vimos pela ' +
          'presente comunicar-lhe (s) que a Nota Fiscal em '
      end
      object RLLabel9: TRLLabel
        Left = 0
        Top = 80
        Width = 651
        Height = 16
        Caption = 
          'refer'#234'ncia cont'#233'm a (s) irregularidades que abaixo apontamos cuj' +
          'a corre'#231#227'o solicitamos que seja providenciada '
      end
      object RLLabel10: TRLLabel
        Left = 0
        Top = 96
        Width = 93
        Height = 16
        Caption = 'imediatamente.'
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 120
        Width = 209
        Height = 16
        Caption = 'Retifica'#231#245'es a serem Consideradas'
      end
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 136
        Width = 721
        Height = 16
        Behavior = [beSiteExpander]
        DataField = 'CC_MOTIVO'
        DataSource = D
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 314
      Width = 718
      Height = 125
      BandType = btSummary
      object RLLabel12: TRLLabel
        Left = 0
        Top = 5
        Width = 718
        Height = 16
        Caption = 
          'Para Evitar-se qualquer san'#231#227'o Fiscal, solicitamos acusarem o re' +
          'cebimento desta c'#243'pia que acompanha, devendo a via de '
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 21
        Width = 374
        Height = 16
        Caption = 'de V.S(AS) Ficar arquivada juntamente com a nota em quest'#227'o.'
      end
      object RLLabel14: TRLLabel
        Left = 440
        Top = 56
        Width = 110
        Height = 16
        Caption = 'Atenciosamente,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 440
        Top = 88
        Width = 171
        Height = 16
        Caption = 'Laborat'#243'rio Lapronat Ltda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object rpNovoCCe: TRLReport
    Left = -603
    Top = -1369
    Width = 794
    Height = 1123
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 667
      BeforePrint = RLBand1BeforePrint
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 127
        Align = faTop
        object RLPanel2: TRLPanel
          Left = 0
          Top = 0
          Width = 340
          Height = 127
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Borders.FixedBottom = True
          object RLLabel20: TRLLabel
            Left = 104
            Top = 23
            Width = 115
            Height = 50
            Caption = 'CC-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -43
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 20
            Top = 79
            Width = 298
            Height = 24
            Alignment = taCenter
            Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel3: TRLPanel
          Left = 340
          Top = 0
          Width = 378
          Height = 65
          Align = faRightTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          Borders.FixedBottom = True
          object RLLabel16: TRLLabel
            Left = 2
            Top = 2
            Width = 100
            Height = 14
            Caption = 'Controle do Fisco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBBarcode1: TRLDBBarcode
            Left = 6
            Top = 19
            Width = 368
            Height = 40
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
            Alignment = taCenter
            AutoSize = False
            DataField = 'CHAVE'
            DataSource = D
          end
        end
        object RLPanel4: TRLPanel
          Left = 340
          Top = 65
          Width = 378
          Height = 32
          Align = faRightOnly
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Borders.Color = clGray
          object RLLabel17: TRLLabel
            Left = 2
            Top = 0
            Width = 99
            Height = 14
            Caption = 'Chave de Acesso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 2
            Top = 13
            Width = 374
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CHAVE'
            DataSource = D
            Text = ''
          end
        end
        object RLPanel5: TRLPanel
          Left = 340
          Top = 97
          Width = 378
          Height = 30
          Align = faRightOnly
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.Color = clGray
          object RLLabel18: TRLLabel
            Left = 0
            Top = 1
            Width = 377
            Height = 16
            Align = faTop
            Alignment = taCenter
            Caption = 'Consulta de autenticidade do portal nacional da NF-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 0
            Top = 14
            Width = 377
            Height = 15
            Align = faBottom
            Alignment = taCenter
            Caption = 'www.nfe.fazenda.gov.br/portal ou no site da Sefaz autorizadora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLPanel6: TRLPanel
        Left = 0
        Top = 127
        Width = 718
        Height = 289
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLPanel7: TRLPanel
          Left = 1
          Top = 0
          Width = 230
          Height = 288
          Align = faLeft
          object RLPanel8: TRLPanel
            Left = 0
            Top = 0
            Width = 230
            Height = 32
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLDraw2: TRLDraw
              Left = 76
              Top = 1
              Width = 2
              Height = 30
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Pen.Style = psClear
            end
            object RLLabel22: TRLLabel
              Left = 80
              Top = 0
              Width = 83
              Height = 14
              Caption = 'CNPJ Emitente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lCNPJEmitente: TRLLabel
              Left = 98
              Top = 14
              Width = 130
              Height = 16
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel37: TRLLabel
              Left = 2
              Top = 0
              Width = 27
              Height = 14
              Caption = 'NF-e'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText5: TRLDBText
              Left = 11
              Top = 14
              Width = 62
              Height = 16
              AutoSize = False
              DataField = 'NF'
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
          object RLPanel9: TRLPanel
            Left = 0
            Top = 32
            Width = 230
            Height = 32
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel23: TRLLabel
              Left = 2
              Top = 0
              Width = 122
              Height = 14
              Caption = 'Data/Hora Autoriza'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lDataHora: TRLLabel
              Left = 11
              Top = 14
              Width = 214
              Height = 16
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLPanel10: TRLPanel
            Left = 0
            Top = 64
            Width = 230
            Height = 32
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel24: TRLLabel
              Left = 1
              Top = 0
              Width = 56
              Height = 14
              Caption = 'Protocolo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText6: TRLDBText
              Left = 11
              Top = 14
              Width = 214
              Height = 16
              AutoSize = False
              DataField = 'PROTOCOLO'
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
          object RLPanel12: TRLPanel
            Left = 0
            Top = 96
            Width = 230
            Height = 32
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel25: TRLLabel
              Left = 2
              Top = 0
              Width = 100
              Height = 14
              Caption = 'CNPJ Destinat'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBText7: TRLDBText
              Left = 11
              Top = 14
              Width = 214
              Height = 16
              AutoSize = False
              DataField = 'CNPJ'
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
          object RLPanel13: TRLPanel
            Left = 0
            Top = 128
            Width = 230
            Height = 64
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel36: TRLLabel
              Left = 2
              Top = 0
              Width = 104
              Height = 14
              Caption = 'Nome Destinat'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDBMemo3: TRLDBMemo
              Left = 11
              Top = 15
              Width = 215
              Height = 48
              AutoSize = False
              Behavior = [beSiteExpander]
              DataField = 'NOME'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLPanel15: TRLPanel
            Left = 0
            Top = 192
            Width = 230
            Height = 32
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel27: TRLLabel
              Left = 92
              Top = 0
              Width = 40
              Height = 14
              Caption = 'Evento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel32: TRLLabel
              Left = 101
              Top = 14
              Width = 120
              Height = 16
              Caption = 'Carta de Corre'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel26: TRLLabel
              Left = 2
              Top = 0
              Width = 36
              Height = 14
              Caption = 'Org'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lOrgao: TRLLabel
              Left = 11
              Top = 14
              Width = 59
              Height = 16
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLDraw3: TRLDraw
              Left = 85
              Top = 1
              Width = 2
              Height = 30
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Pen.Style = psClear
            end
          end
          object RLPanel16: TRLPanel
            Left = 0
            Top = 224
            Width = 230
            Height = 32
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object RLLabel28: TRLLabel
              Left = 2
              Top = 0
              Width = 67
              Height = 14
              Caption = 'Tipo Evento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel33: TRLLabel
              Left = 11
              Top = 15
              Width = 46
              Height = 16
              Caption = '110110'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLPanel17: TRLPanel
            Left = 0
            Top = 256
            Width = 230
            Height = 32
            Align = faTop
            object RLDraw1: TRLDraw
              Left = 85
              Top = 0
              Width = 2
              Height = 32
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Pen.Style = psClear
            end
            object RLLabel30: TRLLabel
              Left = 92
              Top = 0
              Width = 83
              Height = 14
              Caption = 'Vers'#227'o Evento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel35: TRLLabel
              Left = 102
              Top = 14
              Width = 22
              Height = 16
              Caption = '1.0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel29: TRLLabel
              Left = 2
              Top = 0
              Width = 67
              Height = 14
              Caption = 'Seq. Evento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel34: TRLLabel
              Left = 11
              Top = 14
              Width = 11
              Height = 16
              Caption = '1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object RLPanel11: TRLPanel
          Left = 232
          Top = 0
          Width = 485
          Height = 288
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel31: TRLLabel
            Left = 1
            Top = 0
            Width = 484
            Height = 16
            Align = faTop
            AutoSize = False
            Caption = 'Corre'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo2: TRLDBMemo
            Left = 18
            Top = 26
            Width = 455
            Height = 255
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'CC_MOTIVO'
            DataSource = D
          end
        end
      end
      object RLPanel18: TRLPanel
        Left = 0
        Top = 416
        Width = 718
        Height = 185
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLMemo1: TRLMemo
          Left = 1
          Top = 4
          Width = 716
          Height = 176
          Align = faCenter
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            ''
            
              'A Carta de corre'#231#227'o '#233' diciplinada pelo par'#225'grafo 1'#186' - A do art. ' +
              '7'#186' do Conv'#234'nio S/N, de 15 de dezembro de 1970 e pode ser utiliza' +
              'da para regulariza'#231#227'o de erro ocorrigo na emiss'#227'o de documento f' +
              'iscal, desde que o erro n'#227'o esteja relacionado com:'
            ''
            
              'I - As vari'#225'veis que determinal o valor do imposto tais como: ba' +
              'se de c'#225'lculo, aliquota, diferen'#231'a de pre'#231'o, quantidade, valor d' +
              'a opera'#231#227'o ou da presta'#231#227'o;'
            
              'II - A corre'#231#227'o de dados cadastrais que implique mudan'#231'a do reme' +
              'tente ou do destinat'#225'rio;'
            'III - A data de emiss'#227'o ou de saida.'
            ''
            '')
          ParentFont = False
        end
      end
    end
  end
  object rpMinuta: TRLReport
    Left = 212
    Top = -1108
    Width = 794
    Height = 1123
    DataSource = dMin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand5: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 283
      BandType = btColumnHeader
      BeforePrint = RLBand1BeforePrint
      object RLPanel24: TRLPanel
        Left = 0
        Top = 242
        Width = 718
        Height = 41
        Align = faBottom
        object RLPanel25: TRLPanel
          Left = 0
          Top = 0
          Width = 113
          Height = 41
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel47: TRLLabel
            Left = 3
            Top = 3
            Width = 70
            Height = 11
            Caption = 'N'#186' Nota Fiscal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 8
            Top = 19
            Width = 96
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'nf'
            DataSource = dMin
            DisplayMask = '000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel26: TRLPanel
          Left = 180
          Top = 0
          Width = 117
          Height = 41
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel49: TRLLabel
            Left = 6
            Top = 3
            Width = 49
            Height = 11
            Caption = 'Cubagem:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 6
            Top = 19
            Width = 105
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'totcubagem'
            DataSource = dMin
            DisplayMask = '#0.0000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel27: TRLPanel
          Left = 113
          Top = 0
          Width = 67
          Height = 41
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel48: TRLLabel
            Left = 6
            Top = 3
            Width = 40
            Height = 11
            Caption = 'Volume:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 6
            Top = 19
            Width = 52
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'quantidade'
            DataSource = dMin
            DisplayMask = '#0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel28: TRLPanel
          Left = 297
          Top = 0
          Width = 403
          Height = 41
          Align = faClient
          object RLLabel50: TRLLabel
            Left = 8
            Top = 24
            Width = 393
            Height = 11
            Caption = 
              'Assinatura do Recebimento: _____________________________________' +
              '_______________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLPanel31: TRLPanel
          Left = 700
          Top = 0
          Width = 18
          Height = 41
          Align = faRight
        end
      end
      object RLPanel29: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 233
        Align = faTop
        object RLPanel30: TRLPanel
          Left = 700
          Top = 0
          Width = 18
          Height = 233
          Align = faRight
          object RLAngleLabel1: TRLAngleLabel
            Left = 0
            Top = 0
            Width = 18
            Height = 233
            Align = faClient
            Alignment = taCenter
            Angle = 270.000000000000000000
            Caption = 'M I N U T A  D E  D E S P A C H O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLPanel14: TRLPanel
          Left = 0
          Top = 0
          Width = 700
          Height = 233
          Align = faClient
          object RLPanel19: TRLPanel
            Left = 0
            Top = 0
            Width = 113
            Height = 233
            Align = faLeft
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object RLLabel38: TRLLabel
              Left = 49
              Top = 14
              Width = 55
              Height = 14
              Alignment = taRightJustify
              Caption = 'Emitente:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel39: TRLLabel
              Left = 30
              Top = 49
              Width = 74
              Height = 14
              Alignment = taRightJustify
              Caption = 'Redespacho:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel40: TRLLabel
              Left = 46
              Top = 69
              Width = 58
              Height = 14
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel41: TRLLabel
              Left = 45
              Top = 91
              Width = 59
              Height = 14
              Alignment = taRightJustify
              Caption = 'Munic'#237'pio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel42: TRLLabel
              Left = 65
              Top = 113
              Width = 39
              Height = 14
              Alignment = taRightJustify
              Caption = 'Bairro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel43: TRLLabel
              Left = 24
              Top = 145
              Width = 80
              Height = 14
              Alignment = taRightJustify
              Caption = 'Local Entrega:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel44: TRLLabel
              Left = 46
              Top = 165
              Width = 58
              Height = 14
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel45: TRLLabel
              Left = 45
              Top = 187
              Width = 59
              Height = 14
              Alignment = taRightJustify
              Caption = 'Munic'#237'pio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel46: TRLLabel
              Left = 65
              Top = 209
              Width = 39
              Height = 14
              Alignment = taRightJustify
              Caption = 'Bairro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLPanel20: TRLPanel
            Left = 113
            Top = 0
            Width = 587
            Height = 233
            Align = faClient
            object RLPanel21: TRLPanel
              Left = 0
              Top = 0
              Width = 587
              Height = 41
              Align = faTop
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              object RLDBText4: TRLDBText
                Left = 19
                Top = 12
                Width = 562
                Height = 16
                AutoSize = False
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
            end
            object RLPanel22: TRLPanel
              Left = 0
              Top = 41
              Width = 587
              Height = 96
              Align = faClient
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              object RLLabel52: TRLLabel
                Left = 350
                Top = 72
                Width = 55
                Height = 14
                Alignment = taRightJustify
                Caption = 'Telefone:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLDBText8: TRLDBText
                Left = 19
                Top = 6
                Width = 562
                Height = 16
                AutoSize = False
                DataField = 'r_nome'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText9: TRLDBText
                Left = 19
                Top = 28
                Width = 562
                Height = 16
                AutoSize = False
                DataField = 'r_end'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText10: TRLDBText
                Left = 19
                Top = 50
                Width = 353
                Height = 16
                AutoSize = False
                DataField = 'r_cid'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText11: TRLDBText
                Left = 19
                Top = 72
                Width = 325
                Height = 16
                AutoSize = False
                DataField = 'r_bai'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText12: TRLDBText
                Left = 411
                Top = 72
                Width = 170
                Height = 16
                AutoSize = False
                DataField = 'r_tel'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText13: TRLDBText
                Left = 411
                Top = 50
                Width = 170
                Height = 16
                AutoSize = False
                DataField = 'r_cep'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLLabel53: TRLLabel
                Left = 378
                Top = 50
                Width = 27
                Height = 14
                Alignment = taRightJustify
                Caption = 'CEP:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLPanel23: TRLPanel
              Left = 0
              Top = 137
              Width = 587
              Height = 96
              Align = faBottom
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              object RLDBText14: TRLDBText
                Left = 19
                Top = 6
                Width = 562
                Height = 16
                AutoSize = False
                DataField = 'c_nome'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText15: TRLDBText
                Left = 19
                Top = 28
                Width = 562
                Height = 16
                AutoSize = False
                DataField = 'c_end'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText16: TRLDBText
                Left = 19
                Top = 50
                Width = 353
                Height = 16
                AutoSize = False
                DataField = 'c_cid'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText17: TRLDBText
                Left = 19
                Top = 72
                Width = 325
                Height = 16
                AutoSize = False
                DataField = 'c_bai'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLLabel51: TRLLabel
                Left = 378
                Top = 50
                Width = 27
                Height = 14
                Alignment = taRightJustify
                Caption = 'CEP:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLLabel54: TRLLabel
                Left = 350
                Top = 72
                Width = 55
                Height = 14
                Alignment = taRightJustify
                Caption = 'Telefone:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RLDBText18: TRLDBText
                Left = 411
                Top = 72
                Width = 170
                Height = 16
                AutoSize = False
                DataField = 'c_tel'
                DataSource = dMin
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Text = ''
              end
              object RLDBText19: TRLDBText
                Left = 411
                Top = 50
                Width = 170
                Height = 16
                AutoSize = False
                DataField = 'c_cep'
                DataSource = dMin
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
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 321
      Width = 718
      Height = 5
    end
  end
  object rpEtiq: TRLReport
    Left = 212
    Top = -1363
    Width = 378
    Height = 189
    Margins.LeftMargin = 2.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 2.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    DataSource = dMin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 100.000000000000000000
    PageSetup.PaperHeight = 50.000000000000000000
    object RLBand7: TRLBand
      Left = 8
      Top = 0
      Width = 362
      Height = 186
      BeforePrint = RLBand1BeforePrint
      object RLPanel45: TRLPanel
        Left = 0
        Top = 0
        Width = 362
        Height = 183
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLPanel45BeforePrint
        object RLDBText33: TRLDBText
          Left = 8
          Top = 28
          Width = 351
          Height = 16
          AutoSize = False
          DataField = 'c_nome'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText34: TRLDBText
          Left = 8
          Top = 43
          Width = 351
          Height = 16
          AutoSize = False
          DataField = 'c_end'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText35: TRLDBText
          Left = 8
          Top = 73
          Width = 351
          Height = 16
          AutoSize = False
          DataField = 'c_cid'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText36: TRLDBText
          Left = 8
          Top = 58
          Width = 351
          Height = 16
          AutoSize = False
          DataField = 'c_bai'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel70: TRLLabel
          Left = 8
          Top = 90
          Width = 41
          Height = 11
          Caption = 'Caixa N.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel71: TRLLabel
          Left = 240
          Top = 90
          Width = 40
          Height = 11
          Caption = 'Volume:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 55
          Top = 90
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'quantidade'
          DataSource = dMin
          DisplayMask = '000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object lVol: TRLLabel
          Left = 284
          Top = 90
          Width = 75
          Height = 16
          Caption = 'Volume:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel56: TRLLabel
          Left = 8
          Top = 135
          Width = 32
          Height = 11
          Caption = 'NF N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 55
          Top = 110
          Width = 304
          Height = 61
          Alignment = taCenter
          AutoSize = False
          DataField = 'nf'
          DataSource = dMin
          DisplayMask = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -56
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
  end
  object rpMinuta2: TRLReport
    Left = 212
    Top = 37
    Width = 794
    Height = 1123
    Margins.TopMargin = 3.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dMin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand8: TRLBand
      Left = 38
      Top = 11
      Width = 718
      Height = 532
      BandType = btColumnHeader
      CarbonCopies = 2
      object RLPanel46: TRLPanel
        Left = 0
        Top = 199
        Width = 718
        Height = 62
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLDBText39: TRLDBText
          Left = 92
          Top = 6
          Width = 589
          Height = 16
          AutoSize = False
          DataField = 'c_nome'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText40: TRLDBText
          Left = 76
          Top = 24
          Width = 349
          Height = 16
          AutoSize = False
          DataField = 'c_end'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText41: TRLDBText
          Left = 76
          Top = 43
          Width = 349
          Height = 16
          AutoSize = False
          DataField = 'c_cid'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText42: TRLDBText
          Left = 492
          Top = 24
          Width = 189
          Height = 16
          AutoSize = False
          DataField = 'c_bai'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel74: TRLLabel
          Left = 432
          Top = 43
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText43: TRLDBText
          Left = 503
          Top = 43
          Width = 178
          Height = 16
          AutoSize = False
          DataField = 'c_tel'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel65: TRLLabel
          Left = 4
          Top = 6
          Width = 84
          Height = 14
          Caption = 'DESTINAT'#193'RIO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel66: TRLLabel
          Left = 4
          Top = 24
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
        object RLLabel67: TRLLabel
          Left = 4
          Top = 43
          Width = 62
          Height = 14
          Caption = 'MUNIC'#205'PIO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel68: TRLLabel
          Left = 432
          Top = 24
          Width = 46
          Height = 14
          Alignment = taRightJustify
          Caption = 'BAIRRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel44: TRLPanel
        Left = 0
        Top = 265
        Width = 718
        Height = 61
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLLabel69: TRLLabel
          Left = 432
          Top = 42
          Width = 55
          Height = 14
          Alignment = taRightJustify
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText28: TRLDBText
          Left = 84
          Top = 5
          Width = 597
          Height = 16
          AutoSize = False
          DataField = 'r_nome'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText29: TRLDBText
          Left = 76
          Top = 23
          Width = 353
          Height = 16
          AutoSize = False
          DataField = 'r_end'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 76
          Top = 42
          Width = 353
          Height = 16
          AutoSize = False
          DataField = 'r_cid'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText31: TRLDBText
          Left = 492
          Top = 23
          Width = 189
          Height = 16
          AutoSize = False
          DataField = 'r_bai'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText32: TRLDBText
          Left = 503
          Top = 42
          Width = 178
          Height = 16
          AutoSize = False
          DataField = 'r_tel'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel61: TRLLabel
          Left = 4
          Top = 5
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
        object RLLabel62: TRLLabel
          Left = 4
          Top = 23
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
        object RLLabel63: TRLLabel
          Left = 4
          Top = 42
          Width = 62
          Height = 14
          Caption = 'MUNIC'#205'PIO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel64: TRLLabel
          Left = 432
          Top = 23
          Width = 46
          Height = 14
          Caption = 'BAIRRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel40: TRLPanel
        Left = 0
        Top = 30
        Width = 718
        Height = 83
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLMemo2: TRLMemo
          Left = 605
          Top = 16
          Width = 94
          Height = 53
          Alignment = taCenter
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            'MINUTA '
            'DE '
            'DESPACHO')
          ParentFont = False
        end
        object RLPanel39: TRLPanel
          Left = 89
          Top = 19
          Width = 476
          Height = 15
          object RLLabel75: TRLLabel
            Left = 0
            Top = 0
            Width = 37
            Height = 15
            Align = faLeft
            Caption = 'CNPJ:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText52: TRLDBText
            Left = 37
            Top = 0
            Width = 35
            Height = 15
            Align = faLeft
            DataField = 'e_cnpj'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel82: TRLLabel
            Left = 72
            Top = 0
            Width = 82
            Height = 15
            Align = faLeft
            Caption = '    INSCR. EST.:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText55: TRLDBText
            Left = 154
            Top = 0
            Width = 23
            Height = 15
            Align = faLeft
            DataField = 'e_ie'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel41: TRLPanel
          Left = 89
          Top = 35
          Width = 476
          Height = 16
          object RLDBText56: TRLDBText
            Left = 66
            Top = 0
            Width = 33
            Height = 16
            Align = faLeft
            DataField = 'e_end'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLDBText57: TRLDBText
            Left = 118
            Top = 0
            Width = 29
            Height = 16
            Align = faLeft
            DataField = 'e_bai'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel86: TRLLabel
            Left = 99
            Top = 0
            Width = 19
            Height = 16
            Align = faLeft
            Alignment = taRightJustify
            Caption = '  -  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel72: TRLLabel
            Left = 0
            Top = 0
            Width = 66
            Height = 16
            Align = faLeft
            Caption = 'ENDERECO:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLPanel42: TRLPanel
          Left = 89
          Top = 52
          Width = 476
          Height = 14
          object RLDBText59: TRLDBText
            Left = 31
            Top = 0
            Width = 33
            Height = 14
            Align = faLeft
            DataField = 'e_cep'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel84: TRLLabel
            Left = 0
            Top = 0
            Width = 31
            Height = 14
            Align = faLeft
            Caption = 'CEP:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText60: TRLDBText
            Left = 89
            Top = 0
            Width = 29
            Height = 14
            Align = faLeft
            DataField = 'e_cid'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel87: TRLLabel
            Left = 64
            Top = 0
            Width = 25
            Height = 14
            Align = faLeft
            Alignment = taRightJustify
            Caption = '  -    '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLPanel43: TRLPanel
          Left = 89
          Top = 67
          Width = 476
          Height = 14
          object RLDBText58: TRLDBText
            Left = 36
            Top = 0
            Width = 26
            Height = 14
            Align = faLeft
            DataField = 'e_tel'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel83: TRLLabel
            Left = 0
            Top = 0
            Width = 36
            Height = 14
            Align = faLeft
            Caption = 'Fone:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText61: TRLDBText
            Left = 113
            Top = 0
            Width = 39
            Height = 14
            Align = faLeft
            DataField = 'e_email'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
          object RLLabel85: TRLLabel
            Left = 62
            Top = 0
            Width = 51
            Height = 14
            Align = faLeft
            Alignment = taRightJustify
            Caption = '     Email:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLPanel59: TRLPanel
          Left = 89
          Top = 3
          Width = 476
          Height = 15
          object RLDBText37: TRLDBText
            Left = 0
            Top = 0
            Width = 49
            Height = 15
            Align = faLeft
            DataField = 'e_nome'
            DataSource = dMin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
      end
      object RLPanel38: TRLPanel
        Left = 0
        Top = 117
        Width = 718
        Height = 78
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLLabel60: TRLLabel
          Left = 432
          Top = 59
          Width = 68
          Height = 14
          AutoSize = False
          Caption = 'TELEFONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 124
          Top = 5
          Width = 557
          Height = 16
          AutoSize = False
          DataField = 't_nome'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText46: TRLDBText
          Left = 76
          Top = 41
          Width = 349
          Height = 16
          AutoSize = False
          DataField = 't_end'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText48: TRLDBText
          Left = 76
          Top = 59
          Width = 349
          Height = 16
          AutoSize = False
          DataField = 't_cid'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText49: TRLDBText
          Left = 492
          Top = 41
          Width = 189
          Height = 16
          AutoSize = False
          DataField = 't_bai'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText51: TRLDBText
          Left = 503
          Top = 59
          Width = 178
          Height = 16
          AutoSize = False
          DataField = 't_tel'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel76: TRLLabel
          Left = 4
          Top = 5
          Width = 117
          Height = 14
          AutoSize = False
          Caption = 'TRANSPORTADORA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel77: TRLLabel
          Left = 4
          Top = 41
          Width = 68
          Height = 14
          AutoSize = False
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel78: TRLLabel
          Left = 4
          Top = 59
          Width = 69
          Height = 14
          AutoSize = False
          Caption = 'MUNIC'#205'PIO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel79: TRLLabel
          Left = 432
          Top = 41
          Width = 54
          Height = 14
          AutoSize = False
          Caption = 'BAIRRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel80: TRLLabel
          Left = 4
          Top = 22
          Width = 34
          Height = 14
          AutoSize = False
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText53: TRLDBText
          Left = 44
          Top = 22
          Width = 206
          Height = 16
          AutoSize = False
          DataField = 't_cnpj'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel81: TRLLabel
          Left = 432
          Top = 22
          Width = 76
          Height = 14
          AutoSize = False
          Caption = 'INSCR. EST.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText54: TRLDBText
          Left = 512
          Top = 22
          Width = 169
          Height = 16
          AutoSize = False
          DataField = 't_ie'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLPanel48: TRLPanel
        Left = 0
        Top = 330
        Width = 718
        Height = 27
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLLabel55: TRLLabel
          Left = 14
          Top = 6
          Width = 96
          Height = 16
          Caption = 'NOTA FISCAL N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 112
          Top = 6
          Width = 73
          Height = 16
          AutoSize = False
          DataField = 'nf'
          DataSource = dMin
          DisplayMask = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel88: TRLLabel
          Left = 366
          Top = 6
          Width = 41
          Height = 16
          Caption = 'FRETE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText62: TRLDBText
          Left = 410
          Top = 6
          Width = 88
          Height = 16
          AutoSize = False
          DataField = 'frete'
          DataSource = dMin
          DisplayMask = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel89: TRLLabel
          Left = 532
          Top = 6
          Width = 64
          Height = 16
          Caption = 'VALOR R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText63: TRLDBText
          Left = 602
          Top = 6
          Width = 82
          Height = 16
          AutoSize = False
          DataField = 't_nf'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLLabel73: TRLLabel
          Left = 197
          Top = 6
          Width = 59
          Height = 16
          Caption = 'EMISS'#195'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLDBText44: TRLDBText
          Left = 262
          Top = 6
          Width = 73
          Height = 16
          AutoSize = False
          DataField = 'emissao'
          DataSource = dMin
          DisplayMask = '000000'
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
      object RLPanel37: TRLPanel
        Left = 0
        Top = 466
        Width = 718
        Height = 63
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel59: TRLLabel
          Left = 415
          Top = 47
          Width = 262
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'ASSINATURA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel90: TRLLabel
          Left = 3
          Top = 37
          Width = 364
          Height = 11
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 
            'LARANJAL PAULISTA, ________ DE ____________________________ DE _' +
            '________'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel91: TRLLabel
          Left = 3
          Top = 4
          Width = 366
          Height = 11
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'DECLARO TER RECEBIDO AS MERCADORIAS CONSTANTES PARA DESPACHO EM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel92: TRLLabel
          Left = 3
          Top = 17
          Width = 112
          Height = 11
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'PERFEITAS CONDI'#199#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel93: TRLLabel
          Left = 415
          Top = 4
          Width = 91
          Height = 11
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'NOME MOTORISTA: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel32: TRLPanel
        Left = 0
        Top = 420
        Width = 718
        Height = 41
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLPanel34: TRLPanel
          Left = 131
          Top = 1
          Width = 117
          Height = 40
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel57: TRLLabel
            Left = 0
            Top = 0
            Width = 116
            Height = 16
            Align = faTop
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'CUBAGEM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText25: TRLDBText
            Left = 0
            Top = 16
            Width = 116
            Height = 24
            Align = faClient
            Alignment = taCenter
            AutoSize = False
            DataField = 'totcubagem'
            DataSource = dMin
            DisplayMask = '#0.0000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel35: TRLPanel
          Left = 1
          Top = 1
          Width = 130
          Height = 40
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel58: TRLLabel
            Left = 0
            Top = 0
            Width = 129
            Height = 16
            Align = faTop
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'TOTAL DOS VOLUMES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 0
            Top = 16
            Width = 129
            Height = 24
            Align = faClient
            Alignment = taCenter
            AutoSize = False
            DataField = 'quantidade'
            DataSource = dMin
            DisplayMask = '#0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel36: TRLPanel
          Left = 248
          Top = 1
          Width = 175
          Height = 40
          Align = faClient
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel94: TRLLabel
            Left = 0
            Top = 0
            Width = 174
            Height = 16
            Align = faTop
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'ESPECIE DAS MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText64: TRLDBText
            Left = 0
            Top = 16
            Width = 174
            Height = 24
            Align = faClient
            Alignment = taCenter
            AutoSize = False
            DataField = 'especie'
            DataSource = dMin
            DisplayMask = '#0.0000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel51: TRLPanel
          Left = 423
          Top = 1
          Width = 147
          Height = 40
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel95: TRLLabel
            Left = 0
            Top = 0
            Width = 146
            Height = 16
            Align = faTop
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'PESO L'#205'QUIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText65: TRLDBText
            Left = 0
            Top = 16
            Width = 146
            Height = 24
            Align = faClient
            Alignment = taCenter
            AutoSize = False
            DataField = 'pliquido'
            DataSource = dMin
            DisplayMask = '#0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel52: TRLPanel
          Left = 570
          Top = 1
          Width = 147
          Height = 40
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel96: TRLLabel
            Left = 0
            Top = 0
            Width = 147
            Height = 16
            Align = faTop
            Alignment = taCenter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'PESO BRUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText66: TRLDBText
            Left = 0
            Top = 16
            Width = 147
            Height = 24
            Align = faClient
            Alignment = taCenter
            AutoSize = False
            DataField = 'pbruto'
            DataSource = dMin
            DisplayMask = '#0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
      end
      object RLPanel54: TRLPanel
        Left = 0
        Top = 361
        Width = 718
        Height = 55
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLPanel55: TRLPanel
          Left = 1
          Top = 1
          Width = 105
          Height = 54
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel97: TRLLabel
            Left = 0
            Top = 0
            Width = 104
            Height = 20
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'QUANTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText67: TRLDBText
            Left = 0
            Top = 20
            Width = 104
            Height = 34
            Align = faClient
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'quantidade'
            DataSource = dMin
            DisplayMask = '#0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
        object RLPanel56: TRLPanel
          Left = 106
          Top = 1
          Width = 611
          Height = 54
          Align = faClient
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel98: TRLLabel
            Left = 0
            Top = 0
            Width = 611
            Height = 20
            Align = faTop
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'ESP'#201'CIE DAS MERCADORIAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText68: TRLDBText
            Left = 0
            Top = 20
            Width = 611
            Height = 34
            Align = faClient
            AutoSize = False
            DataField = 'especie'
            DataSource = dMin
            DisplayMask = '000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Text = ''
          end
        end
      end
      object RLPanel33: TRLPanel
        Left = 0
        Top = 195
        Width = 718
        Height = 4
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel49: TRLPanel
        Left = 0
        Top = 357
        Width = 718
        Height = 4
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel50: TRLPanel
        Left = 0
        Top = 416
        Width = 718
        Height = 4
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel53: TRLPanel
        Left = 0
        Top = 326
        Width = 718
        Height = 4
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel58: TRLPanel
        Left = 0
        Top = 261
        Width = 718
        Height = 4
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel60: TRLPanel
        Left = 0
        Top = 113
        Width = 718
        Height = 4
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel57: TRLPanel
        Left = 0
        Top = 461
        Width = 718
        Height = 5
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel61: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 30
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 543
      Width = 718
      Height = 5
    end
  end
  object rpEtiq2: TRLReport
    Left = 628
    Top = -1363
    Width = 272
    Height = 106
    Margins.LeftMargin = 3.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 1.000000000000000000
    DataSource = dMin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 72.000000000000000000
    PageSetup.PaperHeight = 28.000000000000000000
    object RLBand10: TRLBand
      Left = 11
      Top = 4
      Width = 250
      Height = 96
      BeforePrint = RLBand1BeforePrint
      object RLPanel47: TRLPanel
        Left = 0
        Top = 0
        Width = 250
        Height = 94
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLPanel47BeforePrint
        object RLDBText47: TRLDBText
          Left = 10
          Top = 63
          Width = 240
          Height = 13
          AutoSize = False
          DataField = 'r_nome'
          DataSource = dMin
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Red.:'
        end
        object lVol2: TRLLabel
          Left = 0
          Top = 76
          Width = 250
          Height = 18
          Align = faBottom
          Alignment = taRightJustify
          Caption = 'Volume:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText50: TRLDBText
          Left = 0
          Top = 0
          Width = 250
          Height = 39
          Align = faTop
          AutoSize = False
          DataField = 'nf'
          DataSource = dMin
          DisplayMask = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'NF:  '
        end
        object RLDBMemo4: TRLDBMemo
          Left = 10
          Top = 37
          Width = 240
          Height = 25
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'c_nome'
          DataSource = dMin
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
  object D: TDataSource
    DataSet = Q
    Left = 72
    Top = 24
  end
  object Q: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from NF'
      'where ID = :ID')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 32
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QNF: TIntegerField
      FieldName = 'NF'
    end
    object QHORA: TWideStringField
      FieldName = 'HORA'
      Size = 32
    end
    object QTIPO: TWideStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object QCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object QNATOPER: TWideStringField
      FieldName = 'NATOPER'
      Size = 100
    end
    object QIDPRODUTOR: TIntegerField
      FieldName = 'IDPRODUTOR'
    end
    object QNOME: TWideStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QCNPJ: TWideStringField
      FieldName = 'CNPJ'
    end
    object QIE: TWideStringField
      FieldName = 'IE'
    end
    object QENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QCEP: TWideStringField
      FieldName = 'CEP'
      Size = 8
    end
    object QCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QFONE: TWideStringField
      FieldName = 'FONE'
    end
    object QUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object QBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object QVAL_ICMS: TFloatField
      FieldName = 'VAL_ICMS'
    end
    object QBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object QVAL_IPI: TFloatField
      FieldName = 'VAL_IPI'
    end
    object QT_PROD: TFloatField
      FieldName = 'T_PROD'
    end
    object QT_NF: TFloatField
      FieldName = 'T_NF'
    end
    object QFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object QIDTRANSPORTADORA: TIntegerField
      FieldName = 'IDTRANSPORTADORA'
    end
    object QTRANS_NOME: TWideStringField
      FieldName = 'TRANS_NOME'
      Size = 50
    end
    object QTRANS_CNPJ: TWideStringField
      FieldName = 'TRANS_CNPJ'
    end
    object QTRANS_IE: TWideStringField
      FieldName = 'TRANS_IE'
    end
    object QTRANS_PLACA: TWideStringField
      FieldName = 'TRANS_PLACA'
      Size = 10
    end
    object QTRANS_UFPLACA: TWideStringField
      FieldName = 'TRANS_UFPLACA'
      Size = 2
    end
    object QTRANS_ENDE: TWideStringField
      FieldName = 'TRANS_ENDE'
      Size = 40
    end
    object QTRANS_CIDADE: TWideStringField
      FieldName = 'TRANS_CIDADE'
      Size = 30
    end
    object QTRANS_UF: TWideStringField
      FieldName = 'TRANS_UF'
      Size = 2
    end
    object QQUANTIDADE: TWideStringField
      FieldName = 'QUANTIDADE'
    end
    object QESPECIE: TWideStringField
      FieldName = 'ESPECIE'
    end
    object QMARCA: TWideStringField
      FieldName = 'MARCA'
    end
    object QNUMERO: TWideStringField
      FieldName = 'NUMERO'
    end
    object QPBRUTO: TFloatField
      FieldName = 'PBRUTO'
    end
    object QPLIQUIDO: TFloatField
      FieldName = 'PLIQUIDO'
    end
    object QOBS: TWideMemoField
      FieldName = 'OBS'
      BlobType = ftWideMemo
    end
    object QTPFRETE: TWideStringField
      FieldName = 'TPFRETE'
      Size = 1
    end
    object QTPNF: TWideStringField
      FieldName = 'TPNF'
    end
    object QST: TWideStringField
      FieldName = 'ST'
      Size = 1
    end
    object QT_SERV: TFloatField
      FieldName = 'T_SERV'
    end
    object QVAL_ISS: TFloatField
      FieldName = 'VAL_ISS'
    end
    object QNUM: TWideStringField
      FieldName = 'NUM'
      Size = 15
    end
    object QVALSERV1: TFloatField
      FieldName = 'VALSERV1'
    end
    object QSERV1: TWideStringField
      FieldName = 'SERV1'
      Size = 60
    end
    object QIDPEDIDO: TIntegerField
      FieldName = 'IDPEDIDO'
    end
    object QMARGEMST: TFloatField
      FieldName = 'MARGEMST'
    end
    object QBASEST: TFloatField
      FieldName = 'BASEST'
    end
    object QVALICMSST: TFloatField
      FieldName = 'VALICMSST'
    end
    object QGERACREDITO: TWideStringField
      FieldName = 'GERACREDITO'
      Size = 1
    end
    object QDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QTP_CF: TWideStringField
      FieldName = 'TP_CF'
      Size = 1
    end
    object QXML: TWideStringField
      FieldName = 'XML'
      Size = 255
    end
    object QSTATUSNFE: TWideStringField
      FieldName = 'STATUSNFE'
      Required = True
      Size = 1
    end
    object QRECIBO: TWideMemoField
      FieldName = 'RECIBO'
      BlobType = ftWideMemo
    end
    object QPROTOCOLO: TWideMemoField
      FieldName = 'PROTOCOLO'
      BlobType = ftWideMemo
    end
    object QRETORNO: TWideMemoField
      FieldName = 'RETORNO'
      BlobType = ftWideMemo
    end
    object QCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 255
    end
    object QCCORECAO: TWideStringField
      FieldName = 'CCORECAO'
      Required = True
      Size = 1
    end
    object QCC_MOTIVO: TWideMemoField
      FieldName = 'CC_MOTIVO'
      BlobType = ftWideMemo
    end
    object QXML_CANCEL: TWideStringField
      FieldName = 'XML_CANCEL'
      Size = 255
    end
    object QCANCEL_DATA: TWideStringField
      FieldName = 'CANCEL_DATA'
    end
    object QCANCEL_MOTIVO: TWideMemoField
      FieldName = 'CANCEL_MOTIVO'
      BlobType = ftWideMemo
    end
    object QCANCEL_PROTOCOLO: TWideStringField
      FieldName = 'CANCEL_PROTOCOLO'
      Size = 255
    end
    object QDESPESAS: TFloatField
      FieldName = 'DESPESAS'
    end
    object QTABELAAB: TWideStringField
      FieldName = 'TABELAAB'
      Required = True
      Size = 1
    end
    object QIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object QTPPESSOA: TWideStringField
      FieldName = 'TPPESSOA'
      Required = True
      Size = 1
    end
    object QEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QPAIS: TIntegerField
      FieldName = 'PAIS'
      Required = True
    end
    object QEX_UFEMBARQUE: TWideStringField
      FieldName = 'EX_UFEMBARQUE'
      Size = 2
    end
    object QEX_LOCALEMBARQUE: TWideStringField
      FieldName = 'EX_LOCALEMBARQUE'
      Size = 100
    end
    object QEX_LOCADESPACHO: TWideStringField
      FieldName = 'EX_LOCADESPACHO'
      Size = 100
    end
    object QCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object QIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
    end
    object QEM_NOME: TWideStringField
      FieldName = 'EM_NOME'
      Size = 100
    end
    object QEM_CNPJ: TWideStringField
      FieldName = 'EM_CNPJ'
    end
    object QEM_IE: TWideStringField
      FieldName = 'EM_IE'
    end
    object QEM_ENDERECO: TWideStringField
      FieldName = 'EM_ENDERECO'
      Size = 100
    end
    object QEM_BAIRRO: TWideStringField
      FieldName = 'EM_BAIRRO'
      Size = 100
    end
    object QEM_CEP: TWideStringField
      FieldName = 'EM_CEP'
      Size = 8
    end
    object QEM_CIDADE: TWideStringField
      FieldName = 'EM_CIDADE'
      Size = 100
    end
    object QEM_FONE: TWideStringField
      FieldName = 'EM_FONE'
    end
    object QEM_UF: TWideStringField
      FieldName = 'EM_UF'
      Size = 2
    end
    object QEM_IDCIDADE: TIntegerField
      FieldName = 'EM_IDCIDADE'
    end
    object QEM_TPPESSOA: TWideStringField
      FieldName = 'EM_TPPESSOA'
      Required = True
      Size = 1
    end
    object QEM_EMAIL: TWideStringField
      FieldName = 'EM_EMAIL'
      Size = 100
    end
    object QEM_PAIS: TIntegerField
      FieldName = 'EM_PAIS'
      Required = True
    end
    object QEM_NUM: TWideStringField
      FieldName = 'EM_NUM'
      Size = 10
    end
    object QIDFINALIDADE: TIntegerField
      FieldName = 'IDFINALIDADE'
    end
    object QIDTIPOEMISSAO: TIntegerField
      FieldName = 'IDTIPOEMISSAO'
    end
    object QEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object QSAIDA: TDateTimeField
      FieldName = 'SAIDA'
    end
  end
  object qMin: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      ' nf.nf,'
      ' cast( nf.quantidade as numeric ) quantidade, '
      ' venda.totcubagem,'
      ' nf.idtransred ,'
      ' nf.idtransportadora,'
      ''
      ' t.nome t_nome,'
      ' t.endereco t_end,'
      ' t.cidade+'#39'/'#39'+t.uf t_cid,'
      ' t.cep t_cep,'
      ' t.bairro t_bai,'
      ' t.telefone t_tel,'
      ' t.cnpj t_cnpj,'
      ' t.ie t_ie,'
      ''
      ' r.nome r_nome,'
      ' r.endereco r_end,'
      ' r.cidade+'#39'/'#39'+r.uf r_cid,'
      ' r.cep r_cep,'
      ' r.bairro r_bai,'
      ' r.telefone r_tel,'
      ''
      ' nf.nome c_nome,'
      ' nf.endereco+nf.numero c_end,'
      ' nf.cidade+'#39'/'#39'+nf.uf c_cid,'
      ' nf.cep c_cep,'
      ' nf.bairro c_bai,'
      ' nf.fone c_tel,'
      ' nf.email c_email,'
      ''
      ' e.razao e_nome,'
      ' e.endereco+e.num e_end,'
      ' e.cidade+'#39'/'#39'+e.uf e_cid,'
      ' e.cep e_cep,'
      ' e.bairro e_bai,'
      ' e.telefone e_tel,'
      ' e.email e_email,'
      ' e.cnpj e_cnpj,'
      ' e.ie e_ie,'
      ' NF.frete,'
      ' NF.t_nf,'
      ' NF.especie,'
      ' NF.pliquido,'
      ' NF.pbruto,'
      ' nf.emissao'
      ' '
      'from NF'
      'left join venda on venda.notafiscal = nf.id'
      'left join transportadora r on r.id = nf.idtransred'
      'left join transportadora t on t.id = nf.idtransportadora'
      'left join empresa e on e.id = nf.idemp'
      ''
      'where NF.ID = :ID')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 176
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qMinnf: TIntegerField
      FieldName = 'nf'
      DisplayFormat = '000000'
    end
    object qMintotcubagem: TFloatField
      FieldName = 'totcubagem'
      DisplayFormat = '#0.0000000'
    end
    object qMinidtransred: TIntegerField
      FieldName = 'idtransred'
    end
    object qMinr_nome: TWideStringField
      FieldName = 'r_nome'
      Size = 80
    end
    object qMinr_end: TWideStringField
      FieldName = 'r_end'
      Size = 80
    end
    object qMinr_cid: TWideStringField
      FieldName = 'r_cid'
      ReadOnly = True
      Size = 33
    end
    object qMinr_cep: TWideStringField
      FieldName = 'r_cep'
      EditMask = '00000\-999;0;_'
      Size = 10
    end
    object qMinr_bai: TWideStringField
      FieldName = 'r_bai'
      Size = 30
    end
    object qMinr_tel: TWideStringField
      FieldName = 'r_tel'
      EditMask = '(##) #########;0;_'
    end
    object qMinc_nome: TWideStringField
      FieldName = 'c_nome'
      Size = 100
    end
    object qMinc_end: TWideStringField
      FieldName = 'c_end'
      ReadOnly = True
      Size = 120
    end
    object qMinc_cid: TWideStringField
      FieldName = 'c_cid'
      ReadOnly = True
      Size = 103
    end
    object qMinc_cep: TWideStringField
      FieldName = 'c_cep'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object qMinc_bai: TWideStringField
      FieldName = 'c_bai'
      Size = 100
    end
    object qMinc_tel: TWideStringField
      FieldName = 'c_tel'
      EditMask = '(##) #########;0;_'
    end
    object qMinidtransportadora: TIntegerField
      FieldName = 'idtransportadora'
    end
    object qMint_nome: TWideStringField
      FieldName = 't_nome'
      Size = 80
    end
    object qMint_end: TWideStringField
      FieldName = 't_end'
      Size = 80
    end
    object qMint_cid: TWideStringField
      FieldName = 't_cid'
      ReadOnly = True
      Size = 33
    end
    object qMint_cep: TWideStringField
      FieldName = 't_cep'
      EditMask = '00000\-999;0;_'
      Size = 10
    end
    object qMint_bai: TWideStringField
      FieldName = 't_bai'
      Size = 30
    end
    object qMint_tel: TWideStringField
      FieldName = 't_tel'
      EditMask = '(##) #########;0;_'
    end
    object qMinc_email: TWideStringField
      FieldName = 'c_email'
      Size = 100
    end
    object qMine_nome: TWideStringField
      FieldName = 'e_nome'
      Size = 60
    end
    object qMine_end: TWideStringField
      FieldName = 'e_end'
      ReadOnly = True
      Size = 50
    end
    object qMine_cid: TWideStringField
      FieldName = 'e_cid'
      ReadOnly = True
      Size = 28
    end
    object qMine_cep: TWideStringField
      FieldName = 'e_cep'
      EditMask = '00000\-999;0;_'
      Size = 8
    end
    object qMine_bai: TWideStringField
      FieldName = 'e_bai'
      Size = 25
    end
    object qMine_tel: TWideStringField
      FieldName = 'e_tel'
      EditMask = '(##) #########;0;_'
      Size = 30
    end
    object qMine_email: TWideStringField
      FieldName = 'e_email'
      Size = 50
    end
    object qMine_cnpj: TWideStringField
      FieldName = 'e_cnpj'
      EditMask = '##.###.###/####-##;0;_'
    end
    object qMine_ie: TWideStringField
      FieldName = 'e_ie'
    end
    object qMint_cnpj: TWideStringField
      FieldName = 't_cnpj'
      EditMask = '##.###.###/####-##;0;_'
    end
    object qMint_ie: TWideStringField
      FieldName = 't_ie'
      EditMask = '###.###.###.###'
    end
    object qMinfrete: TFloatField
      FieldName = 'frete'
      DisplayFormat = '###,##0.00'
    end
    object qMint_nf: TFloatField
      FieldName = 't_nf'
      DisplayFormat = '###,##0.00'
    end
    object qMinespecie: TWideStringField
      FieldName = 'especie'
    end
    object qMinpliquido: TFloatField
      FieldName = 'pliquido'
      DisplayFormat = '#0.000'
    end
    object qMinpbruto: TFloatField
      FieldName = 'pbruto'
      DisplayFormat = '#0.000'
    end
    object qMinquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
      DisplayFormat = '#0000'
    end
    object qMinemissao: TDateTimeField
      FieldName = 'emissao'
    end
  end
  object dMin: TDataSource
    DataSet = qMin
    Left = 216
    Top = 16
  end
end
