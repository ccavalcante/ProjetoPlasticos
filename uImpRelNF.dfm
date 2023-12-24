object fImpRelNF: TfImpRelNF
  Left = 184
  Top = 148
  Caption = 'fImpRelNF'
  ClientHeight = 654
  ClientWidth = 984
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
    Left = 22
    Top = 59
    Width = 794
    Height = 1123
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    object RLBand60: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 44
      BandType = btHeader
      object RLSystemInfo31: TRLSystemInfo
        Left = 673
        Top = 2
        Width = 42
        Height = 15
        Alignment = taRightJustify
        Info = itNow
        Text = ''
      end
      object RLDBText74: TRLDBText
        Left = 326
        Top = 0
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'RAZAO'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object ltitulo: TRLLabel
        Left = 2
        Top = 24
        Width = 288
        Height = 16
        Caption = 'Relat'#243'rio de Notas Fiscais Emitidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand63: TRLBand
      Left = 38
      Top = 156
      Width = 718
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo33: TRLSystemInfo
        Left = 579
        Top = 4
        Width = 133
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel143: TRLLabel
        Left = 0
        Top = 4
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
    object RLBand66: TRLBand
      Left = 38
      Top = 125
      Width = 718
      Height = 31
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel76: TRLLabel
        Left = 2
        Top = 7
        Width = 91
        Height = 16
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult46: TRLDBResult
        Left = 599
        Top = 7
        Width = 105
        Height = 16
        Alignment = taRightJustify
        DataField = 'VAL_ICMS'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult47: TRLDBResult
        Left = 551
        Top = 7
        Width = 77
        Height = 16
        Alignment = taRightJustify
        DataField = 'T_NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult1: TRLDBResult
        Left = 435
        Top = 7
        Width = 91
        Height = 16
        Alignment = taRightJustify
        DataField = 'T_PROD'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
    object RLBand64: TRLBand
      Left = 38
      Top = 82
      Width = 718
      Height = 25
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel119: TRLLabel
        Left = 480
        Top = 9
        Width = 84
        Height = 16
        Align = faBottomOnly
        Caption = 'R$ Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel120: TRLLabel
        Left = 679
        Top = 9
        Width = 35
        Height = 16
        Align = faBottomOnly
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 6
        Top = 9
        Width = 35
        Height = 16
        Align = faBottomOnly
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 85
        Top = 9
        Width = 35
        Height = 16
        Align = faBottomOnly
        Caption = 'N.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 577
        Top = 9
        Width = 63
        Height = 16
        Align = faBottomOnly
        Caption = 'R$ Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 224
        Top = 9
        Width = 56
        Height = 16
        Align = faBottomOnly
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 135
        Top = 9
        Width = 49
        Height = 16
        Align = faBottomOnly
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand65: TRLBand
      Left = 38
      Top = 107
      Width = 718
      Height = 18
      object RLDBText75: TRLDBText
        Left = 605
        Top = 1
        Width = 35
        Height = 15
        Alignment = taRightJustify
        DataField = 'T_NF'
        DataSource = D
        Text = ''
      end
      object RLDBText77: TRLDBText
        Left = 87
        Top = 1
        Width = 21
        Height = 15
        DataField = 'NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText78: TRLDBText
        Left = 6
        Top = 1
        Width = 56
        Height = 15
        DataField = 'EMISSAO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText115: TRLDBText
        Left = 652
        Top = 1
        Width = 63
        Height = 15
        Alignment = taRightJustify
        DataField = 'VAL_ICMS'
        DataSource = D
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 515
        Top = 1
        Width = 49
        Height = 15
        Alignment = taRightJustify
        DataField = 'T_PROD'
        DataSource = D
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 224
        Top = 1
        Width = 254
        Height = 15
        AutoSize = False
        DataField = 'NOMEDEST'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 135
        Top = 1
        Width = 35
        Height = 15
        DataField = 'StNF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object D: TDataSource
    DataSet = Q
    Left = 56
    Top = 8
  end
  object Q: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select nf.nf, nf.emissao, nf.t_prod, nf.t_nf,'
      '       nf.t_serv, nf.val_icms, nf.val_iss,'
      '      nf.nome nomeDest,case nf.statusnfe'
      '  when '#39'A'#39' then '#39'Em Aberto  '#39
      '  when '#39'V'#39' then '#39'Validada      '#39
      '  when '#39'T'#39' then '#39'Transmitida '#39
      '  when '#39'D'#39' then '#39'Danfe Impr  '#39
      '  when '#39'C'#39' then '#39'Cancelada   '#39
      '  when '#39'I'#39' then '#39'Inutilizada    '#39
      'end StNF'
      ''
      'from nf'
      'where ( nf.emissao between :di and :df ) and'
      '      ((:cli = 0) or (nf.idprodutor = :cli))  and '
      '      ((:emp = 0) or (nf.idemp = :emp))  and '
      '      ((:st = '#39'Z'#39') or (nf.statusnfe = :st))'
      'order by nf.em_nome,  nf.nf')
    Params = <
      item
        DataType = ftDate
        Name = 'di'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'df'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cli'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'st'
        ParamType = ptInput
      end>
    Left = 24
    Top = 8
    ParamData = <
      item
        DataType = ftDate
        Name = 'di'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'df'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cli'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'st'
        ParamType = ptInput
      end>
    object Qnf: TIntegerField
      FieldName = 'nf'
    end
    object Qemissao: TDateTimeField
      FieldName = 'emissao'
    end
    object Qt_prod: TFloatField
      FieldName = 't_prod'
      DisplayFormat = '###,###,##0.00'
    end
    object Qt_nf: TFloatField
      FieldName = 't_nf'
      DisplayFormat = '###,###,##0.00'
    end
    object Qt_serv: TFloatField
      FieldName = 't_serv'
      DisplayFormat = '###,###,##0.00'
    end
    object Qval_icms: TFloatField
      FieldName = 'val_icms'
      DisplayFormat = '###,###,##0.00'
    end
    object Qval_iss: TFloatField
      FieldName = 'val_iss'
      DisplayFormat = '###,###,##0.00'
    end
    object QnomeDest: TWideStringField
      FieldName = 'nomeDest'
      Size = 100
    end
    object QStNF: TWideStringField
      FieldName = 'StNF'
      ReadOnly = True
      Size = 18
    end
  end
end
