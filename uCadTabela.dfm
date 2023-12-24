inherited fCadTabela: TfCadTabela
  Left = 188
  Top = 193
  Caption = 'Tabela de Pre'#231'os'
  ClientHeight = 667
  ClientWidth = 1015
  WindowState = wsNormal
  ExplicitTop = -39
  ExplicitWidth = 1031
  ExplicitHeight = 706
  DesignSize = (
    1015
    667)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Left = 646
    Top = 120
    ExplicitLeft = 646
    ExplicitTop = 120
  end
  inherited Image2: TImage
    Top = 39
    Width = 1015
    Height = 628
    ExplicitLeft = 8
    ExplicitTop = 38
    ExplicitWidth = 696
    ExplicitHeight = 550
  end
  inherited Label1: TLabel
    Left = 206
    ExplicitLeft = 206
  end
  inherited ToolBar1: TToolBar
    Width = 1015
    Height = 39
    ExplicitWidth = 1015
    ExplicitHeight = 39
    object ToolButton3: TToolButton
      Left = 379
      Top = 0
      Width = 31
      Caption = 'ToolButton3'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 410
      Top = 0
      Hint = 'Corrigir Itens'
      Caption = 'ToolButton4'
      ImageIndex = 16
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton6: TToolButton
      Left = 443
      Top = 0
      Hint = 'Atualizar Qtd Estoque'
      Caption = 'ToolButton6'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton6Click
    end
    object ToolButton5: TToolButton
      Left = 476
      Top = 0
      Width = 15
      Caption = 'ToolButton5'
      ImageIndex = 17
      Style = tbsSeparator
    end
    object Gauge1: TGauge
      Left = 491
      Top = 0
      Width = 323
      Height = 31
      BorderStyle = bsNone
      ForeColor = 5220351
      Progress = 0
      Visible = False
    end
  end
  inherited EdPesq: TEdit
    Left = 286
    Top = 45
    Width = 709
    ExplicitLeft = 286
    ExplicitTop = 45
    ExplicitWidth = 709
  end
  inherited PageControl1: TPageControl
    Top = 73
    Width = 987
    Height = 586
    ActivePage = TabSheet4
    MultiLine = True
    ExplicitTop = 73
    ExplicitWidth = 987
    ExplicitHeight = 586
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 979
      ExplicitHeight = 558
      inherited DBGrid1: TDBGrid
        Width = 979
        Height = 558
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sincronizado'
            Title.Caption = 'Sincronizado'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ex'
            Title.Caption = 'Ex'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'padrao'
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 979
      ExplicitHeight = 558
      object Label2: TLabel
        Left = 15
        Top = 25
        Width = 46
        Height = 20
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 16
        Top = 60
        Width = 67
        Height = 20
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 107
        Top = 26
        Width = 71
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Id'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 107
        Top = 61
        Width = 422
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object gdFor: TDBGrid
        Left = 756
        Top = 366
        Width = 439
        Height = 107
        Ctl3D = True
        DataSource = DM.dPesq
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Descri'#231#227'o'
            Width = 345
            Visible = True
          end>
      end
      object DBCheckBox1: TDBCheckBox
        Left = 204
        Top = 29
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ativo'
        DataSource = D
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 293
        Top = 29
        Width = 97
        Height = 17
        Caption = 'Padr'#227'o'
        DataField = 'padrao'
        DataSource = D
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Pre'#231'os'
      ImageIndex = 3
      OnShow = TabSheet4Show
      DesignSize = (
        979
        558)
      object Bevel3: TBevel
        Left = 16
        Top = 41
        Width = 754
        Height = 516
        Anchors = [akLeft, akTop, akBottom]
        Shape = bsFrame
      end
      object Label20: TLabel
        Left = 16
        Top = 17
        Width = 58
        Height = 18
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 79
        Top = 14
        Width = 60
        Height = 22
        AutoSize = True
        DataField = 'descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lCPFCNPJ: TLabel
        Left = 22
        Top = 48
        Width = 60
        Height = 18
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 112
        Top = 48
        Width = 54
        Height = 18
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 553
        Top = 48
        Width = 32
        Height = 18
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 558
        Top = 524
        Width = 89
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'Total Produtos: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ltot: TLabel
        Left = 653
        Top = 520
        Width = 106
        Height = 22
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CheckDBGrid2: TCheckDBGrid
        Left = 22
        Top = 94
        Width = 737
        Height = 420
        Anchors = [akLeft, akTop, akBottom]
        Color = clWhite
        Ctl3D = True
        DataSource = DL
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnExit = CheckDBGrid2Exit
        OnKeyDown = CheckDBGrid2KeyDown
        OnKeyPress = CheckDBGrid2KeyPress
        OnTitleClick = CheckDBGrid2TitleClick
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'x'
            Title.Caption = 'X'
            Width = 20
            Visible = True
            Check = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Caption = 'Refer'#234'ncia'
            Width = 90
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 485
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'Preco'
            ReadOnly = False
            Title.Caption = 'R$ Pre'#231'o'
            Width = 101
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object XiButton1: TXiButton
        Left = 781
        Top = 78
        Width = 196
        Height = 33
        ColorFace = 9211020
        ColorGrad = 15066597
        ColorDark = 4539717
        ColorLight = 15461355
        ColorBorder = 4539717
        ColorText = clBlack
        OverColorFace = 12171705
        OverColorGrad = clWhite
        OverColorDark = clSilver
        OverColorLight = 14211288
        OverColorBorder = clGray
        OverColorText = clBlack
        DownColorFace = 15658734
        DownColorGrad = clWhite
        DownColorDark = 13816530
        DownColorLight = clWhite
        DownColorBorder = 13816530
        DownColorText = clBlack
        DisabledColorFace = 15658734
        DisabledColorGrad = clWhite
        DisabledColorDark = 13816530
        DisabledColorLight = clWhite
        DisabledColorBorder = clGray
        DisabledColorText = clGray
        ColorFocusRect = 15066597
        ColorScheme = csCustom
        Ctl3D = True
        Layout = blGlyphLeft
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFF4C591F3C18EF4C692F3C591F3C593F3C5
          91F3C591F3C08BF3C593FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFF5CB99F5CD9CFAE5BBFCEDC8FCEDC8
          FAE5BFFAE1BAF8DBB5F7D6ADF6D1A6F5CA9CF4C594F4C594FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF3C18CFAE8C2FFFCDDFF
          FCDDFEF9D9FDF3D0FBECCAF0E6C1FAE6C8FAE3C4F8DFBEF8D9B7F6D1AAF4C99D
          F3C390FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4C591F9DF
          B7FFFCDDFFFCDDFFFCDDFFFCDDFEF7D8FCF2D3BED59462B24761B04407980625
          9E18A9B664F6D3AEF4C99DF3C18EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFF2BD86FDF4D2FFFCDDFFFCDDFFFCDDFFFCDDFFFBDDFEF7DBBFD99A0798
          06079806079806079806079806D5D5A7FDF3D6F4C594FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFF1BB83F7D9ACFFFCDDFFFCDDFFFCDDFFFCDDFFFCDE
          FFFCE1C0DEA007980607980643A9319DBF6C26A21D55B749FCF0D6F5CC9FFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF0B77CF6B776FBCD96F9E2B7FE
          F8D7FFFCDEFFFCE1FFFDE4C1E2A6079806079806169C11E5EBD3E4E8CF25A11C
          FBEDD0F7D5ACF2BD86FF00FFFF00FFFF00FFFF00FFFF00FFF2BD86EEB376F6B8
          77F7BC7EF9C184FAC78DFFDCABF8DFB8FBECCEAFD28BBCD08CBCCE8ABCCD88ED
          ECD1F5F2DDAECF85F5F0D6F5E0BBF3C08BFF00FFFF00FFFF00FFFF00FFFF00FF
          F2BD86F7B979F6B878F8BE7FF9C387FAC88FFCD09BFFDBAEFFE8C634A324FDF3
          D8FEF7E134A627079806079806079806F5F3DBF5EDCCF3C08BFF00FFFF00FFFF
          00FFFF00FFFF00FFF2BC84F6B776F7B979F8BE81F9C489FBC990FDD19DFFDDB0
          FFE9C843A72D52AD3AFEF7DEFFF9E2169D12079806079806F5F5E0F5F3D6F3C5
          93FF00FFFF00FFFF00FFFF00FFFF00FFF0B87EF6B776F7BA7AF8BF82F9C489FB
          CA91FDD19DFFDDB0FFE9C89CBE6907980625A11C34A628079806079806079806
          F5F5E5F5F5DBF6D3A5FF00FFFF00FFFF00FFFF00FFF2BD86EEB477F6B776F7BA
          7AF8BF82F9C489FBCA91FDD29CFEDBADFFE7C3FFF1D434A42507980607980607
          9806079806079806F5F5E7F5F5DCF9DFB7F2BD86FF00FFFF00FFFF00FFF2BD86
          F7BA7AF6B776F7B979F8BE81F9C489FBCA91FCD09BFED8A7FFE2B9FFECCCFBF1
          D280BC5D44AB3344AC35BFD99963BA51F5F5E1F5F5D8F5EBC5F2BD86FF00FFFF
          00FFFF00FFF2BC84F6B776F6B776F7B979F8BE7FF0BB81F1BF86F3C38CF3C38F
          F3C38CEFC087EFC38EF1C896F2CD9FF4D5AAF6DDB6FAE7C5F5F3D6F5F1D0F5ED
          C8F3C089FF00FFFF00FFFF00FFF0B87EF7B979F0B87CF3C089F4C38DF3C089F2
          BF86F2C28AF3C793F5D19FF8DDB1FAE5BFFBEDC8FAE8C2F9E4BDF6D7A9F4CD97
          F3C890F4CE9BF8DFB5F4CA97F2BD86FF00FFF2BD86F2BF86F6C995F4C38BEFB7
          7AECAD6CEDB070EFB77AF1BF86F3C892F5D19FF7DBADF9E4BDFBEECAFEF7D8FF
          FCDEFFFCDEFFFCDEFCF1CDF6D7A6F2C489F2C48DF2BD86FF00FFF4C38DF6C893
          EFB77AECAD6CECAD6CECAD6CEDB171F0B87CF1C087F3C994F5D2A1F7DBAEF9E5
          BBFBEECAFEF8D7FFFCDDFFFCDDFFFCDDFFFCDDFFFCDDFCEEC7F4CC95F2BF86FF
          00FFF6CA96EFB77AECAD6CECAD6CECAD6CECAD6CEDB172EFB97DF1C188F3CA95
          F5D3A2F7DCAFFAE6BDFCEFCBFEF9D9FFFCDDFFFCDDFFFCDDFFFCDDFFFCDDFFFC
          DDFBEBC5F1C084FF00FFF8CE9BECAE6EECAD6CECAD6CECAD6CECAD6CEDB273EF
          BA7FF2C28AF3CB96F5D4A3F8DDB1FAE7BEFCF0CBFEF9DAFFFCDDFFFCDDFFFCDD
          FFFCDDFFFCDDFFFCDDFEF9DAF2C489FF00FFF6CA96F0B87EECAD6CECAD6CECAD
          6CECAD6DEEB374EFBA7FF1C38BF3CC98F6D5A5F8DEB2FAE8C0FCF2CEFFFBDBFF
          FCDDFFFCDDFFFCDDFFFCDDFFFCDDFFFCDDF9E2B7F1C084FF00FFFF00FFF6C995
          F0B77BECAD6CECAD6CECAE6DEEB475F0BB81F2C48DF4CD99F6D7A6F8DFB5FAE8
          C2FDF3D0FFFBDDFFFCDDFFFCDDFFFCDDFFFCDDFFFCDDFAE1B6F3C287FF00FFFF
          00FFFF00FFFF00FFF6CA96F2BF86EFB677ECAE6EEEB477F0BB81F2C58EF4CE9B
          F6D7A9F8E0B5FBEAC3FDF4D1FFFCDCFFFCDDFFFCDDFFFCDDFAE1B6F4C992F2C0
          84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF3C287F2BF83F1BF82F2
          BF85F2C48DF4CE9BF6D7A6F9E1B7FBEAC3FCF0CBFAE5BBF8DBACF5CE99F2C389
          F2C084FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFF1BF82F2C084F1BF82F1C081F0BF80F1C081F1BF82F2C084F1
          BF82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Limpar tabela produtos  '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = XiButton1Click
      end
      object XiButton2: TXiButton
        Left = 781
        Top = 39
        Width = 196
        Height = 33
        ColorFace = 15987699
        ColorGrad = 12369084
        ColorDark = 10987431
        ColorLight = 16250871
        ColorBorder = 6447714
        ColorText = clBlack
        OverColorFace = 15790320
        OverColorGrad = 10921638
        OverColorDark = 10658466
        OverColorLight = 15658734
        OverColorBorder = 7697781
        OverColorText = clBlack
        DownColorFace = 13290186
        DownColorGrad = 14342874
        DownColorDark = 15329769
        DownColorLight = 8158332
        DownColorBorder = 5131854
        DownColorText = clBlack
        DisabledColorFace = 15658734
        DisabledColorGrad = clWhite
        DisabledColorDark = 13816530
        DisabledColorLight = clWhite
        DisabledColorBorder = clGray
        DisabledColorText = clGray
        ColorFocusRect = 11382189
        ColorScheme = csNeoSilver
        Ctl3D = True
        Layout = blGlyphLeft
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
          00FFFF00FFFF00FFFF00FF93655EFFDCB7FFDAB5FED9B1FED8AFFED7ABFED5A7
          FED4A5FED3A3FED0A0FECF9FFECE9DFECE9AFECC98FECB96FECB96FECB96FECB
          969F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FFEDEBCFEDDB8FFDAB5FE
          D9B2FED8AFFED7ABFED5AAFED4A6FED3A4FED0A0FECF9EFECF9DFECE9CFECE99
          FECC97FECB96FECB969F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FFFE1
          C1FEE0BDFEDDBAFEDCB6FEDAB2FED8B0FED8ADFED5AAFED4A7FED3A4FED1A300
          8100FECF9DFFCE9CFECE99FECC98FECC979F6F60FF00FFFF00FFFF00FFFF00FF
          FF00FF93655FFFE3C5FEE1C1FFE0BDFFDEBBFEDCB7FEDAB4FED9B1FFD8ADFED5
          ABFED4A9008100008100008100FED09EFECF9DFECC99FECC989F6F60FF00FFFF
          00FFFF00FFFF00FFFF00FF936560FFE5CAFEE3C6D58127D58127D58127D58127
          D58127D58127FED8AF008100327725648E43008100548437FECF9EFECE9CFECE
          9A9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660FFE7CEFFE5CBFFE5C7FE
          E2C4FEE0C0FEE0BCFFDDBAFEDCB6FFDAB2008100F6D3A7FFD5AAAFB174008100
          008100F8CE9CFECF9D9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963FFEA
          D3FEE9CFFFE6CCFEE5C9FEE3C4FEE1C1FEE0BDFFDEBBFEDCB6FEDAB4FED9B1FE
          D7ADFED5ABEECE9E008100008100FFD09F9F6F60FF00FFFF00FFFF00FFFF00FF
          FF00FF9E6E64FFEBD8FEEBD4FEE9D0FEE6CEFEE5CAFEE3C6FFE1C2FEE0BFFFDE
          BCFEDCB7FEDAB5FED9B1FED7AFFED7ABFED4A9FFD4A5FED1A39F6F60FF00FFFF
          00FFFF00FFFF00FFFF00FFA37266FEEEDCFFEDD8FEEAD4FEE9D1FFE7CEFEE6CB
          FFE3C6FEE2C4FEE1C0FEDEBCFFDDB8008100FED9B2FED9AFFED7ABFED5A9FED4
          A69F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568FFF0E0FEEEDDFEEDD9FF
          EBD5FFE9D1FFE7CFFEE6CBFFE3C7FEE3C4FEE1C1008100008100008100FFDAB2
          FED8B0FED8ADFED5AA9F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FFF2
          E5FFF2E2D58127D58127D58127D58127D58127D58127FFE5C9008100327A2964
          934C00810054893EFEDAB5FED9B1FED7ADA07063FF00FFFF00FFFF00FFFF00FF
          FF00FFB17E6BFFF4E9FFF2E6FFF0E2FEEFE0FFEEDCFFEBD8FFEAD4FEE9D1FEE7
          CC008100F6E0C0FEE2C2AFBA84008100008100F8D9B1FED9B1A07264FF00FFFF
          00FFFF00FFFF00FFFF00FFB6816CFFF7EDFFF4EAFFF3E7FFF2E2FEEFE0FFEEDC
          FFEDD9FFEBD5FEEAD1FFE7CFFEE6CAFFE3C7FFE2C2EED9B5008100008100FEDC
          B69D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFFF8EFFEF7EEFEF6EBFF
          F3E7FEF2E5FFF0E1FFEEDEFFEDD9FEEBD7FEEAD3FEE9CFFEE6CCFFE5C7FEE3C5
          FEE1C1FEE0BDFEDDBB896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFFFA
          F3FFF8F2FFF7EEFFF6EAFFF4E7FEF3E6FFF2E1FFEFDEFFEDDAFFEDD7FFEAD400
          8100FEE7CCFEE5C9FFE3C6FFE1C2FEE1BF806762FF00FFFF00FFFF00FFFF00FF
          FF00FFC58C70FFFCF7FEFAF4FFF8F2FFF7EFFFF6EDFFF4E9FFF3E6FFF0E3FFF0
          DEFEEEDC008100008100008100FFE7CEFFE6CBFEE3C7FFE2C2846964FF00FFFF
          00FFFF00FFFF00FFFF00FFCB9173FFFCFAFFFBF8D58127D58127D58127D58127
          D58127D58127FEF2E3008100327D2E649956008100548F47FFE7CFFFE6CBFFE5
          C7986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FFFEFCFFFEFBFFFBF8FF
          FAF6FEFAF3FFF8F0FFF6EEFFF4EBFEF3E7008100F7EEDAFFEFDEAFC497008100
          008100F8E6CBFFE7CBA5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FFFE
          FFFFFEFCFFFEFAFFFBF8FFFBF6FFFAF3FFF8F2FFF8EFFFF6EBFFF4E9FFF3E5FF
          F2E2FFEFE0EFE6CF008100008100FEE9D0846964FF00FFFF00FFFF00FFFF00FF
          FF00FFD49875FFFFFFFFFFFFFFFEFEFFFEFBFFFCFAFFFBF7FFFBF4FFF8F2FFF7
          EFFFF6EBFEF4E9FFF3E6FEF2E3FFF0E0FFEFDDFEEDD9FEEBD5846964FF00FFFF
          00FFFF00FFFF00FFFF00FFD49875FFFFFFFFFFFFFFFFFFFFFFFEFFFEFBFEFEFB
          FFFBF8FFFBF4FFF8F3FEF8F0FFF7EEFFF4EAFFF4E7FEF2E5FEF0E1FEEFDDFFED
          DA846964FF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E68CF8E68CF8E68CF
          8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68
          CF8E68CF8E68CF8E68846964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Adicionar todos produtos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = XiButton2Click
      end
      object edCod: TEdit
        Left = 22
        Top = 64
        Width = 87
        Height = 24
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnExit = edCodExit
        OnKeyPress = edCodKeyPress
      end
      object EdNom: TEdit
        Left = 111
        Top = 64
        Width = 436
        Height = 24
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnChange = EdNomChange
        OnKeyDown = EdNomKeyDown
      end
      object gdPesq: TDBGrid
        Left = 416
        Top = 191
        Width = 524
        Height = 193
        Ctl3D = True
        DataSource = DM.dPesq
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Visible = False
        OnKeyDown = gdPesqKeyDown
        OnKeyPress = gdPesqKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'referencia'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Descri'#231#227'o'
            Width = 416
            Visible = True
          end>
      end
      object edQtd: TMaskEdit
        Left = 554
        Top = 65
        Width = 121
        Height = 24
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = ''
        OnKeyPress = edQtdKeyPress
      end
      object btAddP: TXiButton
        Left = 689
        Top = 59
        Width = 32
        Height = 30
        ColorFace = 15987699
        ColorGrad = 12369084
        ColorDark = 10987431
        ColorLight = 16250871
        ColorBorder = 6447714
        ColorText = clBlack
        OverColorFace = 15790320
        OverColorGrad = 10921638
        OverColorDark = 10658466
        OverColorLight = 15658734
        OverColorBorder = 7697781
        OverColorText = clBlack
        DownColorFace = 13290186
        DownColorGrad = 14342874
        DownColorDark = 15329769
        DownColorLight = 8158332
        DownColorBorder = 5131854
        DownColorText = clBlack
        DisabledColorFace = 15658734
        DisabledColorGrad = clWhite
        DisabledColorDark = 13816530
        DisabledColorLight = clWhite
        DisabledColorBorder = clGray
        DisabledColorText = clGray
        ColorFocusRect = 11382189
        ColorScheme = csNeoSilver
        Ctl3D = True
        Layout = blGlyphLeft
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E882E0E882E0E
          882E0E882E0E882EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0E882E07A72F099E2E0B932E0E882EFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E882E05AF2F08
          BA29099E2E0E882EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0E882E04B62F08B82807A72F0E882EFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E882E03BB2F09
          B52605AF2F0E882EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E882E0E882E
          0E882E0E882E0E882E188D3616C44009B22504B62F0B922E0C902E0C8E2E0D8C
          2E0D892E0E882EFFFFFF2A964673E28D68E0845DDD7B53DA7349D66A41CB5D1D
          B63506B72B04B62F05AF2F07A72F099E2E0B932E0E882EFFFFFF2D97497EE597
          79D1856ECE7C64CC7459CA6B51C26046C1581EB63507B52807B62807B62A07B7
          2B099E2E0E882EFFFFFF30984B8AE7A07FE59775E38F6AE0865FDD7D58D27052
          C36143CB5F17C54103BB2F04B62F05AF2F07A72F0E882EFFFFFF0E882E0E882E
          0E882E0E882E0E882E0E882E61DE7E5DC56A4CD76D0E882E0E882E0E882E0E88
          2E0E882E0E882EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E882E6DE18869
          C77458DB770E882EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0E882E78E49275CA7E63DE800E882EFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E882E83E69B7F
          D38A6FE18A0E882EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0E882E8FE8A485E69C7BE4930E882EFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E882E0E882E0E
          882E0E882E0E882EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = btAddPClick
      end
      object btExcluirF: TXiButton
        Left = 727
        Top = 59
        Width = 32
        Height = 30
        ColorFace = 9211020
        ColorGrad = 15066597
        ColorDark = 4539717
        ColorLight = 15461355
        ColorBorder = 4539717
        ColorText = clBlack
        OverColorFace = 12171705
        OverColorGrad = clWhite
        OverColorDark = clSilver
        OverColorLight = 14211288
        OverColorBorder = clGray
        OverColorText = clBlack
        DownColorFace = 15658734
        DownColorGrad = clWhite
        DownColorDark = 13816530
        DownColorLight = clWhite
        DownColorBorder = 13816530
        DownColorText = clBlack
        DisabledColorFace = 15658734
        DisabledColorGrad = clWhite
        DisabledColorDark = 13816530
        DisabledColorLight = clWhite
        DisabledColorBorder = clGray
        DisabledColorText = clGray
        ColorFocusRect = 15066597
        ColorScheme = csCustom
        Ctl3D = True
        Layout = blGlyphLeft
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF6569BA717FE06B6EBEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFFFFFFFFFFFFB9BADD7A83E6
          6A80FF273CD9EBECF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7677
          C58788D9FFFFFFFFFFFFA0A1D34D54DE2536EB0B20D9E3E3F3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFDCDCEE0E16C0B1B2DEFFFFFFFFFFFFE9E9F41519BF
          060EDB0412D87B7DC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C34BA1822
          C1FFFFFFFFFFFFFFFFFFFFFFFF5A5BBA0002CF0309D8080FC1DADAECFFFFFFFF
          FFFFFFFFFFFFFFFF7A7CC50C21DF9C9DD2FFFFFFFFFFFFFFFFFFFFFFFFFDFDFE
          1E1FB00001D00106D52326B1FFFFFFFFFFFFFFFFFFA9AAD30C28E52733BEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9F41112B50000D10103CE5A5CB9FF
          FFFFB1B2D90B1FD40C26DFD2D1E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE2E3F21516B50000D20101C44D4EB8070EC30514E16F70BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FA2D2DB00001CC00
          00CC0103D13639B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE2E2F23236B70207CF0103D20001C97777C2FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7174CA0F1ED10717E40510DE0E
          13BA0507C10608CC6162BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9BD2
          4F58D23D57F71D3CFA0D26F01921BFEBEBF6C4C4E5191BBE2325D44A4ABBF9F9
          FCFFFFFFFFFFFFFFFFFF8487D0A2ABF78D9DFF6A7FFF3A55F9313BC1EFEFF7FF
          FFFFFFFFFFFDFDFE5B5CBF4041D1494AC4A2A2D5FFFFFFFFFFFF8788CCB6BBF5
          A3ACFB6973E17678C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8E65555
          C16061CC5A5ABDADAED9DFDFEF9192D29A9DE29596D2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF77C7DC96162C58383CB}
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = btExcluirFClick
      end
      object btnAtualizaPreco: TXiButton
        Left = 781
        Top = 117
        Width = 196
        Height = 33
        Hint = 'Atualiza pelo pre'#231'o sugerido do produto'
        ColorFace = 9211020
        ColorGrad = 15066597
        ColorDark = 4539717
        ColorLight = 15461355
        ColorBorder = 4539717
        ColorText = clBlack
        OverColorFace = 12171705
        OverColorGrad = clWhite
        OverColorDark = clSilver
        OverColorLight = 14211288
        OverColorBorder = clGray
        OverColorText = clBlack
        DownColorFace = 15658734
        DownColorGrad = clWhite
        DownColorDark = 13816530
        DownColorLight = clWhite
        DownColorBorder = 13816530
        DownColorText = clBlack
        DisabledColorFace = 15658734
        DisabledColorGrad = clWhite
        DisabledColorDark = 13816530
        DisabledColorLight = clWhite
        DisabledColorBorder = clGray
        DisabledColorText = clGray
        ColorFocusRect = 15066597
        ColorScheme = csCustom
        Ctl3D = True
        Layout = blGlyphLeft
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0093625C008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
          59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
          59008E5D59008E5D590080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0093625C00EBD7B700EED8BA00E4D4B000EDCFA500EECC9E00EDCA9B00EBC5
          9400E8C18800EABF8200EABF8000EABF8000EABF8000EABF8000EABF8000EABF
          8000EABF8000EABF800080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0093625C00EED8BA00EED9BC00E6D6B300EBD0A700EDCFA500EECC9E00ECC7
          9800EBC59400E8C18800EABF8200E9BD7F00E9BD7F00E9BD7F00E9BD7F00E9BD
          7F00EABF8000E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0093625C00EFDABF00F3E0CA00EED8BA00E4D4B000EBD0A700EDCFA500EECC
          9E00ECC79800EBC59400E8C18800EABF8200E9BD7F00E9BD7F00E9BD7F00E9BD
          7F00EABF8000E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0093625C00F0DBC200F3E0CA00EFDABF00EED8BA0000700000EBD0A700EECD
          A200B1B07300007000000070000000700000B1B07300E9BD7F00E9BD7F00E9BD
          7F00EABF8000E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0093625C00F3E0CC00F5E6D400F3E0CA00EFDABF000070000000700000B3AF
          780000700000B1B07300ECC79800B1B0730000700000B1B07300E9BD7F00E9BD
          7F00EABF8000E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0095635C00F4E3D000F7E9D900F4E3D000F3DEC80000700000007000000070
          0000B3AF7800EECDA200EECC9E00ECC79800B1B0730000700000E9BD7F00E9BD
          7F00EABF8000E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF009F696300F5E6D400F8ECDE00F6E7D600F3E0CA0000700000007000000070
          000000700000EBD0A700EECDA200EECC9E00ECC7980000700000E8C18800E9BD
          7F00EABF8000E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF009F696300F8EDE000FAF1E600F7EBDC00F5E6D40000700000007000000070
          00000070000000700000EBD0A700EDCFA500EDCA9B00ECC79800EBC59400E8C1
          8800EABF8200E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00A56C6700FAF2E900FBF5EE00F9EFE300F7E9D900F5E6D400F3E0CC00F3DE
          C800EFDABF00EED8BA00E4D4B000EBD0A700EECDA200EDCA9B00ECC79800EBC5
          9400E8C18800E8BC7D0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00AB706600FBF6F000FDFBF800FBF4EC00F9EFE300F7EBDC00F6E7D600F3E0
          CC00F3E0CA000070000000700000007000000070000000700000EDCA9B00ECC7
          9800EBC59400EAC0860080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00B1756600FBF6F100FEFEFE00FCF8F400FAF2E90000700000F7EBDC00F5E6
          D400F3E0CC00F3E0CA0000700000007000000070000000700000EECDA200EDCA
          9B00EDC99A00E8BF900080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00B1756600FBF6F100FEFEFE00FEFDFB00FCF7F20000700000E3D1AC00F7E9
          D900F6E7D600F3E0CA00CEC39600007000000070000000700000EBD0A700EECD
          A200EDCA9B00EBC5940080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00B67A6500FBF6F100FEFEFE00FEFEFE00FEFCFA00E6D6B30000700000E3D1
          AC00F7EBDC00D2C89C0000700000CEC396000070000000700000E4D4B000EBD0
          A700EDCFA500EDC99A0080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00BB7E6400FBF6F100FEFEFE00FEFEFE00FEFEFE00FEFDFB00E6D6B3000070
          00000070000000700000D2C89C00F3E0CA00F3DEC80000700000EED8BA00E4D4
          B000EBD0A700D1C0930080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00C0816100FCF7F300FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFDFB00FCF7
          F200FAF2E900F9EFE300F7EBDC00F5E6D400F3E0CA00F3DEC800EFDABF00E2D2
          AF00CEC39600B1AD770080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00C6845F00FCF7F300FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFC
          FA00FCF7F200FBF4EC00F9EFE300F7E9D900F6E7D600F7E9D900E2D2AF00B6AF
          7800B1AD7700B1AD770080504B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D2916700FCF7F300FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFDFB00FCF7F200FAF2E900FAF1E600F0DBC2009D675E009D675E009D67
          5E009D675E009D675E009D675E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D5996E00FCF7F300FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00FEFCFA00FCF7F200FCF7F200E3C2A7009D675E00D8A07400D590
          5B00D5905B00D28C5900A56C6700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D5996E00FCF8F400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00FEFEFE00FEFCFA00FEFDFB00E3C2A7009D675E00EAB87500EBB2
          6500EBB26500A56C6700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D5996E00FCF8F400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00E2D2AF009D675E00EAB87500EBB2
          6500A56C6700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D5996E00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00E2D2AF009D675E00EBB77000A56C
          6700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D1906500D1906500D1906500D1906500D1906500D1906500D1906500D190
          6500D1906500D1906500D1906500D1906500D19065009D675E00A56C6700FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        BiDiMode = bdRightToLeft
        Caption = 'Atualizar pre'#231'os            '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = btnAtualizaPrecoClick
      end
      object ckTodos: TCheckBox
        Left = 22
        Top = 518
        Width = 97
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Todos'
        TabOrder = 10
        OnClick = ckTodosClick
      end
    end
  end
  object rdAt: TRadioGroup [6]
    Left = 8
    Top = 39
    Width = 177
    Height = 30
    Caption = 'Ativo'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 1
    Items.Strings = (
      'Todos'
      'Sim'
      'N'#227'o')
    ParentFont = False
    TabOrder = 3
    OnClick = rdAtClick
  end
  object pAtualizando: TPanel [7]
    Left = 91
    Top = 280
    Width = 830
    Height = 41
    Caption = 'Atualizando pre'#231'os. Por favor, aguarde!'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  inherited ImageList1: TImageList
    Left = 728
    Top = 11
  end
  inherited D: TDataSource
    Left = 496
    Top = 56
  end
  inherited ActionList1: TActionList
    Left = 656
    Top = 11
    object acTipo: TAction
      Caption = 'acTipo'
      ShortCut = 114
    end
    object acZerar: TAction
      Caption = 'acZerar'
    end
  end
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    BeforePost = TBeforePost
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * '
      'from tabela'
      'where ex = 0 and  descricao like :pesq '
      'and ((:at = '#39'T'#39') or (ativo = :at))'
      'order by descricao')
    Params = <
      item
        DataType = ftString
        Name = 'pesq'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'at'
        ParamType = ptUnknown
      end>
    Left = 432
    Top = 43
    ParamData = <
      item
        DataType = ftString
        Name = 'pesq'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'at'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object TDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object Tex: TIntegerField
      FieldName = 'ex'
    end
    object Tsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Size = 1
    end
    object Tativo: TWideStringField
      FieldName = 'ativo'
      Size = 1
    end
    object Tidweb: TIntegerField
      FieldName = 'idweb'
    end
    object Tpadrao: TWideStringField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'padrao'
      Size = 1
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tabela'
      'WHERE'
      
        '  ((tabela.Id IS NULL AND :OLD_Id IS NULL) OR (tabela.Id = :OLD_' +
        'Id))')
    InsertSQL.Strings = (
      'INSERT INTO tabela'
      '  (Descricao, ex, sincronizado, ativo, idweb, padrao)'
      'VALUES'
      '  (:Descricao, :ex, :sincronizado, :ativo, :idweb, :padrao)')
    ModifySQL.Strings = (
      'UPDATE tabela SET'
      '  Descricao = :Descricao,'
      '  ex = :ex,'
      '  sincronizado = :sincronizado,'
      '  ativo = :ativo,'
      '  idweb = :idweb,'
      '  padrao = :padrao'
      'WHERE'
      
        '  ((tabela.Id IS NULL AND :OLD_Id IS NULL) OR (tabela.Id = :OLD_' +
        'Id))')
    Left = 464
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'padrao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object L: TZQuery
    Connection = DM.Conex
    UpdateObject = UL
    BeforePost = LBeforePost
    AfterPost = LAfterPost
    OnNewRecord = LNewRecord
    SQL.Strings = (
      'select tabela_i.*'
      'from tabela_i'
      'left join produto p on p.id = tabela_i.idproduto'
      'where tabela_i.idtabela = :id'
      '  and (  (tabela_i.ex in (0,2) ) and '
      
        '            (tabela_i.id = (select max(t.id) from tabela_i t whe' +
        're t.idproduto = tabela_i.idproduto and t.IdTabela = tabela_i.id' +
        'tabela) )'
      '        )'
      ''
      'order by tabela_i.descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object LId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object LIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object LIdTabela: TIntegerField
      FieldName = 'IdTabela'
    end
    object LReferencia: TWideStringField
      FieldName = 'Referencia'
      Size = 13
    end
    object LCodBarras: TWideStringField
      FieldName = 'CodBarras'
      Size = 13
    end
    object LDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 80
    end
    object LPreco: TFloatField
      FieldName = 'Preco'
      OnValidate = LPrecoValidate
      DisplayFormat = '###,###,##0.00'
    end
    object LQtdeEstoque: TFloatField
      FieldName = 'QtdeEstoque'
    end
    object LPagina: TIntegerField
      FieldName = 'Pagina'
    end
    object Lex: TIntegerField
      FieldName = 'ex'
    end
    object LQtdeCaixa: TFloatField
      FieldName = 'QtdeCaixa'
    end
    object Lsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Size = 1
    end
    object Lx: TWideStringField
      FieldName = 'x'
      OnChange = LxChange
      Size = 1
    end
  end
  object UL: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tabela_i'
      'WHERE'
      
        '  ((tabela_i.Id IS NULL AND :OLD_Id IS NULL) OR (tabela_i.Id = :' +
        'OLD_Id)) AND'
      '  tabela_i.IdTabela = :OLD_IdTabela AND'
      '  tabela_i.IdProduto = :OLD_IdProduto AND'
      
        '  ((tabela_i.Preco IS NULL AND :OLD_Preco IS NULL) OR (tabela_i.' +
        'Preco = :OLD_Preco)) AND'
      
        '  ((tabela_i.QtdeEstoque IS NULL AND :OLD_QtdeEstoque IS NULL) O' +
        'R (tabela_i.QtdeEstoque = :OLD_QtdeEstoque)) AND'
      
        '  ((tabela_i.Pagina IS NULL AND :OLD_Pagina IS NULL) OR (tabela_' +
        'i.Pagina = :OLD_Pagina)) AND'
      
        '  ((tabela_i.ex IS NULL AND :OLD_ex IS NULL) OR (tabela_i.ex = :' +
        'OLD_ex)) AND'
      
        '  ((tabela_i.QtdeCaixa IS NULL AND :OLD_QtdeCaixa IS NULL) OR (t' +
        'abela_i.QtdeCaixa = :OLD_QtdeCaixa)) AND'
      
        '  ((tabela_i.idweb IS NULL AND :OLD_idweb IS NULL) OR (tabela_i.' +
        'idweb = :OLD_idweb))')
    InsertSQL.Strings = (
      'INSERT INTO tabela_i'
      
        '  (IdTabela, IdProduto, Referencia, CodBarras, Descricao, Preco,' +
        ' Pagina, '
      '   ex, QtdeCaixa, sincronizado, x)'
      'VALUES'
      
        '  (:IdTabela, :IdProduto, :Referencia, :CodBarras, :Descricao, :' +
        'Preco, '
      '   :Pagina, :ex, :QtdeCaixa, :sincronizado, :x)')
    ModifySQL.Strings = (
      'UPDATE tabela_i SET'
      '  IdTabela = :IdTabela,'
      '  IdProduto = :IdProduto,'
      '  Referencia = :Referencia,'
      '  CodBarras = :CodBarras,'
      '  Descricao = :Descricao,'
      '  Preco = :Preco,'
      '  Pagina = :Pagina,'
      '  ex = :ex,'
      '  QtdeCaixa = :QtdeCaixa,'
      '  sincronizado = :sincronizado,'
      '  x = :x'
      'WHERE'
      
        '  ((tabela_i.Id IS NULL AND :OLD_Id IS NULL) OR (tabela_i.Id = :' +
        'OLD_Id)) AND'
      '  tabela_i.IdTabela = :OLD_IdTabela AND'
      '  tabela_i.IdProduto = :OLD_IdProduto AND'
      
        '  ((tabela_i.Preco IS NULL AND :OLD_Preco IS NULL) OR (tabela_i.' +
        'Preco = :OLD_Preco)) AND'
      
        '  ((tabela_i.QtdeEstoque IS NULL AND :OLD_QtdeEstoque IS NULL) O' +
        'R (tabela_i.QtdeEstoque = :OLD_QtdeEstoque)) AND'
      
        '  ((tabela_i.Pagina IS NULL AND :OLD_Pagina IS NULL) OR (tabela_' +
        'i.Pagina = :OLD_Pagina)) AND'
      
        '  ((tabela_i.ex IS NULL AND :OLD_ex IS NULL) OR (tabela_i.ex = :' +
        'OLD_ex)) AND'
      
        '  ((tabela_i.QtdeCaixa IS NULL AND :OLD_QtdeCaixa IS NULL) OR (t' +
        'abela_i.QtdeCaixa = :OLD_QtdeCaixa)) AND'
      
        '  ((tabela_i.idweb IS NULL AND :OLD_idweb IS NULL) OR (tabela_i.' +
        'idweb = :OLD_idweb))')
    UseSequenceFieldForRefreshSQL = False
    Left = 344
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdTabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CodBarras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Preco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pagina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QtdeCaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'x'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IdTabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IdProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Preco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_QtdeEstoque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Pagina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_QtdeCaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idweb'
        ParamType = ptUnknown
      end>
  end
  object DL: TDataSource
    DataSet = L
    Left = 384
    Top = 75
  end
  object qPro: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, referencia, barras, descricao, valor, qtdestoque,'
      '       multiplo, VendaSugerido'
      'from produto'
      'where ex = 0 and tipo = '#39'P'#39' and ativo = '#39'S'#39
      ''
      'order by id')
    Params = <>
    Left = 144
    Top = 259
    object qProid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qProreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object qProbarras: TWideStringField
      FieldName = 'barras'
    end
    object qProdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qProvalor: TFloatField
      FieldName = 'valor'
    end
    object qProqtdestoque: TFloatField
      FieldName = 'qtdestoque'
    end
    object qPromultiplo: TFloatField
      FieldName = 'multiplo'
    end
    object qProVendaSugerido: TFloatField
      FieldName = 'VendaSugerido'
    end
  end
  object qTT: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id '
      'from tabela')
    Params = <>
    Left = 120
    Top = 371
    object qTTid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object qLL: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select idproduto, idweb '
      'from tabela_i '
      'where idtabela = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qLLidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object qLLidweb: TIntegerField
      FieldName = 'idweb'
    end
  end
  object qProPreco: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, referencia, barras, descricao, valor, qtdestoque,'
      '       multiplo, VendaSugerido'
      'from produto'
      'where id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 216
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qProPrecoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qProPrecoreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object qProPrecobarras: TWideStringField
      FieldName = 'barras'
    end
    object qProPrecodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qProPrecovalor: TFloatField
      FieldName = 'valor'
    end
    object qProPrecoqtdestoque: TFloatField
      FieldName = 'qtdestoque'
    end
    object qProPrecomultiplo: TFloatField
      FieldName = 'multiplo'
    end
    object qProPrecoVendaSugerido: TFloatField
      FieldName = 'VendaSugerido'
    end
  end
end
