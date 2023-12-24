object fImpExtrato: TfImpExtrato
  Left = 192
  Top = 124
  Width = 1026
  Height = 540
  VertScrollBar.Position = 61
  AutoScroll = True
  Caption = 'fImpExtrato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpLista: TRLReport
    Left = 8
    Top = 22
    Width = 276
    Height = 1123
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 73.000000000000000000
    PageSetup.PaperHeight = 297.000000000000000000
    PrintDialog = False
    JobTitle = 'Impresao'
    object RLBand3: TRLBand
      Left = 4
      Top = 4
      Width = 261
      Height = 66
      BandType = btTitle
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
      object RLLabel10: TRLLabel
        Left = 2
        Top = 50
        Width = 38
        Height = 14
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 43
        Top = 50
        Width = 202
        Height = 15
        AutoSize = False
        DataField = 'NOME'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 52
        Top = 17
        Width = 172
        Height = 16
        Caption = 'Extrato de Contas a Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 196
        Top = 35
        Width = 64
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Data:  '
      end
      object RLDBText3: TRLDBText
        Left = 43
        Top = 35
        Width = 150
        Height = 15
        AutoSize = False
        DataField = 'NOME'
        DataSource = DM.dUSer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 2
        Top = 36
        Width = 43
        Height = 14
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 4
      Top = 70
      Width = 261
      Height = 77
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataFields = 'IdVenda'
      BeforePrint = RLGroup2BeforePrint
      object RLBand4: TRLBand
        Left = 0
        Top = 1
        Width = 261
        Height = 47
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText6: TRLDBText
          Left = 1
          Top = 1
          Width = 89
          Height = 14
          DataField = 'IdVenda'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Venda: '
        end
        object RLLabel12: TRLLabel
          Left = 228
          Top = 33
          Width = 32
          Height = 14
          Align = faBottomOnly
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 1
          Top = 33
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
        object RLDBText1: TRLDBText
          Left = 195
          Top = 1
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'valor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Valor: '
        end
        object RLDBText2: TRLDBText
          Left = 84
          Top = 1
          Width = 77
          Height = 14
          DataField = 'venci'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Vencto: '
        end
        object RLDBText5: TRLDBText
          Left = 1
          Top = 16
          Width = 81
          Height = 14
          DataField = 'data'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Dt Venda: '
        end
        object RLLabel13: TRLLabel
          Left = 132
          Top = 33
          Width = 29
          Height = 14
          Align = faBottomOnly
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 164
          Top = 33
          Width = 40
          Height = 14
          Align = faBottomOnly
          Caption = 'R$ Unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 48
        Width = 261
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText10: TRLDBText
          Left = 234
          Top = 1
          Width = 24
          Height = 14
          Alignment = taRightJustify
          DataField = 'ValIt'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo2: TRLDBMemo
          Left = 1
          Top = 1
          Width = 104
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
        object RLDBText17: TRLDBText
          Left = 142
          Top = 1
          Width = 18
          Height = 14
          Alignment = taRightJustify
          DataField = 'qtd'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 182
          Top = 1
          Width = 20
          Height = 14
          Alignment = taRightJustify
          DataField = 'unit'
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
    object RLBand1: TRLBand
      Left = 4
      Top = 147
      Width = 261
      Height = 20
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lTotal: TRLLabel
        Left = 225
        Top = 1
        Width = 34
        Height = 15
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object rpListaA4: TRLReport
    Left = 336
    Top = -134
    Width = 794
    Height = 1123
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 3.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PrintDialog = False
    JobTitle = 'Impresao'
    object RLBand5: TRLBand
      Left = 4
      Top = 4
      Width = 779
      Height = 75
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 0
        Width = 779
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
      object RLLabel2: TRLLabel
        Left = 2
        Top = 58
        Width = 38
        Height = 14
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 43
        Top = 58
        Width = 202
        Height = 15
        AutoSize = False
        DataField = 'NOME'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 316
        Top = 17
        Width = 172
        Height = 16
        Caption = 'Extrato de Contas a Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 196
        Top = 41
        Width = 64
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Data:  '
      end
      object RLDBText8: TRLDBText
        Left = 43
        Top = 41
        Width = 150
        Height = 15
        AutoSize = False
        DataField = 'NOME'
        DataSource = DM.dUSer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 2
        Top = 42
        Width = 43
        Height = 14
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 4
      Top = 79
      Width = 779
      Height = 77
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataFields = 'IdVenda'
      BeforePrint = RLGroup2BeforePrint
      object RLBand6: TRLBand
        Left = 0
        Top = 1
        Width = 779
        Height = 47
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText9: TRLDBText
          Left = 1
          Top = 1
          Width = 89
          Height = 14
          DataField = 'IdVenda'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Venda: '
        end
        object RLLabel5: TRLLabel
          Left = 604
          Top = 33
          Width = 48
          Height = 14
          Align = faBottomOnly
          Caption = 'R$ Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 1
          Top = 33
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
        object RLDBText11: TRLDBText
          Left = 711
          Top = 1
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'valor'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Valor: '
        end
        object RLDBText12: TRLDBText
          Left = 493
          Top = 1
          Width = 77
          Height = 14
          DataField = 'venci'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Vencto: '
        end
        object RLDBText13: TRLDBText
          Left = 305
          Top = 0
          Width = 81
          Height = 14
          DataField = 'data'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Dt Venda: '
        end
        object RLLabel8: TRLLabel
          Left = 493
          Top = 33
          Width = 61
          Height = 14
          Align = faBottomOnly
          Caption = 'R$ Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 412
          Top = 33
          Width = 65
          Height = 14
          Align = faBottomOnly
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 48
        Width = 779
        Height = 17
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText14: TRLDBText
          Left = 628
          Top = 1
          Width = 24
          Height = 14
          Alignment = taRightJustify
          DataField = 'ValIt'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBMemo4: TRLDBMemo
          Left = 1
          Top = 1
          Width = 384
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
        object RLDBText15: TRLDBText
          Left = 534
          Top = 1
          Width = 20
          Height = 14
          Alignment = taRightJustify
          DataField = 'unit'
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
          Left = 457
          Top = 1
          Width = 18
          Height = 14
          Alignment = taRightJustify
          DataField = 'qtd'
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
    object RLBand8: TRLBand
      Left = 4
      Top = 156
      Width = 779
      Height = 20
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lTotal2: TRLLabel
        Left = 610
        Top = 1
        Width = 41
        Height = 15
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand63: TRLBand
      Left = 4
      Top = 176
      Width = 779
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo33: TRLSystemInfo
        Left = 677
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
      
        'select distinct creceber.id, creceber.idvenda, creceber.emissao,' +
        ' creceber.venci, creceber.valor, Cliente.NOME, '
      
        'venda_i.idproduto, produto.descricao,  venda_i.total ValIt, vend' +
        'a.data, venda.id idcx,'
      
        'creceber.documento, '#39'V'#39' tt, venda_i.qtd, venda_i.unit, Cliente.e' +
        'mail'
      ''
      'From creceber'
      'left join Cliente on Cliente.Id = creceber.IdCliente'
      'left join venda_i on venda_i.idvenda = creceber.IdVenda'
      'left join venda on venda.id = venda_i.idvenda'
      'left join produto on produto.id = venda_i.idproduto'
      ''
      'where   creceber.ex = 0 and creceber.baixa = '#39'N'#39' and '
      '            creceber.x = '#39'T'#39' and venda.id in ( 127,128 )'
      ''
      'union all'
      ''
      
        'select distinct creceber.id, creceber.IdVenda, creceber.emissao,' +
        ' creceber.venci, creceber.valor, Cliente.NOME, '
      
        'venda_i.idproduto, produto.descricao,  venda_i.total ValIt, vend' +
        'a.data, venda.id idcx,'
      
        'creceber.documento, '#39'D'#39' tt,  venda_i.qtd, venda_i.unit, Cliente.' +
        'email'
      'From creceber'
      'left join Cliente on Cliente.Id = creceber.IdCliente'
      'left join venda_i on venda_i.Idvenda = creceber.IdVenda'
      'left join venda on venda.id = venda_i.idvenda'
      'left join produto on produto.id = venda_i.idproduto'
      ''
      ''
      'where   creceber.ex = 0 and creceber.baixa = '#39'N'#39' and '
      '            creceber.x = '#39'T'#39' and creceber.tipo = '#39'D'#39
      ''
      'order by  2')
    Params = <>
    Left = 16
    Top = 8
    object QIdVenda: TIntegerField
      FieldName = 'IdVenda'
    end
    object Qvalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object QValIt: TFloatField
      FieldName = 'ValIt'
      DisplayFormat = '###,###,###,##0.00'
    end
    object Qid: TIntegerField
      FieldName = 'id'
    end
    object Qqtd: TFloatField
      FieldName = 'qtd'
      DisplayFormat = '#0.000'
    end
    object Qunit: TFloatField
      FieldName = 'unit'
      DisplayFormat = '###,###,###,##0.00'
    end
    object QNOME: TWideStringField
      FieldName = 'NOME'
      Size = 100
    end
    object Qdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object Qidcx: TIntegerField
      FieldName = 'idcx'
      Required = True
    end
    object Qdocumento: TWideStringField
      FieldName = 'documento'
    end
    object Qtt: TWideStringField
      FieldName = 'tt'
      ReadOnly = True
      Size = 1
    end
    object Qemissao: TDateTimeField
      FieldName = 'emissao'
    end
    object Qvenci: TDateTimeField
      FieldName = 'venci'
    end
    object Qdata: TDateTimeField
      FieldName = 'data'
    end
    object Qemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
  end
  object D: TDataSource
    DataSet = Q
    Left = 48
    Top = 7
  end
end
