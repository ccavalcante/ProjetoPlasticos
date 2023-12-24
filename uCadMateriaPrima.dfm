inherited fCadMateriaPrima: TfCadMateriaPrima
  Left = 225
  Top = 183
  Caption = 'Mat'#233'ria-Prima'
  ClientHeight = 605
  ClientWidth = 956
  OldCreateOrder = True
  ExplicitWidth = 972
  ExplicitHeight = 644
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 956
    Height = 564
    ExplicitWidth = 956
    ExplicitHeight = 564
  end
  inherited ToolBar1: TToolBar
    Width = 956
    ExplicitWidth = 956
    object ToolButton3: TToolButton
      Left = 379
      Top = 0
      Width = 56
      Caption = 'ToolButton3'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object Panel1: TPanel
      Left = 435
      Top = 0
      Width = 110
      Height = 31
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object ckMaster: TCheckBox
        Left = 0
        Top = 0
        Width = 97
        Height = 31
        Align = alLeft
        Caption = 'Caixa Master'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = ckMasterClick
      end
    end
  end
  inherited EdPesq: TEdit
    Left = 80
    Width = 679
    ExplicitLeft = 80
    ExplicitWidth = 679
  end
  inherited PageControl1: TPageControl
    Width = 941
    Height = 522
    ExplicitWidth = 941
    ExplicitHeight = 522
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 933
      ExplicitHeight = 494
      inherited DBGrid1: TDBGrid
        Width = 933
        Height = 494
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'barras'
            Title.Caption = 'C'#243'd. Barras'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 341
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtdestoque'
            Title.Caption = 'Qtde Estoque'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'est_seguranca'
            Title.Caption = 'Est. Seguran'#231'a'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'est_minimo'
            Title.Caption = 'Est. M'#237'nimo'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ft_conv_un'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ft_conv_qtde'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ft_conv_2un'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'produzido'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'valor'
            Visible = False
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 933
      ExplicitHeight = 494
      object Bevel1: TBevel
        Left = 15
        Top = 116
        Width = 832
        Height = 53
        Shape = bsFrame
      end
      object Label2: TLabel
        Left = 15
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
        Left = 15
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
      object Label4: TLabel
        Left = 15
        Top = 92
        Width = 91
        Height = 18
        Caption = 'Estoque M'#237'nimo'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 23
        Top = 143
        Width = 57
        Height = 18
        Caption = '1 Unidade'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 163
        Top = 143
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
      object Label8: TLabel
        Left = 332
        Top = 143
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
      object lCPFCNPJ: TLabel
        Left = 15
        Top = 63
        Width = 105
        Height = 18
        Caption = 'Estoque Seguran'#231'a'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 23
        Top = 116
        Width = 290
        Height = 18
        Caption = 'Fator de Convers'#227'o (Divide para entrar no estoque)'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 374
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
        Left = 376
        Top = 13
        Width = 63
        Height = 18
        Caption = 'C'#243'd. Barras'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 15
        Top = 179
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
      object Label14: TLabel
        Left = 191
        Top = 179
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
      object Label16: TLabel
        Left = 336
        Top = 179
        Width = 96
        Height = 18
        Caption = 'Enquad. Legal IPI'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label107: TLabel
        Left = 515
        Top = 179
        Width = 55
        Height = 18
        Caption = 'Tipo Trib.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 18
        Top = 324
        Width = 60
        Height = 18
        Caption = 'Peso Bruto'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 205
        Top = 324
        Width = 72
        Height = 18
        Caption = 'Peso L'#237'quido'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 373
        Top = 92
        Width = 78
        Height = 18
        Caption = 'Pre'#231'o Compra'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 447
        Top = 142
        Width = 133
        Height = 18
        Caption = 'Unidade Medida na NFe'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 15
        Top = 348
        Width = 732
        Height = 35
        Shape = bsFrame
      end
      object Label52: TLabel
        Left = 156
        Top = 356
        Width = 53
        Height = 18
        Caption = 'Altura(m)'
        FocusControl = DBEdit34
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 333
        Top = 356
        Width = 60
        Height = 18
        Caption = 'Largura(m)'
        FocusControl = DBEdit35
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 529
        Top = 357
        Width = 94
        Height = 18
        Caption = 'Comprimento(m)'
        FocusControl = DBEdit36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 13
        Top = 390
        Width = 106
        Height = 18
        Caption = #218'ltimo Fornecedor'
        FocusControl = edFor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 663
        Top = 121
        Width = 93
        Height = 18
        Caption = 'Pre'#231'o Convers'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 663
        Top = 144
        Width = 106
        Height = 18
        Caption = 'Estoque Convers'#227'o'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 15
        Top = 295
        Width = 40
        Height = 18
        Caption = 'Origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 73
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
        Left = 73
        Top = 37
        Width = 585
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'descricao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 129
        Top = 91
        Width = 160
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'est_minimo'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 234
        Top = 140
        Width = 92
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ft_conv_qtde'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit14: TDBEdit
        Left = 129
        Top = 62
        Width = 159
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'est_seguranca'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBComboBox1: TDBComboBox
        Left = 380
        Top = 140
        Width = 63
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ft_conv_2un'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBComboBox2: TDBComboBox
        Left = 82
        Top = 140
        Width = 74
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'ft_conv_un'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 457
        Top = 62
        Width = 201
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'qtdestoque'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 459
        Top = 12
        Width = 199
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'barras'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object cbCF: TDBLookupComboBox
        Left = 46
        Top = 176
        Width = 127
        Height = 21
        Ctl3D = True
        DataField = 'NCM'
        DataSource = D
        KeyField = 'CODIGO'
        ListField = 'CODIGO'
        ListSource = dCF
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit9: TDBEdit
        Left = 224
        Top = 176
        Width = 104
        Height = 21
        DataField = 'cest'
        DataSource = D
        MaxLength = 7
        TabOrder = 13
      end
      object DBEdit11: TDBEdit
        Left = 439
        Top = 176
        Width = 65
        Height = 21
        DataField = 'eIPI'
        DataSource = D
        TabOrder = 14
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 574
        Top = 176
        Width = 94
        Height = 21
        DataField = 'IDTIPO_TRIBUTACAO'
        DataSource = D
        KeyField = 'ID'
        ListField = 'TIPO'
        ListSource = dsTipoTribu
        TabOrder = 15
      end
      object GroupBox1: TGroupBox
        Left = 15
        Top = 201
        Width = 824
        Height = 86
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        object Label21: TLabel
          Left = 513
          Top = 9
          Width = 60
          Height = 18
          Caption = '% Redu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 6
          Top = 34
          Width = 20
          Height = 18
          Caption = 'CST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 6
          Top = 58
          Width = 29
          Height = 18
          Caption = 'CFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 658
          Top = 9
          Width = 74
          Height = 18
          Caption = '% Margem ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label49: TLabel
          Left = 181
          Top = 11
          Width = 43
          Height = 13
          Caption = 'CSOSN'
        end
        object Label57: TLabel
          Left = 371
          Top = 35
          Width = 46
          Height = 13
          Caption = 'COFINS'
          FocusControl = DBEdit51
        end
        object Label56: TLabel
          Left = 203
          Top = 36
          Width = 21
          Height = 13
          Caption = 'PIS'
          FocusControl = DBEdit50
        end
        object Label58: TLabel
          Left = 358
          Top = 59
          Width = 59
          Height = 13
          Caption = '% COFINS'
          FocusControl = DBEdit53
        end
        object Label59: TLabel
          Left = 190
          Top = 59
          Width = 34
          Height = 13
          Caption = '% PIS'
          FocusControl = DBEdit52
        end
        object Label60: TLabel
          Left = 694
          Top = 35
          Width = 38
          Height = 18
          Caption = '% MVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label61: TLabel
          Left = 556
          Top = 36
          Width = 17
          Height = 13
          Caption = 'IPI'
          FocusControl = DBEdit55
        end
        object Label62: TLabel
          Left = 543
          Top = 61
          Width = 30
          Height = 13
          Caption = '% IPI'
          FocusControl = DBEdit56
        end
        object Label63: TLabel
          Left = 322
          Top = 11
          Width = 95
          Height = 13
          Caption = 'CSOSN (Cr'#233'dito)'
        end
        object Label23: TLabel
          Left = 7
          Top = 10
          Width = 26
          Height = 18
          Caption = 'ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit15: TDBEdit
          Left = 577
          Top = 9
          Width = 60
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'REDUCAO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBEdit27: TDBEdit
          Left = 737
          Top = 8
          Width = 75
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'MARGEMST'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 60
          Top = 33
          Width = 116
          Height = 21
          Ctl3D = True
          DataField = 'IDSTRIB'
          DataSource = D
          KeyField = 'ID'
          ListField = 'DESCR'
          ListSource = dSit
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit51: TDBEdit
          Left = 423
          Top = 33
          Width = 81
          Height = 19
          DataField = 'COFINS'
          DataSource = D
          TabOrder = 7
        end
        object DBEdit50: TDBEdit
          Left = 230
          Top = 33
          Width = 81
          Height = 19
          DataField = 'PIS'
          DataSource = D
          TabOrder = 4
        end
        object DBEdit52: TDBEdit
          Left = 230
          Top = 58
          Width = 81
          Height = 19
          DataField = 'PPIS'
          DataSource = D
          TabOrder = 5
        end
        object DBEdit53: TDBEdit
          Left = 423
          Top = 58
          Width = 81
          Height = 19
          DataField = 'PCOFINS'
          DataSource = D
          TabOrder = 8
        end
        object DBEdit54: TDBEdit
          Left = 737
          Top = 33
          Width = 75
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'MVA'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 13
        end
        object DBEdit55: TDBEdit
          Left = 577
          Top = 34
          Width = 60
          Height = 19
          DataField = 'CODIPI'
          DataSource = D
          TabOrder = 10
        end
        object DBEdit56: TDBEdit
          Left = 577
          Top = 58
          Width = 60
          Height = 19
          DataField = 'IPI'
          DataSource = D
          TabOrder = 11
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 60
          Top = 57
          Width = 117
          Height = 21
          Ctl3D = True
          DataField = 'CFOP'
          DataSource = D
          KeyField = 'CFOP'
          ListField = 'CFOP'
          ListSource = dCFOP
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBComboBox3: TDBComboBox
          Left = 230
          Top = 8
          Width = 81
          Height = 21
          Style = csDropDownList
          BevelKind = bkSoft
          Ctl3D = False
          DataField = 'CSOSN'
          DataSource = D
          Items.Strings = (
            '101'
            '102'
            '103'
            '201'
            '202'
            '203'
            '300'
            '400'
            '500'
            '900')
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBComboBox4: TDBComboBox
          Left = 423
          Top = 8
          Width = 81
          Height = 21
          Style = csDropDownList
          BevelKind = bkSoft
          Ctl3D = False
          DataField = 'CSOSN2'
          DataSource = D
          Items.Strings = (
            '101'
            '102'
            '103'
            '201'
            '202'
            '203'
            '300'
            '400'
            '500'
            '900')
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit16: TDBEdit
          Left = 60
          Top = 9
          Width = 117
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ICMS'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object DBEdit5: TDBEdit
        Left = 85
        Top = 324
        Width = 106
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'pesobru'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit7: TDBEdit
        Left = 288
        Top = 324
        Width = 121
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'pesoLiq'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 18
      end
      object DBEdit10: TDBEdit
        Left = 457
        Top = 91
        Width = 201
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PrecoCompra'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit12: TDBEdit
        Left = 586
        Top = 139
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        DataField = 'unidade_nfe'
        DataSource = D
        TabOrder = 10
      end
      object DBCheckBox1: TDBCheckBox
        Left = 18
        Top = 358
        Width = 114
        Height = 17
        Caption = 'Caixa Master'
        DataField = 'Embalagem'
        DataSource = D
        TabOrder = 19
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object DBEdit34: TDBEdit
        Left = 211
        Top = 356
        Width = 86
        Height = 21
        DataField = 'alturaCx'
        DataSource = D
        TabOrder = 20
      end
      object DBEdit35: TDBEdit
        Left = 394
        Top = 356
        Width = 96
        Height = 21
        DataField = 'larguraCx'
        DataSource = D
        TabOrder = 21
      end
      object DBEdit36: TDBEdit
        Left = 625
        Top = 356
        Width = 96
        Height = 21
        DataField = 'comprimentoCx'
        DataSource = D
        TabOrder = 22
      end
      object DBGrid4: TDBGrid
        Left = 15
        Top = 413
        Width = 532
        Height = 73
        Ctl3D = True
        DataSource = dForPro
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 23
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        OnKeyPress = DBGrid4KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'IDFORNECEDOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Caption = 'Cod.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fantasia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Caption = 'Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 340
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_for'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Caption = 'Cod. Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'qtd_conversao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Caption = 'Qtde Convers'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = False
          end>
      end
      object edFor: TDBEdit
        Left = 124
        Top = 388
        Width = 71
        Height = 19
        Ctl3D = False
        DataField = 'idfornecedor'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 24
        OnExit = edForExit
      end
      object edNomFor: TDBEdit
        Left = 201
        Top = 388
        Width = 349
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Nomefor'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 25
        OnChange = edNomForChange
        OnKeyDown = edNomForKeyDown
      end
      object gdFor: TDBGrid
        Left = 753
        Top = 297
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
        TabOrder = 26
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        Visible = False
        OnExit = acCancelarExecute
        OnKeyPress = gdForKeyPress
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
      object DBCheckBox2: TDBCheckBox
        Left = 673
        Top = 13
        Width = 114
        Height = 17
        Caption = 'Ativo'
        DataField = 'ativo'
        DataSource = D
        TabOrder = 27
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object DBEdit13: TDBEdit
        Left = 771
        Top = 118
        Width = 72
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PrecoConver'
        DataSource = D
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 28
      end
      object DBEdit17: TDBEdit
        Left = 771
        Top = 143
        Width = 72
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'EstoqueConver'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 29
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 61
        Top = 293
        Width = 651
        Height = 24
        Ctl3D = True
        DataField = 'IDORIGEM'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        KeyField = 'IDORIGEM'
        ListField = 'DESCRI'
        ListSource = DM.dOrigem
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
    end
    object TabSheet3: TTabSheet
      Caption = #218'ltimas Compras'
      ImageIndex = 2
      DesignSize = (
        933
        494)
      object Label20: TLabel
        Left = 17
        Top = 7
        Width = 49
        Height = 18
        Caption = 'Produto:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 71
        Top = 4
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
      object DBGrid2: TDBGrid
        Left = 17
        Top = 25
        Width = 904
        Height = 449
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 15269887
        Ctl3D = True
        DataSource = dCom
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fantasia'
            Title.Caption = 'Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 429
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'unitario'
            Title.Caption = 'R$ Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Caption = 'R$ Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 126
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Produtos que utilizam'
      ImageIndex = 3
      DesignSize = (
        933
        494)
      object Label17: TLabel
        Left = 16
        Top = 9
        Width = 49
        Height = 18
        Caption = 'Produto:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 70
        Top = 6
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
      object DBGrid3: TDBGrid
        Left = 16
        Top = 33
        Width = 904
        Height = 449
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 15269887
        Ctl3D = True
        DataSource = dP
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'barras'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Barras'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            Title.Caption = 'Descri'#231#227'o'
            Width = 400
            Visible = True
          end>
      end
    end
  end
  object rdAtivo: TRadioGroup [6]
    Left = 764
    Top = 38
    Width = 185
    Height = 34
    Anchors = [akTop, akRight]
    Caption = 'Status'
    Columns = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ItemIndex = 1
    Items.Strings = (
      'Todos'
      'Ativos'
      'Inativos')
    ParentFont = False
    TabOrder = 3
    OnClick = rdAtivoClick
  end
  inherited ImageList1: TImageList
    Left = 880
    Top = 200
  end
  inherited D: TDataSource
    Left = 840
    Top = 160
  end
  inherited ActionList1: TActionList
    Left = 896
    Top = 152
  end
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select produto.*, fornecedor.nome nomefor, '
      
        'coalesce(produto.ft_conv_qtde, 1)*produto.precocompra PrecoConve' +
        'r,'
      
        'coalesce(produto.ft_conv_qtde, 1)*produto.qtdestoque EstoqueConv' +
        'er'
      'from produto'
      'left join fornecedor on fornecedor.id = produto.idfornecedor'
      'where produto.ex = 0 and  produto.tipo = '#39'M'#39' '
      
        '     and  ( produto.descricao like :pesq or produto.cod_manual  ' +
        'like :pesq   )'
      '     and ( (:cx = 0) or (produto.embalagem = '#39'S'#39') ) '
      '     and ((:st = '#39'T'#39') or (produto.ativo = :st))'
      'order by produto.descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'st'
        ParamType = ptUnknown
      end>
    Left = 736
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'st'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object Tdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object Ttipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object Test_seguranca: TFloatField
      FieldName = 'est_seguranca'
      DisplayFormat = '###,###,##0.0000000'
    end
    object Test_minimo: TFloatField
      FieldName = 'est_minimo'
      DisplayFormat = '###,###,##0.0000000'
    end
    object Tft_conv_un: TWideStringField
      FieldName = 'ft_conv_un'
      Size = 10
    end
    object Tft_conv_qtde: TFloatField
      FieldName = 'ft_conv_qtde'
      DisplayFormat = '###,###,##0.0000000'
    end
    object Tft_conv_2un: TWideStringField
      FieldName = 'ft_conv_2un'
      Size = 10
    end
    object Tproduzido: TWideStringField
      FieldName = 'produzido'
      Size = 1
    end
    object Tbarras: TWideStringField
      FieldName = 'barras'
    end
    object Treferencia: TWideStringField
      FieldName = 'referencia'
    end
    object Tvalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,###,##0.00000'
    end
    object Tqtdestoque: TFloatField
      FieldName = 'qtdestoque'
      DisplayFormat = '###,###,##0.0000000'
    end
    object Tcod_Manual: TIntegerField
      FieldName = 'cod_Manual'
    end
    object TCusto_montagem: TFloatField
      FieldName = 'Custo_montagem'
    end
    object Tcest: TWideStringField
      FieldName = 'cest'
      Size = 10
    end
    object TNCM: TWideStringField
      FieldName = 'NCM'
      Size = 10
    end
    object TeIPI: TWideStringField
      FieldName = 'eIPI'
      Size = 10
    end
    object Tobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object TPrecoCompra: TFloatField
      FieldName = 'PrecoCompra'
      DisplayFormat = '#0.000'
    end
    object TIcms: TFloatField
      FieldName = 'Icms'
    end
    object TPIS: TWideStringField
      FieldName = 'PIS'
      Size = 5
    end
    object TpPIS: TFloatField
      FieldName = 'pPIS'
    end
    object TCOFINS: TWideStringField
      FieldName = 'COFINS'
      Size = 5
    end
    object TpCOFINS: TFloatField
      FieldName = 'pCOFINS'
    end
    object TIPI: TWideStringField
      FieldName = 'IPI'
      Size = 5
    end
    object TpIPI: TFloatField
      FieldName = 'pIPI'
    end
    object Tcsosn: TWideStringField
      FieldName = 'csosn'
      Size = 3
    end
    object Tcfop: TWideStringField
      FieldName = 'cfop'
      Size = 4
    end
    object Tcfop_fora: TWideStringField
      FieldName = 'cfop_fora'
      Size = 4
    end
    object Tmargem: TFloatField
      FieldName = 'margem'
    end
    object Tex: TIntegerField
      FieldName = 'ex'
      Required = True
    end
    object Tidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object TRoyalties: TFloatField
      FieldName = 'Royalties'
    end
    object TIDSTRIB: TIntegerField
      FieldName = 'IDSTRIB'
    end
    object TREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object TMARGEMST: TFloatField
      FieldName = 'MARGEMST'
    end
    object TST: TFloatField
      FieldName = 'ST'
    end
    object TST2: TFloatField
      FieldName = 'ST2'
    end
    object TCSOSN2: TWideStringField
      FieldName = 'CSOSN2'
      Size = 10
    end
    object TMVA: TFloatField
      FieldName = 'MVA'
    end
    object TCODIPI: TWideStringField
      FieldName = 'CODIPI'
      Size = 10
    end
    object TIDTIPO_TRIBUTACAO: TIntegerField
      FieldName = 'IDTIPO_TRIBUTACAO'
    end
    object TIDORIGEM: TIntegerField
      FieldName = 'IDORIGEM'
    end
    object Tunidade_nfe: TWideStringField
      FieldName = 'unidade_nfe'
      Required = True
      Size = 10
    end
    object nome: TFloatField
      FieldName = 'pesoLiq'
    end
    object Tpesobru: TFloatField
      FieldName = 'pesobru'
    end
    object TEmbalagem: TWideStringField
      FieldName = 'Embalagem'
      Size = 1
    end
    object TalturaCx: TFloatField
      FieldName = 'alturaCx'
      DisplayFormat = '#0.0000000'
    end
    object TlarguraCx: TFloatField
      FieldName = 'larguraCx'
      DisplayFormat = '#0.0000000'
    end
    object TcomprimentoCx: TFloatField
      FieldName = 'comprimentoCx'
      DisplayFormat = '#0.0000000'
    end
    object Tnomefor: TWideStringField
      FieldName = 'nomefor'
      Size = 80
    end
    object Tativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object Tvalor2: TFloatField
      FieldName = 'valor2'
    end
    object Tmultiplo: TFloatField
      FieldName = 'multiplo'
    end
    object Tcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object TDUN14: TWideStringField
      FieldName = 'DUN14'
    end
    object TCustoProcesso: TFloatField
      FieldName = 'CustoProcesso'
    end
    object TCustoMP: TFloatField
      FieldName = 'CustoMP'
    end
    object TCustoproducao: TFloatField
      FieldName = 'Custoproducao'
    end
    object TCustoOperacional: TFloatField
      FieldName = 'CustoOperacional'
    end
    object TCustoFinal: TFloatField
      FieldName = 'CustoFinal'
    end
    object TVendaSugerido: TFloatField
      FieldName = 'VendaSugerido'
    end
    object TIdCxMaster: TIntegerField
      FieldName = 'IdCxMaster'
    end
    object Taltura: TFloatField
      FieldName = 'altura'
    end
    object Tlargura: TFloatField
      FieldName = 'largura'
    end
    object Tcomprimento: TFloatField
      FieldName = 'comprimento'
    end
    object Tidweb: TIntegerField
      FieldName = 'idweb'
    end
    object Tsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object TcustoCxMaster: TFloatField
      FieldName = 'custoCxMaster'
    end
    object TmaxDesconto: TFloatField
      FieldName = 'maxDesconto'
    end
    object Tcst: TWideStringField
      FieldName = 'cst'
      Size = 10
    end
    object Tidgrupo: TIntegerField
      FieldName = 'idgrupo'
    end
    object Tmateria_prima: TWideStringField
      FieldName = 'materia_prima'
      Required = True
      Size = 1
    end
    object Tdivisor: TFloatField
      FieldName = 'divisor'
    end
    object Tnao_vender_web: TWideStringField
      FieldName = 'nao_vender_web'
      Required = True
      Size = 1
    end
    object Tbx_item_ficha_venda: TWideStringField
      FieldName = 'bx_item_ficha_venda'
      Required = True
      Size = 1
    end
    object Ttotprocesso: TFloatField
      FieldName = 'totprocesso'
    end
    object Ttotmp: TFloatField
      FieldName = 'totmp'
    end
    object Tcusto_total: TFloatField
      FieldName = 'custo_total'
    end
    object TtotTempo: TWideStringField
      FieldName = 'totTempo'
    end
    object Tidcor: TIntegerField
      FieldName = 'idcor'
    end
    object Ttamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 5
    end
    object Treferencia_base: TWideStringField
      FieldName = 'referencia_base'
    end
    object Tvolume1: TWideStringField
      FieldName = 'volume1'
    end
    object Tvolume2: TWideStringField
      FieldName = 'volume2'
    end
    object TPrecoConver: TFloatField
      FieldName = 'PrecoConver'
      ReadOnly = True
      DisplayFormat = '#0.000'
    end
    object TEstoqueConver: TFloatField
      FieldName = 'EstoqueConver'
      ReadOnly = True
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM produto'
      'WHERE'
      '  produto.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO produto'
      
        '  (Id, descricao, tipo, est_seguranca, est_minimo, ft_conv_un, f' +
        't_conv_qtde, '
      
        '   ft_conv_2un, produzido, barras, referencia, valor, Custo_mont' +
        'agem, cod_Manual, '
      
        '   cest, NCM, eIPI, obs, PrecoCompra, Icms, PIS, pPIS, COFINS, p' +
        'COFINS, '
      
        '   IPI, pIPI, csosn, cfop, cfop_fora, margem, ex, idfornecedor, ' +
        'Royalties, '
      
        '   IDSTRIB, REDUCAO, MARGEMST, ST, ST2, CSOSN2, MVA, CODIPI, IDT' +
        'IPO_TRIBUTACAO, '
      
        '   IDORIGEM, unidade_nfe, valor2, pesoLiq, pesobru, multiplo, cu' +
        'bagem, '
      
        '   DUN14, CustoProcesso, CustoMP, Custoproducao, CustoOperaciona' +
        'l, CustoFinal, '
      
        '   VendaSugerido, IdCxMaster, Embalagem, altura, largura, compri' +
        'mento, '
      
        '   idweb, sincronizado, custoCxMaster, maxDesconto, cst, idgrupo' +
        ', materia_prima, '
      
        '   divisor, nao_vender_web, alturaCx, larguraCx, comprimentoCx, ' +
        'bx_item_ficha_venda, '
      
        '   totprocesso, totmp, custo_total, ativo, totTempo, idcor, tama' +
        'nho, referencia_base, '
      '   volume1, volume2)'
      'VALUES'
      
        '  (:Id, :descricao, :tipo, :est_seguranca, :est_minimo, :ft_conv' +
        '_un, :ft_conv_qtde, '
      
        '   :ft_conv_2un, :produzido, :barras, :referencia, :valor, :Cust' +
        'o_montagem, '
      
        '   :cod_Manual, :cest, :NCM, :eIPI, :obs, :PrecoCompra, :Icms, :' +
        'PIS, :pPIS, '
      
        '   :COFINS, :pCOFINS, :IPI, :pIPI, :csosn, :cfop, :cfop_fora, :m' +
        'argem, '
      
        '   :ex, :idfornecedor, :Royalties, :IDSTRIB, :REDUCAO, :MARGEMST' +
        ', :ST, '
      
        '   :ST2, :CSOSN2, :MVA, :CODIPI, :IDTIPO_TRIBUTACAO, :IDORIGEM, ' +
        ':unidade_nfe, '
      
        '   :valor2, :pesoLiq, :pesobru, :multiplo, :cubagem, :DUN14, :Cu' +
        'stoProcesso, '
      
        '   :CustoMP, :Custoproducao, :CustoOperacional, :CustoFinal, :Ve' +
        'ndaSugerido, '
      
        '   :IdCxMaster, :Embalagem, :altura, :largura, :comprimento, :id' +
        'web, :sincronizado, '
      
        '   :custoCxMaster, :maxDesconto, :cst, :idgrupo, :materia_prima,' +
        ' :divisor, '
      
        '   :nao_vender_web, :alturaCx, :larguraCx, :comprimentoCx, :bx_i' +
        'tem_ficha_venda, '
      
        '   :totprocesso, :totmp, :custo_total, :ativo, :totTempo, :idcor' +
        ', :tamanho, '
      '   :referencia_base, :volume1, :volume2)')
    ModifySQL.Strings = (
      'UPDATE produto SET'
      '  Id = :Id,'
      '  descricao = :descricao,'
      '  tipo = :tipo,'
      '  est_seguranca = :est_seguranca,'
      '  est_minimo = :est_minimo,'
      '  ft_conv_un = :ft_conv_un,'
      '  ft_conv_qtde = :ft_conv_qtde,'
      '  ft_conv_2un = :ft_conv_2un,'
      '  produzido = :produzido,'
      '  barras = :barras,'
      '  referencia = :referencia,'
      '  valor = :valor,'
      '  Custo_montagem = :Custo_montagem,'
      '  cod_Manual = :cod_Manual,'
      '  cest = :cest,'
      '  NCM = :NCM,'
      '  eIPI = :eIPI,'
      '  obs = :obs,'
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
      '  ex = :ex,'
      '  idfornecedor = :idfornecedor,'
      '  Royalties = :Royalties,'
      '  IDSTRIB = :IDSTRIB,'
      '  REDUCAO = :REDUCAO,'
      '  MARGEMST = :MARGEMST,'
      '  ST = :ST,'
      '  ST2 = :ST2,'
      '  CSOSN2 = :CSOSN2,'
      '  MVA = :MVA,'
      '  CODIPI = :CODIPI,'
      '  IDTIPO_TRIBUTACAO = :IDTIPO_TRIBUTACAO,'
      '  IDORIGEM = :IDORIGEM,'
      '  unidade_nfe = :unidade_nfe,'
      '  valor2 = :valor2,'
      '  pesoLiq = :pesoLiq,'
      '  pesobru = :pesobru,'
      '  multiplo = :multiplo,'
      '  cubagem = :cubagem,'
      '  DUN14 = :DUN14,'
      '  CustoProcesso = :CustoProcesso,'
      '  CustoMP = :CustoMP,'
      '  Custoproducao = :Custoproducao,'
      '  CustoOperacional = :CustoOperacional,'
      '  CustoFinal = :CustoFinal,'
      '  VendaSugerido = :VendaSugerido,'
      '  IdCxMaster = :IdCxMaster,'
      '  Embalagem = :Embalagem,'
      '  altura = :altura,'
      '  largura = :largura,'
      '  comprimento = :comprimento,'
      '  idweb = :idweb,'
      '  sincronizado = :sincronizado,'
      '  custoCxMaster = :custoCxMaster,'
      '  maxDesconto = :maxDesconto,'
      '  cst = :cst,'
      '  idgrupo = :idgrupo,'
      '  materia_prima = :materia_prima,'
      '  divisor = :divisor,'
      '  nao_vender_web = :nao_vender_web,'
      '  alturaCx = :alturaCx,'
      '  larguraCx = :larguraCx,'
      '  comprimentoCx = :comprimentoCx,'
      '  bx_item_ficha_venda = :bx_item_ficha_venda,'
      '  totprocesso = :totprocesso,'
      '  totmp = :totmp,'
      '  custo_total = :custo_total,'
      '  ativo = :ativo,'
      '  totTempo = :totTempo,'
      '  idcor = :idcor,'
      '  tamanho = :tamanho,'
      '  referencia_base = :referencia_base,'
      '  volume1 = :volume1,'
      '  volume2 = :volume2'
      'WHERE'
      '  produto.Id = :OLD_Id')
    Left = 760
    Top = 152
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
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_seguranca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'est_minimo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ft_conv_un'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ft_conv_qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ft_conv_2un'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produzido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'barras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Custo_montagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_Manual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cest'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'eIPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
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
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idfornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Royalties'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDSTRIB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REDUCAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARGEMST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ST2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSOSN2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MVA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTIPO_TRIBUTACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDORIGEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade_nfe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pesoLiq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pesobru'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'multiplo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cubagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DUN14'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoProcesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Custoproducao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoOperacional'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CustoFinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VendaSugerido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCxMaster'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Embalagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'altura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'largura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comprimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'custoCxMaster'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'maxDesconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cst'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idgrupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'materia_prima'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'divisor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nao_vender_web'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'alturaCx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'larguraCx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comprimentoCx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bx_item_ficha_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totprocesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'custo_total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'totTempo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tamanho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'referencia_base'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'volume1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'volume2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dUn: TDataSource
    DataSet = qUn
    Left = 816
    Top = 184
  end
  object qUn: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from UnidMedida'
      'order by sigla')
    Params = <>
    Left = 784
    Top = 168
    object qUnid: TIntegerField
      FieldName = 'id'
    end
    object qUndescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object qUnsigla: TWideStringField
      FieldName = 'sigla'
      Size = 10
    end
  end
  object qCF: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      ' codigo'
      'from ibpt'
      'order by codigo')
    Params = <>
    Left = 50
    Top = 520
    object qCFcodigo: TWideStringField
      FieldName = 'codigo'
    end
  end
  object dCF: TDataSource
    DataSet = qCF
    Left = 85
    Top = 512
  end
  object qCFOP: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select CFOP from NOPER'
      'order by CFOP')
    Params = <>
    Left = 218
    Top = 520
    object qCFOPCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 30
    end
  end
  object dCFOP: TDataSource
    DataSet = qCFOP
    Left = 264
    Top = 528
  end
  object qTipoTribu: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from tipo_tributacao')
    Params = <>
    Left = 402
    Top = 528
    object qTipoTribuID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoTribuTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 100
    end
  end
  object dsTipoTribu: TDataSource
    DataSet = qTipoTribu
    Left = 440
    Top = 512
  end
  object qSit: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select ID, ST Descr'
      'from STRIB')
    Params = <>
    Left = 562
    Top = 536
    object qSitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qSitDescr: TWideStringField
      FieldName = 'Descr'
      Required = True
      Size = 3
    end
  end
  object dSit: TDataSource
    DataSet = qSit
    Left = 584
    Top = 536
  end
  object qCom: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      'compra.id,'
      'compra.data, compra.idfornecedor, '
      'coalesce(fornecedor.fantasia, fornecedor.nome) fantasia,'
      'compra_i.qtd, compra_i.unitario, compra_i.total'
      ''
      'from compra'
      'left join compra_i on compra_i.idcompra = compra.id'
      'left join fornecedor on fornecedor.id = compra.idfornecedor'
      ''
      'where '
      'compra.ex = 0 and'
      'compra_i.idproduto = :id '
      ''
      'order by compra.id desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 592
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qComdata: TDateTimeField
      FieldName = 'data'
    end
    object qComidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object qComfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 150
    end
    object qComqtd: TFloatField
      FieldName = 'qtd'
      DisplayFormat = '###,##0.000'
    end
    object qComunitario: TFloatField
      FieldName = 'unitario'
      DisplayFormat = '###,###,###,##0.000'
    end
    object qComtotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dCom: TDataSource
    DataSet = qCom
    Left = 632
  end
  object qP: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select p.id, p.referencia, p.barras, p.descricao '
      'from produto p'
      'where p.idcxmaster = :id'
      'order by p.descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 768
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qPid: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
      Required = True
    end
    object qPreferencia: TWideStringField
      Alignment = taCenter
      FieldName = 'referencia'
    end
    object qPbarras: TWideStringField
      Alignment = taCenter
      FieldName = 'barras'
    end
    object qPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
  end
  object dP: TDataSource
    DataSet = qP
    Left = 808
    Top = 96
  end
  object qForPro: TZQuery
    Connection = DM.Conex
    UpdateObject = uForPro
    SQL.Strings = (
      'select forpro.*, '
      'fornecedor.fantasia'
      'from forpro'
      'left join fornecedor on fornecedor.id = forpro.idfornecedor'
      ''
      'where forpro.idproduto= :id'
      ''
      'order by forpro.id desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 771
    Top = 511
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qForProID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qForProIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
    object qForProIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object qForProtipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object qForProcod_for: TWideStringField
      FieldName = 'cod_for'
    end
    object qForProqtd_conversao: TFloatField
      FieldName = 'qtd_conversao'
    end
    object qForProfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 150
    end
  end
  object uForPro: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM forpro'
      'WHERE'
      '  forpro.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO forpro'
      '  (ID, IDPRODUTO, IDFORNECEDOR, tipo, cod_for, qtd_conversao)'
      'VALUES'
      
        '  (:ID, :IDPRODUTO, :IDFORNECEDOR, :tipo, :cod_for, :qtd_convers' +
        'ao)')
    ModifySQL.Strings = (
      'UPDATE forpro SET'
      '  ID = :ID,'
      '  IDPRODUTO = :IDPRODUTO,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  tipo = :tipo,'
      '  cod_for = :cod_for,'
      '  qtd_conversao = :qtd_conversao'
      'WHERE'
      '  forpro.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 816
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDPRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idfornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_for'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd_conversao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dForPro: TDataSource
    DataSet = qForPro
    Left = 852
    Top = 511
  end
end
