object fImpAniversario: TfImpAniversario
  Left = 210
  Top = 129
  Width = 1094
  Height = 536
  AutoScroll = True
  Caption = 'fImpAniversario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpAniversario: TRLReport
    Left = 40
    Top = 70
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
      Top = 98
      Width = 718
      Height = 32
      BandType = btSummary
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 8
        Width = 166
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itDetailCount
        ParentFont = False
        Text = 'N'#186' de Itens:  '
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 79
      Width = 718
      Height = 19
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Color = clSilver
      object RLDBText10: TRLDBText
        Left = 0
        Top = 1
        Width = 114
        Height = 16
        AutoSize = False
        DataField = 'contato'
        DataSource = D
        Text = ''
        AfterPrint = RLDBText10AfterPrint
      end
      object RLDBText19: TRLDBText
        Left = 120
        Top = 1
        Width = 334
        Height = 16
        AutoSize = False
        DataField = 'Nome'
        DataSource = D
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 583
        Top = 1
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'dtnasc'
        DataSource = D
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 468
        Top = 1
        Width = 110
        Height = 16
        AutoSize = False
        DataField = 'tel1'
        DataSource = D
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 41
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel3: TRLLabel
        Left = 0
        Top = 24
        Width = 53
        Height = 16
        Align = faBottomOnly
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTitulo: TRLLabel
        Left = 289
        Top = 0
        Width = 139
        Height = 19
        Align = faCenterTop
        Caption = 'Lista de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 468
        Top = 24
        Width = 60
        Height = 16
        Align = faBottomOnly
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 120
        Top = 24
        Width = 49
        Height = 16
        Align = faBottomOnly
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 583
        Top = 24
        Width = 111
        Height = 16
        Align = faBottomOnly
        Alignment = taRightJustify
        Caption = 'Data Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand63: TRLBand
      Left = 38
      Top = 130
      Width = 718
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo33: TRLSystemInfo
        Left = 616
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
  object Q: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select contato, nome, tel1, dtnasc '
      ''
      'from cliente'
      ''
      'where ex = 0 and ativo = '#39'S'#39' and '
      ''
      '((:mes = 0) or ( month( dtnasc ) = :mes ))'
      ''
      'order by dtnasc, contato, nome'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptUnknown
      end>
    object Qcontato: TWideStringField
      FieldName = 'contato'
      Size = 100
    end
    object QNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object Qtel1: TWideStringField
      FieldName = 'tel1'
      EditMask = '(##) #########;0;_'
    end
    object Qdtnasc: TDateTimeField
      FieldName = 'dtnasc'
    end
  end
  object D: TDataSource
    DataSet = Q
    Left = 80
    Top = 19
  end
end
