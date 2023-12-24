object fImpCliente: TfImpCliente
  Left = 195
  Top = 122
  Width = 1054
  Height = 582
  AutoScroll = True
  Caption = 'fImpCliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpListaCliente: TRLReport
    Left = 35
    Top = 42
    Width = 794
    Height = 1123
    DataSource = fCadCli.D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand96: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText587: TRLDBText
        Left = 1
        Top = 3
        Width = 48
        Height = 16
        DataField = 'Razao'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo29: TRLSystemInfo
        Left = 546
        Top = 0
        Width = 172
        Height = 15
        Align = faRightTop
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel693: TRLLabel
        Left = 279
        Top = 23
        Width = 160
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Listagem de clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand97: TRLBand
      Left = 38
      Top = 135
      Width = 718
      Height = 18
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText588: TRLDBText
        Left = 1
        Top = 0
        Width = 53
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'Id'
        DataSource = fCadCli.D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText589: TRLDBText
        Left = 354
        Top = 0
        Width = 207
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'Cidade'
        DataSource = fCadCli.D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText593: TRLDBText
        Left = 567
        Top = 0
        Width = 19
        Height = 15
        Align = faTopOnly
        DataField = 'UF'
        DataSource = fCadCli.D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText604: TRLDBText
        Left = 592
        Top = 0
        Width = 123
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'tel1'
        DataSource = fCadCli.D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText607: TRLDBText
        Left = 60
        Top = 0
        Width = 288
        Height = 17
        Align = faTopOnly
        AutoSize = False
        DataField = 'Nome'
        DataSource = fCadCli.D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand98: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 24
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo30: TRLSystemInfo
        Left = 619
        Top = 1
        Width = 99
        Height = 14
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel770: TRLLabel
        Left = 0
        Top = 1
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
    object RLBand99: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 54
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel719: TRLLabel
        Left = 1
        Top = 38
        Width = 13
        Height = 15
        Align = faBottomOnly
        Caption = 'Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel738: TRLLabel
        Left = 60
        Top = 38
        Width = 42
        Height = 15
        Align = faBottomOnly
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel746: TRLLabel
        Left = 592
        Top = 38
        Width = 52
        Height = 15
        Align = faBottomOnly
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel750: TRLLabel
        Left = 354
        Top = 38
        Width = 42
        Height = 15
        Align = faBottomOnly
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 567
        Top = 38
        Width = 17
        Height = 15
        Align = faBottomOnly
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand100: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 24
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult103: TRLDBResult
        Left = 60
        Top = 2
        Width = 44
        Height = 15
        DataField = 'Id'
        DataSource = fCadCli.D
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = ''
      end
      object RLLabel716: TRLLabel
        Left = 1
        Top = 2
        Width = 55
        Height = 15
        Caption = 'Clientes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object rpListaTipo: TRLReport
    Left = 843
    Top = 42
    Width = 1123
    Height = 794
    DataSource = dCli
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    JobTitle = 'Impresao'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 1
        Top = 3
        Width = 48
        Height = 16
        DataField = 'Razao'
        DataSource = DM.dParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 875
        Top = 0
        Width = 172
        Height = 15
        Align = faRightTop
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel2: TRLLabel
        Left = 412
        Top = 23
        Width = 223
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Listagem de clientes por tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 177
      Width = 1047
      Height = 24
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo2: TRLSystemInfo
        Left = 948
        Top = 1
        Width = 99
        Height = 14
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 1
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 81
      Width = 1047
      Height = 96
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataFields = 'tipo'
      object RLBand2: TRLBand
        Left = 0
        Top = 49
        Width = 1047
        Height = 18
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText2: TRLDBText
          Left = 1
          Top = 0
          Width = 53
          Height = 15
          Align = faTopOnly
          AutoSize = False
          DataField = 'Id'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 397
          Top = 0
          Width = 207
          Height = 15
          Align = faTopOnly
          AutoSize = False
          DataField = 'Cidade'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 610
          Top = 0
          Width = 19
          Height = 15
          Align = faTopOnly
          DataField = 'UF'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 663
          Top = 0
          Width = 123
          Height = 15
          Align = faTopOnly
          AutoSize = False
          DataField = 'tel1'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 60
          Top = 0
          Width = 331
          Height = 17
          Align = faTopOnly
          AutoSize = False
          DataField = 'Nome'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 792
          Top = 0
          Width = 123
          Height = 15
          Align = faTopOnly
          AutoSize = False
          DataField = 'tel2'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 921
          Top = 0
          Width = 123
          Height = 15
          Align = faTopOnly
          AutoSize = False
          DataField = 'tel3'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 49
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel4: TRLLabel
          Left = 1
          Top = 33
          Width = 13
          Height = 15
          Align = faBottomOnly
          Caption = 'Id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 60
          Top = 33
          Width = 42
          Height = 15
          Align = faBottomOnly
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 663
          Top = 33
          Width = 59
          Height = 15
          Align = faBottomOnly
          Caption = 'Telefones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 397
          Top = 33
          Width = 42
          Height = 15
          Align = faBottomOnly
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 612
          Top = 33
          Width = 17
          Height = 15
          Align = faBottomOnly
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 0
          Top = 8
          Width = 77
          Height = 19
          DataField = 'tipo'
          DataSource = dCli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Tipo: '
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 67
        Width = 1047
        Height = 24
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBResult1: TRLDBResult
          Left = 60
          Top = 2
          Width = 44
          Height = 15
          DataField = 'Id'
          DataSource = dCli
          DisplayMask = '#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 1
          Top = 2
          Width = 55
          Height = 15
          Caption = 'Clientes: '
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
  object rpCPFCNPJ: TRLReport
    Left = 35
    Top = 299
    Width = 794
    Height = 1123
    DataSource = dCli
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    JobTitle = 'Impresao'
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText10: TRLDBText
        Left = 1
        Top = 3
        Width = 48
        Height = 16
        DataField = 'Razao'
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
        Left = 546
        Top = 0
        Width = 172
        Height = 15
        Align = faRightTop
        Info = itNow
        Text = 'Relat'#243'rio Impresso em:  '
      end
      object RLLabel10: TRLLabel
        Left = 279
        Top = 23
        Width = 160
        Height = 19
        Align = faCenterBottom
        Alignment = taRightJustify
        Caption = 'Listagem de clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 135
      Width = 718
      Height = 18
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBText11: TRLDBText
        Left = 1
        Top = 0
        Width = 53
        Height = 15
        Align = faTopOnly
        AutoSize = False
        DataField = 'Id'
        DataSource = dCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 482
        Top = 0
        Width = 42
        Height = 15
        Align = faTopOnly
        DataField = 'cpfcnpj'
        DataSource = dCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 60
        Top = 0
        Width = 405
        Height = 17
        Align = faTopOnly
        AutoSize = False
        DataField = 'Nome'
        DataSource = dCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 24
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo4: TRLSystemInfo
        Left = 619
        Top = 1
        Width = 99
        Height = 14
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 1
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
    object RLBand9: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 54
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel12: TRLLabel
        Left = 1
        Top = 38
        Width = 13
        Height = 15
        Align = faBottomOnly
        Caption = 'Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 60
        Top = 38
        Width = 42
        Height = 15
        Align = faBottomOnly
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 482
        Top = 38
        Width = 59
        Height = 15
        Align = faBottomOnly
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 24
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult2: TRLDBResult
        Left = 60
        Top = 2
        Width = 44
        Height = 15
        DataField = 'Id'
        DataSource = fCadCli.D
        DisplayMask = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = ''
      end
      object RLLabel17: TRLLabel
        Left = 1
        Top = 2
        Width = 55
        Height = 15
        Caption = 'Clientes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object qCli: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select cliente.*, '
      'coalesce(tipo_cliente.descricao, '#39'NENHUM'#39') tipo,'
      'CASE WHEN LEN(cpf)=11 THEN'
      'SUBSTRING(cpf,1,3) + '#39'.'#39
      '+ SUBSTRING(cpf,4,3) + '#39'.'#39
      '+ SUBSTRING(cpf,7,3) + '#39'-'#39
      '+ SUBSTRING(cpf,10,2)'
      'ELSE'
      'SUBSTRING(cpf,1,2) + '#39'.'#39
      '+ SUBSTRING(cpf,3,3) + '#39'.'#39
      '+ SUBSTRING(cpf,6,3) + '#39'/'#39
      '+ SUBSTRING(cpf,9,4) + '#39'-'#39
      '+ SUBSTRING(cpf,13,2)'
      'END'
      'AS cpfcnpj '
      'from Cliente'
      
        'left join tipo_cliente on tipo_cliente.id = cliente.idtipo_clien' +
        'te'
      'where cliente.ex = 0 and'
      
        '             (razao like :pesq or nome like :pesq or tel1 like :' +
        'pesq or cliente.id like :pesq or cpf like :pesq) '
      '             and ((:rr = 0) or (idvendedor = :rr)) '
      '             and ((:es = '#39'TT'#39') or (uf = :es)) '
      '             and ((:cd = '#39'TT'#39') or (idcidade = :cd)) '
      '             and ((:tp = 0) or (idtipo_cliente = :tp))'
      'order by tipo_cliente.descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'es'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp'
        ParamType = ptUnknown
      end>
    Left = 312
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'es'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp'
        ParamType = ptUnknown
      end>
    object qCliId: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'Id'
      Required = True
    end
    object qCliNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object qClicpfcnpj: TWideStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cpfcnpj'
      ReadOnly = True
      Size = 18
    end
    object qCliCidade: TWideStringField
      FieldName = 'Cidade'
      Visible = False
      Size = 50
    end
    object qCliUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qClitel1: TWideStringField
      FieldName = 'tel1'
      Visible = False
      EditMask = '(99) 999999999;0;_'
    end
    object qClitel2: TWideStringField
      FieldName = 'tel2'
      Visible = False
      EditMask = '(99) 999999999;0;_'
    end
    object qClitel3: TWideStringField
      FieldName = 'tel3'
      Visible = False
      EditMask = '(99) 999999999;0;_'
    end
    object qClitipo: TWideStringField
      FieldName = 'tipo'
      Visible = False
      Size = 100
    end
  end
  object dCli: TDataSource
    DataSet = qCli
    Left = 384
    Top = 24
  end
end
