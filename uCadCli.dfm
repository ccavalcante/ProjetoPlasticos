inherited fCadCli: TfCadCli
  Left = 182
  Top = 135
  Caption = 'Clientes'
  ClientHeight = 538
  ClientWidth = 967
  ExplicitWidth = 983
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 967
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
  inherited ToolBar1: TToolBar
    Width = 967
    ButtonHeight = 30
    TabOrder = 1
    ExplicitWidth = 967
    inherited BtNovo: TToolButton
      ExplicitHeight = 30
    end
    inherited BtEditar: TToolButton
      ExplicitHeight = 30
    end
    inherited BtSalvar: TToolButton
      ExplicitHeight = 30
    end
    inherited btnExcluir: TToolButton
      ExplicitHeight = 30
    end
    inherited BtCancelar: TToolButton
      ExplicitHeight = 30
    end
    inherited ToolButton1: TToolButton
      ExplicitHeight = 30
    end
    inherited BtPrimeiro: TToolButton
      ExplicitHeight = 30
    end
    inherited BtAnterior: TToolButton
      ExplicitHeight = 30
    end
    inherited BtProximo: TToolButton
      ExplicitHeight = 30
    end
    inherited BtUltimo: TToolButton
      ExplicitHeight = 30
    end
    inherited ToolButton2: TToolButton
      ExplicitHeight = 30
    end
    inherited BtImprimir: TToolButton
      ExplicitHeight = 30
    end
    inherited BtSair: TToolButton
      ExplicitHeight = 30
    end
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
    object Panel1: TPanel
      Left = 458
      Top = 0
      Width = 506
      Height = 30
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Label44: TLabel
        Left = 0
        Top = 0
        Width = 22
        Height = 30
        Align = alLeft
        Caption = '   UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 16
      end
      object Label45: TLabel
        Left = 95
        Top = 7
        Width = 40
        Height = 16
        Caption = 'Cidade '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Label52: TLabel
        Left = 410
        Top = 8
        Width = 24
        Height = 16
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Label53: TLabel
        Left = 339
        Top = 7
        Width = 24
        Height = 16
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object cbCid2: TDBLookupComboBox
        Left = 141
        Top = 5
        Width = 192
        Height = 24
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = dCid2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = cbCid2Click
      end
      object cbUf2: TComboBox
        Left = 28
        Top = 5
        Width = 61
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'TODOS'
        OnChange = cbUf2Change
        Items.Strings = (
          'TODOS'
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
      end
      object cbTipo: TDBLookupComboBox
        Left = 368
        Top = 5
        Width = 138
        Height = 24
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        KeyField = 'ID'
        ListField = 'descricao'
        ListSource = dTipo2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnClick = cbTipoClick
      end
    end
  end
  inherited EdPesq: TEdit
    Left = 120
    Top = 50
    Width = 832
    TabOrder = 3
    ExplicitLeft = 120
    ExplicitTop = 50
    ExplicitWidth = 832
  end
  inherited PageControl1: TPageControl
    Top = 80
    Width = 944
    Height = 453
    ActivePage = TabSheet2
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitTop = 80
    ExplicitWidth = 944
    ExplicitHeight = 453
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 936
      ExplicitHeight = 425
      inherited DBGrid1: TDBGrid
        Width = 936
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
      ExplicitWidth = 936
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
        Width = 701
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
        Left = 233
        Top = 128
        Width = 55
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label7: TLabel
        Left = 666
        Top = 48
        Width = 49
        Height = 13
        Caption = 'Dt. nasc'
        FocusControl = DBEdit6
      end
      object lRG: TLabel
        Left = 483
        Top = 168
        Width = 19
        Height = 13
        Caption = 'RG'
        FocusControl = DBEdit10
      end
      object lCPF: TLabel
        Left = 549
        Top = 8
        Width = 24
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 210
        Top = 8
        Width = 71
        Height = 13
        Caption = 'Dt. cadastro'
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
        Left = 713
        Top = 289
        Width = 26
        Height = 13
        Caption = 'OBS'
      end
      object Label5: TLabel
        Left = 713
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
        Left = 8
        Top = 127
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
        Width = 74
        Height = 13
        Caption = 'Raz'#227'o social'
        FocusControl = DBEdit8
      end
      object Label12: TLabel
        Left = 306
        Top = 168
        Width = 76
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit9
      end
      object Label19: TLabel
        Left = 8
        Top = 292
        Width = 124
        Height = 13
        Caption = 'Endere'#231'o de entrega '
      end
      object Label20: TLabel
        Left = 473
        Top = 292
        Width = 15
        Height = 13
        Caption = 'N'#186
        FocusControl = DBEdit18
      end
      object Label21: TLabel
        Left = 539
        Top = 292
        Width = 76
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit19
      end
      object Label22: TLabel
        Left = 8
        Top = 329
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit20
      end
      object Label23: TLabel
        Left = 265
        Top = 329
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit21
      end
      object Label24: TLabel
        Left = 265
        Top = 365
        Width = 17
        Height = 13
        Caption = 'UF'
      end
      object Label25: TLabel
        Left = 333
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
        Width = 103
        Height = 13
        Caption = 'Contato comercial'
        FocusControl = DBEdit22
      end
      object lWeb: TLabel
        Left = 119
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Id web'
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
      object SpeedButton1: TSpeedButton
        Left = 85
        Top = 142
        Width = 62
        Height = 21
        Hint = 'Busca Logradouro conforme o Cep'
        Caption = 'Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
          33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
          FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
          FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
          FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
          FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
          FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
          3333333773FFFF77333333333FBFBF3333333333377777333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 352
        Top = 342
        Width = 25
        Height = 21
        Hint = 'Busca Logradouro conforme o Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
          33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
          FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
          FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
          FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
          FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
          FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
          3333333773FFFF77333333333FBFBF3333333333377777333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object Label48: TLabel
        Left = 381
        Top = 329
        Width = 13
        Height = 13
        Caption = 'IE'
        FocusControl = DBEdit26
      end
      object Label49: TLabel
        Left = 539
        Top = 329
        Width = 32
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit27
      end
      object btnCpf: TSpeedButton
        Left = 744
        Top = 19
        Width = 77
        Height = 24
        Caption = 'Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
          9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
          034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
          06013402FF00FFFF00FFFF00FF044F09066B110AAB1F1BAF2A08A012029D0A03
          9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
          10AC300DAB2870D0800AA318039E0C039E0C039E0C039E0C039E0C039E0C039F
          0C03A70C024C04FF00FF0357060D822317B6410EA92DBCEAC213A91E039E0C03
          9E0B039E0B039E0C039E0C039E0C039E0C03A50C037B0801420303570617A341
          18B54A11AB34EEFAEF3FBC49049F0D039E0C05A00F34B73E059F0E039E0C039E
          0C03A10C03960A01420306680D21B1511EB75120B54FE9F8EED0F0D82DB84E17
          AF3916AB2EAFE5B495DC9A06A00F039E0C03A00C039F0C014A040874123EBD69
          2ABA5C21B55397E0B2FFFFFFE5F7ED92DEB081D899DAF3DDFFFFFFA6E2AB10A6
          1B03A00C039F0C02520506780E54C57A44C6741CB24E2EBB5EC2EDD3FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1E6BC07A518039D0C01460306780E4CBD69
          83DDA722B6551CB24E2CBA5D89DAA7D1F2DDFFFFFFFFFFFFFFFFFFDDF4E338BB
          5206A716038C0A014603FF00FF21A336AAE7C568D08E16AF481BB14C22B5542B
          B85C57CA81FFFFFFC4EDCE26B4410BA42009AF1C036B0AFF00FFFF00FF21A336
          56C573C5F0D866CF8C20B45219B14C20B55236BD6798E0B11FB24812AA340FB0
          2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
          BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
          FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
          3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43538B45446
          BC6642B8632BA649138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        OnClick = btnCpfClick
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
        TabOrder = 3
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
        TabOrder = 4
      end
      object DBEdit10: TDBEdit
        Left = 483
        Top = 184
        Width = 142
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'rg'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 549
        Top = 24
        Width = 189
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'cpf'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBEdit11Exit
      end
      object DBEdit12: TDBEdit
        Left = 209
        Top = 25
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
        Left = 712
        Top = 307
        Width = 227
        Height = 95
        Ctl3D = False
        DataField = 'obs'
        DataSource = D
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 30
      end
      object DBEdit3: TDBEdit
        Left = 233
        Top = 144
        Width = 473
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Endereco'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 713
        Top = 144
        Width = 106
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Num'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 8
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
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 8
        Top = 143
        Width = 76
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CEP'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 6
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
        Left = 352
        Top = 13
        Width = 185
        Height = 34
        Caption = 'Tipo de pessoa'
        Columns = 2
        Ctl3D = False
        DataField = 'tppessoa'
        DataSource = D
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        ParentCtl3D = False
        TabOrder = 31
        Values.Strings = (
          'F'
          'J')
        OnClick = DBRadioGroup1Click
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 103
        Width = 649
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'razao'
        DataSource = D
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 306
        Top = 184
        Width = 171
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'comple'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 10
      end
      object Button2: TButton
        Left = 142
        Top = 289
        Width = 115
        Height = 17
        Caption = 'Mesmo que acima'
        TabOrder = 32
        OnClick = Button2Click
      end
      object DBEdit17: TDBEdit
        Left = 8
        Top = 307
        Width = 460
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'End_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 20
      end
      object DBEdit18: TDBEdit
        Left = 473
        Top = 307
        Width = 63
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Num_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 21
      end
      object DBEdit19: TDBEdit
        Left = 539
        Top = 307
        Width = 162
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Comple_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 22
      end
      object DBEdit20: TDBEdit
        Left = 8
        Top = 343
        Width = 251
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Bairro_entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 23
      end
      object DBEdit21: TDBEdit
        Left = 265
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
        Left = 265
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
        TabOrder = 28
        OnChange = DBComboBox1Change
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 333
        Top = 378
        Width = 368
        Height = 19
        Ctl3D = False
        DataField = 'idCidade_entrega'
        DataSource = D
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = dCid
        ParentCtl3D = False
        TabOrder = 29
      end
      object DBCheckBox1: TDBCheckBox
        Left = 842
        Top = 25
        Width = 49
        Height = 17
        Caption = 'Ativo'
        DataField = 'ativo'
        DataSource = D
        TabOrder = 33
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
        Width = 251
        Height = 19
        Ctl3D = False
        DataField = 'pais_entrega'
        DataSource = D
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dPais
        ParentCtl3D = False
        TabOrder = 27
        OnCloseUp = DBLookupComboBox2CloseUp
      end
      object rgTabelaPreco: TDBRadioGroup
        Left = 666
        Top = 89
        Width = 153
        Height = 34
        Caption = 'Tabela de pre'#231'o'
        Columns = 2
        Ctl3D = False
        DataField = 'idtabela'
        DataSource = D
        Items.Strings = (
          '1'
          '2')
        ParentCtl3D = False
        TabOrder = 34
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
      object cbWeb: TComboBox
        Left = 148
        Top = 143
        Width = 78
        Height = 19
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 2
        ParentFont = False
        TabOrder = 35
        Text = 'Correios'
        Items.Strings = (
          'Rep.Virtual'
          'ViaCep'
          'Correios'
          'SIGEP')
      end
      object DBCheckBox5: TDBCheckBox
        Left = 271
        Top = 290
        Width = 199
        Height = 17
        Caption = 'Informar endere'#231'o entrega na NF'
        DataField = 'end_entrega_nf'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit26: TDBEdit
        Left = 381
        Top = 343
        Width = 154
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'IE_Entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 25
      end
      object DBEdit27: TDBEdit
        Left = 539
        Top = 343
        Width = 162
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CNPJ_Entrega'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 26
      end
      object DBCheckBox7: TDBCheckBox
        Left = 639
        Top = 185
        Width = 122
        Height = 17
        Caption = 'Consumidor final'
        DataField = 'consumidor_final'
        DataSource = D
        TabOrder = 37
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 759
        Top = 185
        Width = 97
        Height = 17
        Caption = 'Contribuinte'
        DataField = 'contribuinte'
        DataSource = D
        TabOrder = 38
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Inadimpl'#234'ncia'
      ImageIndex = 2
      DesignSize = (
        936
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
        Height = 24
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
        Width = 936
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
          Width = 926
          Height = 351
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 930
          ControlData = {
            4C000000B45F0000472400000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126209000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Dados adicionais'
      ImageIndex = 3
      object Bevel2: TBevel
        Left = 21
        Top = 290
        Width = 754
        Height = 54
        Shape = bsFrame
      end
      object Label27: TLabel
        Left = 21
        Top = 46
        Width = 127
        Height = 13
        Caption = 'Representante padr'#227'o'
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
        Left = 159
        Top = 126
        Width = 94
        Height = 13
        Caption = 'Tabela de pre'#231'o'
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
        Width = 119
        Height = 13
        Caption = 'Forma de pagamento'
      end
      object Label34: TLabel
        Left = 21
        Top = 208
        Width = 124
        Height = 13
        Caption = 'Condi'#231#227'o pagamento '
      end
      object Label35: TLabel
        Left = 21
        Top = 249
        Width = 149
        Height = 13
        Caption = 'Condi'#231#227'o de pagamento 2'
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
        Width = 130
        Height = 13
        Caption = 'Forma de pagamento 2'
      end
      object lLimite: TLabel
        Left = 404
        Top = 296
        Width = 95
        Height = 13
        Caption = 'Limite de cr'#233'dito'
      end
      object Label41: TLabel
        Left = 544
        Top = 295
        Width = 56
        Height = 13
        Caption = 'Tipo frete'
      end
      object Label42: TLabel
        Left = 404
        Top = 46
        Width = 104
        Height = 13
        Caption = 'Gerente comercial'
      end
      object Label43: TLabel
        Left = 153
        Top = 296
        Width = 116
        Height = 13
        Caption = 'Inscri'#231#227'o SUFRAMA'
      end
      object Label46: TLabel
        Left = 325
        Top = 126
        Width = 67
        Height = 13
        Caption = '% Comiss'#227'o'
      end
      object Label47: TLabel
        Left = 404
        Top = 86
        Width = 172
        Height = 13
        Caption = '% Comiss'#227'o gerente comercial'
      end
      object Label50: TLabel
        Left = 410
        Top = 124
        Width = 86
        Height = 13
        Caption = 'Tipo de cliente'
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
        NullValueKey = 46
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
        TabOrder = 2
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 21
        Top = 139
        Width = 134
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
        TabOrder = 4
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 159
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
        TabOrder = 5
      end
      object DBComboBox2: TDBComboBox
        Left = 404
        Top = 222
        Width = 371
        Height = 21
        Style = csDropDownList
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
          'Cheque Terceiro'
          'Boleto')
        TabOrder = 11
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
        TabOrder = 10
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
        TabOrder = 12
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
        TabOrder = 8
      end
      object DBLookupComboBox12: TDBLookupComboBox
        Left = 404
        Top = 181
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
        TabOrder = 9
      end
      object DBComboBox3: TDBComboBox
        Left = 404
        Top = 263
        Width = 371
        Height = 21
        Style = csDropDownList
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
          'Cheque Terceiro'
          'Boleto')
        TabOrder = 13
      end
      object edLimite: TDBEdit
        Left = 404
        Top = 309
        Width = 118
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'limiteCredito'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 18
      end
      object DBCheckBox2: TDBCheckBox
        Left = 24
        Top = 307
        Width = 107
        Height = 17
        Caption = 'Produtor rural'
        DataField = 'produtorR'
        DataSource = D
        TabOrder = 15
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object ckContrib: TDBCheckBox
        Left = 24
        Top = 292
        Width = 107
        Height = 17
        Caption = 'Contribuinte'
        DataField = 'contribuinte'
        DataSource = D
        TabOrder = 14
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 676
        Top = 311
        Width = 89
        Height = 17
        Caption = 'Usar c'#243'digo'
        DataField = 'usa_codigo'
        DataSource = D
        TabOrder = 20
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBComboBox5: TDBComboBox
        Left = 544
        Top = 308
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
        TabOrder = 19
        OnChange = DBComboBox4Change
      end
      object DBLookupComboBox13: TDBLookupComboBox
        Left = 404
        Top = 59
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idgerente'
        DataSource = D
        DropDownRows = 4
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = dVend
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit23: TDBEdit
        Left = 153
        Top = 309
        Width = 140
        Height = 19
        Ctl3D = False
        DataField = 'suframa'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 17
        OnChange = DBEdit23Change
      end
      object DBEdit24: TDBEdit
        Left = 338
        Top = 139
        Width = 54
        Height = 19
        Ctl3D = False
        DataField = 'comi_representante'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit25: TDBEdit
        Left = 404
        Top = 100
        Width = 67
        Height = 19
        Ctl3D = False
        DataField = 'comi_gerente'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBCheckBox6: TDBCheckBox
        Left = 24
        Top = 322
        Width = 107
        Height = 17
        Caption = 'Incide IPI'
        DataField = 'inside_ipi'
        DataSource = D
        TabOrder = 16
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBLookupComboBox14: TDBLookupComboBox
        Left = 404
        Top = 139
        Width = 371
        Height = 21
        Ctl3D = True
        DataField = 'idTipo_Cliente'
        DataSource = D
        DropDownRows = 4
        KeyField = 'ID'
        ListField = 'descricao'
        ListSource = dTipo
        NullValueKey = 46
        ParentCtl3D = False
        TabOrder = 7
      end
    end
    object tabRelac: TTabSheet
      Caption = 'Relacionamento'
      Enabled = False
      ImageIndex = 5
      OnShow = tabRelacShow
      DesignSize = (
        936
        425)
      object Label54: TLabel
        Left = 9
        Top = 146
        Width = 55
        Height = 13
        Caption = 'Hist'#243'rico:'
      end
      object Label55: TLabel
        Left = 9
        Top = 4
        Width = 35
        Height = 13
        Caption = 'Novo:'
      end
      object mmRelac: TMemo
        Left = 9
        Top = 16
        Width = 832
        Height = 121
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object BitBtn5: TBitBtn
        Left = 847
        Top = 16
        Width = 80
        Height = 23
        Hint = 'Inserir'
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -29
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object mmRel2: TMemo
        Left = 9
        Top = 160
        Width = 832
        Height = 262
        Anchors = [akLeft, akTop, akBottom]
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
    object tabWeb: TTabSheet
      Caption = 'Web'
      ImageIndex = 4
      DesignSize = (
        936
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
        Width = 124
        Height = 13
        Caption = 'Condi'#231#227'o pagamento '
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
  object pRep: TPanel [6]
    Left = 8
    Top = 41
    Width = 944
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      944
      41)
    object Label28: TLabel
      Left = 608
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
      Left = 688
      Top = 9
      Width = 252
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
      Width = 425
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
  object gdFor: TDBGrid [7]
    Left = 839
    Top = 435
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
    ReadOnly = True
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
  inherited ImageList1: TImageList
    Left = 888
    Top = 96
    Bitmap = {
      494C01010E001300180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 688
    Top = 88
  end
  inherited ActionList1: TActionList
    Left = 920
    Top = 112
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
    Left = 608
    Top = 88
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
    object Tidgerente: TIntegerField
      FieldName = 'idgerente'
    end
    object Tend_entrega_nf: TWideStringField
      FieldName = 'end_entrega_nf'
      Required = True
      Size = 1
    end
    object Tsuframa: TWideStringField
      FieldName = 'suframa'
    end
    object Tcomi_representante: TFloatField
      FieldName = 'comi_representante'
    end
    object Tcomi_gerente: TFloatField
      FieldName = 'comi_gerente'
    end
    object TIE_Entrega: TWideStringField
      FieldName = 'IE_Entrega'
    end
    object TCNPJ_Entrega: TWideStringField
      FieldName = 'CNPJ_Entrega'
      EditMask = '99.999.999/9999-99;0;_'
    end
    object Tinside_ipi: TWideStringField
      FieldName = 'inside_ipi'
      Required = True
      Size = 1
    end
    object TidTipo_Cliente: TIntegerField
      FieldName = 'idTipo_Cliente'
    end
    object Tconsumidor_final: TWideStringField
      FieldName = 'consumidor_final'
      Required = True
      Size = 1
    end
    object TEmUso: TWideStringField
      FieldName = 'EmUso'
      Required = True
      Size = 1
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
      
        '   usa_codigo, tipoFrete, idgerente, end_entrega_nf, suframa, co' +
        'mi_representante, '
      
        '   comi_gerente, IE_Entrega, CNPJ_Entrega, inside_ipi, idTipo_Cl' +
        'iente, '
      '   consumidor_final, EmUso)'
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
      
        '   :foma_pgto2, :contato, :usa_codigo, :tipoFrete, :idgerente, :' +
        'end_entrega_nf, '
      
        '   :suframa, :comi_representante, :comi_gerente, :IE_Entrega, :C' +
        'NPJ_Entrega, '
      '   :inside_ipi, :idTipo_Cliente, :consumidor_final, :EmUso)')
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
      '  tipoFrete = :tipoFrete,'
      '  idgerente = :idgerente,'
      '  end_entrega_nf = :end_entrega_nf,'
      '  suframa = :suframa,'
      '  comi_representante = :comi_representante,'
      '  comi_gerente = :comi_gerente,'
      '  IE_Entrega = :IE_Entrega,'
      '  CNPJ_Entrega = :CNPJ_Entrega,'
      '  inside_ipi = :inside_ipi,'
      '  idTipo_Cliente = :idTipo_Cliente,'
      '  consumidor_final = :consumidor_final,'
      '  EmUso = :EmUso'
      'WHERE'
      '  Cliente.Id = :OLD_Id')
    Left = 648
    Top = 88
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
        Name = 'idgerente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'end_entrega_nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'suframa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comi_representante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comi_gerente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IE_Entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJ_Entrega'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inside_ipi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idTipo_Cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'consumidor_final'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EmUso'
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
    Top = 176
  end
  object qPais: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select pais.* from pais'
      'order by nome')
    Params = <>
    Left = 880
    Top = 232
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
    Left = 912
    Top = 232
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
    Top = 345
  end
  object qTab: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select tabela.* from tabela'
      'where ex = 0 and '
      '          ativo = '#39'S'#39' and '
      '          coalesce( descricao, '#39#39') <> '#39#39
      'order by descricao')
    Params = <>
    Left = 616
    Top = 192
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
    Left = 616
    Top = 242
  end
  object qCial: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select comercial.* from comercial'
      'where ex = 0'
      'order by descricao')
    Params = <>
    Left = 544
    Top = 200
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
    Left = 544
    Top = 250
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
    Left = 192
    Top = 177
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
    Left = 192
    Top = 227
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
    Left = 248
    Top = 177
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
    Left = 248
    Top = 227
  end
  object qTra: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, nome'
      'from transportadora'
      'order by nome')
    Params = <>
    Left = 392
    Top = 161
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
    Left = 393
    Top = 211
  end
  object qRed: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select id, nome'
      'from transportadora'
      'order by nome')
    Params = <>
    Left = 464
    Top = 153
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
    Left = 468
    Top = 203
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
    Left = 681
    Top = 454
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
    Left = 755
    Top = 454
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
    Left = 717
    Top = 454
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
  object dVend: TDataSource
    DataSet = DM.qVend
    Left = 404
    Top = 275
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    WebService = wsRepublicaVirtual
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 602
    Top = 150
  end
  object ACBrIBGE1: TACBrIBGE
    ProxyPort = '8080'
    CacheArquivo = 'ACBrIBGE.txt'
    IgnorarCaixaEAcentos = True
    OnBuscaEfetuada = ACBrIBGE1BuscaEfetuada
    Left = 682
    Top = 150
  end
  object qCid2: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select top 1 0 id, '#39' Todos'#39' nome, '#39'Todos'#39'  uf'
      'from cidade'
      ''
      'union all'
      ''
      'select id, nome, uf'
      'from cidade'
      'where ((:es = '#39'TT'#39') or (UF = :es))'
      'order by 2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'es'
        ParamType = ptUnknown
      end>
    Left = 840
    Top = 425
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'es'
        ParamType = ptUnknown
      end>
    object qCid2id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qCid2nome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object qCid2uf: TWideStringField
      FieldName = 'uf'
      ReadOnly = True
      Size = 5
    end
  end
  object dCid2: TDataSource
    DataSet = qCid2
    Left = 872
    Top = 427
  end
  object qTipo: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from tipo_cliente'
      'where ex = 0'
      'order by descricao')
    Params = <>
    Left = 760
    Top = 224
    object IntegerField4: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dTipo: TDataSource
    DataSet = qTipo
    Left = 792
    Top = 226
  end
  object qTipo2: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select top 1 0 id, '#39' Todos'#39' descricao from tipo_cliente'
      ''
      'union all'
      ''
      'select id, descricao from tipo_cliente'
      'where ex = 0'
      'order by descricao')
    Params = <>
    Left = 712
    Top = 176
    object qTipo2id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qTipo2descricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 100
    end
  end
  object dTipo2: TDataSource
    DataSet = qTipo2
    Left = 744
    Top = 178
  end
  object qRelac: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from '
      'cliente_relacionamento'
      'where idCliente = :cli'
      'order by id desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end>
    Left = 88
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end>
    object qRelacinf: TWideMemoField
      FieldName = 'inf'
      OnGetText = qRelacinfGetText
      BlobType = ftWideMemo
    end
  end
  object dsRelac: TDataSource
    DataSet = qRelac
    Left = 88
    Top = 227
  end
  object RESTClient1: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 744
    Top = 64
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 816
    Top = 64
  end
  object RESTResponse1: TRESTResponse
    Left = 856
    Top = 72
  end
end
