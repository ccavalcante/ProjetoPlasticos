inherited fCadProduto: TfCadProduto
  Left = 188
  Top = 193
  Caption = 'Produto'
  ClientHeight = 562
  ClientWidth = 1021
  OldCreateOrder = True
  WindowState = wsNormal
  ExplicitWidth = 1037
  ExplicitHeight = 600
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
    Width = 1021
    Height = 523
    ExplicitLeft = 8
    ExplicitTop = 38
    ExplicitWidth = 696
    ExplicitHeight = 550
  end
  inherited Label1: TLabel
    ExplicitTop = 44
  end
  object Label89: TLabel [3]
    Left = 655
    Top = 51
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
    ExplicitLeft = 639
  end
  inherited ToolBar1: TToolBar
    Width = 1021
    Height = 39
    ExplicitWidth = 1021
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
      Hint = 'Atualizar Vendedores Todos os Produtos'
      Caption = 'ToolButton4'
      ImageIndex = 16
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 443
      Top = 0
      Width = 15
      Caption = 'ToolButton5'
      ImageIndex = 17
      Style = tbsSeparator
    end
    object Gauge1: TGauge
      Left = 458
      Top = 0
      Width = 100
      Height = 31
      BorderStyle = bsNone
      ForeColor = 5220351
      Progress = 0
      Visible = False
    end
    object Panel1: TPanel
      Left = 558
      Top = 0
      Width = 273
      Height = 31
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Label72: TLabel
        Left = 22
        Top = 7
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
      object cbGru: TComboBox
        Left = 62
        Top = 6
        Width = 206
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = cbGruClick
      end
    end
  end
  inherited EdPesq: TEdit
    Left = 85
    Top = 45
    Width = 565
    ExplicitLeft = 85
    ExplicitTop = 45
    ExplicitWidth = 565
  end
  inherited PageControl1: TPageControl
    Left = 5
    Top = 73
    Width = 1008
    Height = 481
    ActivePage = TabSheet7
    MultiLine = True
    OwnerDraw = False
    OnChange = PageControl1Change
    OnDrawTab = nil
    ExplicitLeft = 5
    ExplicitTop = 73
    ExplicitWidth = 1008
    ExplicitHeight = 481
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 453
      inherited DBGrid1: TDBGrid
        Width = 1000
        Height = 453
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_Manual'
            Title.Caption = 'C'#243'd. Manual'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'barras'
            Title.Caption = 'C'#243'digo Barras'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'referencia'
            Title.Caption = 'Refer'#234'ncia'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 345
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'est_minimo'
            Title.Caption = 'Est. m'#237'nimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtdestoque'
            Title.Caption = 'Qtde Estoque'
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desgrupo'
            Title.Caption = 'Grupo'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'referencia_base'
            Title.Caption = 'Referencia Base'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descor'
            Title.Caption = 'Cor'
            Width = 135
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
            FieldName = 'est_seguranca'
            Visible = False
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
            Title.Caption = 'Produzido'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'Valor R$'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Custo_montagem'
            Title.Caption = 'Custo Montagem R$ '
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1000
      ExplicitHeight = 453
      object Shape2: TShape
        Left = 107
        Top = 79
        Width = 74
        Height = 19
        Brush.Color = 13565436
        Pen.Color = clGray
      end
      object Bevel4: TBevel
        Left = 9
        Top = 127
        Width = 720
        Height = 92
        Shape = bsFrame
      end
      object Bevel6: TBevel
        Left = 9
        Top = 249
        Width = 879
        Height = 33
        Shape = bsFrame
      end
      object Shape1: TShape
        Left = 556
        Top = 255
        Width = 56
        Height = 21
        Pen.Color = clGray
      end
      object Bevel5: TBevel
        Left = 733
        Top = 127
        Width = 153
        Height = 92
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
        Top = 58
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
      object Label8: TLabel
        Left = 15
        Top = 35
        Width = 76
        Height = 18
        Caption = 'C'#243'digo Barras'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 547
        Top = 36
        Width = 60
        Height = 18
        Caption = 'Refer'#234'ncia'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lvalor: TLabel
        Left = 745
        Top = 128
        Width = 48
        Height = 18
        Caption = 'Valor R$'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 15
        Top = 80
        Width = 77
        Height = 18
        Caption = 'Qtde Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 298
        Top = 128
        Width = 115
        Height = 18
        Caption = 'Custo Montagem  R$'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 737
        Top = 35
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
        Visible = False
      end
      object Label17: TLabel
        Left = 566
        Top = 320
        Width = 21
        Height = 18
        Caption = 'OBS'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 14
        Top = 291
        Width = 107
        Height = 18
        Caption = #218'ltimo Fornecedor'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 709
        Top = 224
        Width = 65
        Height = 18
        Caption = 'Royalties %'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 343
        Top = 80
        Width = 46
        Height = 18
        Caption = 'Unidade'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lValor2: TLabel
        Left = 745
        Top = 169
        Width = 59
        Height = 18
        Caption = 'Valor 2 R$'
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 236
        Top = 225
        Width = 61
        Height = 18
        Caption = 'Peso Bruto'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 15
        Top = 225
        Width = 73
        Height = 18
        Caption = 'Peso L'#237'quido'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 317
        Top = 35
        Width = 42
        Height = 18
        Caption = 'DUN 14'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 445
        Top = 80
        Width = 48
        Height = 18
        Caption = 'M'#250'ltiplo'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 678
        Top = 256
        Width = 71
        Height = 18
        Caption = 'Cubagem(kg)'
        FocusControl = DBEdit23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 14
        Top = 128
        Width = 102
        Height = 18
        Caption = 'Custo Processo R$'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 152
        Top = 128
        Width = 114
        Height = 18
        Caption = 'Custo Mat-Prima  R$'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 137
        Top = 140
        Width = 9
        Height = 22
        Caption = '+'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 281
        Top = 140
        Width = 9
        Height = 22
        Caption = '+'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label39: TLabel
        Left = 423
        Top = 140
        Width = 9
        Height = 22
        Caption = '='
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 438
        Top = 128
        Width = 109
        Height = 18
        Caption = 'Custo Produ'#231#227'o  R$'
        FocusControl = DBEdit28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 554
        Top = 140
        Width = 9
        Height = 22
        Caption = '+'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 152
        Top = 169
        Width = 120
        Height = 18
        Caption = 'Custo Operacional R$'
        FocusControl = DBEdit29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 281
        Top = 181
        Width = 9
        Height = 22
        Caption = '='
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 298
        Top = 169
        Width = 81
        Height = 18
        Caption = 'Custo Final R$'
        FocusControl = DBEdit30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 438
        Top = 169
        Width = 45
        Height = 18
        Caption = 'Lucro %'
        FocusControl = DBEdit31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 423
        Top = 181
        Width = 9
        Height = 22
        Caption = '+'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 554
        Top = 181
        Width = 9
        Height = 22
        Caption = '='
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 569
        Top = 169
        Width = 103
        Height = 18
        Caption = 'Pre'#231'o Sugerido R$'
        FocusControl = DBEdit32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 14
        Top = 169
        Width = 60
        Height = 18
        Caption = 'Compra R$'
        FocusControl = DBEdit33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 137
        Top = 182
        Width = 9
        Height = 22
        Caption = '+'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label51: TLabel
        Left = 15
        Top = 102
        Width = 56
        Height = 18
        Caption = 'Cx Master'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 525
        Top = 256
        Width = 34
        Height = 18
        Caption = 'Fator '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lFator: TLabel
        Left = 562
        Top = 256
        Width = 43
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fator '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Label64: TLabel
        Left = 569
        Top = 128
        Width = 113
        Height = 18
        Caption = 'Custo Cx. Master R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label66: TLabel
        Left = 437
        Top = 225
        Width = 113
        Height = 18
        Caption = 'M'#225'ximo Desconto %'
        FocusControl = DBEdit38
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label67: TLabel
        Left = 323
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
      object Label69: TLabel
        Left = 550
        Top = 80
        Width = 98
        Height = 18
        Caption = 'Unidade M'#250'ltiplo'
        FocusControl = DBEdit39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label70: TLabel
        Left = 707
        Top = 80
        Width = 99
        Height = 18
        Caption = 'Divisor Separa'#231#227'o'
        FocusControl = DBEdit40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label71: TLabel
        Left = 187
        Top = 82
        Width = 67
        Height = 18
        Caption = 'Est. M'#237'nimo'
        FocusControl = DBEdit41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 108
        Top = 82
        Width = 69
        Height = 17
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'qtdestoque'
        DataSource = D
        ParentColor = False
      end
      object Label90: TLabel
        Left = 707
        Top = 103
        Width = 133
        Height = 18
        Caption = 'Composi'#231#227'o Embalagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 107
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
        Left = 107
        Top = 57
        Width = 617
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'descricao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 198
        Top = 14
        Width = 81
        Height = 17
        Caption = 'Produzido'
        DataField = 'produzido'
        DataSource = D
        TabOrder = 35
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object DBEdit3: TDBEdit
        Left = 107
        Top = 35
        Width = 150
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'barras'
        DataSource = D
        MaxLength = 13
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 624
        Top = 35
        Width = 100
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'referencia'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit4Exit
      end
      object DBEdit5: TDBEdit
        Left = 745
        Top = 144
        Width = 129
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'valor'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 23
      end
      object DBEdit7: TDBEdit
        Left = 298
        Top = 144
        Width = 120
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Custo_montagem'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 16
        OnExit = DBEdit26Exit
      end
      object DBEdit8: TDBEdit
        Left = 811
        Top = 35
        Width = 75
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'cod_Manual'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 39
        Visible = False
      end
      object DBMemo1: TDBMemo
        Left = 566
        Top = 336
        Width = 320
        Height = 51
        DataField = 'obs'
        DataSource = D
        TabOrder = 34
      end
      object DBEdit12: TDBEdit
        Left = 125
        Top = 289
        Width = 71
        Height = 19
        Ctl3D = False
        DataField = 'idfornecedor'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 31
        OnExit = DBEdit12Exit
      end
      object DBEdit13: TDBEdit
        Left = 198
        Top = 324
        Width = 349
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'nomefor'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 32
        OnChange = DBEdit13Change
        OnKeyDown = DBEdit13KeyDown
      end
      object DBEdit14: TDBEdit
        Left = 777
        Top = 224
        Width = 108
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Royalties'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 28
      end
      object DBEdit10: TDBEdit
        Left = 392
        Top = 79
        Width = 39
        Height = 19
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'ft_conv_un'
        DataSource = D
        TabOrder = 7
      end
      object DBEdit18: TDBEdit
        Left = 745
        Top = 185
        Width = 129
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'valor2'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 24
      end
      object DBEdit19: TDBEdit
        Left = 107
        Top = 224
        Width = 118
        Height = 21
        DataField = 'pesoLiq'
        DataSource = D
        MaxLength = 7
        TabOrder = 25
      end
      object DBEdit20: TDBEdit
        Left = 303
        Top = 224
        Width = 117
        Height = 21
        DataField = 'pesobru'
        DataSource = D
        TabOrder = 26
      end
      object DBEdit21: TDBEdit
        Left = 363
        Top = 35
        Width = 150
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DUN14'
        DataSource = D
        MaxLength = 14
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit22: TDBEdit
        Left = 496
        Top = 79
        Width = 44
        Height = 19
        AutoSize = False
        DataField = 'multiplo'
        DataSource = D
        TabOrder = 8
      end
      object DBEdit23: TDBEdit
        Left = 753
        Top = 255
        Width = 121
        Height = 21
        DataField = 'cubagem'
        DataSource = D
        TabOrder = 30
      end
      object DBEdit26: TDBEdit
        Left = 14
        Top = 144
        Width = 120
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CustoProcesso'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 14
        OnExit = DBEdit26Exit
      end
      object DBEdit27: TDBEdit
        Left = 152
        Top = 144
        Width = 120
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CustoMP'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 15
        OnExit = DBEdit26Exit
      end
      object DBEdit28: TDBEdit
        Left = 438
        Top = 144
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Custoproducao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 17
        OnExit = DBEdit26Exit
      end
      object DBEdit29: TDBEdit
        Left = 152
        Top = 185
        Width = 120
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CustoOperacional'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 19
        OnExit = DBEdit26Exit
      end
      object DBEdit30: TDBEdit
        Left = 298
        Top = 185
        Width = 120
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CustoFinal'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 20
        OnExit = DBEdit26Exit
      end
      object DBEdit31: TDBEdit
        Left = 438
        Top = 185
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'margem'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 21
        OnExit = DBEdit26Exit
      end
      object DBEdit32: TDBEdit
        Left = 569
        Top = 185
        Width = 124
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'VendaSugerido'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        OnExit = DBEdit26Exit
      end
      object DBEdit33: TDBEdit
        Left = 14
        Top = 185
        Width = 120
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'PrecoCompra'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 18
        OnExit = DBEdit26Exit
      end
      object btAtualPreco: TXiButton
        Left = 698
        Top = 181
        Width = 25
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
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFD5AA98BDA398B4968BC99E8EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8AA97CEBFBBB7
          BBC09E9CA09F8C86D8AA97FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFD8AF9AE1D1CEDADDE1C2917EB48370A09A9DA08E88C79E8CFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8AA97EADED9F2FEFFC67D5DA7
          2503AA2603B16548A39FA39E8A87D8AA97FF00FFFF00FFFF00FFFF00FFFF00FF
          D8AA97EFE1D9FEFFFFCE876AB5411ADD9F82DD9E81B8421AB05E40A19EA39E8B
          87C69D8BFF00FFFF00FFFF00FFD8AA97F2E2DDFFFFFFD58F72A72A06AD3610F6
          E5DCF4E1D7AD3610AC2D08B16243A39EA19E8A87D8AA97FF00FFD8AA96F2E1DA
          FFFFFFE1A688B43B10B0350FAF360FF2D8CCF0D4C7AD330EAC310DAD2D08B05E
          40A0989C998884C79E8BE0BAAAFFFFFFF3D9C5C65D27C05422BB4A1CB64117F3
          DCCFF0D5C9AD340FAC320DAD350FAD2C07B47F6A9F9EA1B1958BE0BAAAFFFFFF
          F6DECBD37636CC692FC65D28C05422F6E3D8F2DACEAF3710AC320DAC320DAB2E
          09C29787B8BBC0C1A398D8AA96F2E1D9FFFFFFEFCBA7D57D3BCE6F31D37B46F2
          D4BFE7BA9FB84519B0370FAA2D09CA886DDAE1E5CFBCB6D5A793FF00FFD8AA97
          EFDDD5FFFFFFF3D4B2DC8A45D57E3ED88955D07948C05421BB4718D79A7FF0FE
          FFE0CFC9D8AA97FF00FFFF00FFFF00FFD7A793EEDDD4FFFFFFF6D7B6E0924AFA
          EADAF7E0D0C96428E1A482FEFFFFE9DCD7D7AA97FF00FFFF00FFFF00FFFF00FF
          FF00FFD8AA97EEDAD0FFFFFFF6DCBBF0C58FEAB079EBBC93FFFFFFF0E2DAD8AA
          97FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD7A691EED9D0FFFFFFFA
          EAD3F6E0C6FFFFFFF4E5DED8AD99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFD8AA97EED9CFFFFFFFFFFFFFF3E6E0D8AA97FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8AA96E0
          BAAAE0BAAAD8AA96FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 37
        OnClick = btAtualPrecoClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 107
        Top = 101
        Width = 413
        Height = 21
        DataField = 'IdCxMaster'
        DataSource = D
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = dMP
        NullValueKey = 46
        TabOrder = 11
      end
      object btCubagem: TXiButton
        Left = 616
        Top = 255
        Width = 44
        Height = 21
        Hint = 'Atualiza Cubagem'
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
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF05710A05700AFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06740C
          08780FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0B7C13158922FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF10831B
          2CA94505710AFF00FFFF00FFFF00FFFF00FFFF00FF056F09FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF10821C44C86A148520FF00FFFF00FFFF00FFFF
          00FFFF00FF056F09056F09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097510
          43C4673CBD5E036D07FF00FFFF00FFFF00FFFF00FF056F09119C1F056F09FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF29A13F5DE98F31B04C056F09046F0804
          6E07056D07056F0914AD240C9518056F09FF00FFFF00FFFF00FFFF00FFFF00FF
          07710B41C26459E78940C76329AD4225AD3C28B0401DA73014A9240EA51B0E9A
          1B056F09FF00FFFF00FFFF00FFFF00FFFF00FF08730D3BBB5B50DD7C47D86F3B
          CC5D2FC04B25B63C1AAD2C10A51E0FA81D129920056F09FF00FFFF00FFFF00FF
          FF00FFFF00FF05710A1B902C35B85339C45933C2512BBC451FB13416AD271697
          26056F09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06720C09
          7610097811056F0927BD41149121056F09FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF056F09148F22056F09FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF056F09056F09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF056F09FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
        OnClick = btCubagemClick
      end
      object DBEdit37: TDBEdit
        Left = 569
        Top = 144
        Width = 124
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'custoCxMaster'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 38
        OnExit = DBEdit26Exit
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 314
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
        TabOrder = 33
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        OnKeyPress = gdForKeyPress
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
      object DBEdit38: TDBEdit
        Left = 556
        Top = 224
        Width = 117
        Height = 21
        DataField = 'maxDesconto'
        DataSource = D
        TabOrder = 27
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 363
        Top = 12
        Width = 187
        Height = 21
        DataField = 'idgrupo'
        DataSource = D
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = dGrupo
        NullValueKey = 46
        TabOrder = 1
      end
      object DBEdit39: TDBEdit
        Left = 650
        Top = 79
        Width = 51
        Height = 19
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'unidade_nfe'
        DataSource = D
        TabOrder = 9
      end
      object DBCheckBox2: TDBCheckBox
        Left = 566
        Top = 289
        Width = 195
        Height = 12
        Caption = 'Usar como mat'#233'ria-prima'
        DataField = 'materia_prima'
        DataSource = D
        TabOrder = 40
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object DBEdit40: TDBEdit
        Left = 809
        Top = 79
        Width = 77
        Height = 19
        AutoSize = False
        DataField = 'divisor'
        DataSource = D
        TabOrder = 10
        Visible = False
      end
      object DBCheckBox3: TDBCheckBox
        Left = 527
        Top = 103
        Width = 135
        Height = 17
        Caption = 'N'#227'o vender na WEB'
        DataField = 'nao_vender_web'
        DataSource = D
        TabOrder = 41
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object DBEdit41: TDBEdit
        Left = 258
        Top = 79
        Width = 71
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'est_minimo'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 6
      end
      object pMedPro: TPanel
        Left = 11
        Top = 252
        Width = 514
        Height = 26
        BevelOuter = bvNone
        TabOrder = 42
        object Label52: TLabel
          Left = 3
          Top = 2
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
          Left = 155
          Top = 2
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
          Left = 320
          Top = 2
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
        object DBEdit34: TDBEdit
          Left = 62
          Top = 1
          Width = 86
          Height = 21
          DataField = 'altura'
          DataSource = D
          TabOrder = 0
        end
        object DBEdit35: TDBEdit
          Left = 216
          Top = 1
          Width = 96
          Height = 21
          DataField = 'largura'
          DataSource = D
          TabOrder = 1
        end
        object DBEdit36: TDBEdit
          Left = 416
          Top = 1
          Width = 96
          Height = 21
          DataField = 'comprimento'
          DataSource = D
          TabOrder = 2
        end
      end
      object pMedCx: TPanel
        Left = 11
        Top = 252
        Width = 514
        Height = 26
        BevelOuter = bvNone
        Color = clInfoBk
        ParentBackground = False
        TabOrder = 43
        object Label73: TLabel
          Left = 3
          Top = 3
          Width = 53
          Height = 18
          Caption = 'Altura(m)'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label74: TLabel
          Left = 155
          Top = 4
          Width = 60
          Height = 18
          Caption = 'Largura(m)'
          FocusControl = DBEdit42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label75: TLabel
          Left = 320
          Top = 4
          Width = 94
          Height = 18
          Caption = 'Comprimento(m)'
          FocusControl = DBEdit43
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 62
          Top = 2
          Width = 86
          Height = 21
          DataField = 'alturaCx'
          DataSource = D
          TabOrder = 0
        end
        object DBEdit42: TDBEdit
          Left = 216
          Top = 2
          Width = 96
          Height = 21
          DataField = 'larguraCx'
          DataSource = D
          TabOrder = 1
        end
        object DBEdit43: TDBEdit
          Left = 416
          Top = 2
          Width = 96
          Height = 21
          DataField = 'comprimentoCx'
          DataSource = D
          TabOrder = 2
        end
      end
      object gdFor: TDBGrid
        Left = 928
        Top = 224
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
        TabOrder = 36
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        Visible = False
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
      object DBCheckBox4: TDBCheckBox
        Left = 566
        Top = 303
        Width = 322
        Height = 17
        Caption = 'Baixa item da ficha tecnica na venda'
        DataField = 'bx_item_ficha_venda'
        DataSource = D
        TabOrder = 44
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object DBCheckBox5: TDBCheckBox
        Left = 737
        Top = 57
        Width = 81
        Height = 17
        Caption = 'Ativo'
        DataField = 'ativo'
        DataSource = D
        TabOrder = 45
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object pAdicionais: TPanel
        Left = 556
        Top = 8
        Width = 698
        Height = 27
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 46
        Visible = False
        object Label77: TLabel
          Left = 202
          Top = 5
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
          Left = 392
          Top = 5
          Width = 50
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
        object Label88: TLabel
          Left = 2
          Top = 5
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
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 228
          Top = 4
          Width = 150
          Height = 19
          DataField = 'idcor'
          DataSource = D
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = dCor
          NullValueKey = 46
          TabOrder = 0
        end
        object DBEdit48: TDBEdit
          Left = 448
          Top = 4
          Width = 59
          Height = 19
          CharCase = ecUpperCase
          DataField = 'tamanho'
          DataSource = D
          TabOrder = 1
        end
        object DBEdit49: TDBEdit
          Left = 96
          Top = 4
          Width = 96
          Height = 19
          CharCase = ecUpperCase
          DataField = 'referencia_base'
          DataSource = D
          TabOrder = 2
        end
        object btnref: TXiButton
          Left = 538
          Top = 3
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
          TabOrder = 3
          OnClick = btnrefClick
        end
      end
      object DBEdit57: TDBEdit
        Left = 843
        Top = 100
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'volume1'
        DataSource = D
        TabOrder = 12
        Visible = False
      end
      object DBEdit58: TDBEdit
        Left = 909
        Top = 100
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'volume2'
        DataSource = D
        TabOrder = 13
        Visible = False
      end
      object DBCheckBox6: TDBCheckBox
        Left = 743
        Top = 286
        Width = 145
        Height = 19
        Caption = 'Proteinado ou mineral'
        DataField = 'PROTEINADOOUMINERAL'
        DataSource = D
        TabOrder = 47
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Dados Fiscais'
      ImageIndex = 4
      object Label15: TLabel
        Left = 20
        Top = 48
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
        Left = 207
        Top = 46
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
        Left = 367
        Top = 45
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
        Left = 564
        Top = 44
        Width = 56
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
      object Label65: TLabel
        Left = 21
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
      object DBText3: TDBText
        Left = 75
        Top = 6
        Width = 62
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
      object Label24: TLabel
        Left = 20
        Top = 71
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
      object Label68: TLabel
        Left = 21
        Top = 264
        Width = 201
        Height = 18
        Caption = '* Informa'#231#245'es do cadastro de ncm.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBGrid3: TDBGrid
        Left = 21
        Top = 118
        Width = 878
        Height = 148
        Color = clWhite
        Ctl3D = True
        DataSource = dNcmUf
        DrawingStyle = gdsGradient
        FixedColor = clWhite
        GradientEndColor = clSilver
        GradientStartColor = 14803425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        Visible = False
        OnKeyPress = gdForKeyPress
        Columns = <
          item
            Color = 16777175
            Expanded = False
            FieldName = 'UF'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'IDSTRIB'
            Title.Caption = 'CST'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'CFOP'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'CSOSN'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'CSOSN2'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'PIS'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'PPIS'
            Title.Caption = '% PIS'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'CONFINS'
            Title.Caption = 'COFINS'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'PCOFINS'
            Title.Caption = '% COFINS'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'REDUCAO'
            Title.Caption = '% REDUCAO'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'CODIPI'
            Title.Caption = 'IPI'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 26
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'IPI'
            Title.Caption = '% IPI'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 38
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'MARGEMST'
            Title.Caption = '% MARGEM ST'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'MVA'
            Title.Caption = '% MVA'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Color = 16777175
            Expanded = False
            FieldName = 'ICMS_UF'
            Title.Caption = '% ICMS UF'
            Title.Color = 16750125
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end>
      end
      object cbCF: TDBLookupComboBox
        Left = 67
        Top = 45
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
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 240
        Top = 45
        Width = 104
        Height = 21
        DataField = 'cest'
        DataSource = D
        MaxLength = 7
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 470
        Top = 44
        Width = 65
        Height = 21
        DataField = 'eIPI'
        DataSource = D
        TabOrder = 2
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 622
        Top = 42
        Width = 95
        Height = 21
        DataField = 'IDTIPO_TRIBUTACAO'
        DataSource = D
        KeyField = 'ID'
        ListField = 'TIPO'
        ListSource = dsTipoTribu
        TabOrder = 3
      end
      object cbNCM: TDBLookupComboBox
        Left = 67
        Top = 45
        Width = 127
        Height = 21
        Ctl3D = True
        DataField = 'NCM'
        DataSource = D
        KeyField = 'NCM'
        ListField = 'NCM'
        ListSource = dNCM
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 66
        Top = 69
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
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 21
        Top = 100
        Width = 878
        Height = 83
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        object Label21: TLabel
          Left = 513
          Top = 8
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
          Top = 33
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
          Top = 57
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
          Top = 8
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
          Top = 10
          Width = 43
          Height = 13
          Caption = 'CSOSN'
        end
        object Label57: TLabel
          Left = 371
          Top = 34
          Width = 46
          Height = 13
          Caption = 'COFINS'
          FocusControl = DBEdit51
        end
        object Label56: TLabel
          Left = 203
          Top = 35
          Width = 21
          Height = 13
          Caption = 'PIS'
          FocusControl = DBEdit50
        end
        object Label58: TLabel
          Left = 358
          Top = 58
          Width = 59
          Height = 13
          Caption = '% COFINS'
          FocusControl = DBEdit53
        end
        object Label59: TLabel
          Left = 190
          Top = 58
          Width = 34
          Height = 13
          Caption = '% PIS'
          FocusControl = DBEdit52
        end
        object Label60: TLabel
          Left = 694
          Top = 34
          Width = 39
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
          Top = 35
          Width = 17
          Height = 13
          Caption = 'IPI'
          FocusControl = DBEdit55
        end
        object Label62: TLabel
          Left = 543
          Top = 60
          Width = 30
          Height = 13
          Caption = '% IPI'
          FocusControl = DBEdit56
        end
        object Label63: TLabel
          Left = 322
          Top = 10
          Width = 95
          Height = 13
          Caption = 'CSOSN (Cr'#233'dito)'
        end
        object Label23: TLabel
          Left = 7
          Top = 9
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
          Top = 8
          Width = 60
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'REDUCAO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit51: TDBEdit
          Left = 422
          Top = 32
          Width = 81
          Height = 19
          DataField = 'COFINS'
          DataSource = D
          TabOrder = 6
        end
        object DBEdit50: TDBEdit
          Left = 230
          Top = 32
          Width = 81
          Height = 19
          DataField = 'PIS'
          DataSource = D
          TabOrder = 2
        end
        object DBEdit52: TDBEdit
          Left = 230
          Top = 57
          Width = 81
          Height = 19
          DataField = 'PPIS'
          DataSource = D
          TabOrder = 4
        end
        object DBEdit53: TDBEdit
          Left = 422
          Top = 57
          Width = 81
          Height = 19
          DataField = 'PCOFINS'
          DataSource = D
          TabOrder = 7
        end
        object DBEdit54: TDBEdit
          Left = 737
          Top = 32
          Width = 129
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'MVA'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBEdit55: TDBEdit
          Left = 577
          Top = 33
          Width = 60
          Height = 19
          DataField = 'CODIPI'
          DataSource = D
          TabOrder = 9
        end
        object DBEdit56: TDBEdit
          Left = 577
          Top = 57
          Width = 60
          Height = 19
          DataField = 'IPI'
          DataSource = D
          TabOrder = 10
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 60
          Top = 56
          Width = 117
          Height = 21
          Ctl3D = True
          DataField = 'CFOP'
          DataSource = D
          KeyField = 'CFOP'
          ListField = 'CFOP'
          ListSource = dCFOP
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBComboBox1: TDBComboBox
          Left = 230
          Top = 7
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
        object DBComboBox2: TDBComboBox
          Left = 423
          Top = 5
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
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 60
          Top = 8
          Width = 117
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ICMS'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 737
          Top = 8
          Width = 129
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'MARGEMST'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBComboBox3: TDBComboBox
          Left = 60
          Top = 31
          Width = 117
          Height = 21
          Style = csDropDownList
          BevelKind = bkSoft
          Ctl3D = False
          DataField = 'cst'
          DataSource = D
          Items.Strings = (
            ''
            '000'
            '010'
            '020'
            '030'
            '040'
            '041'
            '050'
            '051'
            '060'
            '070'
            '090')
          ParentCtl3D = False
          TabOrder = 13
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ficha T'#233'cnica'
      ImageIndex = 1
      DesignSize = (
        1000
        453)
      object Bevel1: TBevel
        Left = 8
        Top = 40
        Width = 979
        Height = 97
        Anchors = [akLeft, akTop, akRight]
        Shape = bsFrame
        ExplicitWidth = 881
      end
      object lCPFCNPJ: TLabel
        Left = 18
        Top = 88
        Width = 38
        Height = 18
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 539
        Top = 88
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
      object Label5: TLabel
        Left = 462
        Top = 88
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
      object Label6: TLabel
        Left = 107
        Top = 88
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
      object Label7: TLabel
        Left = 9
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
        Left = 63
        Top = 6
        Width = 62
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
      object Bevel2: TBevel
        Left = 8
        Top = 143
        Width = 980
        Height = 302
        Anchors = [akLeft, akTop, akRight, akBottom]
        Shape = bsFrame
        ExplicitWidth = 889
        ExplicitHeight = 379
      end
      object Label32: TLabel
        Left = 610
        Top = 414
        Width = 130
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'R$ Total Mat'#233'ria-Prima'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitTop = 387
      end
      object Label33: TLabel
        Left = 344
        Top = 414
        Width = 105
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'R$ Total Processos'
        FocusControl = DBEdit25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitTop = 387
      end
      object CheckDBGrid1: TCheckDBGrid
        Left = 18
        Top = 146
        Width = 962
        Height = 259
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clWhite
        Ctl3D = True
        DataSource = dFicha
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnKeyDown = CheckDBGrid1KeyDown
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Tipo2'
            Title.Caption = 'Tipo'
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'descr'
            Title.Caption = 'Descri'#231#227'o'
            Width = 402
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Width = 62
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Caption = 'Qtde'
            Width = 79
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'totprocesso'
            Title.Caption = 'R$ Total Processo'
            Width = 140
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'totmp'
            Title.Caption = 'R$ Total Mat'#233'ria-Prima'
            Width = 144
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object ckSA: TCheckBox
        Left = -90
        Top = 426
        Width = 17
        Height = 17
        TabOrder = 8
      end
      object btExcluirF: TXiButton
        Left = 696
        Top = 99
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
        TabOrder = 7
        OnClick = btExcluirFClick
      end
      object rdTipo: TRadioGroup
        Left = 18
        Top = 46
        Width = 226
        Height = 38
        Caption = ' Tipo (F3) '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Semiacabado'
          'Mat'#233'ria-Prima')
        TabOrder = 0
        TabStop = True
        OnClick = rdTipoClick
      end
      object gdPesq: TDBGrid
        Left = 18
        Top = 129
        Width = 435
        Height = 193
        Ctl3D = True
        DataSource = DM.dPesq
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        TabOrder = 9
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Descri'#231#227'o'
            Width = 321
            Visible = True
          end>
      end
      object EdNom: TEdit
        Left = 106
        Top = 105
        Width = 347
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
        TabOrder = 2
        OnChange = EdNomChange
        OnKeyDown = EdNomKeyDown
      end
      object edCod: TEdit
        Left = 18
        Top = 105
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
        TabOrder = 1
        OnExit = edCodExit
        OnKeyPress = edCodKeyPress
      end
      object btAddP: TXiButton
        Left = 656
        Top = 99
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
        TabOrder = 5
        OnClick = btAddPClick
      end
      object edQtd: TMaskEdit
        Left = 540
        Top = 105
        Width = 100
        Height = 24
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = ''
        OnKeyPress = edQtdKeyPress
      end
      object DBEdit24: TDBEdit
        Left = 744
        Top = 414
        Width = 145
        Height = 19
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CustoMP'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit25: TDBEdit
        Left = 453
        Top = 414
        Width = 124
        Height = 19
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CustoProcesso'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 11
      end
      object bt_atualF: TXiButton
        Left = 735
        Top = 99
        Width = 32
        Height = 30
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
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3A793C2A195BD9C
          8ED1A490FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD7AB9A
          BDB0ABAAA3A3988F8F9A8882C99E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFD7AB9AD1C4C2C4C1C2BAB6B7ADA5A7988F8F988681C7A08EFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFD8AD9ADED1CFD9D9DAD1CFD3C2AAA1B79E96ADA7A99A909197
          8680C9A08FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFD9B09DE7DDD9E9EAEFE2E2E5C27859AF3812AF38
          12B16749ADA5A79A9193988681C69D8CFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9AF9CEEE5E2F0F6FAEFF4FAC67754
          A72806A72907A92907A92907B05E3EAFA7A79A919393827FC69D8CFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8AB98F0E7E2FAFEFFF6
          FEFFCE8868B13C15CE7752D38460D38460CE7752B43A13B05B39ADA7A99A9193
          93827FC69D8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8AB98F3E7
          E2FEFFFFFEFFFFD49072AA300CAA300CD38664FFFFFFFFFFFFCF7F5BAB310CAD
          300BB16041ADA5A79C9395968480C69D8CFF00FFFF00FFFF00FFFF00FFFF00FF
          D8AD9AF6EBE9FFFFFFFFFFFFD78F6EAB310CAB320DAA2E0AC4653CFFFFFFFFFF
          FFC15D35AA2E0BAD350FAD310BB05A38AFA4A49C939593827FC09A8AFF00FFFF
          00FFFF00FFD8AA97F6EAE5FFFFFFFFFFFFE0A486B53F14B43A13AF3711AA2E0A
          C6673FFFFFFFFFFFFFC25F38AA2E0BAD350FAD350FAD300BB05735ABA1A19A91
          9390817FC09A8AFF00FFD7A793F0E2D9FFFFFFFFFFFFE9BB9CC15523BC4D1EBA
          491CB64117AF340DC76840FFFFFFFFFFFFC25F38AA2E0BAD350FAD350FAD350F
          AD2E0AB05D3DADA5A79A908F95827FCCA18FE0BBAAFFFFFFFFFFFFFEFAF6D17A
          42C75F29C45C28C15523BD4E1FB53F14CB7048FFFFFFFFFFFFC25F38AA2E0BAD
          350FAD350FAD350FAD330EAF3611B69C91ADA7A99A908FBC9A8EE0BAAAFFFFFF
          FFFFFFFEFAF6D9894ECF6F32CC6A31C7632CC45B28BC4C1CCF794FFFFFFFFFFF
          FFC4633AAA2E0BAD350FAD350FAD350FAB310CAF3C16C4AFA9BAB6B7ABA3A3C6
          A193D7A793F3E2DAFFFFFFFFFFFFF0D1B1D88241D37638CF6F35CB682FC25723
          D88C60FFFFFFFFFFFFC96D43AF350EAF360FAD350FAB320DAB310CC7896ED1D3
          D7C4C1C2C1AFAAD7A793FF00FFD8AA97F6EAE3FFFFFFFFFFFFF0D1AFD98744D4
          7D3CCF7537D1753CE9B693F0D4C0F0D3BDCB6C3EB74116B54016AF360FAB320D
          CC886AE2E7EBD9D9DAD1C1BCD7A996FF00FFFF00FFFF00FFD8AA97F3E5DDFFFF
          FFFFFFFFF4D9BBDE904CD88240D78041D3773BCE6E35C9662EC25925C05322BB
          4A1CB64116D79A7FEEF4FAE7EAEEDDCEC9D7A996FF00FFFF00FFFF00FFFF00FF
          FF00FFD7A996F0E2D9FFFFFFFFFFFFF6DDC0E29752D98641DA8F52F4DAC6F3D4
          C0CF733DC45B26C15421E0A486F6FEFFF0F6FAE7D9D4D7AA97FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFD7A996F0E2DAFFFFFFFFFFFFF8E2C6E2964C
          EABA87FFFFFFFFFFFFE09E6DC96328E2A984FEFFFFFAFEFFEBE2DED8AD9AFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD8AA97F0E0D8FF
          FFFFFFFFFFF6DEC0EAAF6CF4D7B1F3CFABDA894AE9B78FFFFFFFFEFFFFF3E7E2
          D9AF9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFD7A793EFDDD4FFFFFFFFFFFFFAE7CBEBB470E5A45FF0CCA5FFFFFFFF
          FFFFF4E9E3D8AD9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFD7A793EFDDD4FFFFFFFFFFFFFFFEFBFEFA
          F6FFFFFFFFFFFFF8EFEBD9AF9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD7A793F0E0D8
          FFFFFFFFFFFFFFFFFFFFFFFFF8EFEBDAB1A0FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFD7A793EED7CBFEFBFBFFFEFEF4E9E3DAB19EFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFD8AA96DEB5A4E0BAAAD8AA96FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = bt_atualFClick
      end
      object cbUnid: TComboBox
        Left = 462
        Top = 105
        Width = 70
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Ficha Tecnica'
      ImageIndex = 5
      DesignSize = (
        1000
        453)
      object DBText5: TDBText
        Left = 5
        Top = 7
        Width = 76
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
      object Bevel7: TBevel
        Left = 5
        Top = 36
        Width = 516
        Height = 414
        Anchors = [akLeft, akTop, akBottom]
        Shape = bsFrame
        ExplicitHeight = 387
      end
      object Label76: TLabel
        Left = 11
        Top = 39
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
      object Label78: TLabel
        Left = 10
        Top = 86
        Width = 38
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
      object Label79: TLabel
        Left = 121
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
      object Label80: TLabel
        Left = 275
        Top = 420
        Width = 106
        Height = 20
        Anchors = [akLeft, akBottom]
        Caption = 'Total Processos'
        FocusControl = DBEdit44
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitTop = 393
      end
      object Label81: TLabel
        Left = 794
        Top = 8
        Width = 78
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Custo Total'
        FocusControl = DBEdit45
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Bevel8: TBevel
        Left = 527
        Top = 36
        Width = 469
        Height = 414
        Anchors = [akLeft, akTop, akRight, akBottom]
        Shape = bsFrame
        ExplicitWidth = 444
        ExplicitHeight = 387
      end
      object Label82: TLabel
        Left = 532
        Top = 86
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
      object Label83: TLabel
        Left = 620
        Top = 86
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
      object Label84: TLabel
        Left = 794
        Top = 420
        Width = 74
        Height = 20
        Anchors = [akRight, akBottom]
        Caption = 'Total Itens'
        FocusControl = DBEdit46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitTop = 393
      end
      object Label85: TLabel
        Left = 532
        Top = 39
        Width = 183
        Height = 22
        Caption = 'Produto / Mat'#233'ria-prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label86: TLabel
        Left = 11
        Top = 420
        Width = 94
        Height = 20
        Anchors = [akLeft, akBottom]
        Caption = 'Total Tempo:'
        FocusControl = DBEdit47
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitTop = 393
      end
      object cbProcesso: TComboBox
        Left = 11
        Top = 59
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
        OnClick = cbProcessoClick
      end
      object ckUltimo: TCheckBox
        Left = 381
        Top = 57
        Width = 61
        Height = 17
        TabStop = False
        Caption = #218'ltimo'
        TabOrder = 1
      end
      object ckAnt: TCheckBox
        Left = 381
        Top = 73
        Width = 136
        Height = 17
        TabStop = False
        Caption = 'Depende do anterior'
        TabOrder = 2
      end
      object edOrdem: TMaskEdit
        Left = 11
        Top = 102
        Width = 37
        Height = 22
        TabStop = False
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
        Visible = False
      end
      object edTempo: TMaskEdit
        Left = 11
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
        TabOrder = 4
        Text = '  :  :  '
      end
      object edCusto: TMaskEdit
        Left = 120
        Top = 102
        Width = 118
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = ''
        OnExit = edCustoExit
        OnKeyPress = edCustoKeyPress
      end
      object btnAddP2: TXiButton
        Left = 435
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
        TabOrder = 6
        OnClick = btnAddP2Click
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
        TabOrder = 7
        TabStop = False
        OnClick = btExcluirPClick
      end
      object gridProc: TCheckDBGrid
        Left = 11
        Top = 130
        Width = 494
        Height = 287
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
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnKeyDown = gridProcKeyDown
        OnKeyPress = gridProcKeyPress
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 147
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Ordem'
            ReadOnly = False
            Width = 45
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Tempo'
            ReadOnly = False
            Width = 60
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'Ultimo'
            ReadOnly = False
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
            ReadOnly = False
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
            ReadOnly = False
            Title.Caption = 'R$ Custo'
            Width = 81
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object DBEdit44: TDBEdit
        Left = 385
        Top = 423
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
        TabOrder = 9
      end
      object DBEdit45: TDBEdit
        Left = 876
        Top = 11
        Width = 120
        Height = 19
        Anchors = [akTop, akRight]
        CharCase = ecUpperCase
        Color = 13565436
        Ctl3D = False
        DataField = 'custo_total'
        DataSource = D
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object edCod2: TEdit
        Left = 532
        Top = 59
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
        TabOrder = 11
        OnExit = edCod2Exit
        OnKeyPress = edCod2KeyPress
      end
      object ednom2: TEdit
        Left = 600
        Top = 59
        Width = 390
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
        TabOrder = 12
        OnChange = ednom2Change
        OnKeyDown = ednom2KeyDown
      end
      object cbUn: TComboBox
        Left = 532
        Top = 100
        Width = 67
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
        TabOrder = 13
      end
      object edQtd2: TMaskEdit
        Left = 620
        Top = 101
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
        TabOrder = 14
        Text = ''
        OnKeyPress = edQtd2KeyPress
      end
      object BtAddPi: TXiButton
        Left = 924
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
        Anchors = [akTop, akRight]
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = BtAddPiClick
      end
      object btExcluirI: TXiButton
        Left = 958
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
        Anchors = [akTop, akRight]
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnClick = btExcluirIClick
      end
      object CheckDBGrid4: TCheckDBGrid
        Left = 532
        Top = 130
        Width = 458
        Height = 287
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
        TabOrder = 17
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
            Width = 266
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'Qtde'
            Width = 46
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
      object DBEdit46: TDBEdit
        Left = 882
        Top = 423
        Width = 108
        Height = 19
        Anchors = [akRight, akBottom]
        CharCase = ecUpperCase
        Color = 13565436
        Ctl3D = False
        DataField = 'totMP'
        DataSource = D
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 18
      end
      object gdPesq2: TDBGrid
        Left = 851
        Top = 130
        Width = 485
        Height = 226
        Ctl3D = True
        DataSource = DM.dSel
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        TabOrder = 19
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Visible = False
        OnKeyDown = gdPesq2KeyDown
        OnKeyPress = gdPesq2KeyPress
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
            Title.Caption = 'Tipo'
            Visible = True
          end>
      end
      object DBEdit47: TDBEdit
        Left = 120
        Top = 423
        Width = 74
        Height = 19
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 13565436
        Ctl3D = False
        DataField = 'totTempo'
        DataSource = D
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 20
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Comiss'#227'o'
      ImageIndex = 3
      DesignSize = (
        1000
        453)
      object Bevel3: TBevel
        Left = 16
        Top = 42
        Width = 754
        Height = 411
        Anchors = [akLeft, akTop, akBottom]
        Shape = bsFrame
        ExplicitHeight = 498
      end
      object Label20: TLabel
        Left = 17
        Top = 17
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
        Top = 14
        Width = 62
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
      object CheckDBGrid2: TCheckDBGrid
        Left = 27
        Top = 84
        Width = 736
        Height = 361
        Anchors = [akLeft, akTop, akBottom]
        Color = clWhite
        Ctl3D = True
        DataSource = dComi
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
        OnKeyDown = CheckDBGrid2KeyDown
        OnKeyPress = CheckDBGrid2KeyPress
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'IDvendedor'
            Title.Caption = 'C'#243'digo'
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome do Vendedor'
            Width = 496
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'pComissao'
            ReadOnly = False
            Title.Caption = '% Comiss'#227'o'
            Width = 101
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object XiButton1: TXiButton
        Left = 202
        Top = 47
        Width = 181
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
        Caption = 'Zerar Comiss'#227'o'
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
        Left = 27
        Top = 47
        Width = 167
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
        Caption = 'Atualizar Vendedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = XiButton2Click
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Descri'#231#227'o Ficha T'#233'cnica'
      ImageIndex = 6
      OnShow = TabSheet7Show
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1000
        Height = 453
        ActivePage = tabGarantia
        Align = alClient
        TabOrder = 0
        object tabFicha: TTabSheet
          Caption = 'Ficha'
          DesignSize = (
            992
            425)
          object Label93: TLabel
            Left = 168
            Top = 3
            Width = 24
            Height = 13
            Caption = 'dias'
            FocusControl = DBEdit59
          end
          object Label92: TLabel
            Left = 0
            Top = 3
            Width = 100
            Height = 13
            Caption = 'Dias de validade:'
            FocusControl = DBEdit59
          end
          object Label94: TLabel
            Left = 0
            Top = 21
            Width = 136
            Height = 13
            Caption = 'Composi'#231#227'o qualitativa:'
            FocusControl = DBEdit59
          end
          object Label95: TLabel
            Left = 509
            Top = 21
            Width = 126
            Height = 13
            Caption = 'Eventuais substitutos:'
            FocusControl = DBEdit59
          end
          object Label91: TLabel
            Left = 0
            Top = 313
            Width = 82
            Height = 13
            Caption = 'Ficha t'#233'cnica:'
          end
          object Label97: TLabel
            Left = 0
            Top = 186
            Width = 82
            Height = 13
            Caption = 'Modo de usar:'
            FocusControl = DBEdit59
          end
          object Label98: TLabel
            Left = 1
            Top = 94
            Width = 306
            Height = 13
            Caption = 'Indica'#231#245'es de uso e esp'#233'cie animal a que se destina:'
          end
          object Label99: TLabel
            Left = 0
            Top = 273
            Width = 107
            Height = 13
            Caption = 'Prazo de validade:'
            FocusControl = DBEdit62
          end
          object Label100: TLabel
            Left = 509
            Top = 94
            Width = 159
            Height = 13
            Caption = 'Condi'#231#245'es de conserva'#231#227'o:'
            FocusControl = DBEdit59
          end
          object Label101: TLabel
            Left = 509
            Top = 273
            Width = 208
            Height = 13
            Caption = 'Restri'#231#245'es e outras recomenda'#231#245'es:'
            FocusControl = DBEdit63
          end
          object Label102: TLabel
            Left = 509
            Top = 186
            Width = 76
            Height = 13
            Caption = 'Classifica'#231#227'o'
            FocusControl = DBEdit59
          end
          object DBEdit59: TDBEdit
            Left = 101
            Top = 0
            Width = 61
            Height = 19
            Ctl3D = False
            DataField = 'dias_validade'
            DataSource = D
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBMemo3: TDBMemo
            Left = 1
            Top = 35
            Width = 484
            Height = 52
            Ctl3D = False
            DataField = 'ComposicaoQuali'
            DataSource = D
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object DBMemo4: TDBMemo
            Left = 509
            Top = 35
            Width = 464
            Height = 52
            Ctl3D = False
            DataField = 'Substituto'
            DataSource = D
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object DBMemo2: TDBMemo
            Left = 1
            Top = 328
            Width = 972
            Height = 94
            Anchors = [akLeft, akTop, akRight, akBottom]
            Ctl3D = False
            DataField = 'ficha_tecnica'
            DataSource = D
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 8
          end
          object DBMemo5: TDBMemo
            Left = 0
            Top = 200
            Width = 485
            Height = 68
            Ctl3D = False
            DataField = 'ModoUso'
            DataSource = D
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 5
          end
          object DBEdit62: TDBEdit
            Left = 0
            Top = 287
            Width = 485
            Height = 19
            Ctl3D = False
            DataField = 'Prazovalidade'
            DataSource = D
            ParentCtl3D = False
            TabOrder = 6
          end
          object DBMemo6: TDBMemo
            Left = 509
            Top = 110
            Width = 464
            Height = 68
            Ctl3D = False
            DataField = 'Conservacao'
            DataSource = D
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 4
          end
          object DBEdit63: TDBEdit
            Left = 509
            Top = 287
            Width = 464
            Height = 19
            Ctl3D = False
            DataField = 'restricao'
            DataSource = D
            ParentCtl3D = False
            TabOrder = 7
          end
          object dbmmoIndicacaoUso: TDBMemo
            Left = 1
            Top = 110
            Width = 485
            Height = 68
            Ctl3D = False
            DataField = 'IndicacaoUso'
            DataSource = D
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 3
          end
          object dbmmoClassificacao: TDBMemo
            Left = 509
            Top = 200
            Width = 464
            Height = 68
            Ctl3D = False
            DataField = 'CLASSIFICACAO'
            DataSource = D
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 9
          end
        end
        object tabGarantia: TTabSheet
          Caption = 'Garantia'
          ImageIndex = 1
          OnShow = tabGarantiaShow
          object Label96: TLabel
            Left = 3
            Top = 5
            Width = 110
            Height = 13
            Caption = 'N'#237'veis de garantia:'
          end
          object DBGrid4: TDBGrid
            Left = 3
            Top = 28
            Width = 678
            Height = 367
            Ctl3D = True
            DataSource = dsGarantia
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Trebuchet MS'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'garantia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                Title.Caption = 'Garantia'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Trebuchet MS'
                Title.Font.Style = [fsBold]
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                Title.Caption = 'Valor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Trebuchet MS'
                Title.Font.Style = [fsBold]
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                Title.Caption = 'Unidade'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Trebuchet MS'
                Title.Font.Style = [fsBold]
                Width = 99
                Visible = True
              end>
          end
          object btnExcluirGarantia: TXiButton
            Left = 558
            Top = 28
            Width = 89
            Height = 23
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
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnExcluirGarantiaClick
          end
        end
        object tsTabelaReferencia: TTabSheet
          Caption = 'Tabela de Refer'#234'ncia'
          ImageIndex = 2
          object gbxTabelaReferenciaMicrominerais_dia: TGroupBox
            Left = 0
            Top = 258
            Width = 992
            Height = 129
            Align = alTop
            Caption = 'Microminerais (g/dia)'
            TabOrder = 0
            object DBGrid5: TDBGrid
              Left = 2
              Top = 15
              Width = 988
              Height = 112
              Align = alClient
              DataSource = dsTabelaReferenciaMicromineraisGDia
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'GARANTIA'
                  Title.Caption = 'Garantia'
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORREFERENCIA'
                  Title.Caption = 'Valor de Refer'#234'ncia - VR'
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDFORNECIDA_100G'
                  Title.Caption = 'Qtde. fornecida por 100g de suplemento'
                  Width = 246
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDPERCFORNECIDA_100G'
                  Title.Caption = 'Qtde em % fornecida por 100g de suplemento'
                  Width = 270
                  Visible = True
                end>
            end
            object btnExcluirTabelaReferenciaMicrominerais_GDia: TXiButton
              Left = 791
              Top = 16
              Width = 61
              Height = 20
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
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnExcluirTabelaReferenciaMicrominerais_GDiaClick
            end
          end
          object gbxTabelaReferenciaVitaminas: TGroupBox
            Left = 0
            Top = 387
            Width = 992
            Height = 129
            Align = alTop
            Caption = 'Vitaminas (vi/dia)'
            TabOrder = 1
            object dbgTabelaReferenciaVitaminas: TDBGrid
              Left = 2
              Top = 15
              Width = 988
              Height = 112
              Align = alClient
              DataSource = dsTabelaReferenciaVitaminas
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'GARANTIA'
                  Title.Caption = 'Garantia'
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORREFERENCIA'
                  Title.Caption = 'Valor de Refer'#234'ncia - VR'
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDFORNECIDA_100G'
                  Title.Caption = 'Qtde. fornecida por 100g de suplemento'
                  Width = 246
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDPERCFORNECIDA_100G'
                  Title.Caption = 'Qtde em % fornecida por 100g de suplemento'
                  Width = 270
                  Visible = True
                end>
            end
            object btnExcluirTabelaReferenciaVitaminas: TXiButton
              Left = 791
              Top = 16
              Width = 61
              Height = 19
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
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnExcluirTabelaReferenciaVitaminasClick
            end
          end
          object gbxTabelaReferenciaMicrominerais_mg: TGroupBox
            Left = 0
            Top = 129
            Width = 992
            Height = 129
            Align = alTop
            Caption = 'Microminerais (mg/dia)'
            TabOrder = 2
            object dbgTabelaReferenciaMicromineraisMg: TDBGrid
              Left = 2
              Top = 15
              Width = 988
              Height = 112
              Align = alClient
              DataSource = dsTabelaReferenciaMicromineraisMgDia
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'GARANTIA'
                  Title.Caption = 'Garantia'
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORREFERENCIA'
                  Title.Caption = 'Valor de Refer'#234'ncia - VR'
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDFORNECIDA_100G'
                  Title.Caption = 'Qtde. fornecida por 100g de suplemento'
                  Width = 246
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDPERCFORNECIDA_100G'
                  Title.Caption = 'Qtde em % fornecida por 100g de suplemento'
                  Width = 270
                  Visible = True
                end>
            end
            object btnExcluirTabelaReferenciaMicrominerais_MgDia: TXiButton
              Left = 791
              Top = 16
              Width = 61
              Height = 19
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
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnExcluirTabelaReferenciaMicrominerais_MgDiaClick
            end
          end
          object gbxTabelaReferenciaConsumo: TGroupBox
            Left = 0
            Top = 0
            Width = 992
            Height = 129
            Align = alTop
            Caption = 'Consumo'
            TabOrder = 3
            object dbgTabelaReferenciaConsumo: TDBGrid
              Left = 2
              Top = 15
              Width = 988
              Height = 112
              Align = alClient
              DataSource = dsTabelaReferenciaConsumo
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'GARANTIA'
                  Title.Caption = 'Garantia'
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORREFERENCIA'
                  Title.Caption = 'Valor de Refer'#234'ncia - VR'
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDFORNECIDA_100G'
                  Title.Caption = 'Qtde. fornecida por 100g de suplemento'
                  Width = 246
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDPERCFORNECIDA_100G'
                  Title.Caption = 'Qtde em % fornecida por 100g de suplemento'
                  Width = 270
                  Visible = True
                end>
            end
            object btnExcluirTabelaReferenciaConsumo: TXiButton
              Left = 791
              Top = 17
              Width = 61
              Height = 19
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
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnExcluirTabelaReferenciaConsumoClick
            end
          end
        end
      end
    end
  end
  object rdAtivo: TRadioGroup [7]
    Left = 833
    Top = 37
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
  object edRef: TEdit [8]
    Left = 742
    Top = 45
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
    TabOrder = 4
    OnChange = edRefChange
  end
  inherited ImageList1: TImageList
    Left = 728
    Top = 27
    Bitmap = {
      494C01010E001300380010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000092665E00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7696800CF656500C45F
      5F00C7757400D2CBCB00DAC1C000F3F0EE00F5F2F000EBE7E600EBE7E600932A
      2A0098373600C15E5E0097433F0000000000000000000000000093665E00F2D9
      BA00F0D4B200ECCBA000EDCB9E00EBC59300EBC18700E9BD7F00E9BD7F00E9BD
      7F00E9BD7F00E8BC7E009F6E6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C46B6A00CF656500C660
      6100B25554009229290092292900F1EDEC00FEFEFE00F8F7F600F8F7F6009127
      270098373600C563620097433F0000000000000000000000000093665E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8BC7E009F6E6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C46B6900CF656500C55F
      5F00BA5B5B009229290092292900CFCECE00F1EDEC00FEFEFE00FDFEFE009127
      270098373600C562620097433F0000000000000000000000000093665E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8BC7E009F6E6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C46B6900CF656500C55F
      5F00BA5B5B009229290092292900D7B7B600E2DDDC00FEFEFE00FDFEFE009127
      270098373600C562620097433F0000000000000000000000000094665E00F8EA
      DA00F4E3D000F2DBC100F2D8B700EED0AD00ECCBA000EDC79500EBC59300E9BD
      7F00E9BD7F00E8BC7E009F6E6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C46B6900CF656500C55F
      5F00BA5B5B00E8E3E200E8E3E200E8E3E200E8E3E200E8E3E200E8E3E2009631
      3100973E3B00C561610097433F000000000000000000000000009C6E6400FAF1
      E700F8EADA00F4E1CC00F4E0CA00F2D8B700F0D4B200EBCAA400EDCB9E00EBC5
      9300EBC18700E8BB7D009F6E6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C46B6900CF656500CB64
      6400C5616100C48E8E00C2939300C8898900CB838300CB838300C7757400C45F
      5F00C55F5F00C560600097433F00000000000000000000000000A57164000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8BC7E009F6E6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500CEA3
      A100D2A6A400D2A6A400D2A6A400D2A6A400D2A6A400D2A6A400D2A6A400D2A6
      A400D2A6A400CF65650097433F00000000000000000000000000AD7769000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9C28D00A26E6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500FEFD
      FD00FEFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFC
      FC00DEC7C500CF65650097433F00000000000000000000000000AD776900FEFE
      FE00FEFEFD00FBF4EC00F9EFE300F6E7D500F4E1CC00F2DBC100F2D8B700EED0
      AD00ECCBA000EBC59300A5716400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500FEFE
      FE00FEFEFE00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00FEFE
      FE00DEC7C500CF65650097433F00000000000000000000000000AD776900FEFE
      FE00FEFEFE00FEFEFD00FCF7F200F9EFE300F8EADA00F4E1CC00F3DEC700F2D8
      B700F0D4B200E9C390008A645E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00DEC7C500CF65650097433F00000000000000000000000000CF9B70000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A393860082615C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500FEFE
      FE00FEFEFE00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00FEFE
      FE00DEC7C500CF65650097433F00000000000000000000000000CB9C7400FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FCF7F200FAF1E700F2DCC4009866
      5D0095665D0096665D0098665D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00DEC7C500CF65650097433F00000000000000000000000000CF9B70000000
      0000000000000000000000000000000000000000000000000000E4C5AC00D39D
      6900E59D4E00EA9C4500A4686900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500FEFE
      FE00FEFEFE00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00FEFE
      FE00DEC7C500CF65650097433F00000000000000000000000000CF9B70000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00E5C6AE00E8B2
      6E00E9A759000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF656500CF656500FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00DFC8C700CF65650097433F00000000000000000000000000CF9B7000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00F4E1CC00E8B6
      7400A46869000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFAF900F9F3EF00FBF6F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AB7E7900B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300000000000000000000000000000000000000
      0000D1CDCA00958C8400C2AFA200CDC6C100C7BEB600948E8800A5A19D00FAF6
      F20000000000000000000000000000000000000000000000000081818100C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000999999000000000000000000000000000000000000000000E7D7
      D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFB1
      AA00000000000000000000000000000000000000000000000000AE7A7F00F6E3
      CC00F4DEC200F1D7B300F1D6B100EED1A500EFCF9E00EECC9700EECC9700EECC
      9700EECC9700EDCB9600B8818400000000000000000000000000FBF6F300958C
      8400FDFCFB00FDFCFB00FEFDFC00FEFDFC00FEFDFC00FDFCFB0000000000C4B8
      AE00D9D6D300000000000000000000000000000000000000000081818100FAFA
      FA00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00E1E2
      E100E1E2E100C0C0C0000000000000000000000000000000000000000000D3B8
      B300E1D7D200FEF9F100FEF1DF00F8E2CD00E6CC8900FEBC4E00E5D0B900CBB0
      AC00000000000000000000000000000000000000000000000000AE7A7F00F6E5
      CF00F5E2C900F2DCC200F0D6B700F1D4AB00EED1A500EFCD9900EECC9700EECC
      9700EECC9700EDCB9600B88184000000000000000000FCFBFA00AAA5A100FDFC
      FB00FCF9F600FCF8F500FCF8F500FCF8F500FCF8F500FCF8F500FCF8F500FCF9
      F600FBF6F200DAD6D3000000000000000000000000000000000081818100FAFA
      FA0078B98D00007E2800ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00C0C0C0000000000000000000A3858300E9D9CF00E5D3C4008B5E
      3600B5A09700967E6600708F3500423D150076933F00738A3100E1D7D2007944
      3100D6BDB800E9D9CF00D6C0BC00000000000000000000000000AE7A7F00F8EB
      DB00F7E7D400F5E0C600F4DEC200F1D7B300F1D6B100EFD2A800F0D0A000EECC
      9700EECC9700EDCB9600B881840000000000000000009D9A9600FCF9F600FAF4
      F000FAF4F000FAF4F000FAF4F000FAF4F000FAF4F000FAF4F000FAF4F000FAF4
      F000FAF4F000E5D6CC00FDFCFB0000000000007E2800007E2800007E2800007E
      2800007E280075F5A6000E863400ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00C0C0C0000000000000000000A3868500E9DEDA00E2D4CE005834
      21009B776A00E6923F00E6923F00E6923F00D0B3AF00E6923F00D4C9C8005834
      2100D7CCC900E9DEDA00EBE0DC00000000000000000000000000AE7A7F00F9EE
      E100F8EAD900F6E3CC00F5E2C900F2DCC200F1D7B300F1D4AB00EFD2A800EECC
      9800EECC9700EDCB9600B881840000000000FCF9F700FCF8F400FAF0E900FAF0
      E900FAF0E900F9EEE600F9ECE400FAF0E900FAF1EA00D1B8A600FAEFE800FAF0
      E900FAF0E900FAF4EF00B1A9A3000000000080BE940042ED840038EB7E0038EB
      7E0038EB7E0038EB7E0038EB7E0089CA9E00AAD0B600ECECEC00ECECEC00ECEC
      EC00ECECEC00C0C0C0000000000000000000A4888700F2E8E300F3EAE600D0B2
      AE00D0B2AE00D0B3B000D0B3B000D0B3B000D0B2AE00D0B2AE00D0B2AE00D1B5
      B100EEE3DF00F2E8E300F3EAE600000000000000000000000000B7818400FBF5
      ED00F9F0E400F8EAD900F7E7D400F5E0C600F4DEC200F0D6B700F1D6B100EED1
      A500EFCF9E00EDCA9500B881840000000000C4B9B100FAEDE400F8EBE200F8EB
      E200F8EBE200D1B8A600C98D6600F9EEE600D2B39F00BB693200F8ECE400F8EB
      E200F8EBE200F8EBE200D1CBC7000000000080BE940075F5A60061F2990042ED
      840038EB7E0038EB7E0038EB7E0038EB7E00D3FFE2002F914E00ECECEC00ECEC
      EC00ECECEC00C0C0C0000000000000000000A7898900F8F4F400F9F6F600E8DC
      D900E8DCD900E8DCD900E8DCD900E8DCD900E8DCD900E8DCD900E8DCD900E8DC
      D900F8F4F400F8F4F400F9F6F600000000000000000000000000BA838500FCF8
      F300FAF3EA00F9ECDE00F8EAD900F6E3CC00F5E0C600F2DCC200F1D7B300F1D4
      AB00EED1A500EECB9700B881840000000000B8ABA200F6E6DB00F6E6DB00F6E6
      DB00F6E6DB00D1B8A600C98D6600C88C6500B9693300B6653000F4E6DC00F6E6
      DB00F6E6DB00F6E6DB00FAEDE4000000000080BE94008DF7B5008DF7B50075F5
      A60061F2990050EF8D0038EB7E00E1FEEA00007E2800F3F3F300F3F3F300F3F3
      F300ECECEC00C0C0C0000000000000000000A88B8A00FFFFFF00FFFFFF00FFFF
      FF00FEE6CE00FEE7CF00FEE7CF00FEE7CF00FEE7CF00FDE5CE00FCE4CD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000C0898900FEFE
      FE00FDFAF700FAF3EA00F9F0E400F8EAD900F7E6D200F5E0C600F4DEC200F1D7
      B300F1D6B100EFD0A200B982850000000000C4B8AE00F3DFD200F3DFD200F3DF
      D200F3DFD200D2B5A100A95D2A00B0622E00B0622E00AA5D2A00F3E0D400F3DF
      D200F3DFD200F3DFD200FAEDE4000000000080BE9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008DF7B500E1FEEA0055A97000F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300C0C0C0000000000000000000AE949200F5F0EE00B7A29A00FEF1
      DF00FDA33B00FEAC4100FEAE4400FEAE4400FEA83E00FDA33B00F89B3800FCE4
      CD00FFFFFF00FFFFFF00F6F2F100000000000000000000000000C0898900FEFE
      FE00FEFEFD00FCF6F000FAF3EA00F9ECDE00F8EAD900F6E3CC00F5E0C600F2DC
      C200F1D7B300EFD2A800BA83850000000000C4B8AE00F6E6DB00F4E1D500EFDA
      CB00EDD8CA00D2B39F00B77A5400AB724E00A35826009F542300EFDACB00EFDA
      CB00F3DFD200F6E6DB00F8E8DD0000000000000000000000000081818100FFFF
      FF0078B98D0078B98D00C0DCC900FAFAFA00F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300C0C0C0000000000000000000B1969200F9F6F600FFFFFF00DDDA
      DC00FEB54700FDC15300FAC45600FAC45600FEBF5100FEB54700FDA33B00FEE6
      CE00FFFFFF00FBFAFA00A7898900000000000000000000000000BA949100FEFE
      FE00FEFEFE00FEFEFD00FCF9F500FAF3EA00F9F0E400F8EAD900F7E6D200F5E0
      C600F4DEC200EED1A700A881810000000000C8BFB900F6E6DB00F6E6DB00F7E7
      DC00F7E7DC00D2B39F00A86F4D00F8E6DA00A86F4D00944C1E00F7E7DC00F7E7
      DC00F6E6DB00F7E7DC00EDD8CA0000000000000000000000000081818100FFFF
      FF0089CA9E00FAFAFA00FAFAFA00FAFAFA00FAFAFA0099999900999999009999
      9900999999008A8A8A0000000000000000000000000000000000A9908E00BEA8
      A700E5CDA900E6CF9D00E7CFA000E7CFA000E5CE9900E5CC9000E5CE9900BAA4
      9E00C6AEAB00FEFEFE0000000000000000000000000000000000BA949100FEFE
      FE00FEFEFE00FEFEFE00FEFEFD00FCF6F000FAF3EA00F9ECDE00F8EAD900F6E3
      CC00EBD3C000C0A398009F7E7E000000000000000000F9E6DA00F7E8DD00F7E8
      DD00F7E8DD00CBC4BE00B58F7600F7E8DD00F9EEE6009D644300F8E9E000F7E8
      DD00F7E8DD00F8E9E000C8BFB90000000000000000000000000081818100FFFF
      FF00FFFFFF00FFFFFF00FAFAFA00FAFAFA00FAFAFA0099999900FFFFFF00FFFF
      FF00C0C0C0000000000000000000000000000000000000000000B5A09700E9D9
      CF00FFFFFF00FFFFFF00FEFDFB00FEFBF500FEF8EE00FDF6E900FEF3E300DFDB
      DC00000000000000000000000000000000000000000000000000D9AD9000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FCF9F500FBF5ED00F0DBC400AD7F
      7700AD7F7700AD7F7700AE7F77000000000000000000C9C1BC00FAF4EF00F9EE
      E600F9EEE600F9EEE600FAEFE800F9EEE600F9EEE600F9F1EB00F9EDE500F9EE
      E600F8F2EE00F9E6DA000000000000000000000000000000000081818100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA0099999900FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000B5A09700EDDB
      D000FFFFFF00FFFFFF00FEFEFD00FEFBF800FEF9F100FDF7EB00FDF5E700F2EB
      E900000000000000000000000000000000000000000000000000D4AC9400FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFDFC00FCF8F300EBD3C000E0B3
      8300EDB56A00EFB15F00B8828400000000000000000000000000F4E1D500FEFE
      FD00FAF5F000FAF4EF00FAF4EF00FAF4EF00FAF4EF00FAF4EF00FAF4EF00FCFB
      FA00F9E6DA00F9F1EB000000000000000000000000000000000081818100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099999900C0C0C0000000
      0000000000000000000000000000000000000000000000000000B5A09700F4E0
      CF00FFFFFF00FFFFFF00FFFFFF00FEFDFC00FEFBF500FEF8EF00FEF7EC00FBF9
      F900000000000000000000000000000000000000000000000000D4AC9400FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EBD3C000EDC6
      8E00EEB77100000000000000000000000000000000000000000000000000E5D6
      CC00F9F3EF000000000000000000FEFDFC00FEFEFD0000000000FEFDFC00F9E6
      DA00F7F1ED00000000000000000000000000000000000000000081818100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008A8A8A00000000000000
      0000000000000000000000000000000000000000000000000000EEE5E100D4BA
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFDFB00FEFAF300FEF9F000FCFB
      FB00000000000000000000000000000000000000000000000000D4AC9400FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00F0DBC400EDC6
      8E00B88284000000000000000000000000000000000000000000000000000000
      0000EFE5DE00DFD6CF00FAEDE400FBF0E900FAEDE400F4E1D500D0C9C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7BF
      BA00F3EAE600F3EAE600F2E8E300F1E6E100F1E6E100EEE3DF00EEE3DF00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFAF900F9F3EF00FBF6F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCF9F700F9F3EF00FBF7F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFAF900FAF6F300FAF6F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1CAC6009A8A7E00BBB1A900CCC6C200C5BFB900968E8800A99F9900FAF5
      F200000000000000000000000000000000000000000000000000000000000000
      0000D4CDC800958E8800BDB2A900CDC6C100C5BDB6009A8F8700A9A19C00FAF5
      F200000000000000000000000000000000000000000000000000000000000000
      0000CFCCC9009B8B8000C4B2A700D4C7BE00CCC1BA00968E8700A69F9A00FAF6
      F30000000000000000000000000000000000505050001F201F001F201F001F20
      1F0000000000505050001F201F002F302F007077700050505000505050005050
      50001F201F001F201F001F201F00000000000000000000000000FBF8F500978C
      8400FEFCFA00FEFCFA00FEFDFC00FEFDFC00FEFDFC00FEFCFA0000000000C2B7
      AE00DDD7D3000000000000000000000000000000000000000000FCF9F700958E
      8800FDFCFB00FDFCFB00FEFDFC00FEFDFC00FEFDFC00FDFCFB0000000000C4BA
      B200DAD7D5000000000000000000000000000000000000000000FAF6F300988C
      8400FDFBFA00FEFDFC00FEFDFC00FEFDFC00FEFDFC00FEFDFC0000000000C2B7
      AE00D8D6D400000000000000000000000000505050001F201F001F201F001F20
      1F0050505000000000001F201F000F0F0F00BFBFBF0070777000505050002F30
      2F001F201F001F201F001F201F000000000000000000FCFBFA00B0A19800FEFC
      FA00FCF9F600FCF8F500FCF8F500FCF8F500FCF8F500FCF8F500FCF8F500FCF9
      F600FBF6F200DFD9D500000000000000000000000000FDFBFA00AFA69F00FDFC
      FB00FCF9F600FCF8F500FCF8F500FCF8F500FCF8F500FCF8F500FCF8F500FCF9
      F600FBF2EC00DBDAD800000000000000000000000000FDFBFA00ACA49E00FDFB
      FA00FCF9F600FBF8F500FBF8F500FBF8F500FBF8F500FBF8F500FBF8F500FCF9
      F600FAF2EC00DAD7D4000000000000000000505050001F201F001F201F001F20
      1F0050505000505050001F201F000F0F0F002F302F00BFBFBF00707770005050
      50001F201F001F201F001F201F000000000000000000A09B9600FCF9F600F9F4
      F000F9F4F000F9F4F000F9F4F000F9F4F000F9F4F000F9F4F000F9F4F000F9F4
      F000F9F4F000E2D4CA00FCFBFA0000000000000000009F9A9500FCF9F600F9F5
      F100F9F5F100F9F5F100F9F5F100F9F5F100F9F5F100F9F5F100F9F5F100F9F5
      F100F9F5F100D9D6D200FDFCFB0000000000000000009E9A9600FCF9F600FAF4
      F000FAF4F000FAF6F300FAF4F000FAF4F000FAF4F000FAF4F000FAF4F000FAF4
      F000FAF4F000E6D7CC00FDFDFC0000000000505050001F201F001F201F001F20
      1F00BFBFBF00505050001F201F002F302F005050500050505000BFBFBF007077
      70001F201F001F201F001F201F0000000000FBF8F500FCF8F400FBF0E900FBF0
      E900FAF1EA00FBF0E900FBF0E900FBF0E900FBF0E900FBF0E900FBF0E900FBF0
      E900FBF0E900F9F4F000B6ACA40000000000FCF9F700FCF9F600F9EFE900F9EF
      E900F9EFE900F9EFE900F9EFE900FAF1EB00F9EFE900F9EFE900FBF2EC00F9EF
      E900F9EFE900F9F3EF00B8ACA40000000000FBF8F500FCF9F600FBF0E900FBF0
      E900FBF0E900D5C3B800F7E8DF00FBF0E900FBF0E900F9ECE200FBF0E900FBF0
      E900FBF0E900FAF3EE00B1A69E0000000000505050001F201F001F201F001F20
      1F002F302F00BFBFBF002F302F00505050005050500050505000505050007077
      70001F201F001F201F001F201F0000000000BEB4AD00F9EDE500F8EBE200F8EB
      E200F2E2D900E6D0C100FBF0E900F9EDE600BBA69800FAF1EB00F8EBE200F8EB
      E200F8EBE200F8EBE200DBCEC50000000000BDB5AE00F9EDE500F9EBE200F9EB
      E200F9EBE200F9EBE300F6E5DA00C8997A00F9EBE300F9EAE100C9977600F9EB
      E200F9EBE200F9EBE200D4CBC40000000000C1B5AD00FAEDE400F9ECE200F9EC
      E200F9ECE200D5C3B800BB6B3600EDD7C900FBF0E900BB6B3600F8ECE500F9EC
      E200F9ECE200F9ECE200D1C8C20000000000505050001F201F001F201F001F20
      1F001F201F001F201F001F201F001F201F001F201F001F201F001F201F001F20
      1F001F201F001F201F001F201F0000000000BBB2AB00F5E6DC00F5E6DC00F5E6
      DC00F2DFD400B5683500B46C3D00F5E6DC00B5673300B5683500F0DCCE00F8E7
      DC00F5E6DC00F5E6DC00FBF0E80000000000BDB2A900F6E5DB00F6E5DB00F6E5
      DB00F9EDE500C88F6A00B7663000C8997A00C8997A00B7663000C68C6600F6E5
      DB00F6E5DB00F6E5DB00FAEDE40000000000C0B3AB00F4E5DC00F4E5DC00F4E5
      DC00F4E5DC00CAB1A200BA6A3500B6663200D5C3B800B6663200F5E6DC00F4E5
      DC00F4E5DC00F4E5DC00FAEDE40000000000505050001F201F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F201F0000000000BEB4AD00F3DED100F3DFD300F3DF
      D300EEDBCE00AD5F2B00AE622F00AA5C2A00AE612E00AE622F00AB5E2A00BA8D
      7100F3DFD300F3DED100FAEEE70000000000BDB5AE00F4DFD200F4DFD200F4DF
      D2009D522000B1632F00B1632F00AB5D2A00B1632F00B1632F00B97D5800F4DF
      D200F4DFD200F4DFD200FAEDE40000000000C1B5AD00F4DFD100F4DFD100F4DF
      D100F4DFD100CCB09F00B0632F00B0632F00AD602D00AB5E2C00F5E0D200F4DF
      D100F4DFD100F4DFD100FAEBE10000000000505050001F201F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F201F0000000000C1B8B000F5E6DC00F2E0D500F0DC
      CE00E6D0C1009C53250094502500E3D0C3009952250096512500BEB4AD00F0DC
      CE00F3DFD300F5E6DC00F9E9DE0000000000C2B8B100F6E6DC00F5E1D300EFDA
      CC00F4DFD2009F5E3400A1562400C1855E009D6544009F542200AB724F00EFDA
      CC00F4DFD200F6E5DB00F9E9DE0000000000C3B8B100F5E6DC00F6E1D400F0D9
      CB00EFD9CA00C9AD9D00A2582700A1562600C9AD9D009B522200F1DBCC00F0D9
      CB00F4DFD100F4E5DC00FBEBDF0000000000505050001F201F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F201F0000000000C5BFB900F7E6DA00F7E6DA00F8E7
      DC00F1DDD0008C593B00F9E9DE00F7E6DA008D533100F8EBE200F7E6DA00F8E7
      DC00F7E6DA00F8E7DC00EEDBCE0000000000C5BFBB00F6E5DA00F6E6DB00F7E7
      DC00F7E7DC00F8E8DD00B6AAA200AB724F00F7E3D700C8BCB20099603D00F7E7
      DC00F6E6DB00F7E7DC00EFDACC0000000000C5BFB900F4E4DA00F5E6DC00F6E7
      DD00F6E7DD00CCB09F00954D1F00C9AD9D00F5E6DC008C471C00F7E8DE00F6E7
      DD00F5E6DC00F6E7DD00EDD7C90000000000505050001F201F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F201F000000000000000000F9E6D900F9E9DE00F9E9
      DF00F9E9DF00F8EAE100F9E9DF00F9E9DF00F8EBE200F9E9DF00F9E9DF00F9E9
      DF00F9E9DF00F9E9E000C5BFB9000000000000000000F7E3D700F8E8DD00F8E8
      DD00F8E8DD00F8E8DD00F8E8DD00F9EDE500F8E8DD00F8E8DD00F9EFE900F8E8
      DD00F8E8DD00F9EAE000C5BFBB000000000000000000F5E2D600F7E8DE00F7E8
      DF00F7E8DF00C5AC9E00CAB1A200F7E8DF00FAEDE4009A603B00F8E8DE00F7E8
      DF00F7E8DF00F7E8DF00C5BFB90000000000505050001F201F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F201F000000000000000000C7C0BB00F9F4F000F9EE
      E700F9EEE700F9EEE700F9EEE700F9EEE700F9EEE700F9EEE700F9EEE700F9EE
      E700F9F2ED00F9E6D900000000000000000000000000C8C1BC00F9F3EF00F7EE
      E800F7EEE800F7EEE800F7EEE800F7EEE800F7EEE800F7EEE800F7EEE800F7EE
      E800FAF2ED00F7E3D700000000000000000000000000C8C0BA00FAF4F000FAEF
      E700FAEFE700FAEFE700FAEFE700FAEFE700FAEFE700FAEFE700FAEFE700FAEF
      E700FAF2ED00F6E2D5000000000000000000505050001F201F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F201F00000000000000000000000000F2E0D500FEFE
      FD00FAF5F200F9F4F000F9F4F000F9F4F000F9F4F000F9F4F000F9F4F000FDFB
      FA00F9E6D900F8EBE30000000000000000000000000000000000F6E2D500FEFE
      FD00FAF5F200F9F3EF00F9F3EF00F9F3EF00F9F3EF00F9F3EF00F9F3EF00FDFB
      FA00F8E8DD00F7EEE90000000000000000000000000000000000F5E2D6000000
      0000FAF5F100FAF4F000FAF4F000FAF4F000FAF4F000FAF4F000FAF4F000FDFB
      FA00FAE9DD00F7EDE6000000000000000000505050001F201F0000B8000000B8
      000000B8000000B8000000B8000000B8000000B8000000B8000000B8000000B8
      000000B8000000B800001F201F0000000000000000000000000000000000E0D5
      CE00F9F2ED000000000000000000FEFDFC00FEFEFD0000000000FEFDFC00F9E6
      DA00F8F1ED00000000000000000000000000000000000000000000000000D9D6
      D200FAF2ED000000000000000000FEFDFC00FEFEFD0000000000FEFDFC00F9E9
      DE00F7EEE900000000000000000000000000000000000000000000000000E1D6
      CF00FAF3EE000000000000000000FEFDFC000000000000000000FEFDFC00FBEB
      DF00F7EDE600000000000000000000000000505050001F201F0000B8000000B8
      000000B8000000B8000000B8000000B8000000B8000000B8000000B8000000B8
      000000B8000000B800001F201F00000000000000000000000000000000000000
      0000F1E5DD00E4D3C800F9E9DE00FBF0E800F9E9E000F2E0D500CFC8C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3DCD700D7D1CB00F9E9DE00FBF2EB00FAEDE400F5E1D300D0C8C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4E5DC00E1D6CF00FBEBDF00FBF1E900FBEBDF00F6E1D400CFCAC6000000
      000000000000000000000000000000000000505050005050500090FF2F0090FF
      2F0090FF2F0090FF2F0090FF2F0090FF2F0090FF2F0090FF2F0090FF2F0090FF
      2F0090FF2F0090FF2F0050505000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FBFDFF00FDFD
      FF0000000000FDFDFD00D9DADA00C0C1C100C0C3C400E6E9EA00FEFFFF000000
      0000FCFFFF000000000000000000FDFDFD000000000000000000000000000000
      00000000000000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F000000000000000000FEFEFE00FEFFFF00FCFB
      F9008E8C8800544E410068625600726D6000615C5300504B41005E5A5600C3C1
      BF0000000000FDFDFD00FEFEFE00FDFDFD000000000000000000000000000000
      0000000000007F7F7F00000000007F7F7F000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      00007F7F7F007F7F7F00000000000000000000000000000000007F7F7F000000
      00000000000000000000BFBFBF0000000000FEFEFE0000000000CAC9C6005350
      450097908400B8B8AC00C7C6BA00D0CEC30095948A0073736A0066665B004D4B
      43008786830000000000FEFFFE00FEFEFE000000000000000000000000000000
      00007F7F7F000000000000000000000000007F7F7F0000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      FF00000000007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F
      7F000000000000000000BFBFBF0000000000FCFDFE00D0CFC900615F4E00B7B0
      A900D5D5CA00E6E5E400F8F9FA00F6F9FD00F7FEF900E6E8DF00BBB7B2008482
      7A005D5B4F00807F7D0000000000FCFEFD000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F00000000007F7F7F00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000BFBFBF00BFBFBF0000000000000000000000000000007F0000007F000000
      7F0000000000000000000000000000000000BFBFBF0000000000000000000000
      FF000000FF00000000007F7F7F007F7F7F00FF00FF000000FF00000000007F7F
      7F007F7F7F0000000000BFBFBF00000000000000000073716A00B8B1A400D7DB
      D900F8FCFC00E8DACC00C4A57A00E2B46D00D2BA8700EAE3DF00F9FDFB00CCCC
      C6007E7C750052514700BBBAB9000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000007F7F7F00000000007F7F7F000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF000000000000000000FF00
      FF000000FF000000FF0000000000FF00FF000000FF000000FF000000FF000000
      00000000000000000000BFBFBF0000000000A5A4A10097958900DBD4D100F9FF
      FF00BC9C78007A3E050086500E00D5801B00825F1D00917B4700C8C6B600FBFD
      FA00BDBBB70078766800524E4800FEFCFE00000000007F7F7F00000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF000000000000000000FF00
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000BFBFBF00000000007F7E7700B7B5AB00E4E6E300C6BE
      B800B86C1D00EF801A00572D0F00E47611002B100500D9A44B00F9F3DC00D5D4
      CD00E4E5E00082807700544D4400DDDEDE000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      0000FF00FF000000FF000000FF000000FF000000FF0000000000000000000000
      00000000000000000000BFBFBF000000000073726900CAC9C000FCFFFF008B68
      4400E47A1900D06E1400B75B0700BF691D005A3E1500DD943D00F3D09B00D7CE
      BD00F9FBFA00939087006A645900B8B8B9000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      000000000000FF00FF000000FF000000FF000000FF007F7F7F007F7F7F000000
      00000000000000000000BFBFBF000000000066331900C766170000000000663A
      1A00E2750F00D96B1300D9711A000C060100DD8B3400E9A84D00EBB46A00CAB9
      9100FFFEFF009D9D9500635E5400B3B3B10000000000000000007F7F7F000000
      0000000000007F7F7F0000000000007F7F000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      000000000000FF00FF000000FF000000FF000000FF00000000007F7F7F007F7F
      7F000000000000000000BFBFBF0000000000511E0700DF560000000000006445
      3000DD600400CF670D00C2600F0043260900D0883100E39F4D00F6A44300C1A6
      7F00FBFFFF007E7F76005E594F00CECECC000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      0000000000000000FF000000FF00FF00FF000000FF000000FF00000000007F7F
      7F007F7F7F0000000000BFBFBF00000000004B4C3C00D8690600E6DBD5009298
      9600AB380200E562060029110100EA7C1F0061331400F59F3200DD912F00CFBC
      AE00E2E8E50061635B0059534A00F8F7F7000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF007F7F7F007F7F7F007F7F
      7F00FF00FF000000FF00000000007F7F7F00FF00FF000000FF000000FF000000
      00007F7F7F007F7F7F00BFBFBF00000000009F9EA10082491100D5AF8600FAFF
      FF005A3D37006E1D0000642E0700D97314006E380B00733908009C745700FBFD
      FC00D7D6CF009993870083817C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF007F0000007F0000007F00
      00000000FF000000FF007F7F7F007F0000007F000000FF00FF000000FF000000
      FF0000000000000000000000000000000000000000003F372600D2A97400DECB
      B900FBFFFF00868A8400643723006E3A110083462700AA9D9000F4FFFF00DFDB
      DC00BBB5AA0055534700EAEBE900F9FAFC000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF007F0000007F0000007F00
      0000FF00FF00FF00FF007F0000007F0000007F0000007F000000FF00FF000000
      FF00BFBFBF00BFBFBF000000000000000000FEFDFA00C9D0D200311A0700CF9D
      6300D6A27100EDDBCD00FDFFFF000000000000000000E7EBEC00DAD6C800B6B5
      A600645C5300BCBBB700FAFBFB00FAFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000000000000000000000000000000000000000007F7F7F000000
      0000BFBFBF00BFBFBF0000000000000000000000000000000000BFBFBF000000
      000000000000000000000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000CDD3D8004637
      2A0084460900D85D0000E8480000B19C8300CBC8BF00BAB4AB00969287007B78
      7100C7C7C100FAFBFB00FAFBFB00FAFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FFFEFE00FEFFFD000000
      00009FA1A200554D45003D2508006A6D59006F6B630084817A00A5A3A000FAFB
      FB00FAFBFB00FAFBFB00FAFBFB00FAFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFC001000000008001C00100000000
      8001C001000000008001C001000000008001C001000000008001C00100000000
      8001C001000000008001C001000000008001C001000000008001C00100000000
      8001C001000000008001C001000000008001C001000000008001C00700000000
      8001C00700000000FFFFFFFF00000000FC7FFFFFFFFFC001F00FC003E00FC001
      C027C003E00FC0018003C0030001C001800100030001C001000100030001C001
      000100030001C001000100030001C001000100030001C0010001C0030001C001
      0001C003C003C0018001C007C00FC0018003C00FC00FC001C003C01FC00FC007
      E647C03FC00FC007F01FFFFFE00FFFFFFC7FFC7FFC7F8001F00FF00FF00F0800
      C027C027C0270400800380038003000080018001800100000001000100010000
      00010001000100000001000100013FFC0001000100013FFC0001000100013FFC
      0001000100013FFC8001800180013FFC8003800380033FFCC003C003D0030000
      E647E647E6C70000F01FF01FF01F0000FFFF0816FDFFC00F00008008FAFFC007
      73DC4004F77FDFFF618C0002EEBFD38F60048001DF5FDFFF600C0000BBAFD3FF
      601C0000EBFFD3FF703C0000F5FFDFFF781C2000DA7FD3FF780C2000FE3FDF0F
      78040000F71FD30F00000001FF8FD30F00008000FFC7DFFF00000180FFE3D3C7
      0000C000FFF1DFD7FFFF1000FFF9E00F00000000000000000000000000000000
      000000000000}
  end
  inherited D: TDataSource
    OnStateChange = DStateChange
    Left = 560
    Top = 11
  end
  inherited ActionList1: TActionList
    Left = 664
    Top = 35
    object acTipo: TAction
      Caption = 'acTipo'
      ShortCut = 114
      OnExecute = acTipoExecute
    end
    object acZerar: TAction
      Caption = 'acZerar'
    end
  end
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select produto.* ,'
      'fornecedor.nome nomefor,'
      'concat(grupo.id, '#39' - '#39',grupo.descricao) desgrupo,'
      'case when produto.idcor > 0 then'
      'concat(cor.id , '#39' - '#39', cor.descricao) else '#39#39' end descor'
      'from produto'
      'left join fornecedor on fornecedor.id = produto.idfornecedor'
      'left join grupo on grupo.id = produto.idgrupo'
      'left join cor on cor.id = produto.idcor'
      'where produto.ex = 0 and produto.tipo = '#39'P'#39' '
      
        '     and (( produto.descricao like :pesq ) or (produto.referenci' +
        'a like :pesq)  or ( produto.id like :pesq)  )'
      '     and (( :gr = 0) or (produto.idgrupo = :gr ))'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'pesq'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'gr'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 11
    ParamData = <
      item
        DataType = ftString
        Name = 'pesq'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'gr'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
    end
    object Test_seguranca: TFloatField
      FieldName = 'est_seguranca'
    end
    object Test_minimo: TFloatField
      FieldName = 'est_minimo'
      DisplayFormat = '###,###,###,##0.###'
    end
    object Tft_conv_qtde: TFloatField
      FieldName = 'ft_conv_qtde'
      DisplayFormat = '###,###,###,##0.00000'
    end
    object Tvalor: TFloatField
      FieldName = 'valor'
      OnValidate = TvalorValidate
      DisplayFormat = '###,###,###,##0.0000000'
    end
    object Tqtdestoque: TFloatField
      FieldName = 'qtdestoque'
      DisplayFormat = '###,###,###,##0.###'
    end
    object Tdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object Ttipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
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
    object Tft_conv_un: TWideStringField
      FieldName = 'ft_conv_un'
      Size = 10
    end
    object Tft_conv_2un: TWideStringField
      FieldName = 'ft_conv_2un'
      Size = 10
    end
    object TCusto_montagem: TFloatField
      FieldName = 'Custo_montagem'
      DisplayFormat = '###,###,###,##0.0000000'
    end
    object Tcod_Manual: TIntegerField
      FieldName = 'cod_Manual'
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
      DisplayFormat = '###,###,###,##0.00#'
    end
    object TIcms: TFloatField
      FieldName = 'Icms'
      DisplayFormat = '#0.00'
    end
    object TPIS: TWideStringField
      FieldName = 'PIS'
      Size = 5
    end
    object TpPIS: TFloatField
      FieldName = 'pPIS'
      DisplayFormat = '#0.00'
    end
    object TCOFINS: TWideStringField
      FieldName = 'COFINS'
      Size = 5
    end
    object TpCOFINS: TFloatField
      FieldName = 'pCOFINS'
      DisplayFormat = '#0.00'
    end
    object TIPI: TWideStringField
      FieldName = 'IPI'
      Size = 5
    end
    object TpIPI: TFloatField
      FieldName = 'pIPI'
      DisplayFormat = '#0.00'
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
      DisplayFormat = '#0.00###'
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
      DisplayFormat = '#0.00'
    end
    object Tnomefor: TWideStringField
      FieldName = 'nomefor'
      Size = 80
    end
    object TIDSTRIB: TIntegerField
      FieldName = 'IDSTRIB'
    end
    object TREDUCAO: TFloatField
      FieldName = 'REDUCAO'
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
      DisplayFormat = '#0.00'
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
      Size = 10
    end
    object TMARGEMST: TFloatField
      FieldName = 'MARGEMST'
      DisplayFormat = '#0.00'
    end
    object Tvalor2: TFloatField
      FieldName = 'valor2'
      DisplayFormat = '###,###,###,##0.0000000'
    end
    object TpesoLiq: TFloatField
      FieldName = 'pesoLiq'
      DisplayFormat = '#0.0000'
    end
    object Tpesobru: TFloatField
      FieldName = 'pesobru'
      DisplayFormat = '#0.0000'
    end
    object TDUN14: TWideStringField
      FieldName = 'DUN14'
    end
    object Tcubagem: TFloatField
      FieldName = 'cubagem'
      DisplayFormat = '#0.000000'
    end
    object TCustoProcesso: TFloatField
      FieldName = 'CustoProcesso'
      DisplayFormat = '#0.0000000'
    end
    object TCustoMP: TFloatField
      FieldName = 'CustoMP'
      DisplayFormat = '#0.0000000'
    end
    object TCustoproducao: TFloatField
      FieldName = 'Custoproducao'
      DisplayFormat = '#0.0000000'
    end
    object TCustoOperacional: TFloatField
      FieldName = 'CustoOperacional'
      DisplayFormat = '#0.0000000'
    end
    object TCustoFinal: TFloatField
      FieldName = 'CustoFinal'
      DisplayFormat = '#0.0000000'
    end
    object TVendaSugerido: TFloatField
      FieldName = 'VendaSugerido'
      DisplayFormat = '###,###,###,##0.0000000'
    end
    object TIdCxMaster: TIntegerField
      FieldName = 'IdCxMaster'
      OnValidate = TIdCxMasterValidate
    end
    object TEmbalagem: TWideStringField
      FieldName = 'Embalagem'
      Size = 1
    end
    object Tidweb: TIntegerField
      FieldName = 'idweb'
    end
    object Tsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object Taltura: TFloatField
      FieldName = 'altura'
      DisplayFormat = '#0.0000000'
    end
    object Tlargura: TFloatField
      FieldName = 'largura'
      DisplayFormat = '#0.0000000'
    end
    object Tcomprimento: TFloatField
      FieldName = 'comprimento'
      DisplayFormat = '#0.0000000'
    end
    object TcustoCxMaster: TFloatField
      FieldName = 'custoCxMaster'
      DisplayFormat = '#0.0000000'
    end
    object Tmultiplo: TFloatField
      FieldName = 'multiplo'
      OnValidate = TmultiploValidate
      DisplayFormat = '#0.###'
    end
    object TmaxDesconto: TFloatField
      FieldName = 'maxDesconto'
      DisplayFormat = '#0.00'
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
    object Tdesgrupo: TWideStringField
      FieldName = 'desgrupo'
      Size = 100
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
    object Tbx_item_ficha_venda: TWideStringField
      FieldName = 'bx_item_ficha_venda'
      Required = True
      Size = 1
    end
    object Ttotprocesso: TFloatField
      FieldName = 'totprocesso'
      DisplayFormat = '#0.0000000'
    end
    object Ttotmp: TFloatField
      FieldName = 'totmp'
      DisplayFormat = '#0.0000000'
    end
    object Tcusto_total: TFloatField
      FieldName = 'custo_total'
      DisplayFormat = '#0.0000000'
    end
    object Tativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object TtotTempo: TWideStringField
      Alignment = taCenter
      FieldName = 'totTempo'
    end
    object Tidcor: TIntegerField
      FieldName = 'idcor'
    end
    object Ttamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object Treferencia_base: TWideStringField
      FieldName = 'referencia_base'
    end
    object Tdescor: TWideStringField
      FieldName = 'descor'
      ReadOnly = True
      Size = 115
    end
    object Tvolume1: TWideStringField
      FieldName = 'volume1'
    end
    object Tvolume2: TWideStringField
      FieldName = 'volume2'
    end
    object Tficha_tecnica: TWideMemoField
      FieldName = 'ficha_tecnica'
      BlobType = ftWideMemo
    end
    object Tdias_validade: TIntegerField
      FieldName = 'dias_validade'
    end
    object TComposicaoQuali: TWideMemoField
      FieldName = 'ComposicaoQuali'
      BlobType = ftWideMemo
    end
    object TSubstituto: TWideMemoField
      FieldName = 'Substituto'
      BlobType = ftWideMemo
    end
    object Tgarantia: TWideStringField
      FieldName = 'garantia'
      Size = 250
    end
    object TModoUso: TWideMemoField
      FieldName = 'ModoUso'
      BlobType = ftWideMemo
    end
    object TPrazovalidade: TWideStringField
      FieldName = 'Prazovalidade'
      Size = 250
    end
    object TConservacao: TWideMemoField
      FieldName = 'Conservacao'
      BlobType = ftWideMemo
    end
    object Trestricao: TWideStringField
      FieldName = 'restricao'
      Size = 250
    end
    object TIndicacaoUso: TWideMemoField
      FieldName = 'IndicacaoUso'
      BlobType = ftWideMemo
    end
    object TCLASSIFICACAO: TWideMemoField
      FieldName = 'CLASSIFICACAO'
      BlobType = ftWideMemo
    end
    object TPROTEINADOOUMINERAL: TWideStringField
      FieldName = 'PROTEINADOOUMINERAL'
      Size = 1
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
      
        '   volume1, volume2, ficha_tecnica, dias_validade, ComposicaoQua' +
        'li, Substituto, '
      
        '   garantia, IndicacaoUso, ModoUso, Prazovalidade, Conservacao, ' +
        'restricao, Classificacao,'
      '   ProteinadoOuMineral)'
      'VALUES'
      
        '  (:Id, :descricao, :tipo, :est_seguranca, :est_minimo, :ft_conv' +
        '_un, :ft_conv_qtde,'
      
        '   :ft_conv_2un, :produzido, :barras, :referencia, :valor, :Cust' +
        'o_montagem,'
      
        '   :cod_Manual, :cest, :NCM, :eIPI, :obs, :PrecoCompra, :Icms, :' +
        'PIS, :pPIS,'
      
        '   :COFINS, :pCOFINS, :IPI, :pIPI, :csosn, :cfop, :cfop_fora, :m' +
        'argem,'
      
        '   :ex, :idfornecedor, :Royalties, :IDSTRIB, :REDUCAO, :MARGEMST' +
        ', :ST,'
      
        '   :ST2, :CSOSN2, :MVA, :CODIPI, :IDTIPO_TRIBUTACAO, :IDORIGEM, ' +
        ':unidade_nfe,'
      
        '   :valor2, :pesoLiq, :pesobru, :multiplo, :cubagem, :DUN14, :Cu' +
        'stoProcesso,'
      
        '   :CustoMP, :Custoproducao, :CustoOperacional, :CustoFinal, :Ve' +
        'ndaSugerido,'
      
        '   :IdCxMaster, :Embalagem, :altura, :largura, :comprimento, :id' +
        'web, :sincronizado,'
      
        '   :custoCxMaster, :maxDesconto, :cst, :idgrupo, :materia_prima,' +
        ' :divisor,'
      
        '   :nao_vender_web, :alturaCx, :larguraCx, :comprimentoCx, :bx_i' +
        'tem_ficha_venda,'
      
        '   :totprocesso, :totmp, :custo_total, :ativo, :totTempo, :idcor' +
        ', :tamanho,'
      
        '   :referencia_base, :volume1, :volume2, :ficha_tecnica, :dias_v' +
        'alidade,'
      
        '   :ComposicaoQuali, :Substituto, :garantia, :IndicacaoUso, :Mod' +
        'oUso, :Prazovalidade,'
      
        '   :Conservacao, :restricao, :Classificcao, :ProteinadoOuMineral' +
        ')')
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
      '  volume2 = :volume2,'
      '  ficha_tecnica = :ficha_tecnica,'
      '  dias_validade = :dias_validade,'
      '  ComposicaoQuali = :ComposicaoQuali,'
      '  Substituto = :Substituto,'
      '  garantia = :garantia,'
      '  IndicacaoUso = :IndicacaoUso,'
      '  ModoUso = :ModoUso,'
      '  Prazovalidade = :Prazovalidade,'
      '  Conservacao = :Conservacao,'
      '  restricao = :restricao,'
      '  Classificacao = :Classificacao,'
      '  ProteinadoOuMineral = :ProteinadoOuMineral'
      'WHERE'
      '  produto.Id = :OLD_Id')
    Left = 528
    Top = 11
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
        Name = 'ficha_tecnica'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias_validade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ComposicaoQuali'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Substituto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'garantia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IndicacaoUso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ModoUso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Prazovalidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conservacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'restricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Classificacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ProteinadoOuMineral'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Classificcao'
        ParamType = ptUnknown
      end>
  end
  object dFicha: TDataSource
    DataSet = qFicha
    Left = 896
    Top = 88
  end
  object qFicha: TZQuery
    Connection = DM.Conex
    UpdateObject = upF
    AfterPost = qFichaAfterPost
    OnNewRecord = qFichaNewRecord
    SQL.Strings = (
      'select '
      '  case '
      '      when ficha_tecnica.tipo =  '#39'M'#39' then '
      '           produto.descricao '
      '      when ficha_tecnica.tipo =  '#39'P'#39' then '
      '           pp.descricao '
      '     when ficha_tecnica.tipo =  '#39'S'#39' then '
      '          semi_acabado.descricao'
      '  end descr,'
      ''
      '  case ficha_tecnica.tipo'
      '       when '#39'P'#39' then '#39'PR'#39' '
      '       when '#39'M'#39' then '#39'MP'#39' '
      '       when '#39'S'#39' then '#39'SA'#39
      ' end Tipo2, '
      ''
      '  case ficha_tecnica.tipo'
      '       when '#39'P'#39' then (ficha_tecnica.quantidade *  pp.custofinal)'
      
        '       when '#39'M'#39' then (ficha_tecnica.quantidade *  (coalesce(prod' +
        'uto.ft_conv_qtde, 1)*produto.precocompra) )'
      
        '       when '#39'S'#39' then  (ficha_tecnica.quantidade *  semi_acabado.' +
        'totmp)'
      ' end totmp, '
      ''
      '  case ficha_tecnica.tipo'
      '       when '#39'P'#39' then 0'
      '       when '#39'M'#39' then 0'
      
        '       when '#39'S'#39' then  (ficha_tecnica.quantidade *  semi_acabado.' +
        'totprocesso)'
      ' end  totprocesso,  '
      'ficha_tecnica.*'
      ''
      'from ficha_tecnica'
      
        'left join produto on ficha_tecnica.iditem = produto.id and ficha' +
        '_tecnica.tipo = '#39'M'#39' '
      
        'left join produto pp on ficha_tecnica.iditem = pp.id and ficha_t' +
        'ecnica.tipo = '#39'P'#39
      
        'left join semi_acabado on ficha_tecnica.iditem  = semi_acabado.i' +
        'd and ficha_tecnica.tipo = '#39'S'#39
      'where ficha_tecnica.idproduto = :ID'
      'order by 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    Left = 834
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object qFichaId: TIntegerField
      FieldName = 'Id'
    end
    object qFichaIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qFichaQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = '###,###,###,##0.00000'
    end
    object qFichadescr: TWideStringField
      FieldName = 'descr'
      Size = 150
    end
    object qFichaTipo2: TWideStringField
      FieldName = 'Tipo2'
      Size = 2
    end
    object qFichaIdItem: TIntegerField
      FieldName = 'IdItem'
    end
    object qFichaTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qFichaUnidade: TWideStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object qFichatotmp: TFloatField
      FieldName = 'totmp'
      DisplayFormat = '#0.000000'
    end
    object qFichatotprocesso: TFloatField
      FieldName = 'totprocesso'
      DisplayFormat = '#0.000000'
    end
  end
  object upF: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ficha_tecnica'
      'WHERE'
      '  ficha_tecnica.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO ficha_tecnica'
      '  (Id, IdProduto, IdItem, Tipo, Unidade, Quantidade)'
      'VALUES'
      '  (:Id, :IdProduto, :IdItem, :Tipo, :Unidade, :Quantidade)')
    ModifySQL.Strings = (
      'UPDATE ficha_tecnica SET'
      '  Id = :Id,'
      '  IdProduto = :IdProduto,'
      '  IdItem = :IdItem,'
      '  Tipo = :Tipo,'
      '  Unidade = :Unidade,'
      '  Quantidade = :Quantidade'
      'WHERE'
      '  ficha_tecnica.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 864
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdItem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Quantidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object qComi: TZQuery
    Connection = DM.Conex
    UpdateObject = uComi
    OnNewRecord = qComiNewRecord
    SQL.Strings = (
      'select '
      'prod_comi.*,'
      'vendedor.nome'
      'from prod_comi'
      
        'left join vendedor on vendedor.id = prod_comi.idvendedor and ven' +
        'dedor.ativo = '#39'S'#39
      'where prod_comi.idproduto = :pro'
      'order by vendedor.nome'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pro'
        ParamType = ptUnknown
      end>
    Left = 334
    Top = 31
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qComiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qComiIDproduto: TIntegerField
      FieldName = 'IDproduto'
      Required = True
    end
    object qComiIDvendedor: TIntegerField
      FieldName = 'IDvendedor'
      Required = True
    end
    object qComipComissao: TFloatField
      FieldName = 'pComissao'
      DisplayFormat = '#0.00'
    end
    object qCominome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
  end
  object uComi: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM prod_comi'
      'WHERE'
      '  prod_comi.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO prod_comi'
      '  (ID, IDproduto, IDvendedor, pComissao)'
      'VALUES'
      '  (:ID, :IDproduto, :IDvendedor, :pComissao)')
    ModifySQL.Strings = (
      'UPDATE prod_comi SET'
      '  ID = :ID,'
      '  IDproduto = :IDproduto,'
      '  IDvendedor = :IDvendedor,'
      '  pComissao = :pComissao'
      'WHERE'
      '  prod_comi.ID = :OLD_ID')
    RefreshSQL.Strings = (
      'select '
      'prod_comi.*,'
      'vendedor.nome'
      'from prod_comi'
      'left join vendedor on vendedor.id = prod_comi.idvendedor'
      'where prod_comi.id = :id'
      '')
    UseSequenceFieldForRefreshSQL = False
    Left = 396
    Top = 47
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDvendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pComissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dComi: TDataSource
    DataSet = qComi
    Left = 364
    Top = 39
  end
  object qVend: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      ' vendedor.id, vendedor.nome , vendedor.comissao'
      'from vendedor'
      'where ativo = '#39'S'#39
      'order by vendedor.nome'
      '')
    Params = <>
    Left = 958
    Top = 45
    object qVendid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qVendnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object qVendcomissao: TFloatField
      FieldName = 'comissao'
    end
  end
  object dCF: TDataSource
    DataSet = qCF
    Left = 81
    Top = 447
  end
  object dCFOP: TDataSource
    DataSet = qCFOP
    Left = 396
    Top = 447
  end
  object qCF: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      ' codigo'
      'from ibpt'
      'order by codigo')
    Params = <>
    Left = 46
    Top = 447
    object qCFcodigo: TWideStringField
      FieldName = 'codigo'
    end
  end
  object qCFOP: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select CFOP from NOPER'
      'order by CFOP')
    Params = <>
    Left = 350
    Top = 447
    object qCFOPCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 30
    end
  end
  object qTipoTribu: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from tipo_tributacao')
    Params = <>
    Left = 876
    Top = 312
    object qTipoTribuID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoTribuTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 100
    end
  end
  object qNCM: TZQuery
    Connection = DM.Conex
    AfterOpen = qNCMAfterOpen
    SQL.Strings = (
      'select '
      ' *'
      'from clasf'
      'order by ncm')
    Params = <>
    Left = 158
    Top = 447
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
    Left = 193
    Top = 447
  end
  object qMP: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, descricao, precocompra'
      'from produto'
      'where tipo = '#39'M'#39' and ex = 0 and embalagem = '#39'S'#39
      'order by descricao')
    Params = <>
    Left = 678
    Top = 455
    object qMPid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qMPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qMPprecocompra: TFloatField
      FieldName = 'precocompra'
    end
  end
  object dMP: TDataSource
    DataSet = qMP
    Left = 708
    Top = 455
  end
  object qForPro: TZQuery
    Connection = DM.Conex
    UpdateObject = uForPro
    OnNewRecord = qForProNewRecord
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
    Left = 435
    Top = 431
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
    Left = 520
    Top = 439
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
    Left = 532
    Top = 431
  end
  object dsTipoTribu: TDataSource
    DataSet = qTipoTribu
    Left = 820
    Top = 311
  end
  object qGrupo: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'select grupo.id, concat(grupo.id,'#39' - '#39',grupo.descricao) descrica' +
        'o '
      'from grupo'
      'order by 2')
    Params = <>
    Left = 864
    Top = 4
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
    Left = 903
    Top = 12
  end
  object qNcmUf: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select '
      ' *'
      'from clasf_it'
      'where idcf = :id'
      ''
      'order by uf')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    DataSource = dNCM
    Left = 238
    Top = 391
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qNcmUfID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNcmUfIDCF: TIntegerField
      FieldName = 'IDCF'
      Required = True
    end
    object qNcmUfUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qNcmUfIDSTRIB: TIntegerField
      FieldName = 'IDSTRIB'
    end
    object qNcmUfCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object qNcmUfCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 10
    end
    object qNcmUfCSOSN2: TWideStringField
      FieldName = 'CSOSN2'
      Size = 10
    end
    object qNcmUfPIS: TWideStringField
      FieldName = 'PIS'
      Size = 10
    end
    object qNcmUfPPIS: TFloatField
      FieldName = 'PPIS'
    end
    object qNcmUfCONFINS: TWideStringField
      FieldName = 'CONFINS'
      Size = 10
    end
    object qNcmUfPCOFINS: TFloatField
      FieldName = 'PCOFINS'
    end
    object qNcmUfREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qNcmUfCODIPI: TWideStringField
      FieldName = 'CODIPI'
      Size = 10
    end
    object qNcmUfIPI: TFloatField
      FieldName = 'IPI'
    end
    object qNcmUfMARGEMST: TFloatField
      FieldName = 'MARGEMST'
    end
    object qNcmUfMVA: TFloatField
      FieldName = 'MVA'
    end
    object qNcmUfICMS_UF: TFloatField
      FieldName = 'ICMS_UF'
    end
  end
  object dNcmUf: TDataSource
    DataSet = qNcmUf
    Left = 284
    Top = 391
  end
  object qEst: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select idproduto, sum(quantidade) Qtd'
      'from estoque'
      'where tpmov in ('#39'M'#39','#39'P'#39') and idemp = 1'
      'group by idproduto'
      'order by idproduto')
    Params = <>
    Left = 870
    Top = 447
    object qEstidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qEstQtd: TFloatField
      FieldName = 'Qtd'
      ReadOnly = True
    end
  end
  object qCM: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select alturaCX, larguraCx, comprimentoCx '
      'from produto'
      'where id = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 574
    Top = 341
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qCMalturaCX: TFloatField
      FieldName = 'alturaCX'
    end
    object qCMlarguraCx: TFloatField
      FieldName = 'larguraCx'
    end
    object qCMcomprimentoCx: TFloatField
      FieldName = 'comprimentoCx'
    end
  end
  object qProc: TZQuery
    Connection = DM.Conex
    AfterScroll = qProcAfterScroll
    UpdateObject = upProc
    BeforePost = qProcBeforePost
    AfterPost = qProcAfterPost
    OnNewRecord = qProcNewRecord
    SQL.Strings = (
      'select processo_fase.* '
      'from processo_fase'
      'where processo_fase.idproduto = :IDs'
      'order by processo_fase.ordem')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 305
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    object qProcId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qProcIdProcesso: TIntegerField
      FieldName = 'IdProcesso'
    end
    object qProcDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qProcIdProduto: TIntegerField
      FieldName = 'IdProduto'
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
      EditMask = '99:99:99;1;_'
      Size = 32
    end
    object qProcCusto: TFloatField
      FieldName = 'Custo'
      DisplayFormat = '###,###,##0.00000'
    end
    object qProcDepende_Ant: TWideStringField
      FieldName = 'Depende_Ant'
      Size = 1
    end
  end
  object upProc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM processo_fase'
      'WHERE'
      '  processo_fase.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO processo_fase'
      
        '  (Id, IdProcesso, Descricao, IdProduto, Ultimo, Ordem, Tempo, C' +
        'usto, Depende_Ant)'
      'VALUES'
      
        '  (:Id, :IdProcesso, :Descricao, :IdProduto, :Ultimo, :Ordem, :T' +
        'empo, :Custo, '
      '   :Depende_Ant)')
    ModifySQL.Strings = (
      'UPDATE processo_fase SET'
      '  Id = :Id,'
      '  IdProcesso = :IdProcesso,'
      '  Descricao = :Descricao,'
      '  IdProduto = :IdProduto,'
      '  Ultimo = :Ultimo,'
      '  Ordem = :Ordem,'
      '  Tempo = :Tempo,'
      '  Custo = :Custo,'
      '  Depende_Ant = :Depende_Ant'
      'WHERE'
      '  processo_fase.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 146
    Top = 305
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
        Name = 'IdProduto'
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
  object dProc: TDataSource
    DataSet = qProc
    Left = 178
    Top = 305
  end
  object qProcItem: TZQuery
    Connection = DM.Conex
    UpdateObject = upProcItem
    AfterPost = qProcItemAfterPost
    OnNewRecord = qProcItemNewRecord
    SQL.Strings = (
      'select '
      ' processo_fase_I.*, '
      ' pd.descricao,'
      ' pd.precocompra,'
      
        ' coalesce(processo_fase_I.qtde,0) * coalesce(pd.precocompra,0) t' +
        'ot'
      ''
      ''
      'from processo_fase_I'
      'left join produto pd on processo_fase_I.idproduto = pd.id'
      ''
      'where '
      '   processo_fase_I.idProcesso_fase > 0 and  '
      '   processo_fase_I.idProcesso_fase = :IDp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDp'
        ParamType = ptUnknown
      end>
    Left = 577
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDp'
        ParamType = ptUnknown
      end>
    object qProcItemId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qProcItemIdProcesso_fase: TIntegerField
      FieldName = 'IdProcesso_fase'
    end
    object qProcItemIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qProcItemQtde: TFloatField
      FieldName = 'Qtde'
      DisplayFormat = '###,###,##0.###'
    end
    object qProcItemUn: TWideStringField
      FieldName = 'Un'
      Size = 10
    end
    object qProcItemtipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object qProcItemdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qProcItemprecocompra: TFloatField
      FieldName = 'precocompra'
      DisplayFormat = '###,###,##0.00000'
    end
    object qProcItemtot: TFloatField
      FieldName = 'tot'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00000'
    end
  end
  object upProcItem: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM processo_fase_I'
      'WHERE'
      '  processo_fase_I.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO processo_fase_I'
      '  (Id, IdProcesso_fase, IdProduto, Qtde, Un, tipo)'
      'VALUES'
      '  (:Id, :IdProcesso_fase, :IdProduto, :Qtde, :Un, :tipo)')
    ModifySQL.Strings = (
      'UPDATE processo_fase_I SET'
      '  Id = :Id,'
      '  IdProcesso_fase = :IdProcesso_fase,'
      '  IdProduto = :IdProduto,'
      '  Qtde = :Qtde,'
      '  Un = :Un,'
      '  tipo = :tipo'
      'WHERE'
      '  processo_fase_I.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 626
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProcesso_fase'
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
  object dProcItem: TDataSource
    DataSet = qProcItem
    Left = 674
    Top = 280
  end
  object qProc2: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select processo.* '
      'from processo'
      'order by ordem, descricao'
      '')
    Params = <>
    Left = 538
    Top = 64
    object qProc2Id: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qProc2Descricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qProc2ordem: TIntegerField
      FieldName = 'ordem'
    end
  end
  object dProc2: TDataSource
    DataSet = qProc2
    Left = 586
    Top = 56
  end
  object qPr: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select processo_fase.* '
      'from processo_fase'
      'where processo_fase.idproduto = :IDs'
      'order by processo_fase.ordem')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDs'
        ParamType = ptUnknown
      end>
    object qPrId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object qPrIdProcesso: TIntegerField
      FieldName = 'IdProcesso'
    end
    object qPrDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qPrIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object qPrUltimo: TWideStringField
      FieldName = 'Ultimo'
      Size = 1
    end
    object qPrOrdem: TIntegerField
      FieldName = 'Ordem'
    end
    object qPrTempo: TWideStringField
      FieldName = 'Tempo'
      Size = 32
    end
    object qPrCusto: TFloatField
      FieldName = 'Custo'
    end
    object qPrDepende_Ant: TWideStringField
      FieldName = 'Depende_Ant'
      Size = 1
    end
  end
  object qCor: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select cor.id, cor.descricao descricao '
      'from cor'
      'order by 2')
    Params = <>
    Left = 896
    Top = 148
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
    Left = 935
    Top = 156
  end
  object qGarantia: TZQuery
    Connection = DM.Conex
    UpdateObject = upGarantia
    OnNewRecord = qGarantiaNewRecord
    SQL.Strings = (
      'select GarantiaProduto.*'
      'from GarantiaProduto'
      'where idproduto= :id'
      'order by id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 571
    Top = 207
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qGarantiaid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qGarantiaidProduto: TIntegerField
      FieldName = 'idProduto'
    end
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
  object upGarantia: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM GarantiaProduto'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    InsertSQL.Strings = (
      'INSERT INTO GarantiaProduto'
      '  (idProduto, garantia, valor, unidade)'
      'VALUES'
      '  (:idProduto, :garantia, :valor, :unidade)')
    ModifySQL.Strings = (
      'UPDATE GarantiaProduto SET'
      '  idProduto = :idProduto,'
      '  garantia = :garantia,'
      '  valor = :valor,'
      '  unidade = :unidade'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 608
    Top = 207
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'garantia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dsGarantia: TDataSource
    DataSet = qGarantia
    Left = 652
    Top = 207
  end
  object QTabelaReferenciaConsumo: TZQuery
    Connection = DM.Conex
    AfterOpen = QTabelaReferenciaConsumoAfterOpen
    UpdateObject = upTabelaReferenciaConsumo
    OnNewRecord = QTabelaReferenciaConsumoNewRecord
    SQL.Strings = (
      'SELECT ID,'
      '       IDPRODUTO,'
      #9'   TIPOTABELA,'
      #9'   GARANTIA,'
      #9'   VALORREFERENCIA,'
      #9'   QTDFORNECIDA_100G,'
      #9'   QTDPERCFORNECIDA_100G'
      'from TABELAREFERENCIAPRODUTO'
      'WHERE IDPRODUTO = :IDPRODUTO'
      '  AND TIPOTABELA = :TIPOTABELA')
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
    Left = 371
    Top = 191
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
    object QTabelaReferenciaConsumoID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QTabelaReferenciaConsumoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object QTabelaReferenciaConsumoTIPOTABELA: TIntegerField
      FieldName = 'TIPOTABELA'
    end
    object QTabelaReferenciaConsumoGARANTIA: TWideStringField
      FieldName = 'GARANTIA'
      Size = 100
    end
    object QTabelaReferenciaConsumoVALORREFERENCIA: TFloatField
      FieldName = 'VALORREFERENCIA'
    end
    object QTabelaReferenciaConsumoQTDFORNECIDA_100G: TFloatField
      FieldName = 'QTDFORNECIDA_100G'
    end
    object QTabelaReferenciaConsumoQTDPERCFORNECIDA_100G: TFloatField
      FieldName = 'QTDPERCFORNECIDA_100G'
    end
  end
  object upTabelaReferenciaConsumo: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM GarantiaProduto'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 408
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object dsTabelaReferenciaConsumo: TDataSource
    DataSet = QTabelaReferenciaConsumo
    Left = 444
    Top = 191
  end
  object dsTabelaReferenciaMicromineraisMgDia: TDataSource
    DataSet = QTabelaReferenciaMicromineraisMgDia
    Left = 452
    Top = 239
  end
  object upTabelaReferenciaMicromineraisMgDia: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM GarantiaProduto'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    InsertSQL.Strings = (
      'INSERT INTO GarantiaProduto'
      '  (idProduto, garantia, valor, unidade)'
      'VALUES'
      '  (:idProduto, :garantia, :valor, :unidade)')
    ModifySQL.Strings = (
      'UPDATE GarantiaProduto SET'
      '  idProduto = :idProduto,'
      '  garantia = :garantia,'
      '  valor = :valor,'
      '  unidade = :unidade'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 408
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'garantia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object QTabelaReferenciaMicromineraisMgDia: TZQuery
    Connection = DM.Conex
    AfterOpen = QTabelaReferenciaMicromineraisMgDiaAfterOpen
    UpdateObject = upTabelaReferenciaMicromineraisMgDia
    OnNewRecord = QTabelaReferenciaMicromineraisMgDiaNewRecord
    SQL.Strings = (
      'SELECT ID,'
      '       IDPRODUTO,'
      #9'   TIPOTABELA,'
      #9'   GARANTIA,'
      #9'   VALORREFERENCIA,'
      #9'   QTDFORNECIDA_100G,'
      #9'   QTDPERCFORNECIDA_100G'
      'from TABELAREFERENCIAPRODUTO'
      'WHERE IDPRODUTO = :IDPRODUTO'
      '  AND TIPOTABELA = :TIPOTABELA')
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
    Left = 371
    Top = 239
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
    object QTabelaReferenciaMicromineraisMgDiaID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QTabelaReferenciaMicromineraisMgDiaIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object QTabelaReferenciaMicromineraisMgDiaTIPOTABELA: TIntegerField
      FieldName = 'TIPOTABELA'
    end
    object QTabelaReferenciaMicromineraisMgDiaGARANTIA: TWideStringField
      FieldName = 'GARANTIA'
      Size = 100
    end
    object QTabelaReferenciaMicromineraisMgDiaVALORREFERENCIA: TFloatField
      FieldName = 'VALORREFERENCIA'
    end
    object QTabelaReferenciaMicromineraisMgDiaQTDFORNECIDA_100G: TFloatField
      FieldName = 'QTDFORNECIDA_100G'
    end
    object QTabelaReferenciaMicromineraisMgDiaQTDPERCFORNECIDA_100G: TFloatField
      FieldName = 'QTDPERCFORNECIDA_100G'
    end
  end
  object QTabelaReferenciaVitaminas: TZQuery
    Connection = DM.Conex
    AfterOpen = QTabelaReferenciaVitaminasAfterOpen
    UpdateObject = upTabelaReferenciaVitaminas
    OnNewRecord = QTabelaReferenciaVitaminasNewRecord
    SQL.Strings = (
      'SELECT ID,'
      '       IDPRODUTO,'
      #9'   TIPOTABELA,'
      #9'   GARANTIA,'
      #9'   VALORREFERENCIA,'
      #9'   QTDFORNECIDA_100G,'
      #9'   QTDPERCFORNECIDA_100G'
      'from TABELAREFERENCIAPRODUTO'
      'WHERE IDPRODUTO = :IDPRODUTO'
      '  AND TIPOTABELA = :TIPOTABELA')
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
    Left = 371
    Top = 279
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
    object QTabelaReferenciaVitaminasID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QTabelaReferenciaVitaminasIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object QTabelaReferenciaVitaminasTIPOTABELA: TIntegerField
      FieldName = 'TIPOTABELA'
    end
    object QTabelaReferenciaVitaminasGARANTIA: TWideStringField
      FieldName = 'GARANTIA'
      Size = 100
    end
    object QTabelaReferenciaVitaminasVALORREFERENCIA: TFloatField
      FieldName = 'VALORREFERENCIA'
    end
    object QTabelaReferenciaVitaminasQTDFORNECIDA_100G: TFloatField
      FieldName = 'QTDFORNECIDA_100G'
    end
    object QTabelaReferenciaVitaminasQTDPERCFORNECIDA_100G: TFloatField
      FieldName = 'QTDPERCFORNECIDA_100G'
    end
  end
  object upTabelaReferenciaVitaminas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM GarantiaProduto'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    InsertSQL.Strings = (
      'INSERT INTO GarantiaProduto'
      '  (idProduto, garantia, valor, unidade)'
      'VALUES'
      '  (:idProduto, :garantia, :valor, :unidade)')
    ModifySQL.Strings = (
      'UPDATE GarantiaProduto SET'
      '  idProduto = :idProduto,'
      '  garantia = :garantia,'
      '  valor = :valor,'
      '  unidade = :unidade'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 408
    Top = 279
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'garantia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dsTabelaReferenciaVitaminas: TDataSource
    DataSet = QTabelaReferenciaVitaminas
    Left = 452
    Top = 279
  end
  object QTabelaReferenciaMicromineraisGDia: TZQuery
    Connection = DM.Conex
    AfterOpen = QTabelaReferenciaMicromineraisGDiaAfterOpen
    UpdateObject = upTabelaReferenciaMicromineraisGDia
    OnNewRecord = QTabelaReferenciaMicromineraisGDiaNewRecord
    SQL.Strings = (
      'SELECT ID,'
      '       IDPRODUTO,'
      #9'   TIPOTABELA,'
      #9'   GARANTIA,'
      #9'   VALORREFERENCIA,'
      #9'   QTDFORNECIDA_100G,'
      #9'   QTDPERCFORNECIDA_100G'
      'from TABELAREFERENCIAPRODUTO'
      'WHERE IDPRODUTO = :IDPRODUTO'
      '  AND TIPOTABELA = :TIPOTABELA')
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
    Left = 371
    Top = 335
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
    object QTabelaReferenciaMicromineraisGDiaID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QTabelaReferenciaMicromineraisGDiaIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object QTabelaReferenciaMicromineraisGDiaTIPOTABELA: TIntegerField
      FieldName = 'TIPOTABELA'
    end
    object QTabelaReferenciaMicromineraisGDiaGARANTIA: TWideStringField
      FieldName = 'GARANTIA'
      Size = 100
    end
    object QTabelaReferenciaMicromineraisGDiaVALORREFERENCIA: TFloatField
      FieldName = 'VALORREFERENCIA'
    end
    object QTabelaReferenciaMicromineraisGDiaQTDFORNECIDA_100G: TFloatField
      FieldName = 'QTDFORNECIDA_100G'
    end
    object QTabelaReferenciaMicromineraisGDiaQTDPERCFORNECIDA_100G: TFloatField
      FieldName = 'QTDPERCFORNECIDA_100G'
    end
  end
  object upTabelaReferenciaMicromineraisGDia: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM GarantiaProduto'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    InsertSQL.Strings = (
      'INSERT INTO GarantiaProduto'
      '  (idProduto, garantia, valor, unidade)'
      'VALUES'
      '  (:idProduto, :garantia, :valor, :unidade)')
    ModifySQL.Strings = (
      'UPDATE GarantiaProduto SET'
      '  idProduto = :idProduto,'
      '  garantia = :garantia,'
      '  valor = :valor,'
      '  unidade = :unidade'
      'WHERE'
      
        '  ((GarantiaProduto.id IS NULL AND :OLD_id IS NULL) OR (Garantia' +
        'Produto.id = :OLD_id))')
    UseSequenceFieldForRefreshSQL = False
    Left = 408
    Top = 335
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'garantia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object dsTabelaReferenciaMicromineraisGDia: TDataSource
    DataSet = QTabelaReferenciaMicromineraisGDia
    Left = 452
    Top = 335
  end
end
