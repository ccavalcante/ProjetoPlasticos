inherited fCadCli: TfCadCli
  Left = 182
  Top = 135
  Caption = 'Clientes'
  ClientHeight = 538
  ClientWidth = 936
  OldCreateOrder = True
  ExplicitWidth = 952
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 936
    Height = 497
    ExplicitWidth = 941
    ExplicitHeight = 637
  end
  inherited Label1: TLabel
    Left = 8
    Top = 53
    ExplicitLeft = 8
    ExplicitTop = 53
  end
  inherited EdPesq: TEdit
    Left = 120
    Top = 50
    Width = 809
    TabOrder = 3
    ExplicitLeft = 120
    ExplicitTop = 50
    ExplicitWidth = 809
  end
  inherited PageControl1: TPageControl
    Top = 80
    Width = 921
    Height = 453
    ActivePage = TabSheet4
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitTop = 80
    ExplicitWidth = 921
    ExplicitHeight = 453
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 913
      ExplicitHeight = 425
      inherited DBGrid1: TDBGrid
        Width = 913
        Height = 425
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 307
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel1'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel2'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Width = 189
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Num'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtnasc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtcadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obs'
            Visible = False
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 913
      ExplicitHeight = 425
      object Shape1: TShape
        Left = 118
        Top = 24
        Width = 77
        Height = 19
        Brush.Color = 5636095
      end
      object Bevel1: TBevel
        Left = 5
        Top = 287
        Width = 548
        Height = 119
        Shape = bsFrame
      end
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 8
        Top = 48
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 8
        Top = 128
        Width = 55
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label7: TLabel
        Left = 666
        Top = 48
        Width = 51
        Height = 13
        Caption = 'Dt. Nasc'
        FocusControl = DBEdit6
      end
      object lRG: TLabel
        Left = 419
        Top = 168
        Width = 19
        Height = 13
        Caption = 'RG'
        FocusControl = DBEdit10
      end
      object lCPF: TLabel
        Left = 630
        Top = 168
        Width = 24
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 203
        Top = 8
        Width = 72
        Height = 13
        Caption = 'Dt. Cadastro'
        FocusControl = DBEdit12
      end
      object Label14: TLabel
        Left = 510
        Top = 248
        Width = 35
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit13
      end
      object Label15: TLabel
        Left = 8
        Top = 248
        Width = 62
        Height = 13
        Caption = 'Telefone 1'
        FocusControl = DBEdit14
      end
      object Label16: TLabel
        Left = 121
        Top = 248
        Width = 62
        Height = 13
        Caption = 'Telefone 2'
        FocusControl = DBEdit15
      end
      object Label17: TLabel
        Left = 235
        Top = 248
        Width = 62
        Height = 13
        Caption = 'Telefone 3'
        FocusControl = DBEdit16
      end
      object Label18: TLabel
        Left = 560
        Top = 288
        Width = 26
        Height = 13
        Caption = 'OBS'
      end
      object Label5: TLabel
        Left = 488
        Top = 128
        Width = 15
        Height = 13
        Caption = 'N'#186
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 8
        Top = 168
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit5
      end
      object Label8: TLabel
        Left = 309
        Top = 168
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 349
        Top = 205
        Width = 40
        Height = 13
        Caption = 'Cidade'
      end
      object Label10: TLabel
        Left = 270
        Top = 205
        Width = 17
        Height = 13
        Caption = 'UF'
      end
      object Label11: TLabel
        Left = 8
        Top = 88
        Width = 76
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEdit8
      end
      object Label12: TLabel
        Left = 630
        Top = 128
        Width = 76
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit9
      end
      object Label19: TLabel
        Left = 8
        Top = 292
        Width = 125
        Height = 13
        Caption = 'Endere'#231'o de Entrega '
      end
      object Label20: TLabel
        Left = 463
        Top = 291
        Width = 15
        Height = 13
        Caption = 'N'#186
        FocusControl = DBEdit18
      end
      object Label21: TLabel
        Left = 8
        Top = 328
        Width = 76
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit19
      end
      object Label22: TLabel
        Left = 200
        Top = 327
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit20
      end
      object Label23: TLabel
        Left = 462
        Top = 327
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit21
      end
      object Label24: TLabel
        Left = 181
        Top = 365
        Width = 17
        Height = 13
        Caption = 'UF'
      end
      object Label25: TLabel
        Left = 249
        Top = 365
        Width = 40
        Height = 13
        Caption = 'Cidade'
      end
      object Label51: TLabel
        Left = 8
        Top = 205
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
      object Label26: TLabel
        Left = 8
        Top = 363
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
      object Label39: TLabel
        Left = 348
        Top = 248
        Width = 104
        Height = 13
        Caption = 'Contato Comercial'
        FocusControl = DBEdit22
      end
      object lWeb: TLabel
        Left = 119
        Top = 8
        Width = 42
        Height = 13
        Caption = 'Id Web'
      end
      object edweb: TDBText
        Left = 123
        Top = 27
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Color = 5636095
        DataField = 'idweb'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Id'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 64
        Width = 649
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Nome'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 666
        Top = 64
        Width = 153
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'dtnasc'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 419
        Top = 184
        Width = 205
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'rg'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 630
        Top = 184
        Width = 189
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'cpf'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 203
        Top = 24
        Width = 134
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'dtcadastro'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 510
        Top = 264
        Width = 309
        Height = 19
        CharCase = ecLowerCase
        Ctl3D = False
        DataField = 'email'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 19
      end
      object DBEdit14: TDBEdit
        Left = 8
        Top = 264
        Width = 107
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'tel1'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 15
        OnClick = DBEdit14Click
        OnEnter = DBEdit14Enter
        OnExit = DBEdit14Exit
      end
      object DBEdit15: TDBEdit
        Left = 120
        Top = 264
        Width = 107
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'tel2'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 16
        OnClick = DBEdit15Click
        OnEnter = DBEdit15Enter
        OnExit = DBEdit15Exit
      end
      object DBEdit16: TDBEdit
        Left = 235
        Top = 264
        Width = 107
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'tel3'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 17
        OnClick = DBEdit16Click
        OnEnter = DBEdit16Enter
        OnExit = DBEdit16Exit
      end
      object DBMemo1: TDBMemo
        Left = 558
        Top = 304
        Width = 261
        Height = 95
        Ctl3D = False
        DataField = 'obs'
        DataSource = D
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 28
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 144
        Width = 473
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Endereco'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 488
        Top = 144
        Width = 136
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Num'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 8
        Top = 184
        Width = 294
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Bairro'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 309
        Top = 184
        Width = 89
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CEP'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBComboBox4: TDBComboBox
        Left = 270
        Top = 221
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
        TabOrder = 13
        OnChange = DBComboBox4Change
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 349
        Top = 221
        Width = 470
        Height = 19
        Ctl3D = False
        DataField = 'IdCidade'
        DataSource = D
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = DM.dCid
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 353
        Top = 9
        Width = 185
        Height = 34
        Caption = 'Tipo de Pessoa'
        Columns = 2
        Ctl3D = False
        DataField = 'tppessoa'
        DataSource = D
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        ParentCtl3D = False
        TabOrder = 29
        Values.Strings = (
          'F'
          'J')
        OnClick = DBRadioGroup1Click
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 104
        Width = 649
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'razao'
        DataSource = D
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 630
        Top = 144
        Width = 189
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'comple'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 7
      end
      object Button2: TButton
        Left = 142
        Top = 289
        Width = 115
        Height = 17
        Caption = 'Mesmo que acima'
        TabOrder = 30
        OnClick = Button2Click
      end
      object DBEdit17: TDBEdit
        Left = 8
        Top = 307
        Width = 451
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'End_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 20
      end
      object DBEdit18: TDBEdit
        Left = 463
        Top = 307
        Width = 84
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Num_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 21
      end
      object DBEdit19: TDBEdit
        Left = 8
        Top = 343
        Width = 185
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Comple_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 22
      end
      object DBEdit20: TDBEdit
        Left = 200
        Top = 343
        Width = 259
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Bairro_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 23
      end
      object DBEdit21: TDBEdit
        Left = 462
        Top = 343
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Cep_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 24
      end
      object DBComboBox1: TDBComboBox
        Left = 181
        Top = 378
        Width = 63
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'UF_entrega'
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
        TabOrder = 26
        OnChange = DBComboBox1Change
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 249
        Top = 378
        Width = 298
        Height = 19
        Ctl3D = False
        DataField = 'idCidade_entrega'
        DataSource = D
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = dCid
        ParentCtl3D = False
        TabOrder = 27
      end
      object DBCheckBox1: TDBCheckBox
        Left = 770
        Top = 25
        Width = 49
        Height = 17
        Caption = 'Ativo'
        DataField = 'ativo'
        DataSource = D
        TabOrder = 31
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 8
        Top = 221
        Width = 255
        Height = 19
        Ctl3D = False
        DataField = 'PAIS'
        DataSource = D
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DM.dPais
        ParentCtl3D = False
        TabOrder = 12
        OnCloseUp = DBLookupComboBox4CloseUp
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 8
        Top = 378
        Width = 165
        Height = 19
        Ctl3D = False
        DataField = 'pais_entrega'
        DataSource = D
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dPais
        ParentCtl3D = False
        TabOrder = 25
        OnCloseUp = DBLookupComboBox2CloseUp
      end
      object rgTabelaPreco: TDBRadioGroup
        Left = 666
        Top = 88
        Width = 153
        Height = 34
        Caption = 'Tabela de Pre'#231'o'
        Columns = 2
        Ctl3D = False
        DataField = 'idtabela'
        DataSource = D
        Items.Strings = (
          '1'
          '2')
        ParentCtl3D = False
        TabOrder = 32
        Values.Strings = (
          '1'
          '2')
        OnClick = DBRadioGroup1Click
      end
      object DBEdit22: TDBEdit
        Left = 348
        Top = 264
        Width = 156
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'contato'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 18
        OnClick = DBEdit16Click
        OnEnter = DBEdit16Enter
        OnExit = DBEdit16Exit
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Inadimpl'#234'ncia'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        913
        425)
      object DBText1: TDBText
        Left = 13
        Top = 4
        Width = 80
        Height = 24
        AutoSize = True
        DataField = 'Nome'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label76: TLabel
        Left = 157
        Top = 34
        Width = 58
        Height = 20
        Caption = 'Serasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBCheckBox4: TDBCheckBox
        Left = 13
        Top = 31
        Width = 107
        Height = 23
        Caption = 'Inadimplente'
        DataField = 'inadimplente'
        DataSource = D
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox4Click
      end
      object DBEdit63: TDBEdit
        Left = 221
        Top = 34
        Width = 270
        Height = 19
        Ctl3D = False
        DataField = 'imagem_serasa'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object XiButton3: TXiButton
        Left = 491
        Top = 34
        Width = 25
        Height = 24
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
        Caption = '...'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = XiButton3Click
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 64
        Width = 913
        Height = 361
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        object WebBrowser1: TWebBrowser
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 903
          Height = 351
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 35
          ExplicitTop = 51
          ExplicitWidth = 429
          ExplicitHeight = 357
          ControlData = {
            4C000000545D0000472400000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126209000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Dados Adiconais'
      ImageIndex = 3
      object Bevel2: TBevel
        Left = 21
        Top = 290
        Width = 370
        Height = 100
        Shape = bsFrame
      end
      object Label27: TLabel
        Left = 21
        Top = 46
        Width = 128
        Height = 13
        Caption = 'Representante Padr'#227'o'
      end
      object Label32: TLabel
        Left = 21
        Top = 86
        Width = 49
        Height = 13
        Caption = 'Empresa'
      end
      object Label30: TLabel
        Left = 21
        Top = 126
        Width = 93
        Height = 13
        Caption = 'Comercializa'#231#227'o'
      end
      object Label31: TLabel
        Left = 219
        Top = 126
        Width = 95
        Height = 13
        Caption = 'Tabela de Pre'#231'o'
      end
      object DBText2: TDBText
        Left = 21
        Top = 12
        Width = 80
        Height = 24
        AutoSize = True
        DataField = 'Nome'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 404
        Top = 208
        Width = 120
        Height = 13
        Caption = 'Forma de Pagamento'
      end
      object Label34: TLabel
        Left = 21
        Top = 208
        Width = 125
        Height = 13
        Caption = 'Condi'#231#227'o Pagamento '
      end
      object Label35: TLabel
        Left = 21
        Top = 249
        Width = 150
        Height = 13
        Caption = 'Condi'#231#227'o de Pagamento 2'
      end
      object Label36: TLabel
        Left = 20
        Top = 166
        Width = 87
        Height = 13
        Caption = 'Transportadora'
      end
      object Label37: TLabel
        Left = 404
        Top = 166
        Width = 72
        Height = 13
        Caption = 'Redespacho'
      end
      object Label38: TLabel
        Left = 404
        Top = 249
        Width = 131
        Height = 13
        Caption = 'Forma de Pagamento 2'
      end
      object lLimite: TLabel
        Left = 642
        Top = 71
        Width = 96
        Height = 13
        Caption = 'Limite de Cr'#233'dito'
      end
      object Label41: TLabel
        Left = 642
        Top = 117
        Width = 59
        Height = 13
        Caption = 'Tipo Frete'
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 21
        Top = 59
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idvendedor'
        DataSource = D
        DropDownRows = 4
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = DM.dVend
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 21
        Top = 99
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idemp'
        DataSource = D
        DropDownRows = 4
        KeyField = 'Id'
        ListField = 'fantasia'
        ListSource = DM.dEmpresa
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 21
        Top = 139
        Width = 173
        Height = 21
        Ctl3D = True
        DataField = 'idcomercial'
        DataSource = D
        DropDownRows = 4
        KeyField = 'Id'
        ListField = 'Descricao'
        ListSource = dCial
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 219
        Top = 139
        Width = 173
        Height = 21
        Ctl3D = True
        DataField = 'idtabela'
        DataSource = D
        DropDownRows = 4
        KeyField = 'Id'
        ListField = 'Descricao'
        ListSource = dTab
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBComboBox2: TDBComboBox
        Left = 404
        Top = 222
        Width = 371
        Height = 21
        DataField = 'forma_pgto'
        DataSource = D
        Items.Strings = (
          ''
          'Dinheiro'
          'Cheque'
          'Cheque Pre'
          'Faturado'
          'Ordem Pagamento'
          'Cartao'
          'Cheque Terceiro')
        TabOrder = 7
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 21
        Top = 222
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idcond1'
        DataSource = D
        DropDownRows = 4
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = dCon1
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBLookupComboBox10: TDBLookupComboBox
        Left = 21
        Top = 263
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idcond2'
        DataSource = D
        DropDownRows = 4
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = dCon2
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBLookupComboBox11: TDBLookupComboBox
        Left = 21
        Top = 180
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idTrans'
        DataSource = D
        DropDownRows = 4
        KeyField = 'id'
        ListField = 'nome'
        ListSource = dTra
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBLookupComboBox12: TDBLookupComboBox
        Left = 404
        Top = 180
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idRedes'
        DataSource = D
        DropDownRows = 4
        KeyField = 'id'
        ListField = 'nome'
        ListSource = dRed
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBComboBox3: TDBComboBox
        Left = 404
        Top = 263
        Width = 371
        Height = 21
        DataField = 'foma_pgto2'
        DataSource = D
        Items.Strings = (
          ''
          'Dinheiro'
          'Cheque'
          'Cheque Pre'
          'Faturado'
          'Ordem Pagamento'
          'Cartao'
          'Cheque Terceiro')
        TabOrder = 9
      end
      object edLimite: TDBEdit
        Left = 642
        Top = 84
        Width = 118
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'limiteCredito'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBCheckBox2: TDBCheckBox
        Left = 417
        Top = 85
        Width = 107
        Height = 17
        Caption = 'Produtor Rural'
        DataField = 'produtorR'
        DataSource = D
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object ckContrib: TDBCheckBox
        Left = 417
        Top = 68
        Width = 107
        Height = 17
        Caption = 'Contribuinte'
        DataField = 'contribuinte'
        DataSource = D
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 417
        Top = 139
        Width = 107
        Height = 17
        Caption = 'Usar C'#243'digo'
        DataField = 'usa_codigo'
        DataSource = D
        TabOrder = 13
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBComboBox5: TDBComboBox
        Left = 642
        Top = 132
        Width = 59
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'tipoFrete'
        DataSource = D
        Items.Strings = (
          ''
          'CIF'
          'FOB')
        ParentCtl3D = False
        TabOrder = 14
        OnChange = DBComboBox4Change
      end
    end
    object Web: TTabSheet
      Caption = 'Web'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        913
        425)
      object DBText3: TDBText
        Left = 21
        Top = 11
        Width = 80
        Height = 24
        AutoSize = True
        DataField = 'Nome'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 21
        Top = 46
        Width = 125
        Height = 13
        Caption = 'Condi'#231#227'o Pagamento '
      end
      object cbCond: TDBLookupComboBox
        Left = 21
        Top = 61
        Width = 354
        Height = 21
        Ctl3D = True
        DropDownRows = 10
        Enabled = False
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = dCond1
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 381
        Top = 60
        Width = 80
        Height = 23
        Hint = 'Inserir'
        Caption = '+'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -29
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 381
        Top = 89
        Width = 80
        Height = 23
        Hint = 'Excluir'
        Caption = '-'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -29
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object CheckDBGrid1: TCheckDBGrid
        Left = 21
        Top = 89
        Width = 354
        Height = 321
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dCond
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        AllowAppend = False
        Columns = <
          item
            Expanded = False
            FieldName = 'IdCond'
            Title.Caption = 'Id'
            Width = 33
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 445
            Visible = True
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end>
      end
      object BitBtn3: TBitBtn
        Left = 381
        Top = 118
        Width = 80
        Height = 23
        Hint = 'Adicionar Todas'
        Caption = 'Add todos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 381
        Top = 147
        Width = 80
        Height = 23
        Hint = 'Remover Todas'
        Caption = 'Limpar Todos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BitBtn4Click
      end
    end
  end
  inherited ToolBar1: TToolBar [5]
    Width = 936
    TabOrder = 1
    ExplicitWidth = 936
    object ToolButton3: TToolButton
      Left = 379
      Top = 0
      Width = 46
      Caption = 'ToolButton3'
      ImageIndex = 21
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 425
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 16
      OnClick = ToolButton4Click
    end
  end
  object gdFor: TDBGrid [6]
    Left = 858
    Top = 164
    Width = 369
    Height = 103
    Ctl3D = True
    DataSource = DM.dPesq
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
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
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 265
        Visible = True
      end>
  end
  object pRep: TPanel [7]
    Left = 8
    Top = 41
    Width = 921
    Height = 41
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      921
      41)
    object Label28: TLabel
      Left = 479
      Top = 12
      Width = 74
      Height = 16
      Caption = 'Pesquisa: '
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
    object Label29: TLabel
      Left = 4
      Top = 12
      Width = 107
      Height = 16
      Caption = 'Representante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edPespRep: TEdit
      Left = 552
      Top = 9
      Width = 365
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = EdPesqChange
    end
    object edFor: TEdit
      Left = 112
      Top = 9
      Width = 65
      Height = 24
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = edForExit
    end
    object edNomeFor: TEdit
      Left = 177
      Top = 9
      Width = 292
      Height = 24
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnChange = edNomeForChange
      OnKeyDown = edNomeForKeyDown
    end
  end
  inherited ImageList1: TImageList
    Left = 776
    Top = 0
  end
  inherited D: TDataSource
    Left = 712
  end
  inherited ActionList1: TActionList
    Left = 808
    Top = 0
  end
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    BeforePost = TBeforePost
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from Cliente'
      'where Cliente.ex = 0 and  nome like :pesq or'
      '           tel1 like :pesq or'
      '           id like :pesq '
      'order by nome')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Left = 640
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
    end
    object TNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object TEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object TNum: TWideStringField
      FieldName = 'Num'
      Size = 10
    end
    object TBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object TCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object TCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object TUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object Temail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object Trg: TWideStringField
      FieldName = 'rg'
    end
    object Tcpf: TWideStringField
      FieldName = 'cpf'
      OnValidate = TcpfValidate
      EditMask = '999.999.999-99;0;_'
    end
    object Ttel1: TWideStringField
      FieldName = 'tel1'
      EditMask = '(99)999999999;0;_'
    end
    object Ttel2: TWideStringField
      FieldName = 'tel2'
      EditMask = '(99)999999999;0;_'
    end
    object Ttel3: TWideStringField
      FieldName = 'tel3'
      EditMask = '(99)999999999;0;_'
    end
    object Tobs: TWideMemoField
      FieldName = 'obs'
      BlobType = ftWideMemo
    end
    object Tex: TIntegerField
      FieldName = 'ex'
    end
    object TlimiteCredito: TFloatField
      FieldName = 'limiteCredito'
      DisplayFormat = '###,###,##0.00'
    end
    object Tidcidade: TIntegerField
      FieldName = 'idcidade'
      OnValidate = TidcidadeValidate
    end
    object Ttppessoa: TWideStringField
      FieldName = 'tppessoa'
      Size = 1
    end
    object Trazao: TWideStringField
      FieldName = 'razao'
      Size = 100
    end
    object Tcomple: TWideStringField
      FieldName = 'comple'
      Size = 80
    end
    object TEnd_entrega: TWideStringField
      FieldName = 'End_entrega'
      Size = 50
    end
    object TNum_entrega: TWideStringField
      FieldName = 'Num_entrega'
      Size = 10
    end
    object TBairro_entrega: TWideStringField
      FieldName = 'Bairro_entrega'
      Size = 30
    end
    object TCep_entrega: TWideStringField
      FieldName = 'Cep_entrega'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object TidCidade_entrega: TIntegerField
      FieldName = 'idCidade_entrega'
      OnValidate = TidCidade_entregaValidate
    end
    object TUF_entrega: TWideStringField
      FieldName = 'UF_entrega'
      Size = 2
    end
    object TComple_entrega: TWideStringField
      FieldName = 'Comple_entrega'
      Size = 80
    end
    object Tdtnasc: TDateTimeField
      FieldName = 'dtnasc'
      EditMask = '!##/##/####;1;_'
    end
    object Tdtcadastro: TDateTimeField
      FieldName = 'dtcadastro'
      EditMask = '!##/##/####;1;_'
    end
    object Tativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object Tpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object Tpais_entrega: TIntegerField
      FieldName = 'pais_entrega'
    end
    object Tcontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object TprodutorR: TWideStringField
      FieldName = 'produtorR'
      Size = 1
    end
    object Tidtabela: TIntegerField
      FieldName = 'idtabela'
      Required = True
    end
    object Tidvendedor: TIntegerField
      FieldName = 'idvendedor'
    end
    object Tinadimplente: TWideStringField
      FieldName = 'inadimplente'
      Required = True
      Size = 1
    end
    object Timagem_serasa: TWideStringField
      FieldName = 'imagem_serasa'
      Size = 100
    end
    object Tdia_fecha: TIntegerField
      FieldName = 'dia_fecha'
    end
    object Tidweb: TIntegerField
      FieldName = 'idweb'
    end
    object Tsincronizado: TWideStringField
      FieldName = 'sincronizado'
      Required = True
      Size = 1
    end
    object Tcidade_entrega: TWideStringField
      FieldName = 'cidade_entrega'
      Size = 50
    end
    object Tidcomercial: TIntegerField
      FieldName = 'idcomercial'
    end
    object Tidemp: TIntegerField
      FieldName = 'idemp'
    end
    object Tforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 100
    end
    object Tidcond1: TIntegerField
      FieldName = 'idcond1'
    end
    object Tidcond2: TIntegerField
      FieldName = 'idcond2'
    end
    object TidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object TidRedes: TIntegerField
      FieldName = 'idRedes'
    end
    object Tfoma_pgto2: TWideStringField
      FieldName = 'foma_pgto2'
      Size = 100
    end
    object Tcontato: TWideStringField
      FieldName = 'contato'
      Size = 100
    end
    object Tusa_codigo: TWideStringField
      FieldName = 'usa_codigo'
      Size = 1
    end
    object TtipoFrete: TWideStringField
      FieldName = 'tipoFrete'
      Size = 3
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Cliente'
      'WHERE'
      '  Cliente.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO Cliente'
      
        '  (Id, Nome, Endereco, Num, Bairro, CEP, Cidade, UF, email, rg, ' +
        'cpf, dtnasc, '
      
        '   dtcadastro, tel1, tel2, tel3, obs, ex, limiteCredito, idcidad' +
        'e, tppessoa, '
      
        '   razao, comple, End_entrega, Num_entrega, Bairro_entrega, Cep_' +
        'entrega, '
      
        '   idCidade_entrega, UF_entrega, Comple_entrega, ativo, pais, pa' +
        'is_entrega, '
      
        '   contribuinte, produtorR, idtabela, dia_fecha, inadimplente, i' +
        'magem_serasa, '
      
        '   idvendedor, idweb, sincronizado, cidade_entrega, idcomercial,' +
        ' idemp, '
      
        '   forma_pgto, idcond1, idcond2, idTrans, idRedes, foma_pgto2, c' +
        'ontato, '
      '   usa_codigo, tipoFrete)'
      'VALUES'
      
        '  (:Id, :Nome, :Endereco, :Num, :Bairro, :CEP, :Cidade, :UF, :em' +
        'ail, :rg, '
      
        '   :cpf, :dtnasc, :dtcadastro, :tel1, :tel2, :tel3, :obs, :ex, :' +
        'limiteCredito, '
      
        '   :idcidade, :tppessoa, :razao, :comple, :End_entrega, :Num_ent' +
        'rega, :Bairro_entrega, '
      
        '   :Cep_entrega, :idCidade_entrega, :UF_entrega, :Comple_entrega' +
        ', :ativo, '
      
        '   :pais, :pais_entrega, :contribuinte, :produtorR, :idtabela, :' +
        'dia_fecha, '
      
        '   :inadimplente, :imagem_serasa, :idvendedor, :idweb, :sincroni' +
        'zado, :cidade_entrega, '
      
        '   :idcomercial, :idemp, :forma_pgto, :idcond1, :idcond2, :idTra' +
        'ns, :idRedes, '
      '   :foma_pgto2, :contato, :usa_codigo, :tipoFrete)')
    ModifySQL.Strings = (
      'UPDATE Cliente SET'
      '  Id = :Id,'
      '  Nome = :Nome,'
      '  Endereco = :Endereco,'
      '  Num = :Num,'
      '  Bairro = :Bairro,'
      '  CEP = :CEP,'
      '  Cidade = :Cidade,'
      '  UF = :UF,'
      '  email = :email,'
      '  rg = :rg,'
      '  cpf = :cpf,'
      '  dtnasc = :dtnasc,'
      '  dtcadastro = :dtcadastro,'
      '  tel1 = :tel1,'
      '  tel2 = :tel2,'
      '  tel3 = :tel3,'
      '  obs = :obs,'
      '  ex = :ex,'
      '  limiteCredito = :limiteCredito,'
      '  idcidade = :idcidade,'
      '  tppessoa = :tppessoa,'
      '  razao = :razao,'
      '  comple = :comple,'
      '  End_entrega = :End_entrega,'
      '  Num_entrega = :Num_entrega,'
      '  Bairro_entrega = :Bairro_entrega,'
      '  Cep_entrega = :Cep_entrega,'
      '  idCidade_entrega = :idCidade_entrega,'
      '  UF_entrega = :UF_entrega,'
      '  Comple_entrega = :Comple_entrega,'
      '  ativo = :ativo,'
      '  pais = :pais,'
      '  pais_entrega = :pais_entrega,'
      '  contribuinte = :contribuinte,'
      '  produtorR = :produtorR,'
      '  idtabela = :idtabela,'
      '  dia_fecha = :dia_fecha,'
      '  inadimplente = :inadimplente,'
      '  imagem_serasa = :imagem_serasa,'
      '  idvendedor = :idvendedor,'
      '  idweb = :idweb,'
      '  sincronizado = :sincronizado,'
      '  cidade_entrega = :cidade_entrega,'
      '  idcomercial = :idcomercial,'
      '  idemp = :idemp,'
      '  forma_pgto = :forma_pgto,'
      '  idcond1 = :idcond1,'
      '  idcond2 = :idcond2,'
      '  idTrans = :idTrans,'
      '  idRedes = :idRedes,'
      '  foma_pgto2 = :foma_pgto2,'
      '  contato = :contato,'
      '  usa_codigo = :usa_codigo,'
      '  tipoFrete = :tipoFrete'
      'WHERE'
      '  Cliente.Id = :OLD_Id')
    Left = 680
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Endereco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Num'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bairro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CPF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtNasc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtcadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tel1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tel2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tel3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'limiteCredito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tppessoa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'razao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comple'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'End_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Num_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bairro_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cep_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idCidade_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UF_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Comple_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pais_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contribuinte'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produtorR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idtabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dia_fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inadimplente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imagem_serasa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idvendedor'
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
        Name = 'cidade_entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcomercial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'forma_pgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcond1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcond2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idTrans'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idRedes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'foma_pgto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usa_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoFrete'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'Image/PDF File (*.jpg, *.jpeg, *.bmp, *.pdf)|*.jpg;*.jpeg;*.bmp;' +
      '*.pdf'
    Left = 856
    Top = 104
  end
  object qPais: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select pais.* from pais'
      'order by nome')
    Params = <>
    Left = 848
    Top = 280
    object tPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tPaisNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object dPais: TDataSource
    DataSet = qPais
    Left = 880
    Top = 282
  end
  object qCid: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select *'
      'from cidade'
      'where ((:UF = '#39'TT'#39') or (UF = :UF))'
      'order by Nome')
    Params = <
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end>
    Left = 840
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end>
    object qCidid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qCidNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object qCidUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dCid: TDataSource
    DataSet = qCid
    Left = 872
    Top = 347
  end
  object qTab: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select tabela.* from tabela'
      'where ex = 0 and coalesce( descricao, '#39#39') <> '#39#39
      'order by descricao')
    Params = <>
    Left = 584
    Top = 480
    object qTabId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qTabDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object dTab: TDataSource
    DataSet = qTab
    Left = 624
    Top = 482
  end
  object qCial: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select comercial.* from comercial'
      'where ex = 0'
      'order by descricao')
    Params = <>
    Left = 512
    Top = 488
    object qCialId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qCialDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object dCial: TDataSource
    DataSet = qCial
    Left = 552
    Top = 490
  end
  object qCon1: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select distinct c.id, c.descricao'
      'from cond_pgto c'
      'left join parametro p on p.id = 1'
      
        'left join Cond_Pgto_I ci on ci.IDCond = c.id and p.usa_cond_porc' +
        'entagem = '#39'S'#39
      'where c.ex = 0 '
      
        '   and ((p.usa_cond_porcentagem = '#39'N'#39') or (p.usa_cond_porcentage' +
        'm = '#39'S'#39' and coalesce(ci.porc, 0) > 0 and coalesce(ci.dias, 0) > ' +
        '0 ))'
      ''
      'order by c.descricao')
    Params = <>
    Left = 160
    Top = 481
    object qCon1id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qCon1descricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dCon1: TDataSource
    DataSet = qCon1
    Left = 116
    Top = 467
  end
  object qCon2: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select distinct c.id, c.descricao'
      'from cond_pgto c'
      'left join parametro p on p.id = 1'
      
        'left join Cond_Pgto_I ci on ci.IDCond = c.id and p.usa_cond_porc' +
        'entagem = '#39'S'#39
      'where c.ex = 0 '
      
        '   and ((p.usa_cond_porcentagem = '#39'N'#39') or (p.usa_cond_porcentage' +
        'm = '#39'S'#39' and coalesce(ci.porc, 0) > 0 and coalesce(ci.dias, 0) > ' +
        '0 ))'
      ''
      'order by c.descricao')
    Params = <>
    Left = 216
    Top = 481
    object IntegerField1: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dCon2: TDataSource
    DataSet = qCon2
    Left = 264
    Top = 483
  end
  object qTra: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, nome'
      'from transportadora'
      'order by nome')
    Params = <>
    Left = 312
    Top = 481
    object IntegerField2: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qTranome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
  end
  object dTra: TDataSource
    DataSet = qTra
    Left = 364
    Top = 491
  end
  object qRed: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, nome'
      'from transportadora'
      'order by nome')
    Params = <>
    Left = 416
    Top = 489
    object IntegerField3: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object WideStringField2: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
  end
  object dRed: TDataSource
    DataSet = qRed
    Left = 460
    Top = 483
  end
  object dCond1: TDataSource
    DataSet = qCon1
    Left = 68
    Top = 475
  end
  object qCond: TZQuery
    Connection = DM.Conex
    UpdateObject = uCond
    AfterPost = qCondAfterPost
    OnNewRecord = qCondNewRecord
    SQL.Strings = (
      'select cc.* , cp.descricao'
      ''
      'from cliente_cond cc'
      'left join cond_pgto cp on cp.id = cc.idcond'
      'where cc.ex = 0 and cc.idcliente = :id'
      ''
      'order by cp.descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 208
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qCondId: TIntegerField
      FieldName = 'Id'
      Required = True
      DisplayFormat = '00'
    end
    object qCondIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object qCondIdCond: TIntegerField
      FieldName = 'IdCond'
    end
    object qCondSincronizado: TWideStringField
      FieldName = 'Sincronizado'
      Required = True
      Size = 1
    end
    object qCondIdemp: TIntegerField
      FieldName = 'Idemp'
    end
    object qCondIdweb: TIntegerField
      FieldName = 'Idweb'
    end
    object qCondex: TIntegerField
      FieldName = 'ex'
      Required = True
    end
    object qConddescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dCond: TDataSource
    DataSet = qCond
    Left = 296
    Top = 243
  end
  object uCond: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cliente_cond'
      'WHERE'
      '  cliente_cond.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO cliente_cond'
      '  (Id, IdCliente, IdCond, Sincronizado, Idemp, Idweb, ex)'
      'VALUES'
      '  (:Id, :IdCliente, :IdCond, :Sincronizado, :Idemp, :Idweb, :ex)')
    ModifySQL.Strings = (
      'UPDATE cliente_cond SET'
      '  Id = :Id,'
      '  IdCliente = :IdCliente,'
      '  IdCond = :IdCond,'
      '  Sincronizado = :Sincronizado,'
      '  Idemp = :Idemp,'
      '  Idweb = :Idweb,'
      '  ex = :ex'
      'WHERE'
      '  cliente_cond.Id = :OLD_Id')
    UseSequenceFieldForRefreshSQL = False
    Left = 252
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCond'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Sincronizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Idweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
end
