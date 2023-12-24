inherited fCadVendedor: TfCadVendedor
  Left = 182
  Top = 137
  Caption = 'Representantes'
  ClientHeight = 518
  ClientWidth = 990
  OldCreateOrder = True
  ExplicitWidth = 1006
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 990
    Height = 477
    ExplicitTop = 47
    ExplicitWidth = 990
    ExplicitHeight = 477
  end
  inherited Label1: TLabel
    Left = 10
    ExplicitLeft = 10
  end
  inherited ToolBar1: TToolBar
    Width = 990
    ExplicitWidth = 990
    object ToolButton3: TToolButton
      Left = 379
      Top = 0
      Width = 38
      Caption = 'ToolButton3'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object Gauge1: TGauge
      Left = 417
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
    Width = 695
    ExplicitWidth = 695
  end
  inherited PageControl1: TPageControl
    Left = 7
    Width = 975
    Height = 432
    ActivePage = TabSheet2
    ExplicitLeft = 7
    ExplicitWidth = 975
    ExplicitHeight = 432
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 967
      ExplicitHeight = 404
      inherited DBGrid1: TDBGrid
        Width = 967
        Height = 386
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fantasia'
            Title.Caption = 'Fantasia'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 327
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 293
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num'
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel1'
            Title.Caption = 'Telefone '
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel2'
            Title.Caption = 'Celular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fax'
            Title.Caption = 'Faz/Outros'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Title.Caption = 'Contato'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'Email'
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPESSOA'
            Title.Caption = 'Tipo Pessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANCO'
            Title.Caption = 'Banco'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Title.Caption = 'Ag'#234'ncia'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA'
            Title.Caption = 'Conta'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPAGTO'
            Title.Caption = 'Tipo Pgto'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITE'
            Title.Caption = 'Site'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Title.Caption = 'Obs.'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idcidade'
            Title.Caption = 'Id Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dia_venci'
            Title.Caption = 'Dia Vencto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Caption = '% Comiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pais'
            Title.Caption = 'Pa'#237's'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sincronizado'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 386
        Width = 967
        Height = 18
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 1
        Padding.Top = 3
        Padding.Bottom = 3
        TabOrder = 1
        object Label6: TLabel
          Left = 20
          Top = 3
          Width = 126
          Height = 12
          Align = alLeft
          Caption = ' Permite acesso na web'
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object Shape1: TShape
          Left = 1
          Top = 3
          Width = 19
          Height = 12
          Margins.Right = 5
          Align = alLeft
          Brush.Color = 9830257
          ExplicitLeft = 116
          ExplicitTop = 8
        end
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 967
      ExplicitHeight = 404
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 967
        Height = 404
        HorzScrollBar.Visible = False
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        object Label9: TLabel
          Left = 328
          Top = 212
          Width = 51
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit8
        end
        object Label12: TLabel
          Left = 16
          Top = 252
          Width = 45
          Height = 13
          Caption = 'Contato'
          FocusControl = DBEdit11
        end
        object Label14: TLabel
          Left = 173
          Top = 212
          Width = 13
          Height = 13
          Caption = 'IE'
          FocusControl = DBEdit13
        end
        object Label13: TLabel
          Left = 301
          Top = 253
          Width = 31
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit12
        end
        object Label7: TLabel
          Left = 608
          Top = 132
          Width = 25
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit6
        end
        object Label3: TLabel
          Left = 16
          Top = 92
          Width = 76
          Height = 13
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit2
        end
        object Label2: TLabel
          Left = 16
          Top = 11
          Width = 40
          Height = 13
          Caption = 'Codigo'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 16
          Top = 132
          Width = 55
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 421
          Top = 132
          Width = 34
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit4
        end
        object Label10: TLabel
          Left = 453
          Top = 213
          Width = 40
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit8
        end
        object Label21: TLabel
          Left = 279
          Top = 335
          Width = 93
          Height = 13
          Caption = 'Tipo Pagamento'
          FocusControl = DBEdit20
        end
        object Label11: TLabel
          Left = 577
          Top = 213
          Width = 64
          Height = 13
          Caption = 'Fax/Outros'
          FocusControl = DBEdit8
        end
        object Label23: TLabel
          Left = 584
          Top = 335
          Width = 90
          Height = 13
          Caption = 'Dia Vencimento'
          FocusControl = DBEdit21
        end
        object Label22: TLabel
          Left = 16
          Top = 53
          Width = 49
          Height = 13
          Caption = 'Fantasia'
          FocusControl = DBEdit16
        end
        object Label20: TLabel
          Left = 16
          Top = 335
          Width = 37
          Height = 13
          Caption = 'Banco'
          FocusControl = DBEdit19
        end
        object Label16: TLabel
          Left = 16
          Top = 293
          Width = 23
          Height = 13
          Caption = 'Site'
          FocusControl = DBEdit15
        end
        object Label15: TLabel
          Left = 16
          Top = 212
          Width = 32
          Height = 13
          Caption = 'CNPJ'
          FocusControl = DBEdit14
        end
        object Label17: TLabel
          Left = 16
          Top = 377
          Width = 27
          Height = 13
          Caption = 'Obs.'
        end
        object Label19: TLabel
          Left = 148
          Top = 335
          Width = 34
          Height = 13
          Caption = 'Conta'
          FocusControl = DBEdit18
        end
        object Label18: TLabel
          Left = 69
          Top = 335
          Width = 47
          Height = 13
          Caption = 'Agencia'
          FocusControl = DBEdit17
        end
        object Label24: TLabel
          Left = 462
          Top = 335
          Width = 67
          Height = 13
          Caption = 'Comiss'#227'o %'
          FocusControl = DBEdit22
        end
        object Label51: TLabel
          Left = 16
          Top = 170
          Width = 27
          Height = 13
          Caption = 'Pa'#237's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 278
          Top = 170
          Width = 17
          Height = 13
          Caption = 'UF'
        end
        object Label26: TLabel
          Left = 357
          Top = 170
          Width = 40
          Height = 13
          Caption = 'Cidade'
        end
        object Label28: TLabel
          Left = 370
          Top = 132
          Width = 15
          Height = 13
          Caption = 'N'#186
          FocusControl = DBEdit5
        end
        object DBEdit9: TDBEdit
          Left = 452
          Top = 228
          Width = 120
          Height = 19
          Ctl3D = False
          DataField = 'TEL2'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 13
        end
        object DBEdit8: TDBEdit
          Left = 328
          Top = 228
          Width = 120
          Height = 19
          Ctl3D = False
          DataField = 'TEL1'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBEdit10: TDBEdit
          Left = 576
          Top = 228
          Width = 120
          Height = 19
          Ctl3D = False
          DataField = 'FAX'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 14
        end
        object DBEdit12: TDBEdit
          Left = 301
          Top = 267
          Width = 396
          Height = 19
          Ctl3D = False
          DataField = 'EMAIL'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 16
        end
        object DBEdit11: TDBEdit
          Left = 16
          Top = 268
          Width = 279
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CONTATO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 15
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 148
          Width = 352
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ENDERECO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 108
          Width = 680
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NOME'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 421
          Top = 148
          Width = 183
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BAIRRO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 609
          Top = 148
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'CEP'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit20: TDBEdit
          Left = 279
          Top = 351
          Width = 169
          Height = 19
          Ctl3D = False
          DataField = 'TIPOPAGTO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 21
        end
        object DBEdit19: TDBEdit
          Left = 16
          Top = 351
          Width = 43
          Height = 19
          Ctl3D = False
          DataField = 'BANCO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 18
        end
        object DBMemo1: TDBMemo
          Left = 16
          Top = 393
          Width = 681
          Height = 57
          Ctl3D = False
          DataField = 'OBS'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 24
        end
        object DBEdit21: TDBEdit
          Left = 584
          Top = 351
          Width = 113
          Height = 19
          Ctl3D = False
          DataField = 'dia_venci'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 23
        end
        object DBEdit16: TDBEdit
          Left = 16
          Top = 69
          Width = 680
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'fantasia'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 148
          Top = 351
          Width = 122
          Height = 19
          Ctl3D = False
          DataField = 'CONTA'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 20
        end
        object DBEdit14: TDBEdit
          Left = 16
          Top = 228
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'CNPJ'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 10
          OnExit = DBEdit14Exit
        end
        object DBEdit13: TDBEdit
          Left = 173
          Top = 228
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'IE'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 11
        end
        object rgTipo: TDBRadioGroup
          Left = 166
          Top = 14
          Width = 227
          Height = 37
          Caption = 'Tipo Pessoa'
          Columns = 2
          DataField = 'TIPOPESSOA'
          DataSource = D
          Items.Strings = (
            'Juridica'
            'Fisica')
          TabOrder = 25
          Values.Strings = (
            'J'
            'F')
          OnClick = rgTipoClick
        end
        object DBEdit17: TDBEdit
          Left = 69
          Top = 351
          Width = 68
          Height = 19
          Ctl3D = False
          DataField = 'AGENCIA'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 19
        end
        object DBEdit15: TDBEdit
          Left = 16
          Top = 309
          Width = 681
          Height = 19
          Ctl3D = False
          DataField = 'SITE'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 17
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 27
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'ID'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit22: TDBEdit
          Left = 462
          Top = 351
          Width = 113
          Height = 19
          Ctl3D = False
          DataField = 'Comissao'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 22
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 16
          Top = 186
          Width = 255
          Height = 19
          Ctl3D = False
          DataField = 'PAIS'
          DataSource = D
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = DM.dPais
          ParentCtl3D = False
          TabOrder = 7
          OnCloseUp = DBLookupComboBox4CloseUp
        end
        object DBComboBox4: TDBComboBox
          Left = 278
          Top = 186
          Width = 70
          Height = 21
          Style = csDropDownList
          BevelKind = bkFlat
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'UF'
          DataSource = D
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO'
            'EX')
          ParentCtl3D = False
          TabOrder = 8
          OnChange = DBComboBox4Change
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 357
          Top = 186
          Width = 340
          Height = 19
          Ctl3D = False
          DataField = 'IdCidade'
          DataSource = D
          KeyField = 'Id'
          ListField = 'Nome'
          ListSource = DM.dCid
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBCheckBox1: TDBCheckBox
          Left = 541
          Top = 28
          Width = 155
          Height = 17
          Caption = 'Permitir Acesso na Web'
          DataField = 'permite_web'
          DataSource = D
          TabOrder = 26
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit5: TDBEdit
          Left = 370
          Top = 148
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'num'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBCheckBox2: TDBCheckBox
          Left = 399
          Top = 28
          Width = 56
          Height = 17
          Caption = 'Ativo'
          DataField = 'ativo'
          DataSource = D
          TabOrder = 27
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      DesignSize = (
        967
        404)
      object Label65: TLabel
        Left = 11
        Top = 9
        Width = 49
        Height = 18
        Caption = 'Fantasia:'
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
        Left = 65
        Top = 6
        Width = 60
        Height = 22
        AutoSize = True
        DataField = 'fantasia'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel3: TBevel
        Left = 11
        Top = 33
        Width = 630
        Height = 370
        Anchors = [akLeft, akTop, akBottom]
        Shape = bsFrame
        ExplicitHeight = 346
      end
      object lCPFCNPJ: TLabel
        Left = 17
        Top = 42
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
      object Label8: TLabel
        Left = 107
        Top = 42
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
      object Label27: TLabel
        Left = 432
        Top = 376
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
        Left = 527
        Top = 372
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
        ExplicitTop = 348
      end
      object edCod: TEdit
        Left = 17
        Top = 59
        Width = 87
        Height = 24
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = edCodExit
        OnKeyPress = edCodKeyPress
      end
      object EdNom: TEdit
        Left = 106
        Top = 59
        Width = 436
        Height = 24
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnChange = EdNomChange
        OnKeyDown = EdNomKeyDown
      end
      object CheckDBGrid2: TCheckDBGrid
        Left = 17
        Top = 87
        Width = 616
        Height = 283
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
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = CheckDBGrid2DrawColumnCell
        OnKeyDown = CheckDBGrid2KeyDown
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'x'
            Width = 19
            Visible = True
            Check = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'referencia'
            ReadOnly = True
            Title.Caption = 'Refer'#234'ncia'
            Width = 76
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'descricao'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 387
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object btAddP: TXiButton
        Left = 556
        Top = 53
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
        TabOrder = 3
        OnClick = btAddPClick
      end
      object btExcluirF: TXiButton
        Left = 601
        Top = 53
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
        TabOrder = 4
        OnClick = btExcluirFClick
      end
      object XiButton2: TXiButton
        Left = 643
        Top = 74
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
        Caption = 'Adicionar Todos Produtos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = XiButton2Click
      end
      object XiButton1: TXiButton
        Left = 643
        Top = 113
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
        Caption = 'Limpar  Tabela Produtos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = XiButton1Click
      end
      object gdPesq: TDBGrid
        Left = 440
        Top = 149
        Width = 524
        Height = 193
        Ctl3D = True
        DataSource = DM.dPesq
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
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
            Width = 416
            Visible = True
          end>
      end
      object XiButton3: TXiButton
        Left = 643
        Top = 35
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
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311F
          B133006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B00
          66001BA92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          0066004FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600CE6C6CB7
          3D3DFF00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFB73D3D006600CF6F6FCD6969CF6E6EB73D3DFF00FFFF00FF006600149D
          21006600FF00FFFF00FFFF00FFFF00FFB73D3DDA9090D78686CD6969B73D3DCC
          6666CE6B6BB73D3DFF00FFFF00FFFF00FF006600006600FF00FFFF00FFB73D3D
          DC9595DE9B9BD27777B73D3DFF00FFB73D3DCA5F5FCD6969B73D3DFF00FFFF00
          FFFF00FF006600006600FF00FFFF00FFB73D3DD78686B73D3DFF00FFFF00FFFF
          00FFFF00FFB73D3DCC6565B73D3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFB73D3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB73D3DC95C5CB73D
          3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFB73D3DB73D3DFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFB73D3DB73D3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Adicionar p/ Todos Repres. '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = XiButton3Click
      end
      object ckTodos: TCheckBox
        Left = 17
        Top = 376
        Width = 97
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Todos'
        TabOrder = 9
        OnClick = ckTodosClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 3
      DesignSize = (
        967
        404)
      object Label29: TLabel
        Left = 19
        Top = 17
        Width = 49
        Height = 18
        Caption = 'Fantasia:'
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
        Left = 73
        Top = 14
        Width = 60
        Height = 22
        AutoSize = True
        DataField = 'fantasia'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 19
        Top = 40
        Width = 163
        Height = 13
        Caption = 'Clientes deste representante'
        FocusControl = DBEdit1
      end
      object DBGrid2: TDBGrid
        Left = 19
        Top = 56
        Width = 574
        Height = 337
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dClientes
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
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
            Title.Caption = 'Nome'
            Width = 465
            Visible = True
          end>
      end
    end
  end
  object rdAtivo: TRadioGroup [6]
    Left = 805
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
    OnClick = EdPesqChange
  end
  inherited ImageList1: TImageList
    Left = 520
    Top = 88
    Bitmap = {
      494C01010E001300240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 624
  end
  inherited ActionList1: TActionList
    Left = 464
    Top = 88
  end
  inherited T: TZQuery
    BeforeOpen = TBeforeOpen
    AfterScroll = TAfterScroll
    BeforePost = TBeforePost
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from Vendedor'
      
        'where ex = 0 and  (nome like :pesq  or fantasia like :pesq ) and' +
        ' '
      '((:ativo = '#39'T'#39') or (vendedor.ativo = :ativo))'
      ''
      'order by nome')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    object TID: TIntegerField
      FieldName = 'ID'
    end
    object TNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object TENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object TBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object TUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object Ttel1: TWideStringField
      FieldName = 'tel1'
      EditMask = '(99)999999999;0;_'
    end
    object Ttel2: TWideStringField
      FieldName = 'tel2'
      EditMask = '(99)999999999;0;_'
    end
    object Tfax: TWideStringField
      FieldName = 'fax'
    end
    object TCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object TEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TIE: TWideStringField
      FieldName = 'IE'
    end
    object TCNPJ: TWideStringField
      FieldName = 'CNPJ'
      OnValidate = TCNPJValidate
      EditMask = '999.999.999-99;0;_'
    end
    object TCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object TAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object TBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object TTIPOPAGTO: TIntegerField
      FieldName = 'TIPOPAGTO'
    end
    object TOBS: TWideStringField
      FieldName = 'OBS'
      Size = 255
    end
    object TEX: TIntegerField
      FieldName = 'EX'
    end
    object TSITE: TWideStringField
      FieldName = 'SITE'
      Size = 100
    end
    object TTIPOPESSOA: TWideStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
    object Tfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 150
    end
    object Tnum: TWideStringField
      FieldName = 'num'
    end
    object Tidcidade: TIntegerField
      FieldName = 'idcidade'
      OnValidate = TidcidadeValidate
    end
    object Tdia_venci: TIntegerField
      FieldName = 'dia_venci'
    end
    object TComissao: TFloatField
      FieldName = 'Comissao'
      DisplayFormat = '#0.00'
    end
    object Tpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object Tsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object Tidweb: TIntegerField
      FieldName = 'idweb'
    end
    object Tpermite_web: TWideStringField
      FieldName = 'permite_web'
      Size = 1
    end
    object Tativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Vendedor'
      'WHERE'
      '  Vendedor.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO Vendedor'
      
        '  (ID, NOME, ENDERECO, BAIRRO, CIDADE, CEP, UF, tel1, tel2, fax,' +
        ' CONTATO, '
      
        '   EMAIL, IE, CNPJ, CONTA, AGENCIA, BANCO, TIPOPAGTO, OBS, EX, S' +
        'ITE, TIPOPESSOA, '
      
        '   fantasia, num, idcidade, dia_venci, Comissao, pais, sincroniz' +
        'ado, idweb, '
      '   permite_web, ativo)'
      'VALUES'
      
        '  (:ID, :NOME, :ENDERECO, :BAIRRO, :CIDADE, :CEP, :UF, :tel1, :t' +
        'el2, :fax, '
      
        '   :CONTATO, :EMAIL, :IE, :CNPJ, :CONTA, :AGENCIA, :BANCO, :TIPO' +
        'PAGTO, '
      
        '   :OBS, :EX, :SITE, :TIPOPESSOA, :fantasia, :num, :idcidade, :d' +
        'ia_venci, '
      
        '   :Comissao, :pais, :sincronizado, :idweb, :permite_web, :ativo' +
        ')')
    ModifySQL.Strings = (
      'UPDATE Vendedor SET'
      '  ID = :ID,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  CEP = :CEP,'
      '  UF = :UF,'
      '  tel1 = :tel1,'
      '  tel2 = :tel2,'
      '  fax = :fax,'
      '  CONTATO = :CONTATO,'
      '  EMAIL = :EMAIL,'
      '  IE = :IE,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  TIPOPAGTO = :TIPOPAGTO,'
      '  OBS = :OBS,'
      '  EX = :EX,'
      '  SITE = :SITE,'
      '  TIPOPESSOA = :TIPOPESSOA,'
      '  fantasia = :fantasia,'
      '  num = :num,'
      '  idcidade = :idcidade,'
      '  dia_venci = :dia_venci,'
      '  Comissao = :Comissao,'
      '  pais = :pais,'
      '  sincronizado = :sincronizado,'
      '  idweb = :idweb,'
      '  permite_web = :permite_web,'
      '  ativo = :ativo'
      'WHERE'
      '  Vendedor.ID = :OLD_ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDERECO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAIRRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEL1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEL2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AGENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPAGTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPESSOA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fantasia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dia_venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Comissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'permite_web'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object qPro: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      
        'select id, referencia, barras, descricao, valor, qtdestoque, mul' +
        'tiplo'
      'from produto'
      'where ex = 0 and tipo = '#39'P'#39
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
  end
  object L: TZQuery
    Connection = DM.Conex
    BeforeOpen = LBeforeOpen
    UpdateObject = UL
    BeforePost = LBeforePost
    AfterPost = LAfterPost
    OnNewRecord = LNewRecord
    SQL.Strings = (
      'select vendedor_i.*, p.descricao,'
      'p.referencia, p.barras'
      ''
      'from vendedor_i'
      'left join  produto p on p.id =   vendedor_i.idproduto'
      ''
      'where vendedor_i.ex = 0 and  vendedor_i.idvendedor = :id'
      ' and vendedor_i.idproduto > 0'
      ''
      'order by p.descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 83
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object LId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object LIdVendedor: TIntegerField
      FieldName = 'IdVendedor'
    end
    object LIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object Lsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Size = 1
    end
    object LEx: TIntegerField
      FieldName = 'Ex'
    end
    object LIdweb: TIntegerField
      FieldName = 'Idweb'
    end
    object Ldescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object Lreferencia: TWideStringField
      FieldName = 'referencia'
    end
    object Lbarras: TWideStringField
      FieldName = 'barras'
    end
    object Lx: TWideStringField
      FieldName = 'x'
      Size = 1
    end
  end
  object UL: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM vendedor_i'
      'WHERE'
      '  vendedor_i.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO vendedor_i'
      '  (Id, IdVendedor, IdProduto, sincronizado, Ex, Idweb, x)'
      'VALUES'
      '  (:Id, :IdVendedor, :IdProduto, :sincronizado, :Ex, :Idweb, :x)')
    ModifySQL.Strings = (
      'UPDATE vendedor_i SET'
      '  Id = :Id,'
      '  IdVendedor = :IdVendedor,'
      '  IdProduto = :IdProduto,'
      '  sincronizado = :sincronizado,'
      '  Ex = :Ex,'
      '  Idweb = :Idweb,'
      '  x = :x'
      'WHERE'
      '  vendedor_i.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 336
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdVendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdProduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Idweb'
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
      end>
  end
  object DL: TDataSource
    DataSet = L
    Left = 368
    Top = 88
  end
  object qClientes: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, nome from cliente where cliente.idvendedor = :id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    DataSource = D
    Left = 651
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qClientesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qClientesnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
  end
  object dClientes: TDataSource
    DataSet = qClientes
    Left = 651
    Top = 230
  end
end
