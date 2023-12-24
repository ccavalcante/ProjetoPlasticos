inherited fCadSemiAcabado: TfCadSemiAcabado
  Left = 185
  Top = 136
  Caption = 'Semiacabado'
  ClientHeight = 671
  ClientWidth = 998
  OldCreateOrder = True
  ExplicitWidth = 1014
  ExplicitHeight = 710
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 998
    Height = 630
    ExplicitWidth = 1012
    ExplicitHeight = 669
  end
  object Label89: TLabel [3]
    Left = 812
    Top = 53
    Width = 81
    Height = 16
    Anchors = [akTop, akRight]
    Caption = 'Refer'#234'ncia:'
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  inherited ToolBar1: TToolBar
    Width = 998
    ExplicitWidth = 998
    object ToolButton3: TToolButton
      Left = 379
      Top = 0
      Width = 14
      Caption = 'ToolButton3'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object btCopiar: TToolButton
      Left = 393
      Top = 0
      Hint = 'Copiar Cadastro'
      Caption = 'btCopiar'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = btCopiarClick
    end
  end
  inherited PageControl1: TPageControl [5]
    Width = 983
    Height = 585
    ExplicitWidth = 983
    ExplicitHeight = 585
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 975
      ExplicitHeight = 557
      inherited DBGrid1: TDBGrid
        Width = 975
        Height = 557
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Title.Caption = 'C'#243'digio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_Manual'
            Title.Caption = 'C'#243'd. Manual'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 545
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtdestoque'
            Title.Caption = 'Qtde Estoque'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'est_minimo'
            Title.Caption = 'Estoque M'#237'nimo'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desgrupo'
            Title.Caption = 'Grupo'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'referencia_base'
            Title.Caption = 'Refer'#234'ncia Base'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descor'
            Title.Caption = 'Cor'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tamanho'
            Title.Caption = 'Tamanho'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'referencia'
            Title.Caption = 'Refer'#234'ncia'
            Width = 104
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      OnShow = TabSheet2Show
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 975
      ExplicitHeight = 557
      object Label2: TLabel
        Left = 17
        Top = 13
        Width = 38
        Height = 18
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 17
        Top = 38
        Width = 54
        Height = 18
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 17
        Top = 63
        Width = 77
        Height = 18
        Caption = 'Qtde Estoque'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 403
        Top = 13
        Width = 69
        Height = 18
        Caption = 'Cod. Manual'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 267
        Top = 63
        Width = 91
        Height = 18
        Caption = 'Estoque M'#237'nimo'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 17
        Top = 87
        Width = 25
        Height = 18
        Caption = 'NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 267
        Top = 88
        Width = 27
        Height = 18
        Caption = 'CEST'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 17
        Top = 119
        Width = 62
        Height = 18
        Caption = 'Custo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 427
        Top = 88
        Width = 52
        Height = 18
        Caption = 'M'#250'ltiplo:'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 597
        Top = 38
        Width = 46
        Height = 18
        Caption = 'Unidade'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 100
        Top = 12
        Width = 71
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Id'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 100
        Top = 37
        Width = 491
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 100
        Top = 62
        Width = 149
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'qtdestoque'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 486
        Top = 12
        Width = 199
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'cod_Manual'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 363
        Top = 62
        Width = 149
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'est_minimo'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
      end
      object cbNCM: TDBLookupComboBox
        Left = 100
        Top = 87
        Width = 149
        Height = 19
        Ctl3D = False
        DataField = 'NCM'
        DataSource = D
        KeyField = 'NCM'
        ListField = 'NCM'
        ListSource = dNCM
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 300
        Top = 87
        Width = 104
        Height = 19
        Ctl3D = False
        DataField = 'cest'
        DataSource = D
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 100
        Top = 118
        Width = 104
        Height = 19
        Color = 13565436
        Ctl3D = False
        DataField = 'CustoTotal'
        DataSource = D
        MaxLength = 7
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 485
        Top = 87
        Width = 104
        Height = 19
        Ctl3D = False
        DataField = 'multiplo'
        DataSource = D
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 9
      end
      object Panel1: TPanel
        Left = 3
        Top = 143
        Width = 950
        Height = 82
        BevelInner = bvLowered
        BevelOuter = bvSpace
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 10
        object Label67: TLabel
          Left = 12
          Top = 13
          Width = 34
          Height = 18
          Caption = 'Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label88: TLabel
          Left = 278
          Top = 13
          Width = 89
          Height = 18
          Caption = 'Refer'#234'ncia Base'
          FocusControl = DBEdit49
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label77: TLabel
          Left = 478
          Top = 13
          Width = 19
          Height = 18
          Caption = 'Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label87: TLabel
          Left = 668
          Top = 13
          Width = 49
          Height = 18
          Caption = 'Tamanho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 12
          Top = 50
          Width = 60
          Height = 18
          Caption = 'Refer'#234'ncia'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 51
          Top = 12
          Width = 222
          Height = 21
          DataField = 'idgrupo'
          DataSource = D
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = dGrupo
          NullValueKey = 46
          TabOrder = 0
        end
        object DBEdit49: TDBEdit
          Left = 372
          Top = 12
          Width = 96
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'referencia_base'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 504
          Top = 12
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'idcor'
          DataSource = D
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = dCor
          NullValueKey = 46
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit48: TDBEdit
          Left = 724
          Top = 12
          Width = 59
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'tamanho'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 3
        end
        object btnref: TXiButton
          Left = 798
          Top = 10
          Width = 136
          Height = 23
          Hint = 'Atualiza Totais'
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
          Spacing = 4
          TransparentGlyph = True
          Gradient = True
          HotTrack = True
          Caption = 'Gerar Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnrefClick
        end
        object DBEdit12: TDBEdit
          Left = 86
          Top = 49
          Width = 100
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'referencia'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 5
        end
      end
      object DBEdit13: TDBEdit
        Left = 646
        Top = 37
        Width = 39
        Height = 19
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'unidade'
        DataSource = D
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Ficha T'#233'cnica'
      ImageIndex = 3
      DesignSize = (
        975
        557)
      object Bevel2: TBevel
        Left = 3
        Top = 39
        Width = 514
        Height = 511
        Anchors = [akLeft, akTop, akBottom]
        Shape = bsFrame
      end
      object Bevel3: TBevel
        Left = 523
        Top = 39
        Width = 440
        Height = 511
        Anchors = [akLeft, akTop, akRight, akBottom]
        Shape = bsFrame
      end
      object Label6: TLabel
        Left = 11
        Top = 43
        Width = 68
        Height = 22
        Caption = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 11
        Top = 86
        Width = 37
        Height = 18
        Caption = 'Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 625
        Top = 95
        Width = 65
        Height = 18
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 532
        Top = 95
        Width = 46
        Height = 18
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 145
        Top = 86
        Width = 37
        Height = 18
        Caption = 'Tempo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 256
        Top = 86
        Width = 49
        Height = 18
        Caption = 'Custo R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 5
        Top = 7
        Width = 74
        Height = 24
        AutoSize = True
        DataField = 'Descricao'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 273
        Top = 520
        Width = 104
        Height = 20
        Anchors = [akLeft, akBottom]
        Caption = 'Total Processos'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 686
        Top = 520
        Width = 137
        Height = 20
        Anchors = [akRight, akBottom]
        Caption = 'Total Mat'#233'ria-Prima'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 760
        Top = 11
        Width = 76
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Custo Total'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object rdTipo: TRadioGroup
        Left = 532
        Top = 41
        Width = 288
        Height = 31
        Caption = 'Tipo'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Mat'#233'ria-prima'
          'Semi acabado')
        TabOrder = 18
      end
      object grProc: TCheckDBGrid
        Left = 11
        Top = 134
        Width = 494
        Height = 380
        Anchors = [akLeft, akTop, akBottom]
        Color = clWhite
        Ctl3D = True
        DataSource = dProc
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = grProcDrawColumnCell
        OnKeyDown = grProcKeyDown
        OnKeyPress = grProcKeyPress
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 160
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Ordem'
            Width = 45
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Tempo'
            Width = 60
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Ultimo'
            Title.Caption = #218'ltimo'
            Width = 42
            Visible = True
            Check = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Depende_Ant'
            Title.Caption = 'Dep. Ant.'
            Width = 60
            Visible = True
            Check = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Custo'
            Width = 90
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object CheckDBGrid4: TCheckDBGrid
        Left = 532
        Top = 145
        Width = 422
        Height = 369
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clWhite
        Ctl3D = True
        DataSource = dProcItem
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = CheckDBGrid4CellClick
        OnKeyDown = CheckDBGrid4KeyDown
        OnKeyPress = CheckDBGrid4KeyPress
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'tipo'
            ReadOnly = True
            Title.Caption = 'Tipo'
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'descricao'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o'
            Width = 181
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'Qtde'
            Width = 131
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'Un'
            Title.Caption = 'UN'
            Width = 26
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'precocompra'
            ReadOnly = True
            Title.Caption = 'R$ Unit'#225'rio'
            Width = 135
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'tot'
            Title.Caption = 'R$ Total'
            Width = 132
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object btExcluirP: TXiButton
        Left = 473
        Top = 94
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
        TabOrder = 6
        TabStop = False
        OnClick = btExcluirPClick
      end
      object btExcluirI: TXiButton
        Left = 922
        Top = 103
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
        Anchors = [akTop, akRight]
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = btExcluirIClick
      end
      object edCod: TEdit
        Left = 532
        Top = 74
        Width = 67
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnExit = edCodExit
        OnKeyPress = edCodKeyPress
      end
      object EdNom: TEdit
        Left = 600
        Top = 74
        Width = 354
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        OnChange = EdNomChange
        OnKeyDown = EdNomKeyDown
      end
      object btAddP: TXiButton
        Left = 440
        Top = 94
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
        TabOrder = 4
        OnClick = btAddPClick
      end
      object cbProcesso: TComboBox
        Left = 11
        Top = 63
        Width = 368
        Height = 24
        BevelKind = bkFlat
        Style = csDropDownList
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = cbProcessoChange
      end
      object ckUltimo: TCheckBox
        Left = 381
        Top = 57
        Width = 61
        Height = 17
        TabStop = False
        Caption = #218'ltimo'
        TabOrder = 15
      end
      object edTempo: TMaskEdit
        Left = 146
        Top = 102
        Width = 98
        Height = 22
        Ctl3D = False
        EditMask = '!##:##:##;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '  :  :  '
        OnKeyPress = edTempoKeyPress
      end
      object edOrdem: TMaskEdit
        Left = 11
        Top = 102
        Width = 126
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = ''
      end
      object edCusto: TMaskEdit
        Left = 250
        Top = 102
        Width = 123
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = ''
        OnKeyPress = edCustoKeyPress
      end
      object edQtd: TMaskEdit
        Left = 625
        Top = 111
        Width = 129
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Text = ''
        OnKeyPress = edQtdKeyPress
      end
      object cbUn: TComboBox
        Left = 532
        Top = 110
        Width = 68
        Height = 24
        BevelKind = bkFlat
        Style = csDropDownList
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object BtAddPi: TXiButton
        Left = 888
        Top = 103
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
        Anchors = [akTop, akRight]
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = BtAddPiClick
      end
      object gdPesq: TDBGrid
        Left = 834
        Top = 174
        Width = 485
        Height = 226
        Ctl3D = True
        DataSource = DM.dPesq
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
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
            FieldName = 'id'
            Title.Caption = 'C'#243'digo'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Descri'#231#227'o'
            Width = 331
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tp'
            Visible = True
          end>
      end
      object DBEdit3: TDBEdit
        Left = 385
        Top = 523
        Width = 120
        Height = 19
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 13565436
        Ctl3D = False
        DataField = 'totProcesso'
        DataSource = D
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 16
      end
      object DBEdit4: TDBEdit
        Left = 834
        Top = 520
        Width = 120
        Height = 19
        Anchors = [akRight, akBottom]
        CharCase = ecUpperCase
        Color = 13565436
        Ctl3D = False
        DataField = 'totMP'
        DataSource = D
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
      end
      object ckAnt: TCheckBox
        Left = 381
        Top = 73
        Width = 137
        Height = 17
        TabStop = False
        Caption = 'Depende do anterior'
        TabOrder = 19
      end
      object DBEdit10: TDBEdit
        Left = 843
        Top = 14
        Width = 120
        Height = 19
        Anchors = [akTop, akRight]
        CharCase = ecUpperCase
        Color = 13565436
        Ctl3D = False
        DataField = 'CustoTotal'
        DataSource = D
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 20
      end
    end
  end
  object edRef: TEdit [6]
    Left = 899
    Top = 47
    Width = 88
    Height = 24
    Anchors = [akTop, akRight]
    BevelKind = bkFlat
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = edRefChange
  end
  inherited EdPesq: TEdit [7]
    Left = 80
    Width = 726
    ExplicitLeft = 80
    ExplicitWidth = 726
  end
  inherited ImageList1: TImageList
    Left = 728
    Top = 11
  end
  inherited D: TDataSource
    Left = 520
    Top = 0
  end
  inherited ActionList1: TActionList
    Left = 696
    Top = 11
  end
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    OnNewRecord = TNewRecord
    SQL.Strings = (
      
        'select semi_acabado.*, concat(grupo.id,'#39' - '#39', grupo.descricao) d' +
        'esgrupo,'
      'concat(cor.id,'#39' - '#39', cor.descricao) descor'
      'from semi_acabado'
      'left join cor on cor.id = semi_acabado.idcor'
      'left join grupo on grupo.id = semi_acabado.idgrupo'
      
        'where  ((:p = '#39'T'#39') or ( semi_acabado.descricao like :pesq or cod' +
        '_manual like :pesq  ))'
      'and ((:refB = '#39'T'#39') or (semi_acabado.referencia_base = :refB)) '
      'order by descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'refB'
        ParamType = ptUnknown
      end>
    Left = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'refB'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object TDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object Tqtdestoque: TFloatField
      FieldName = 'qtdestoque'
      DisplayFormat = '###,###,###,##0'
    end
    object Tcod_Manual: TIntegerField
      FieldName = 'cod_Manual'
    end
    object TtotProcesso: TFloatField
      FieldName = 'totProcesso'
      DisplayFormat = '#,###,##0.0000000'
    end
    object TtotMP: TFloatField
      FieldName = 'totMP'
      DisplayFormat = '#,###,##0.0000000'
    end
    object Test_minimo: TFloatField
      FieldName = 'est_minimo'
      DisplayFormat = '###,###,###,##0'
    end
    object TNCM: TWideStringField
      FieldName = 'NCM'
    end
    object Tcest: TWideStringField
      FieldName = 'cest'
      Size = 10
    end
    object TCustoTotal: TFloatField
      FieldName = 'CustoTotal'
      DisplayFormat = '#,###,##0.0000000'
    end
    object Tmultiplo: TFloatField
      FieldName = 'multiplo'
      DisplayFormat = '#,###,##0.0000000'
    end
    object Treferencia_base: TWideStringField
      FieldName = 'referencia_base'
    end
    object Ttamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 5
    end
    object Tidcor: TIntegerField
      FieldName = 'idcor'
    end
    object Tidgrupo: TIntegerField
      FieldName = 'idgrupo'
    end
    object Treferencia: TWideStringField
      FieldName = 'referencia'
    end
    object Tdesgrupo: TWideStringField
      FieldName = 'desgrupo'
      ReadOnly = True
      Size = 115
    end
    object Tdescor: TWideStringField
      FieldName = 'descor'
      ReadOnly = True
      Size = 115
    end
    object Tunidade: TWideStringField
      FieldName = 'unidade'
      Size = 10
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM semi_acabado'
      'WHERE'
      '  semi_acabado.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO semi_acabado'
      
        '  (Id, Descricao, qtdestoque, cod_Manual, NCM, barras, Preco, Pr' +
        'ecoCompra, '
      
        '   Icms, PIS, pPIS, COFINS, pCOFINS, IPI, pIPI, csosn, cfop, cfo' +
        'p_fora, '
      
        '   margem, unidade, ex, totProcesso, totMP, est_minimo, cest, Cu' +
        'stoTotal, '
      
        '   multiplo, referencia_base, tamanho, idcor, idgrupo, referenci' +
        'a)'
      'VALUES'
      
        '  (:Id, :Descricao, :qtdestoque, :cod_Manual, :NCM, :barras, :Pr' +
        'eco, :PrecoCompra, '
      
        '   :Icms, :PIS, :pPIS, :COFINS, :pCOFINS, :IPI, :pIPI, :csosn, :' +
        'cfop, :cfop_fora, '
      
        '   :margem, :unidade, :ex, :totProcesso, :totMP, :est_minimo, :c' +
        'est, :CustoTotal, '
      
        '   :multiplo, :referencia_base, :tamanho, :idcor, :idgrupo, :ref' +
        'erencia)')
    ModifySQL.Strings = (
      'UPDATE semi_acabado SET'
      '  Id = :Id,'
      '  Descricao = :Descricao,'
      '  qtdestoque = :qtdestoque,'
      '  cod_Manual = :cod_Manual,'
      '  NCM = :NCM,'
      '  barras = :barras,'
      '  Preco = :Preco,'
      '  PrecoCompra = :PrecoCompra,'
      '  Icms = :Icms,'
      '  PIS = :PIS,'
      '  pPIS = :pPIS,'
      '  COFINS = :COFINS,'
      '  pCOFINS = :pCOFINS,'
      '  IPI = :IPI,'
      '  pIPI = :pIPI,'
      '  csosn = :csosn,'
      '  cfop = :cfop,'
      '  cfop_fora = :cfop_fora,'
      '  margem = :margem,'
      '  unidade = :unidade,'
      '  ex = :ex,'
      '  totProcesso = :totProcesso,'
      '  totMP = :totMP,'
      '  est_minimo = :est_minimo,'
      '  cest = :cest,'
      '  CustoTotal = :CustoTotal,'
      '  multiplo = :multiplo,'
      '  referencia_base = :referencia_base,'
      '  tamanho = :tamanho,'
      '  idcor = :idcor,'
      '  idgrupo = :idgrupo,'
      '  referencia = :referencia'
      'WHERE'
      '  semi_acabado.Id = :OLD_Id')
    Left = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtdestoque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_Manual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'barras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Preco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PrecoCompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Icms'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pPIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COFINS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pCOFINS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pIPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'csosn'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfop_fora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'margem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totProcesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_minimo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cest'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoTotal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'multiplo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'referencia_base'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tamanho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idgrupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object qProc: TZQuery
    Connection = DM.Conex
    AfterOpen = qProcAfterOpen
    AfterScroll = qProcAfterScroll
    UpdateObject = upProc
    BeforePost = qProcBeforePost
    AfterPost = qProcAfterPost
    OnNewRecord = qProcNewRecord
    SQL.Strings = (
      'select processo_SA.* '
      'from processo_SA'
      'where processo_SA.idSemiAcabado = :IDs'
      'order by processo_SA.ordem')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    Left = 560
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    object qProcId: TIntegerField
      FieldName = 'Id'
    end
    object qProcIdProcesso: TIntegerField
      FieldName = 'IdProcesso'
    end
    object qProcDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qProcIdSemiAcabado: TIntegerField
      FieldName = 'IdSemiAcabado'
    end
    object qProcUltimo: TWideStringField
      FieldName = 'Ultimo'
      Size = 1
    end
    object qProcOrdem: TIntegerField
      FieldName = 'Ordem'
    end
    object qProcTempo: TWideStringField
      FieldName = 'Tempo'
      EditMask = '!90:00:00;1;_'
      Size = 32
    end
    object qProcCusto: TFloatField
      FieldName = 'Custo'
      DisplayFormat = '###,###,##0.0000000'
    end
    object qProcDepende_Ant: TWideStringField
      FieldName = 'Depende_Ant'
      Size = 1
    end
  end
  object dProc: TDataSource
    DataSet = qProc
    Left = 626
    Top = 1
  end
  object qProcItem: TZQuery
    Connection = DM.Conex
    UpdateObject = upProcItem
    AfterPost = qProcItemAfterPost
    OnNewRecord = qProcItemNewRecord
    SQL.Strings = (
      'select '
      ' processo_SA_I.*, '
      'case when processo_SA_I.tipo = '#39'M'#39' then '
      '     produto.descricao else sa.descricao end descricao,'
      'case when  processo_SA_I.tipo = '#39'M'#39' then '
      'produto.precocompra else sa.custototal end precocompra,'
      'case when  processo_SA_I.tipo = '#39'M'#39' then '
      
        'coalesce(processo_SA_I.qtde,0) * coalesce(produto.precocompra,0)' +
        ' else'
      
        'coalesce(processo_SA_I.qtde,0) * coalesce(sa.custototal,0) end t' +
        'ot'
      ''
      ''
      'from processo_SA_I'
      
        'left join produto on processo_SA_I.idproduto = produto.id and pr' +
        'oduto.tipo='#39'M'#39
      
        'left join semi_acabado sa on processo_SA_I.idproduto = sa.id and' +
        ' processo_SA_I.tipo='#39'S'#39
      ''
      ''
      ''
      
        'where processo_SA_I.idProcesso_sa > 0 and  processo_SA_I.idProce' +
        'sso_sa = :IDp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDp'
        ParamType = ptUnknown
      end>
    Left = 817
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDp'
        ParamType = ptUnknown
      end>
    object qProcItemId: TIntegerField
      FieldName = 'Id'
    end
    object qProcItemIdProcesso_sa: TIntegerField
      FieldName = 'IdProcesso_sa'
    end
    object qProcItemIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qProcItemQtde: TFloatField
      FieldName = 'Qtde'
      DisplayFormat = '###,###,##0.0000000'
    end
    object qProcItemUn: TWideStringField
      FieldName = 'Un'
      Size = 10
    end
    object qProcItemdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qProcItemprecocompra: TFloatField
      FieldName = 'precocompra'
      DisplayFormat = '#0.0000000'
    end
    object qProcItemtot: TFloatField
      FieldName = 'tot'
      ReadOnly = True
      DisplayFormat = '#0.0000000'
    end
    object qProcItemtipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
  end
  object dProcItem: TDataSource
    DataSet = qProcItem
    Left = 922
    Top = 8
  end
  object qProc2: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select processo.* '
      'from processo'
      'order by descricao'
      '')
    Params = <>
    Left = 906
    Top = 176
    object qProc2Id: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qProc2Descricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object dProc2: TDataSource
    DataSet = qProc2
    Left = 946
    Top = 176
  end
  object upProcItem: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM processo_SA_I'
      'WHERE'
      '  processo_SA_I.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO processo_SA_I'
      '  (Id, IdProcesso_sa, IdProduto, Qtde, Un, tipo)'
      'VALUES'
      '  (:Id, :IdProcesso_sa, :IdProduto, :Qtde, :Un, :tipo)')
    ModifySQL.Strings = (
      'UPDATE processo_SA_I SET'
      '  Id = :Id,'
      '  IdProcesso_sa = :IdProcesso_sa,'
      '  IdProduto = :IdProduto,'
      '  Qtde = :Qtde,'
      '  Un = :Un,'
      '  tipo = :tipo'
      'WHERE'
      '  processo_SA_I.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 874
    Top = 65535
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProcesso_sa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Un'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object upProc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM processo_SA'
      'WHERE'
      
        '  ((processo_SA.Id IS NULL AND :OLD_Id IS NULL) OR (processo_SA.' +
        'Id = :OLD_Id))')
    InsertSQL.Strings = (
      'INSERT INTO processo_SA'
      
        '  (Id, IdProcesso, Descricao, IdSemiAcabado, Ultimo, Ordem, Temp' +
        'o, Custo, Depende_Ant)'
      'VALUES'
      
        '  (:Id, :IdProcesso, :Descricao, :IdSemiAcabado, :Ultimo, :Ordem' +
        ', :Tempo, '
      '   :Custo, :Depende_Ant)')
    ModifySQL.Strings = (
      'UPDATE processo_SA SET'
      '  Id = :Id,'
      '  IdProcesso = :IdProcesso,'
      '  Descricao = :Descricao,'
      '  IdSemiAcabado = :IdSemiAcabado,'
      '  Ultimo = :Ultimo,'
      '  Ordem = :Ordem,'
      '  Tempo = :Tempo,'
      '  Custo = :Custo,'
      '  Depende_Ant = :Depende_Ant'
      'WHERE'
      
        '  ((processo_SA.Id IS NULL AND :OLD_Id IS NULL) OR (processo_SA.' +
        'Id = :OLD_Id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 594
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProcesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdSemiAcabado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ultimo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tempo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Custo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Depende_Ant'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object qNCM: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      ' *'
      'from clasf'
      'order by ncm')
    Params = <>
    Left = 822
    Top = 375
    object qNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNCMNCM: TWideStringField
      FieldName = 'NCM'
    end
  end
  object dNCM: TDataSource
    DataSet = qNCM
    Left = 857
    Top = 375
  end
  object qCor: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select cor.id, concat(cor.id, '#39' - '#39',cor.descricao) descricao '
      'from cor'
      'order by 2')
    Params = <>
    Left = 648
    Top = 404
    object IntegerField1: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dCor: TDataSource
    DataSet = qCor
    Left = 687
    Top = 412
  end
  object qGrupo: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'select grupo.id, concat(grupo.id,'#39' - '#39',grupo.descricao) descrica' +
        'o '
      'from grupo'
      'order by 2')
    Params = <>
    Left = 656
    Top = 348
    object qGrupoid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qGrupodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dGrupo: TDataSource
    DataSet = qGrupo
    Left = 695
    Top = 356
  end
end
