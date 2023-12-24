inherited fCadFornecedor: TfCadFornecedor
  Left = 182
  Top = 137
  Caption = 'Fornecedores'
  ClientHeight = 565
  ClientWidth = 1063
  OldCreateOrder = True
  ExplicitWidth = 1079
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 1063
    Height = 524
    ExplicitWidth = 990
    ExplicitHeight = 592
  end
  inherited ToolBar1: TToolBar
    Width = 1063
    ExplicitWidth = 1063
    object Panel1: TPanel
      Left = 379
      Top = 0
      Width = 435
      Height = 31
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Label44: TLabel
        Left = 0
        Top = 0
        Width = 22
        Height = 31
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
      object cbCid2: TDBLookupComboBox
        Left = 135
        Top = 5
        Width = 293
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
    end
  end
  inherited EdPesq: TEdit
    Width = 948
    ExplicitWidth = 948
  end
  inherited PageControl1: TPageControl
    Width = 1048
    Height = 482
    ExplicitWidth = 1048
    ExplicitHeight = 482
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1040
      ExplicitHeight = 454
      inherited DBGrid1: TDBGrid
        Width = 1040
        Height = 454
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fantasia'
            Title.Caption = 'Fantasia'
            Width = 208
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 363
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 323
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Width = 253
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Title.Caption = 'Cep'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel1'
            Title.Caption = 'Telefone'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tel2'
            Title.Caption = 'Celular'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fax'
            Title.Caption = 'Fax'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Title.Caption = 'Contato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'Email'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITE'
            Width = 395
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPESSOA'
            Title.Caption = 'Tipo'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CONTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BANCO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EX'
            Visible = False
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1040
      ExplicitHeight = 454
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 1040
        Height = 454
        HorzScrollBar.Visible = False
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        object Label7: TLabel
          Left = 594
          Top = 170
          Width = 25
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 186
          Top = 210
          Width = 51
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit8
        end
        object Label13: TLabel
          Left = 408
          Top = 249
          Width = 31
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit12
        end
        object Label12: TLabel
          Left = 24
          Top = 250
          Width = 45
          Height = 13
          Caption = 'Contato'
          FocusControl = DBEdit11
        end
        object Label2: TLabel
          Left = 24
          Top = 9
          Width = 40
          Height = 13
          Caption = 'Codigo'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 24
          Top = 90
          Width = 76
          Height = 13
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 470
          Top = 130
          Width = 34
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit4
        end
        object Label4: TLabel
          Left = 24
          Top = 130
          Width = 55
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit3
        end
        object Label14: TLabel
          Left = 24
          Top = 210
          Width = 13
          Height = 13
          Caption = 'IE'
          FocusControl = DBEdit13
        end
        object Label10: TLabel
          Left = 317
          Top = 211
          Width = 40
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit8
        end
        object Label21: TLabel
          Left = 375
          Top = 332
          Width = 93
          Height = 13
          Caption = 'Tipo Pagamento'
          FocusControl = DBEdit20
        end
        object Label11: TLabel
          Left = 449
          Top = 211
          Width = 64
          Height = 13
          Caption = 'Fax/Outros'
          FocusControl = DBEdit8
        end
        object Label23: TLabel
          Left = 592
          Top = 332
          Width = 90
          Height = 13
          Caption = 'Dia Vencimento'
          FocusControl = DBEdit21
        end
        object Label22: TLabel
          Left = 24
          Top = 51
          Width = 49
          Height = 13
          Caption = 'Fantasia'
          FocusControl = DBEdit16
        end
        object Label20: TLabel
          Left = 24
          Top = 333
          Width = 37
          Height = 13
          Caption = 'Banco'
          FocusControl = DBEdit19
        end
        object Label16: TLabel
          Left = 24
          Top = 291
          Width = 23
          Height = 13
          Caption = 'Site'
          FocusControl = DBEdit15
        end
        object Label15: TLabel
          Left = 614
          Top = 12
          Width = 32
          Height = 13
          Caption = 'CNPJ'
          FocusControl = DBEdit14
        end
        object Label17: TLabel
          Left = 24
          Top = 375
          Width = 27
          Height = 13
          Caption = 'Obs.'
        end
        object Label19: TLabel
          Left = 192
          Top = 333
          Width = 34
          Height = 13
          Caption = 'Conta'
          FocusControl = DBEdit18
        end
        object Label18: TLabel
          Left = 77
          Top = 333
          Width = 47
          Height = 13
          Caption = 'Agencia'
          FocusControl = DBEdit17
        end
        object Label51: TLabel
          Left = 24
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
        object Label24: TLabel
          Left = 181
          Top = 170
          Width = 17
          Height = 13
          Caption = 'UF'
        end
        object Label25: TLabel
          Left = 256
          Top = 170
          Width = 40
          Height = 13
          Caption = 'Cidade'
        end
        object Label26: TLabel
          Left = 388
          Top = 130
          Width = 15
          Height = 13
          Caption = 'N'#186
          FocusControl = DBEdit22
        end
        object DBText1: TDBText
          Left = 302
          Top = 169
          Width = 288
          Height = 14
          Alignment = taRightJustify
          DataField = 'CIDADE'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -11
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label34: TLabel
          Left = 725
          Top = 90
          Width = 125
          Height = 13
          Caption = 'Condi'#231#227'o Pagamento '
        end
        object Label33: TLabel
          Left = 725
          Top = 130
          Width = 120
          Height = 13
          Caption = 'Forma de Pagamento'
        end
        object Label6: TLabel
          Left = 725
          Top = 51
          Width = 74
          Height = 13
          Caption = 'Centro Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 715
          Top = 51
          Width = 4
          Height = 396
          Shape = bsLeftLine
        end
        object btnCpf: TSpeedButton
          Left = 770
          Top = 21
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
        object DBEdit9: TDBEdit
          Left = 316
          Top = 223
          Width = 120
          Height = 19
          Ctl3D = False
          DataField = 'TEL2'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 13
        end
        object DBEdit8: TDBEdit
          Left = 186
          Top = 223
          Width = 120
          Height = 19
          Ctl3D = False
          DataField = 'TEL1'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBEdit10: TDBEdit
          Left = 448
          Top = 223
          Width = 120
          Height = 19
          Ctl3D = False
          DataField = 'FAX'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 14
        end
        object DBEdit12: TDBEdit
          Left = 408
          Top = 262
          Width = 297
          Height = 19
          Ctl3D = False
          DataField = 'EMAIL'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 16
        end
        object DBEdit11: TDBEdit
          Left = 24
          Top = 263
          Width = 377
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'CONTATO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 15
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 144
          Width = 358
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ENDERECO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 104
          Width = 680
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NOME'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 470
          Top = 144
          Width = 233
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BAIRRO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 594
          Top = 183
          Width = 109
          Height = 19
          Ctl3D = False
          DataField = 'CEP'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBEdit13: TDBEdit
          Left = 24
          Top = 223
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'IE'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBEdit20: TDBEdit
          Left = 375
          Top = 346
          Width = 211
          Height = 19
          Ctl3D = False
          DataField = 'TIPOPAGTO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 21
        end
        object DBEdit19: TDBEdit
          Left = 24
          Top = 347
          Width = 43
          Height = 19
          Ctl3D = False
          DataField = 'BANCO'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 18
        end
        object DBMemo1: TDBMemo
          Left = 24
          Top = 389
          Width = 681
          Height = 58
          Ctl3D = False
          DataField = 'OBS'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 23
        end
        object DBEdit21: TDBEdit
          Left = 592
          Top = 346
          Width = 113
          Height = 19
          Ctl3D = False
          DataField = 'dia_venci'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 22
        end
        object DBEdit16: TDBEdit
          Left = 24
          Top = 64
          Width = 680
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'fantasia'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit18: TDBEdit
          Left = 192
          Top = 347
          Width = 173
          Height = 19
          Ctl3D = False
          DataField = 'CONTA'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 20
        end
        object DBEdit14: TDBEdit
          Left = 614
          Top = 26
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'CNPJ'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 1
          OnExit = DBEdit14Exit
        end
        object rgTipo: TDBRadioGroup
          Left = 459
          Top = 4
          Width = 144
          Height = 41
          Caption = 'Tipo Pessoa'
          Columns = 2
          DataField = 'TIPOPESSOA'
          DataSource = D
          Items.Strings = (
            'Juridica'
            'Fisica')
          TabOrder = 27
          Values.Strings = (
            'J'
            'F')
          OnClick = rgTipoClick
        end
        object DBEdit17: TDBEdit
          Left = 77
          Top = 347
          Width = 104
          Height = 19
          Ctl3D = False
          DataField = 'AGENCIA'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 19
        end
        object DBEdit15: TDBEdit
          Left = 24
          Top = 305
          Width = 681
          Height = 19
          Ctl3D = False
          DataField = 'SITE'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 17
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 25
          Width = 134
          Height = 19
          Ctl3D = False
          DataField = 'ID'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBCheckBox2: TDBCheckBox
          Left = 943
          Top = 26
          Width = 48
          Height = 17
          Caption = 'Ativo'
          DataField = 'ativo'
          DataSource = D
          TabOrder = 28
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 24
          Top = 183
          Width = 150
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
          Left = 181
          Top = 183
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
          Left = 256
          Top = 183
          Width = 334
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
        object DBEdit22: TDBEdit
          Left = 388
          Top = 144
          Width = 76
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'Num'
          DataSource = D
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBCheckBox3: TDBCheckBox
          Left = 943
          Top = 7
          Width = 89
          Height = 17
          Caption = 'Contribuinte'
          DataField = 'contribuinte'
          DataSource = D
          TabOrder = 29
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 172
          Top = 4
          Width = 272
          Height = 41
          Caption = 'Tipo de Cadastro'
          Columns = 3
          DataField = 'tipo'
          DataSource = D
          Items.Strings = (
            'Fornecedor'
            'Despesa'
            'Tercerizado')
          TabOrder = 30
          Values.Strings = (
            'F'
            'D'
            'T')
          OnClick = rgTipoClick
        end
        object cbCond: TDBLookupComboBox
          Left = 724
          Top = 104
          Width = 308
          Height = 21
          Ctl3D = True
          DataField = 'idcondfpto'
          DataSource = D
          DropDownRows = 4
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = dCon1
          NullValueKey = 46
          ParentCtl3D = False
          TabOrder = 25
        end
        object DBComboBox2: TDBComboBox
          Left = 725
          Top = 144
          Width = 308
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
          TabOrder = 26
        end
        object cbCusto: TDBLookupComboBox
          Left = 725
          Top = 64
          Width = 308
          Height = 21
          Ctl3D = True
          DataField = 'idCusto'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DM.dCusto
          NullValueKey = 46
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 24
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 248
  end
  inherited D: TDataSource
    Left = 960
    Top = 32
  end
  inherited ActionList1: TActionList
    Left = 176
    Top = 0
  end
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    OnNewRecord = TNewRecord
    SQL.Strings = (
      ' select * from fornecedor where ex = 0 and '
      
        '            (nome like :pesq or id like :pesq or fantasia like :' +
        'pesq) '
      '            and ((:es = '#39'TT'#39') or (uf = :es)) '
      '            and ((:cd = '#39'TT'#39') or (idcidade = :cd)) '
      '            order by nome ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
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
      end>
    Left = 880
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
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
    object Tativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object Tpais: TIntegerField
      FieldName = 'pais'
      Required = True
    end
    object Tcontribuinte: TWideStringField
      FieldName = 'contribuinte'
      Required = True
      Size = 1
    end
    object Ttipo: TWideStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object Tidcondfpto: TIntegerField
      FieldName = 'idcondfpto'
    end
    object Tidcusto: TIntegerField
      FieldName = 'idcusto'
    end
    object Tforma_pgto: TWideStringField
      FieldName = 'forma_pgto'
      Size = 50
    end
    object TEmUso: TWideStringField
      FieldName = 'EmUso'
      Size = 1
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fornecedor'
      'WHERE'
      '  fornecedor.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO fornecedor'
      
        '  (ID, NOME, ENDERECO, BAIRRO, CIDADE, CEP, UF, tel1, tel2, fax,' +
        ' CONTATO, '
      
        '   EMAIL, IE, CNPJ, CONTA, AGENCIA, BANCO, TIPOPAGTO, OBS, EX, S' +
        'ITE, TIPOPESSOA, '
      
        '   fantasia, num, idcidade, dia_venci, ativo, pais, contribuinte' +
        ', tipo, '
      '   idcondfpto, idcusto, forma_pgto, EmUso)'
      'VALUES'
      
        '  (:ID, :NOME, :ENDERECO, :BAIRRO, :CIDADE, :CEP, :UF, :tel1, :t' +
        'el2, :fax, '
      
        '   :CONTATO, :EMAIL, :IE, :CNPJ, :CONTA, :AGENCIA, :BANCO, :TIPO' +
        'PAGTO, '
      
        '   :OBS, :EX, :SITE, :TIPOPESSOA, :fantasia, :num, :idcidade, :d' +
        'ia_venci, '
      
        '   :ativo, :pais, :contribuinte, :tipo, :idcondfpto, :idcusto, :' +
        'forma_pgto, '
      '   :EmUso)')
    ModifySQL.Strings = (
      'UPDATE fornecedor SET'
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
      '  ativo = :ativo,'
      '  pais = :pais,'
      '  contribuinte = :contribuinte,'
      '  tipo = :tipo,'
      '  idcondfpto = :idcondfpto,'
      '  idcusto = :idcusto,'
      '  forma_pgto = :forma_pgto,'
      '  EmUso = :EmUso'
      'WHERE'
      '  fornecedor.ID = :OLD_ID')
    Left = 920
    Top = 40
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
        Name = 'contribuinte'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcondfpto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'forma_pgto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EmUso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
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
    Left = 776
    Top = 337
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
    Left = 792
    Top = 307
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
    Left = 872
    Top = 417
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
    Left = 908
    Top = 419
  end
end
