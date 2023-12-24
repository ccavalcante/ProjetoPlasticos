object fBaixaArquivo_I: TfBaixaArquivo_I
  Left = 238
  Top = 248
  Width = 1140
  Height = 581
  HorzScrollBar.Position = 54
  AutoScroll = True
  Caption = 'fBaixaArquivo_I'
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
    Left = -9
    Top = 8
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand7: TRLBand
      Left = 19
      Top = 149
      Width = 1085
      Height = 26
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo3: TRLSystemInfo
        Left = 963
        Top = 10
        Width = 122
        Height = 16
        Align = faRightBottom
        Alignment = taRightJustify
        Info = itPageNumber
        Text = 'P'#225'g.: '
      end
      object RLLabel9: TRLLabel
        Left = 0
        Top = 10
        Width = 118
        Height = 16
        Align = faLeftBottom
        Caption = 'thrsoftwares.com.br'
      end
    end
    object RLBand8: TRLBand
      Left = 19
      Top = 38
      Width = 1085
      Height = 37
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo4: TRLSystemInfo
        Left = 1048
        Top = 0
        Width = 37
        Height = 16
        Align = faRightTop
        Alignment = taRightJustify
        Info = itNow
        Text = ''
      end
      object RLDBText21: TRLDBText
        Left = 512
        Top = 0
        Width = 60
        Height = 15
        Align = faCenterTop
        Alignment = taCenter
        DataField = 'FANTASIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel17: TRLLabel
        Left = 0
        Top = 18
        Width = 1085
        Height = 19
        Align = faClientBottom
        Alignment = taCenter
        Caption = 'Boletos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 19
      Top = 75
      Width = 1085
      Height = 35
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel12: TRLLabel
        Left = 0
        Top = 20
        Width = 43
        Height = 15
        Align = faBottomOnly
        Caption = 'Vencto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 62
        Top = 20
        Width = 71
        Height = 15
        Align = faBottomOnly
        Caption = 'Nosso Num.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 140
        Top = 20
        Width = 36
        Height = 15
        Align = faBottomOnly
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 416
        Top = 20
        Width = 29
        Height = 15
        Align = faBottomOnly
        Caption = 'Pgto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 581
        Top = 20
        Width = 33
        Height = 15
        Align = faBottomOnly
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 1017
        Top = 20
        Width = 48
        Height = 15
        Align = faBottomOnly
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 677
        Top = 20
        Width = 37
        Height = 15
        Align = faBottomOnly
        Caption = 'Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 921
        Top = 20
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
      object RLLabel7: TRLLabel
        Left = 777
        Top = 20
        Width = 57
        Height = 15
        Align = faBottomOnly
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 126
      Width = 1085
      Height = 23
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult1: TRLDBResult
        Left = 467
        Top = 4
        Width = 147
        Height = 15
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Total:            '
      end
      object RLDBResult2: TRLDBResult
        Left = 865
        Top = 4
        Width = 87
        Height = 15
        Alignment = taRightJustify
        DataField = 'ValPago'
        DataSource = D
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
        Left = 641
        Top = 4
        Width = 73
        Height = 15
        Alignment = taRightJustify
        DataField = 'Juros'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 740
        Top = 4
        Width = 94
        Height = 15
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = D
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
    object RLBand3: TRLBand
      Left = 19
      Top = 110
      Width = 1085
      Height = 16
      object RLDBText2: TRLDBText
        Left = 0
        Top = 0
        Width = 29
        Height = 14
        Align = faTopOnly
        DataField = 'venci'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 62
        Top = 0
        Width = 62
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'NOSSONUM'
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
        Left = 140
        Top = 0
        Width = 268
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'NOME'
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
        Left = 684
        Top = 0
        Width = 30
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'Juros'
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
        Left = 574
        Top = 0
        Width = 40
        Height = 14
        Align = faTopOnly
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
      object RLDBText7: TRLDBText
        Left = 1004
        Top = 0
        Width = 61
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'IDRETORNO'
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
        Left = 416
        Top = 0
        Width = 88
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'DtPagto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 785
        Top = 0
        Width = 49
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'Desconto'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 909
        Top = 0
        Width = 43
        Height = 14
        Align = faTopOnly
        Alignment = taRightJustify
        DataField = 'ValPago'
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
  object D: TDataSource
    DataSet = Q
    Left = 48
    Top = 20
  end
  object Q: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      ' '#39'Cliente'#39' tipo, '
      ' creceber.id nossonum, '
      ' creceber.emissao, '
      ' creceber.valor,'
      ' creceber.venci, '
      ' cliente.nome, '
      ' creceber.baixa, '
      ' creceber.idretorno, '
      ' creceber.documento,'
      ' creceber.idcliente cod ,'
      'CReceber.Juros, CReceber.Desconto, CReceber.ValPago, '
      'CReceber.DtPagto'
      'from creceber '
      'left join cliente  on cliente.id = creceber.idcliente '
      'where creceber.id in ( 0 )'
      'order by 1 ')
    Params = <>
    Left = 8
    Top = 24
    object Qnossonum: TIntegerField
      FieldName = 'nossonum'
      Required = True
    end
    object Qvalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qidretorno: TIntegerField
      FieldName = 'idretorno'
      ReadOnly = True
    end
    object Qcod: TIntegerField
      FieldName = 'cod'
      Required = True
    end
    object Qtipo: TWideStringField
      FieldName = 'tipo'
      Size = 8
    end
    object Qemissao: TDateTimeField
      FieldName = 'emissao'
    end
    object Qvenci: TDateTimeField
      FieldName = 'venci'
    end
    object Qnome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
    object Qdocumento: TWideStringField
      FieldName = 'documento'
    end
    object Qbaixa: TWideStringField
      FieldName = 'baixa'
      Required = True
      Size = 1
    end
    object QJuros: TFloatField
      FieldName = 'Juros'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QDesconto: TFloatField
      FieldName = 'Desconto'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QDtPagto: TDateTimeField
      FieldName = 'DtPagto'
    end
    object QValPago: TFloatField
      FieldName = 'ValPago'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
end
