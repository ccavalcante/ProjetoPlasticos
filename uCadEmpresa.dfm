inherited fCadEmpresa: TfCadEmpresa
  Left = 203
  Top = 156
  Caption = 'Empresas'
  ClientHeight = 666
  ClientWidth = 1000
  OldCreateOrder = True
  ExplicitWidth = 1016
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 1000
    Height = 625
    ExplicitWidth = 1034
    ExplicitHeight = 630
  end
  inherited ToolBar1: TToolBar
    Width = 1000
    ExplicitWidth = 1000
  end
  inherited EdPesq: TEdit
    Width = 885
    ExplicitWidth = 885
  end
  inherited PageControl1: TPageControl
    Left = 5
    Width = 985
    Height = 580
    ActivePage = TabSheet3
    OwnerDraw = False
    ExplicitLeft = 5
    ExplicitWidth = 985
    ExplicitHeight = 580
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 977
      ExplicitHeight = 552
      inherited DBGrid1: TDBGrid
        Width = 977
        Height = 552
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO'
            Title.Caption = 'Raz'#227'o'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fantasia'
            Title.Caption = 'Fantasia'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num'
            Title.Caption = 'n'#186
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ex'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IE'
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 977
      ExplicitHeight = 552
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 76
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 8
        Top = 48
        Width = 85
        Height = 13
        Caption = 'Nome Fantasia'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 55
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 392
        Top = 88
        Width = 15
        Height = 13
        Caption = 'N'#186
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 456
        Top = 88
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 632
        Top = 88
        Width = 25
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 69
        Top = 170
        Width = 40
        Height = 13
        Caption = 'Cidade'
      end
      object Label9: TLabel
        Left = 8
        Top = 170
        Width = 17
        Height = 13
        Caption = 'UF'
      end
      object Label44: TLabel
        Left = 8
        Top = 128
        Width = 32
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit14
      end
      object Label45: TLabel
        Left = 246
        Top = 128
        Width = 13
        Height = 13
        Caption = 'IE'
        FocusControl = DBEdit43
      end
      object Label46: TLabel
        Left = 496
        Top = 170
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit44
      end
      object Label14: TLabel
        Left = 8
        Top = 215
        Width = 29
        Height = 13
        Caption = 'Logo'
        FocusControl = DBEdit10
      end
      object Label20: TLabel
        Left = 497
        Top = 129
        Width = 91
        Height = 13
        Caption = 'Inscr. Municipal'
        FocusControl = DBEdit16
      end
      object Label21: TLabel
        Left = 353
        Top = 216
        Width = 31
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit17
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 711
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Razao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 64
        Width = 711
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Fantasia'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 104
        Width = 377
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Endereco'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 392
        Top = 104
        Width = 55
        Height = 19
        Ctl3D = False
        DataField = 'num'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 456
        Top = 104
        Width = 169
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Bairro'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 630
        Top = 104
        Width = 89
        Height = 19
        Ctl3D = False
        DataField = 'CEP'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit14: TDBEdit
        Left = 8
        Top = 144
        Width = 233
        Height = 19
        Ctl3D = False
        DataField = 'cnpj'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit43: TDBEdit
        Left = 246
        Top = 144
        Width = 233
        Height = 19
        Ctl3D = False
        DataField = 'IE'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit44: TDBEdit
        Left = 496
        Top = 186
        Width = 223
        Height = 19
        Ctl3D = False
        DataField = 'TELEFONE'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 68
        Top = 186
        Width = 411
        Height = 21
        Ctl3D = True
        DataField = 'idCidade'
        DataSource = D
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = DM.dCid
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBComboBox4: TDBComboBox
        Left = 8
        Top = 186
        Width = 52
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
          'TO')
        ParentCtl3D = False
        TabOrder = 9
        OnExit = DBComboBox4Exit
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 8
        Top = 259
        Width = 471
        Height = 70
        Caption = ' Tipo Empresa '
        Ctl3D = False
        DataField = 'TPEMPRESANFE'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Items.Strings = (
          '1 - Simples Nacional'
          '2 - Simples Nacional - excesso de sublimite de receita bruta'
          '3 - Regime Normal')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object DBEdit10: TDBEdit
        Left = 8
        Top = 232
        Width = 293
        Height = 19
        Ctl3D = False
        DataField = 'logo'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 12
      end
      object btLogo: TButton
        Left = 304
        Top = 231
        Width = 27
        Height = 20
        Caption = '...'
        TabOrder = 15
        OnClick = btLogoClick
      end
      object DBCheckBox2: TDBCheckBox
        Left = 496
        Top = 265
        Width = 113
        Height = 17
        Caption = 'Empresa Padr'#227'o'
        DataField = 'empresa_padrao'
        DataSource = D
        TabOrder = 16
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit16: TDBEdit
        Left = 497
        Top = 144
        Width = 222
        Height = 19
        Ctl3D = False
        DataField = 'im'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit17: TDBEdit
        Left = 353
        Top = 232
        Width = 366
        Height = 19
        Ctl3D = False
        DataField = 'EMAIL'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 13
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'NFe'
      ImageIndex = 2
      object Label10: TLabel
        Left = 13
        Top = 36
        Width = 95
        Height = 18
        Caption = 'Obs Nota Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label54: TLabel
        Left = 13
        Top = 118
        Width = 148
        Height = 18
        Caption = 'Aliquotas - Cr'#233'dito ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label89: TLabel
        Left = 13
        Top = 315
        Width = 39
        Height = 18
        Caption = 'Id CSC'
        FocusControl = DBEdit71
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label90: TLabel
        Left = 89
        Top = 315
        Width = 23
        Height = 18
        Caption = 'CSC'
        FocusControl = DBEdit72
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label61: TLabel
        Left = 469
        Top = 14
        Width = 193
        Height = 18
        Caption = 'N'#186' de S'#233'rie - Certificado Digital'
        FocusControl = DBEdit46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 469
        Top = 55
        Width = 38
        Height = 18
        Caption = 'E-mail'
        FocusControl = DBEdit47
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label63: TLabel
        Left = 842
        Top = 55
        Width = 37
        Height = 18
        Caption = 'Senha'
        FocusControl = DBEdit48
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 469
        Top = 96
        Width = 90
        Height = 18
        Caption = 'Assunto E-mail'
        FocusControl = DBEdit53
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 469
        Top = 137
        Width = 64
        Height = 18
        Caption = 'Com C'#243'pia'
        FocusControl = DBEdit49
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label68: TLabel
        Left = 469
        Top = 182
        Width = 231
        Height = 18
        Caption = 'Mensagem E-mail - Cancelamento NFe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label65: TLabel
        Left = 13
        Top = 356
        Width = 112
        Height = 18
        Caption = 'Email do Contador'
        FocusControl = DBEdit50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label66: TLabel
        Left = 469
        Top = 276
        Width = 126
        Height = 18
        Caption = 'Pasta DANFE em PDF'
        FocusControl = DBEdit51
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label67: TLabel
        Left = 469
        Top = 316
        Width = 62
        Height = 18
        Caption = 'Pasta XML'
        FocusControl = DBEdit52
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label71: TLabel
        Left = 469
        Top = 356
        Width = 31
        Height = 18
        Caption = 'Smtp'
        FocusControl = DBEdit56
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 866
        Top = 356
        Width = 32
        Height = 18
        Caption = 'Porta'
        FocusControl = DBEdit57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 13
        Top = 4
        Width = 53
        Height = 13
        Caption = 'Empresa:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 13
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
      object Label28: TLabel
        Left = 13
        Top = 405
        Width = 285
        Height = 18
        Caption = 'CPF/CNPJ autorizado a acessar o XML da NF-e'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 462
        Top = 3
        Width = 4
        Height = 424
        Shape = bsLeftLine
      end
      object DBMemo4: TDBMemo
        Left = 13
        Top = 52
        Width = 442
        Height = 65
        Ctl3D = False
        DataField = 'OBSNF'
        DataSource = D
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 13
        Top = 134
        Width = 181
        Height = 66
        Ctl3D = True
        DataSource = dCred
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PERIODO'
            Title.Caption = 'Per'#237'odo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQ'
            Title.Caption = '% Cr'#233'dito'
            Width = 81
            Visible = True
          end>
      end
      object DBCheckBox42: TDBCheckBox
        Left = 13
        Top = 202
        Width = 185
        Height = 17
        Caption = 'NFe: Destacar Duplicatas'
        DataField = 'NFE_DUPLICATA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox44: TDBCheckBox
        Left = 13
        Top = 217
        Width = 357
        Height = 17
        Caption = 'NFe: Destacar Impostos nos Dados Adicionais'
        DataField = 'DEST_IMPOSTOS'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox52: TDBCheckBox
        Left = 13
        Top = 232
        Width = 305
        Height = 17
        Caption = 'NFe: Mostrar Fonte: IBPT '
        DataField = 'MOSTRA_FONTEIBPT'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox208: TDBCheckBox
        Left = 13
        Top = 247
        Width = 97
        Height = 17
        Caption = 'NFe: NT003'
        DataField = 'NT003'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox209: TDBCheckBox
        Left = 13
        Top = 262
        Width = 89
        Height = 17
        Caption = 'NFe: CEST '
        DataField = 'NTCEST'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 340
        Top = 201
        Width = 115
        Height = 61
        Caption = 'Impress'#227'o NFe'
        Ctl3D = False
        DataField = 'TIPOIMP_NFE'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Items.Strings = (
          'Paisagem'
          'Retrato')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Values.Strings = (
          'P'
          'R')
      end
      object DBEdit71: TDBEdit
        Left = 13
        Top = 332
        Width = 73
        Height = 24
        Ctl3D = False
        DataField = 'IDCSC'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit72: TDBEdit
        Left = 89
        Top = 332
        Width = 366
        Height = 24
        Ctl3D = False
        DataField = 'CSC'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit46: TDBEdit
        Left = 469
        Top = 30
        Width = 489
        Height = 24
        Ctl3D = False
        DataField = 'NFE_NUMSERIE'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit47: TDBEdit
        Left = 469
        Top = 71
        Width = 367
        Height = 24
        Ctl3D = False
        DataField = 'NFE_EMAIL'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        OnExit = DBEdit47Exit
      end
      object DBEdit48: TDBEdit
        Left = 842
        Top = 71
        Width = 116
        Height = 24
        Ctl3D = False
        DataField = 'NFE_SENHA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 17
      end
      object DBEdit53: TDBEdit
        Left = 469
        Top = 112
        Width = 489
        Height = 24
        Ctl3D = False
        DataField = 'NFE_ASSUNTO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
      end
      object DBEdit49: TDBEdit
        Left = 469
        Top = 153
        Width = 489
        Height = 24
        Ctl3D = False
        DataField = 'NFE_COPIAEMAIL'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
      end
      object DBMemo6: TDBMemo
        Left = 469
        Top = 199
        Width = 489
        Height = 72
        Ctl3D = False
        DataField = 'NFE_CANCELADA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 20
      end
      object DBEdit50: TDBEdit
        Left = 13
        Top = 372
        Width = 363
        Height = 24
        Ctl3D = False
        DataField = 'email_contador'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit51: TDBEdit
        Left = 469
        Top = 292
        Width = 489
        Height = 24
        Ctl3D = False
        DataField = 'NFE_DANFE'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
      end
      object DBEdit52: TDBEdit
        Left = 469
        Top = 332
        Width = 489
        Height = 24
        Ctl3D = False
        DataField = 'NFE_XML'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
      end
      object DBEdit56: TDBEdit
        Left = 469
        Top = 372
        Width = 393
        Height = 24
        Ctl3D = False
        DataField = 'SMTP'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
      end
      object DBCheckBox201: TDBCheckBox
        Left = 469
        Top = 403
        Width = 45
        Height = 15
        Caption = 'SSL '
        DataField = 'EMAIL_SSL'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object ckTLS: TDBCheckBox
        Left = 517
        Top = 403
        Width = 45
        Height = 15
        Caption = 'TLS'
        DataField = 'EMAIL_TLS'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit57: TDBEdit
        Left = 866
        Top = 372
        Width = 92
        Height = 24
        Ctl3D = False
        DataField = 'PORTA'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
      end
      object DBCheckBox5: TDBCheckBox
        Left = 13
        Top = 278
        Width = 305
        Height = 17
        Caption = 'NFe: Produto CFOP puxar Natureza Opera'#231#227'o'
        DataField = 'nf_cfopprod_puxar_NF'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 13
        Top = 295
        Width = 327
        Height = 17
        Caption = 'NFe: Msg de Aprov. de Cr'#233'dito - NF relacionada'
        DataField = 'nf_msgAproveitCredito'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 340
        Top = 261
        Width = 115
        Height = 51
        Caption = 'Emiss'#227'o NFe'
        Ctl3D = False
        DataField = 'tpAmbiente'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Items.Strings = (
          'Produ'#231#227'o'
          'Homologa'#231#227'o')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Values.Strings = (
          'P'
          'H')
      end
      object XiButton1: TXiButton
        Left = 380
        Top = 372
        Width = 75
        Height = 25
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
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Contador'
        TabOrder = 27
        OnClick = XiButton1Click
      end
      object DBEdit20: TDBEdit
        Left = 306
        Top = 403
        Width = 149
        Height = 24
        Ctl3D = False
        DataField = 'auto_acesso_xml'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        MaxLength = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        OnKeyPress = DBEdit20KeyPress
      end
      object PageControl2: TPageControl
        Left = 199
        Top = 125
        Width = 256
        Height = 75
        ActivePage = TabSheet6
        TabOrder = 28
        object TabSheet7: TTabSheet
          Caption = 'NFe'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label11: TLabel
            Left = 4
            Top = 0
            Width = 46
            Height = 18
            Caption = 'Esp'#233'cie'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 87
            Top = 0
            Width = 37
            Height = 18
            Caption = 'Marca'
            FocusControl = DBEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 154
            Top = 0
            Width = 64
            Height = 18
            Caption = 'S'#233'rie NF-e'
            FocusControl = DBEdit9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBEdit7: TDBEdit
            Left = 4
            Top = 17
            Width = 76
            Height = 19
            Ctl3D = False
            DataField = 'ESPECIE'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 86
            Top = 17
            Width = 75
            Height = 19
            Ctl3D = False
            DataField = 'MARCA'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 167
            Top = 17
            Width = 72
            Height = 19
            Ctl3D = False
            DataField = 'SERIE'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Clientes'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label22: TLabel
            Left = 173
            Top = 0
            Width = 33
            Height = 18
            Caption = 'CFOP'
            FocusControl = DBEdit18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label23: TLabel
            Left = 4
            Top = 0
            Width = 40
            Height = 18
            Caption = 'CSOSN'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 89
            Top = 0
            Width = 52
            Height = 18
            Caption = 'CSOSN 2'
            FocusControl = DBEdit21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBEdit18: TDBEdit
            Left = 171
            Top = 17
            Width = 72
            Height = 19
            Ctl3D = False
            DataField = 'CFOP'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 4
            Top = 17
            Width = 72
            Height = 19
            Ctl3D = False
            DataField = 'CSOSN'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 89
            Top = 17
            Width = 72
            Height = 19
            Ctl3D = False
            DataField = 'CSOSN2'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Representantes'
          ImageIndex = 1
          object Label25: TLabel
            Left = 86
            Top = 0
            Width = 33
            Height = 18
            Caption = 'CFOP'
            FocusControl = DBEdit22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label29: TLabel
            Left = 167
            Top = 0
            Width = 62
            Height = 18
            Caption = 'CFOP fora'
            FocusControl = DBEdit23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 4
            Top = 0
            Width = 40
            Height = 18
            Caption = 'CSOSN'
            FocusControl = DBEdit24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBEdit22: TDBEdit
            Left = 86
            Top = 17
            Width = 72
            Height = 24
            Ctl3D = False
            DataField = 'rep_cfop_d'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit23: TDBEdit
            Left = 167
            Top = 17
            Width = 72
            Height = 24
            Ctl3D = False
            DataField = 'rep_cfop_f'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit24: TDBEdit
            Left = 4
            Top = 17
            Width = 72
            Height = 24
            Ctl3D = False
            DataField = 'rep_csosn'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Configura'#231#245'es de E-mail'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label36: TLabel
        Left = 19
        Top = 175
        Width = 494
        Height = 18
        Caption = 
          'Mensagem email ordem de compra (Coloque *** onde mostrar'#225' o n'#250'me' +
          'do da OC)'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 6
        Width = 644
        Height = 150
        Caption = 'Remetente de Email'
        TabOrder = 0
        object Label16: TLabel
          Left = 420
          Top = 24
          Width = 37
          Height = 18
          Caption = 'Senha'
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 420
          Top = 70
          Width = 32
          Height = 18
          Caption = 'Porta'
          FocusControl = DBEdit15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 21
          Top = 70
          Width = 31
          Height = 18
          Caption = 'Smtp'
          FocusControl = DBEdit13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 21
          Top = 24
          Width = 38
          Height = 18
          Caption = 'E-mail'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit12: TDBEdit
          Left = 21
          Top = 40
          Width = 393
          Height = 19
          Ctl3D = False
          DataField = 'rem_email'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit12Exit
        end
        object DBEdit11: TDBEdit
          Left = 420
          Top = 40
          Width = 118
          Height = 19
          Ctl3D = False
          DataField = 'rem_senha'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 1
        end
        object DBEdit15: TDBEdit
          Left = 420
          Top = 86
          Width = 118
          Height = 19
          Ctl3D = False
          DataField = 'rem_porta'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 21
          Top = 86
          Width = 393
          Height = 19
          Ctl3D = False
          DataField = 'rem_smtp'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBCheckBox3: TDBCheckBox
          Left = 21
          Top = 116
          Width = 45
          Height = 15
          Caption = 'SSL '
          DataField = 'rem_ssl'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 77
          Top = 116
          Width = 45
          Height = 15
          Caption = 'TLS'
          DataField = 'rem_tls'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object DBMemo1: TDBMemo
        Left = 19
        Top = 194
        Width = 529
        Height = 223
        Ctl3D = False
        DataField = 'msn_email_OC'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'MDFe'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label27: TLabel
        Left = 16
        Top = 16
        Width = 71
        Height = 13
        Caption = 'S'#233'rie MDF-e'
        FocusControl = DBEdit25
      end
      object Label26: TLabel
        Left = 16
        Top = 60
        Width = 144
        Height = 13
        Caption = 'Pasta - DAMDFE em PDF'
        FocusControl = DBEdit26
      end
      object Label31: TLabel
        Left = 16
        Top = 100
        Width = 70
        Height = 13
        Caption = 'Pasta - XML'
        FocusControl = DBEdit27
      end
      object DBEdit25: TDBEdit
        Left = 16
        Top = 32
        Width = 61
        Height = 19
        Ctl3D = False
        DataField = 'mdfe_serie'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit26: TDBEdit
        Left = 16
        Top = 76
        Width = 521
        Height = 19
        Ctl3D = False
        DataField = 'MDFE_DANFE'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit27: TDBEdit
        Left = 16
        Top = 116
        Width = 521
        Height = 19
        Ctl3D = False
        DataField = 'MDFE_XML'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'SAT'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel3: TBevel
        Left = 0
        Top = 3
        Width = 761
        Height = 486
        Shape = bsFrame
      end
      object Label32: TLabel
        Left = 288
        Top = 28
        Width = 112
        Height = 13
        Caption = 'Codigo de Ativa'#231#227'o'
        FocusControl = DBEdit28
      end
      object Label33: TLabel
        Left = 431
        Top = 28
        Width = 64
        Height = 13
        Caption = 'Nome DLL:'
        FocusControl = DBEdit67
      end
      object SpeedButton2: TSpeedButton
        Left = 721
        Top = 41
        Width = 23
        Height = 20
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555555555555555555555555555555555555555555
          555555555555555555555555555555555555555FFFFFFFFFF555550000000000
          55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
          B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
          000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
          555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
          55555575FFF75555555555700007555555555557777555555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        OnClick = SpeedButton2Click
      end
      object Bevel4: TBevel
        Left = 12
        Top = 81
        Width = 740
        Height = 60
        Shape = bsFrame
      end
      object SpeedButton1: TSpeedButton
        Left = 474
        Top = 114
        Width = 23
        Height = 20
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555555555555555555555555555555555555555555
          555555555555555555555555555555555555555FFFFFFFFFF555550000000000
          55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
          B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
          000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
          555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
          55555575FFF75555555555700007555555555557777555555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object Label34: TLabel
        Left = 17
        Top = 92
        Width = 86
        Height = 13
        Caption = 'N'#250'mero Copias'
        FocusControl = DBEdit28
      end
      object Label35: TLabel
        Left = 17
        Top = 116
        Width = 50
        Height = 13
        Caption = 'Logotipo'
        FocusControl = DBEdit28
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 12
        Top = 10
        Width = 137
        Height = 66
        Caption = 'Tipo de SAT'
        DataField = 'modeloSat'
        DataSource = D
        Items.Strings = (
          'Nenhum'
          'Dinamico cdecl '
          'Dinamico stdcall')
        TabOrder = 0
        TabStop = True
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBRadioGroup7: TDBRadioGroup
        Left = 153
        Top = 12
        Width = 126
        Height = 64
        Caption = 'Largura da Bobina'
        DataField = 'CFe_largura'
        DataSource = D
        Items.Strings = (
          '73 mm'
          '80 mm')
        TabOrder = 1
        TabStop = True
        Values.Strings = (
          '275'
          '302')
      end
      object DBEdit28: TDBEdit
        Left = 288
        Top = 42
        Width = 137
        Height = 19
        Ctl3D = False
        DataField = 'CodigoAtivacaoSat'
        DataSource = D
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 2
      end
      object DBEdit67: TDBEdit
        Left = 431
        Top = 42
        Width = 287
        Height = 19
        Ctl3D = False
        DataField = 'nome_dll_sat'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object XiButton6: TXiButton
        Left = 606
        Top = 89
        Width = 140
        Height = 21
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
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Ativar SAT'
        Enabled = False
        TabOrder = 4
        Visible = False
        OnClick = XiButton6Click
      end
      object XiButton7: TXiButton
        Left = 604
        Top = 113
        Width = 140
        Height = 21
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
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Associar Assinatura'
        Enabled = False
        TabOrder = 5
        Visible = False
        OnClick = XiButton7Click
      end
      object DBCheckBox74: TDBCheckBox
        Left = 440
        Top = 91
        Width = 55
        Height = 17
        Caption = '2'#186' Via Impress'#227'o'
        DataField = 'cfe_segundavia'
        DataSource = D
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit59: TDBEdit
        Left = 70
        Top = 115
        Width = 402
        Height = 19
        Ctl3D = False
        DataField = 'CFe_logo'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBCheckBox73: TDBCheckBox
        Left = 274
        Top = 90
        Width = 138
        Height = 17
        Caption = 'Visualizar Impress'#227'o'
        DataField = 'CFe_visualiza'
        DataSource = D
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox72: TDBCheckBox
        Left = 173
        Top = 90
        Width = 97
        Height = 17
        Caption = 'Salvar CFe'
        DataField = 'salvarcfes'
        DataSource = D
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBComboBox3: TDBComboBox
        Left = 105
        Top = 87
        Width = 54
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'CFe_copias'
        DataSource = D
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        ParentCtl3D = False
        TabOrder = 10
      end
      object XiButton2: TXiButton
        Left = 11
        Top = 149
        Width = 114
        Height = 25
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
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Consultar SAT'
        TabOrder = 11
        OnClick = XiButton1Click
      end
      object XiButton3: TXiButton
        Left = 126
        Top = 149
        Width = 114
        Height = 25
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
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Consultar Status'
        TabOrder = 12
        OnClick = XiButton3Click
      end
      object XiButton5: TXiButton
        Left = 241
        Top = 149
        Width = 113
        Height = 25
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
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Extrair Logs'
        TabOrder = 13
        OnClick = XiButton5Click
      end
      object XiButton4: TXiButton
        Left = 664
        Top = 149
        Width = 89
        Height = 25
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
        Spacing = 4
        TransparentGlyph = True
        Gradient = True
        HotTrack = True
        Caption = 'Limpar'
        TabOrder = 14
        OnClick = XiButton4Click
      end
      object mLog: TMemo
        Left = 11
        Top = 178
        Width = 742
        Height = 294
        Color = clCream
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
    end
  end
  inherited ImageList1: TImageList
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
    Top = 24
  end
  inherited T: TZQuery
    BeforeOpen = TBeforeOpen
    AfterScroll = TAfterScroll
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from empresa'
      'where razao like :pesq')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object TRAZAO: TWideStringField
      FieldName = 'RAZAO'
      Size = 60
    end
    object TCNPJ: TWideStringField
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##;0;_'
    end
    object TENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object TBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object TCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 25
    end
    object TUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCEP: TWideStringField
      FieldName = 'CEP'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object TSITE: TWideStringField
      FieldName = 'SITE'
      Size = 50
    end
    object TEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TRESPONS: TWideStringField
      FieldName = 'RESPONS'
      Size = 40
    end
    object TTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      EditMask = '(99)999999999;0;_'
      Size = 30
    end
    object TFAX: TWideStringField
      FieldName = 'FAX'
      EditMask = '(99)999999999;0;_'
      Size = 30
    end
    object Tlogo: TWideStringField
      FieldName = 'logo'
      Size = 150
    end
    object Tex: TWideStringField
      FieldName = 'ex'
      Size = 1
    end
    object Tfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object Tnum: TWideStringField
      FieldName = 'num'
      Size = 10
    end
    object TidCidade: TIntegerField
      FieldName = 'idCidade'
      OnValidate = TidCidadeValidate
    end
    object TIE: TWideStringField
      FieldName = 'IE'
      EditMask = '###.###.###.###;0;_'
    end
    object TOBSNF: TWideMemoField
      FieldName = 'OBSNF'
      BlobType = ftWideMemo
    end
    object TESPECIE: TWideStringField
      FieldName = 'ESPECIE'
    end
    object TMARCA: TWideStringField
      FieldName = 'MARCA'
    end
    object TSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object TTPEMPRESANFE: TIntegerField
      FieldName = 'TPEMPRESANFE'
    end
    object TNFE_DUPLICATA: TWideStringField
      FieldName = 'NFE_DUPLICATA'
      Required = True
      Size = 1
    end
    object TNFE: TWideStringField
      FieldName = 'NFE'
      Required = True
      Size = 1
    end
    object TCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object TCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object TCSOSN2: TWideStringField
      FieldName = 'CSOSN2'
      Size = 3
    end
    object TNFE_RAVE: TWideStringField
      FieldName = 'NFE_RAVE'
      Size = 255
    end
    object TNFE_NUMSERIE: TWideStringField
      FieldName = 'NFE_NUMSERIE'
      Size = 100
    end
    object TNFE_EMAIL: TWideStringField
      FieldName = 'NFE_EMAIL'
      Size = 100
    end
    object TNFE_SENHA: TWideStringField
      FieldName = 'NFE_SENHA'
      Size = 50
    end
    object TNFE_ASSUNTO: TWideStringField
      FieldName = 'NFE_ASSUNTO'
      Size = 100
    end
    object TNFE_CORPOMSG: TWideMemoField
      FieldName = 'NFE_CORPOMSG'
      BlobType = ftWideMemo
    end
    object TNFE_DANFE: TWideStringField
      FieldName = 'NFE_DANFE'
      Size = 255
    end
    object TNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 255
    end
    object TNFE_CANCELADA: TWideMemoField
      FieldName = 'NFE_CANCELADA'
      BlobType = ftWideMemo
    end
    object TNFE_COPIAEMAIL: TWideStringField
      FieldName = 'NFE_COPIAEMAIL'
      Size = 100
    end
    object TTIPO_EMPRESA: TWideStringField
      FieldName = 'TIPO_EMPRESA'
      Required = True
      Size = 1
    end
    object TTIPOIMP_NFE: TWideStringField
      FieldName = 'TIPOIMP_NFE'
      Required = True
      Size = 1
    end
    object TSIMPLESN_FAIXA: TIntegerField
      FieldName = 'SIMPLESN_FAIXA'
    end
    object TSIMPLESN_TIPO: TWideStringField
      FieldName = 'SIMPLESN_TIPO'
      Size = 1
    end
    object TDEST_IMPOSTOS: TWideStringField
      FieldName = 'DEST_IMPOSTOS'
      Required = True
      Size = 1
    end
    object TMOSTRA_FONTEIBPT: TWideStringField
      FieldName = 'MOSTRA_FONTEIBPT'
      Required = True
      Size = 1
    end
    object TSMTP: TWideStringField
      FieldName = 'SMTP'
      Size = 150
    end
    object TPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object TEMAIL_SSL: TWideStringField
      FieldName = 'EMAIL_SSL'
      Required = True
      Size = 1
    end
    object TEMAIL_TLS: TWideStringField
      FieldName = 'EMAIL_TLS'
      Size = 1
    end
    object TNT003: TWideStringField
      FieldName = 'NT003'
      Size = 1
    end
    object TNTCEST: TWideStringField
      FieldName = 'NTCEST'
      Size = 1
    end
    object TPICMSINTERDEST: TFloatField
      FieldName = 'PICMSINTERDEST'
    end
    object TCSC: TWideStringField
      FieldName = 'CSC'
      Size = 255
    end
    object TIDCSC: TWideStringField
      FieldName = 'IDCSC'
      Size = 255
    end
    object TMOSTRA_ST: TWideStringField
      FieldName = 'MOSTRA_ST'
      Required = True
      Size = 1
    end
    object TPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object TTIPOPESSOA: TWideStringField
      FieldName = 'TIPOPESSOA'
      Required = True
      Size = 1
    end
    object Tiduf: TIntegerField
      FieldName = 'iduf'
    end
    object TNF_IMPOSTOPORNCM: TWideStringField
      FieldName = 'NF_IMPOSTOPORNCM'
      Size = 1
    end
    object Temail_contador: TWideStringField
      FieldName = 'email_contador'
      Size = 150
    end
    object TtpAmbiente: TWideStringField
      FieldName = 'tpAmbiente'
      Required = True
      Size = 1
    end
    object Tnf_msgAproveitCredito: TWideStringField
      FieldName = 'nf_msgAproveitCredito'
      Size = 1
    end
    object Tnf_cfopprod_puxar_NF: TWideStringField
      FieldName = 'nf_cfopprod_puxar_NF'
      Size = 1
    end
    object Tid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object Tempresa_padrao: TWideStringField
      FieldName = 'empresa_padrao'
      Required = True
      Size = 1
    end
    object Trem_email: TWideStringField
      FieldName = 'rem_email'
      Size = 150
    end
    object Trem_senha: TWideStringField
      FieldName = 'rem_senha'
      Size = 50
    end
    object Trem_smtp: TWideStringField
      FieldName = 'rem_smtp'
      Size = 150
    end
    object Trem_porta: TIntegerField
      FieldName = 'rem_porta'
    end
    object Trem_ssl: TWideStringField
      FieldName = 'rem_ssl'
      Size = 1
    end
    object Trem_tls: TWideStringField
      FieldName = 'rem_tls'
      Size = 1
    end
    object Tim: TWideStringField
      FieldName = 'im'
    end
    object Tauto_acesso_xml: TWideStringField
      FieldName = 'auto_acesso_xml'
    end
    object Trep_cfop_d: TIntegerField
      FieldName = 'rep_cfop_d'
    end
    object Trep_cfop_f: TIntegerField
      FieldName = 'rep_cfop_f'
    end
    object Trep_csosn: TIntegerField
      FieldName = 'rep_csosn'
    end
    object Tmdfe_xml: TWideStringField
      FieldName = 'mdfe_xml'
      Size = 100
    end
    object Tmdfe_danfe: TWideStringField
      FieldName = 'mdfe_danfe'
      Size = 100
    end
    object Tmdfe_serie: TWideStringField
      FieldName = 'mdfe_serie'
      Size = 10
    end
    object Tsalvarcfes: TWideStringField
      FieldName = 'salvarcfes'
      Size = 1
    end
    object TmodeloSat: TWideStringField
      FieldName = 'modeloSat'
      Size = 1
    end
    object TCodigoAtivacaoSat: TWideStringField
      FieldName = 'CodigoAtivacaoSat'
      Size = 50
    end
    object TCFe_largura: TIntegerField
      FieldName = 'CFe_largura'
    end
    object TCFe_copias: TIntegerField
      FieldName = 'CFe_copias'
    end
    object TCFe_visualiza: TWideStringField
      FieldName = 'CFe_visualiza'
      Size = 1
    end
    object TCFe_logo: TWideStringField
      FieldName = 'CFe_logo'
      Size = 200
    end
    object Tnome_dll_sat: TWideStringField
      FieldName = 'nome_dll_sat'
      Size = 30
    end
    object Tcfe_segundavia: TWideStringField
      FieldName = 'cfe_segundavia'
      Required = True
      Size = 1
    end
    object Tmsn_email_OC: TWideMemoField
      FieldName = 'msn_email_OC'
      BlobType = ftWideMemo
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM empresa'
      'WHERE'
      '  empresa.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO empresa'
      
        '  (id, RAZAO, CNPJ, ENDERECO, BAIRRO, CIDADE, UF, CEP, SITE, EMA' +
        'IL, RESPONS, '
      
        '   TELEFONE, FAX, logo, ex, fantasia, num, idCidade, IE, OBSNF, ' +
        'ESPECIE, '
      
        '   MARCA, SERIE, TPEMPRESANFE, NFE_DUPLICATA, NFE, CFOP, CSOSN, ' +
        'CSOSN2, '
      
        '   NFE_RAVE, NFE_NUMSERIE, NFE_EMAIL, NFE_SENHA, NFE_ASSUNTO, NF' +
        'E_CORPOMSG, '
      
        '   NFE_DANFE, NFE_XML, NFE_CANCELADA, NFE_COPIAEMAIL, TIPO_EMPRE' +
        'SA, TIPOIMP_NFE, '
      
        '   SIMPLESN_FAIXA, SIMPLESN_TIPO, DEST_IMPOSTOS, MOSTRA_FONTEIBP' +
        'T, SMTP, '
      
        '   PORTA, EMAIL_SSL, EMAIL_TLS, NT003, NTCEST, PICMSINTERDEST, C' +
        'SC, IDCSC, '
      
        '   MOSTRA_ST, PAIS, TIPOPESSOA, iduf, NF_IMPOSTOPORNCM, email_co' +
        'ntador, '
      
        '   tpAmbiente, nf_msgAproveitCredito, nf_cfopprod_puxar_NF, empr' +
        'esa_padrao, '
      
        '   rem_email, rem_senha, rem_smtp, rem_porta, rem_ssl, rem_tls, ' +
        'im, auto_acesso_xml, '
      
        '   rep_cfop_d, rep_cfop_f, rep_csosn, mdfe_serie, mdfe_xml, mdfe' +
        '_danfe, '
      
        '   salvarcfes, modeloSat, CodigoAtivacaoSat, CFe_largura, CFe_co' +
        'pias, CFe_visualiza, '
      '   CFe_logo, nome_dll_sat, cfe_segundavia, msn_email_OC)'
      'VALUES'
      
        '  (:id, :RAZAO, :CNPJ, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :' +
        'SITE, :EMAIL, '
      
        '   :RESPONS, :TELEFONE, :FAX, :logo, :ex, :fantasia, :num, :idCi' +
        'dade, :IE, '
      
        '   :OBSNF, :ESPECIE, :MARCA, :SERIE, :TPEMPRESANFE, :NFE_DUPLICA' +
        'TA, :NFE, '
      
        '   :CFOP, :CSOSN, :CSOSN2, :NFE_RAVE, :NFE_NUMSERIE, :NFE_EMAIL,' +
        ' :NFE_SENHA, '
      
        '   :NFE_ASSUNTO, :NFE_CORPOMSG, :NFE_DANFE, :NFE_XML, :NFE_CANCE' +
        'LADA, :NFE_COPIAEMAIL, '
      
        '   :TIPO_EMPRESA, :TIPOIMP_NFE, :SIMPLESN_FAIXA, :SIMPLESN_TIPO,' +
        ' :DEST_IMPOSTOS, '
      
        '   :MOSTRA_FONTEIBPT, :SMTP, :PORTA, :EMAIL_SSL, :EMAIL_TLS, :NT' +
        '003, :NTCEST, '
      
        '   :PICMSINTERDEST, :CSC, :IDCSC, :MOSTRA_ST, :PAIS, :TIPOPESSOA' +
        ', :iduf, '
      
        '   :NF_IMPOSTOPORNCM, :email_contador, :tpAmbiente, :nf_msgAprov' +
        'eitCredito, '
      
        '   :nf_cfopprod_puxar_NF, :empresa_padrao, :rem_email, :rem_senh' +
        'a, :rem_smtp, '
      
        '   :rem_porta, :rem_ssl, :rem_tls, :im, :auto_acesso_xml, :rep_c' +
        'fop_d, '
      
        '   :rep_cfop_f, :rep_csosn, :mdfe_serie, :mdfe_xml, :mdfe_danfe,' +
        ' :salvarcfes, '
      
        '   :modeloSat, :CodigoAtivacaoSat, :CFe_largura, :CFe_copias, :C' +
        'Fe_visualiza, '
      '   :CFe_logo, :nome_dll_sat, :cfe_segundavia, :msn_email_OC)')
    ModifySQL.Strings = (
      'UPDATE empresa SET'
      '  id = :id,'
      '  RAZAO = :RAZAO,'
      '  CNPJ = :CNPJ,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  SITE = :SITE,'
      '  EMAIL = :EMAIL,'
      '  RESPONS = :RESPONS,'
      '  TELEFONE = :TELEFONE,'
      '  FAX = :FAX,'
      '  logo = :logo,'
      '  ex = :ex,'
      '  fantasia = :fantasia,'
      '  num = :num,'
      '  idCidade = :idCidade,'
      '  IE = :IE,'
      '  OBSNF = :OBSNF,'
      '  ESPECIE = :ESPECIE,'
      '  MARCA = :MARCA,'
      '  SERIE = :SERIE,'
      '  TPEMPRESANFE = :TPEMPRESANFE,'
      '  NFE_DUPLICATA = :NFE_DUPLICATA,'
      '  NFE = :NFE,'
      '  CFOP = :CFOP,'
      '  CSOSN = :CSOSN,'
      '  CSOSN2 = :CSOSN2,'
      '  NFE_RAVE = :NFE_RAVE,'
      '  NFE_NUMSERIE = :NFE_NUMSERIE,'
      '  NFE_EMAIL = :NFE_EMAIL,'
      '  NFE_SENHA = :NFE_SENHA,'
      '  NFE_ASSUNTO = :NFE_ASSUNTO,'
      '  NFE_CORPOMSG = :NFE_CORPOMSG,'
      '  NFE_DANFE = :NFE_DANFE,'
      '  NFE_XML = :NFE_XML,'
      '  NFE_CANCELADA = :NFE_CANCELADA,'
      '  NFE_COPIAEMAIL = :NFE_COPIAEMAIL,'
      '  TIPO_EMPRESA = :TIPO_EMPRESA,'
      '  TIPOIMP_NFE = :TIPOIMP_NFE,'
      '  SIMPLESN_FAIXA = :SIMPLESN_FAIXA,'
      '  SIMPLESN_TIPO = :SIMPLESN_TIPO,'
      '  DEST_IMPOSTOS = :DEST_IMPOSTOS,'
      '  MOSTRA_FONTEIBPT = :MOSTRA_FONTEIBPT,'
      '  SMTP = :SMTP,'
      '  PORTA = :PORTA,'
      '  EMAIL_SSL = :EMAIL_SSL,'
      '  EMAIL_TLS = :EMAIL_TLS,'
      '  NT003 = :NT003,'
      '  NTCEST = :NTCEST,'
      '  PICMSINTERDEST = :PICMSINTERDEST,'
      '  CSC = :CSC,'
      '  IDCSC = :IDCSC,'
      '  MOSTRA_ST = :MOSTRA_ST,'
      '  PAIS = :PAIS,'
      '  TIPOPESSOA = :TIPOPESSOA,'
      '  iduf = :iduf,'
      '  NF_IMPOSTOPORNCM = :NF_IMPOSTOPORNCM,'
      '  email_contador = :email_contador,'
      '  tpAmbiente = :tpAmbiente,'
      '  nf_msgAproveitCredito = :nf_msgAproveitCredito,'
      '  nf_cfopprod_puxar_NF = :nf_cfopprod_puxar_NF,'
      '  empresa_padrao = :empresa_padrao,'
      '  rem_email = :rem_email,'
      '  rem_senha = :rem_senha,'
      '  rem_smtp = :rem_smtp,'
      '  rem_porta = :rem_porta,'
      '  rem_ssl = :rem_ssl,'
      '  rem_tls = :rem_tls,'
      '  im = :im,'
      '  auto_acesso_xml = :auto_acesso_xml,'
      '  rep_cfop_d = :rep_cfop_d,'
      '  rep_cfop_f = :rep_cfop_f,'
      '  rep_csosn = :rep_csosn,'
      '  mdfe_serie = :mdfe_serie,'
      '  mdfe_xml = :mdfe_xml,'
      '  mdfe_danfe = :mdfe_danfe,'
      '  salvarcfes = :salvarcfes,'
      '  modeloSat = :modeloSat,'
      '  CodigoAtivacaoSat = :CodigoAtivacaoSat,'
      '  CFe_largura = :CFe_largura,'
      '  CFe_copias = :CFe_copias,'
      '  CFe_visualiza = :CFe_visualiza,'
      '  CFe_logo = :CFe_logo,'
      '  nome_dll_sat = :nome_dll_sat,'
      '  cfe_segundavia = :cfe_segundavia,'
      '  msn_email_OC = :msn_email_OC'
      'WHERE'
      '  empresa.id = :OLD_id')
    Left = 600
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Razao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Endereco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bairro'
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
        Name = 'CEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RESPONS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'logo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ex'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fantasia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Num'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdCidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESPECIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TPEMPRESANFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_DUPLICATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFOP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSOSN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSOSN2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_RAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_NUMSERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_SENHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_ASSUNTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CORPOMSG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_DANFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_XML'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_CANCELADA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFE_COPIAEMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOIMP_NFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIMPLESN_FAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIMPLESN_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DEST_IMPOSTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOSTRA_FONTEIBPT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SMTP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PORTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL_SSL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL_TLS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NT003'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NTCEST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PICMSINTERDEST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CSC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCSC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOSTRA_ST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPESSOA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iduf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NF_IMPOSTOPORNCM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email_contador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tpAmbiente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_msgAproveitCredito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_cfopprod_puxar_NF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'empresa_padrao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rem_email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rem_senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rem_smtp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rem_porta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rem_ssl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rem_tls'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'im'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'auto_acesso_xml'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rep_cfop_d'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rep_cfop_f'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rep_csosn'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mdfe_serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mdfe_xml'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mdfe_danfe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'salvarcfes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'modeloSat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CodigoAtivacaoSat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFe_largura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFe_copias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFe_visualiza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFe_logo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome_dll_sat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfe_segundavia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'msn_email_OC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 907
    Top = 360
  end
  object OpenDialog1: TOpenDialog
    Left = 908
    Top = 414
  end
  object dCred: TDataSource
    DataSet = qCred
    Left = 928
    Top = 96
  end
  object qCred: TZQuery
    Connection = DM.Conex
    UpdateObject = uCred
    OnNewRecord = qCredNewRecord
    SQL.Strings = (
      'select * from aliq_credito'
      'where idemitente = :emp'
      'order by id desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    Left = 872
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qCredID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCredPERIODO: TWideStringField
      FieldName = 'PERIODO'
      Size = 10
    end
    object qCredALIQ: TFloatField
      FieldName = 'ALIQ'
    end
    object qCredIDEMITENTE: TIntegerField
      FieldName = 'IDEMITENTE'
    end
  end
  object uCred: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM aliq_credito'
      'WHERE'
      '  aliq_credito.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO aliq_credito'
      '  (ID, PERIODO, ALIQ, IDEMITENTE)'
      'VALUES'
      '  (:ID, :PERIODO, :ALIQ, :IDEMITENTE)')
    ModifySQL.Strings = (
      'UPDATE aliq_credito SET'
      '  ID = :ID,'
      '  PERIODO = :PERIODO,'
      '  ALIQ = :ALIQ,'
      '  IDEMITENTE = :IDEMITENTE'
      'WHERE'
      '  aliq_credito.ID = :OLD_ID')
    UseSequenceFieldForRefreshSQL = False
    Left = 904
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIODO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALIQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDEMITENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg, *.jpeg)|*.jpg;*.jpeg'
    Left = 824
    Top = 8
  end
  object ColorDialog1: TColorDialog
    Left = 912
  end
  object OpenDialog2: TOpenDialog
    Filter = 
      '*.jpg|*.jpg|*.jpeg|*.jpeg|*.bmp|*.bmp|*.ico|*.ico|*.emf|*.emf|*.' +
      'wmf|*.wmf'
    Left = 932
    Top = 40
  end
end
