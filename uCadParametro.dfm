inherited fCadParametro: TfCadParametro
  Left = 203
  Top = 156
  Caption = 'Par'#226'metros'
  ClientHeight = 579
  ClientWidth = 1000
  OldCreateOrder = True
  ExplicitWidth = 1016
  ExplicitHeight = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 1000
    Height = 538
    ExplicitWidth = 1034
    ExplicitHeight = 630
  end
  inherited Label1: TLabel
    Left = 11
    ExplicitLeft = 11
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
    Left = 7
    Top = 75
    Width = 985
    Height = 493
    ActivePage = TabSheet2
    ExplicitLeft = 7
    ExplicitTop = 75
    ExplicitWidth = 985
    ExplicitHeight = 493
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 977
      ExplicitHeight = 465
      inherited DBGrid1: TDBGrid
        Width = 977
        Height = 465
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
      ExplicitHeight = 465
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
        Top = 128
        Width = 51
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit44
      end
      object Label14: TLabel
        Left = 8
        Top = 215
        Width = 103
        Height = 13
        Caption = 'Logo de relat'#243'rios'
        FocusControl = DBEdit10
      end
      object Label15: TLabel
        Left = 8
        Top = 256
        Width = 304
        Height = 13
        Caption = 'Caminho da imagens de consulta de clientes (Serasa)'
        FocusControl = DBEdit11
      end
      object Label36: TLabel
        Left = 416
        Top = 170
        Width = 35
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit27
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
        Top = 144
        Width = 223
        Height = 19
        Ctl3D = False
        DataField = 'TELEFONE'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 69
        Top = 186
        Width = 335
        Height = 21
        Ctl3D = True
        DataField = 'idCidade'
        DataSource = D
        KeyField = 'Id'
        ListField = 'Nome'
        ListSource = DM.dCid
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBComboBox4: TDBComboBox
        Left = 7
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
        TabOrder = 11
        OnExit = DBComboBox4Exit
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 8
        Top = 296
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
        TabOrder = 12
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object DBEdit10: TDBEdit
        Left = 8
        Top = 232
        Width = 442
        Height = 19
        Ctl3D = False
        DataField = 'logo'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 13
      end
      object btLogo: TButton
        Left = 452
        Top = 230
        Width = 27
        Height = 23
        Caption = '...'
        TabOrder = 14
        OnClick = btLogoClick
      end
      object DBEdit11: TDBEdit
        Left = 8
        Top = 273
        Width = 442
        Height = 19
        Ctl3D = False
        DataField = 'caminho_pasta_serasa'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit27: TDBEdit
        Left = 416
        Top = 186
        Width = 303
        Height = 19
        Ctl3D = False
        DataField = 'EMAIL'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 10
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 4
      OnShow = TabSheet4Show
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 350
        Height = 459
        Align = alLeft
        Caption = ' Configura'#231#245'es diversas '
        TabOrder = 0
        object DBRadioGroup1: TDBRadioGroup
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 340
          Height = 67
          Align = alTop
          Caption = 'Foco na inicializa'#231#227'o da venda'
          Columns = 2
          DataField = 'venda_foco_inicial'
          DataSource = D
          Items.Strings = (
            'C'#243'digo Vendedor'
            'C'#243'digo Cliente'
            'C'#243'digo Produto'
            'Nome Vendedor'
            'Nome Cliente'
            'Descri'#231#227'o Produto')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object DBRadioGroup4: TDBRadioGroup
          AlignWithMargins = True
          Left = 5
          Top = 91
          Width = 340
          Height = 45
          Align = alTop
          Caption = 'Pesquisa Produto Por'
          Columns = 3
          DataField = 'pesqproduto'
          DataSource = D
          Items.Strings = (
            'C'#243'digo'
            'C'#243'd. de Barras'
            'Refer'#234'ncia')
          TabOrder = 1
          Values.Strings = (
            'ID'
            'BARRAS'
            'REFERENCIA')
        end
        object GroupBox5: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 142
          Width = 340
          Height = 94
          Align = alTop
          Caption = 'Contas padr'#227'o para baixa do contas a receber '
          Padding.Left = 2
          Padding.Right = 2
          TabOrder = 2
          object Label20: TLabel
            Left = 9
            Top = 38
            Width = 85
            Height = 18
            Caption = 'Com desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 9
            Top = 58
            Width = 84
            Height = 18
            Caption = 'Sem desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBCheckBox20: TDBCheckBox
            Left = 9
            Top = 17
            Width = 299
            Height = 17
            Caption = 'Gerar contas seperadas (Comercializa'#231#227'o)'
            DataField = 'gerar_contas_sep'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object cb1: TDBLookupComboBox
            Left = 117
            Top = 37
            Width = 192
            Height = 21
            DataField = 'conta_com_desc'
            DataSource = D
            KeyField = 'ID'
            ListField = 'TITULAR'
            ListSource = dc1
            TabOrder = 1
          end
          object cb2: TDBLookupComboBox
            Left = 117
            Top = 60
            Width = 192
            Height = 21
            DataField = 'conta_sem_desc'
            DataSource = D
            KeyField = 'ID'
            ListField = 'TITULAR'
            ListSource = dc2
            TabOrder = 2
          end
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 242
          Width = 340
          Height = 215
          Align = alTop
          TabOrder = 3
          object Panel1: TPanel
            Left = 2
            Top = 15
            Width = 336
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 243
              Height = 24
              Align = alLeft
              Caption = 'M'#225'ximo desconto permitido na venda %'
              FocusControl = DBEdit12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 251
              Top = 3
              Width = 82
              Height = 24
              Align = alRight
              Ctl3D = False
              DataField = 'maxDesconto'
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
          object Panel2: TPanel
            Left = 2
            Top = 45
            Width = 336
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 126
              Height = 24
              Align = alLeft
              Caption = 'Custo Operacional %'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 251
              Top = 3
              Width = 82
              Height = 24
              Align = alRight
              Ctl3D = False
              DataField = 'PorCustoOpera'
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
          object Panel3: TPanel
            Left = 2
            Top = 75
            Width = 336
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Label18: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 112
              Height = 24
              Align = alLeft
              Caption = 'Fator de Cubagem'
              FocusControl = DBEdit15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit15: TDBEdit
              AlignWithMargins = True
              Left = 251
              Top = 3
              Width = 82
              Height = 24
              Align = alRight
              Ctl3D = False
              DataField = 'fator_cubagem'
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
          object Panel4: TPanel
            Left = 2
            Top = 105
            Width = 336
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object Label19: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 249
              Height = 24
              Align = alLeft
              Caption = 'Tempo Verificar Pedidos Web (minutos) '
              FocusControl = DBEdit16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit16: TDBEdit
              AlignWithMargins = True
              Left = 251
              Top = 3
              Width = 82
              Height = 24
              Align = alRight
              Ctl3D = False
              DataField = 'tempo_pedido'
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
          object Panel5: TPanel
            Left = 2
            Top = 135
            Width = 336
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object Label22: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 218
              Height = 24
              Align = alLeft
              Caption = 'Dias p/ envio email contas vencidas'
              FocusControl = DBEdit17
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit17: TDBEdit
              AlignWithMargins = True
              Left = 251
              Top = 3
              Width = 82
              Height = 24
              Align = alRight
              Ctl3D = False
              DataField = 'dias_vencidas'
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
          object Panel6: TPanel
            Left = 2
            Top = 165
            Width = 336
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            object Label23: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 202
              Height = 24
              Align = alLeft
              Caption = 'Margem m'#237'nima para produtos %'
              FocusControl = DBEdit18
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit18: TDBEdit
              AlignWithMargins = True
              Left = 251
              Top = 3
              Width = 82
              Height = 24
              Align = alRight
              Ctl3D = False
              DataField = 'margem_minima'
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
      object GroupBox7: TGroupBox
        AlignWithMargins = True
        Left = 359
        Top = 3
        Width = 378
        Height = 459
        Align = alLeft
        Caption = '>'
        TabOrder = 1
        object GroupBox9: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 368
          Height = 118
          Align = alTop
          TabOrder = 0
          object Panel7: TPanel
            Left = 2
            Top = 15
            Width = 364
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label26: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 113
              Height = 24
              Align = alLeft
              Caption = 'Clientes em atraso'
              FocusControl = DBEdit19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object Label24: TLabel
              AlignWithMargins = True
              Left = 220
              Top = 3
              Width = 32
              Height = 24
              Align = alLeft
              Caption = 'ap'#243's '
              FocusControl = DBEdit19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object Label25: TLabel
              AlignWithMargins = True
              Left = 300
              Top = 3
              Width = 30
              Height = 24
              Align = alLeft
              Caption = 'dias.'
              FocusControl = DBEdit19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit19: TDBEdit
              AlignWithMargins = True
              Left = 258
              Top = 3
              Width = 36
              Height = 24
              Align = alLeft
              Ctl3D = False
              DataField = 'cli_atraso_dias'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              ExplicitHeight = 22
            end
            object Panel8: TPanel
              Left = 119
              Top = 0
              Width = 98
              Height = 30
              Align = alLeft
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object DBComboBox1: TDBComboBox
                Left = 3
                Top = 2
                Width = 89
                Height = 24
                Style = csDropDownList
                DataField = 'cli_atraso'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                Items.Strings = (
                  'AVISO'
                  'BLOQUEIO')
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object Panel9: TPanel
            Left = 2
            Top = 45
            Width = 364
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label27: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 279
              Height = 24
              Align = alLeft
              Caption = 'Dias para c'#225'lcular m'#233'dia de pre'#231'o de compra'
              FocusControl = DBEdit20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object Label29: TLabel
              AlignWithMargins = True
              Left = 330
              Top = 3
              Width = 30
              Height = 24
              Align = alLeft
              Caption = 'dias.'
              FocusControl = DBEdit20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit20: TDBEdit
              AlignWithMargins = True
              Left = 288
              Top = 3
              Width = 36
              Height = 24
              Align = alLeft
              Ctl3D = False
              DataField = 'dias_calc_preco_compra'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              ExplicitHeight = 22
            end
          end
          object Panel10: TPanel
            Left = 2
            Top = 75
            Width = 364
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Label28: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 288
              Height = 24
              Align = alLeft
              Caption = 'Dias para car'#234'ncia para bloqueio da expedi'#231#227'o'
              FocusControl = DBEdit21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object Label30: TLabel
              AlignWithMargins = True
              Left = 339
              Top = 3
              Width = 30
              Height = 24
              Align = alLeft
              Caption = 'dias.'
              FocusControl = DBEdit21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              ExplicitHeight = 18
            end
            object DBEdit21: TDBEdit
              AlignWithMargins = True
              Left = 297
              Top = 3
              Width = 36
              Height = 24
              Align = alLeft
              Ctl3D = False
              DataField = 'dias_carencia_bloqueio'
              DataSource = D
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              ExplicitHeight = 22
            end
          end
        end
        object DBCheckBox79: TDBCheckBox
          Left = 7
          Top = 142
          Width = 299
          Height = 17
          Caption = 'OP - Lote por letra'
          DataField = 'loteLetra'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox79Click
        end
        object pLote: TPanel
          Left = 5
          Top = 165
          Width = 366
          Height = 122
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object Label31: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 2
            Width = 70
            Height = 18
            Caption = 'Letra in'#237'cio'
            FocusControl = DBEdit22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 48
            Height = 18
            Caption = 'N'#250'mero'
            FocusControl = DBEdit23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label33: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 49
            Width = 46
            Height = 18
            Caption = 'Posi'#231#227'o'
            FocusControl = DBEdit24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 72
            Width = 101
            Height = 18
            Caption = 'Letra da posi'#231#227'o'
            FocusControl = DBEdit25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label35: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 95
            Width = 86
            Height = 18
            Caption = 'Letra anterior'
            FocusControl = DBEdit26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBEdit22: TDBEdit
            AlignWithMargins = True
            Left = 113
            Top = 1
            Width = 36
            Height = 22
            Ctl3D = False
            DataField = 'L_Letra'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit23: TDBEdit
            AlignWithMargins = True
            Left = 113
            Top = 24
            Width = 36
            Height = 22
            Ctl3D = False
            DataField = 'L_Num'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit24: TDBEdit
            AlignWithMargins = True
            Left = 113
            Top = 47
            Width = 36
            Height = 22
            Ctl3D = False
            DataField = 'L_Posicao'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit25: TDBEdit
            AlignWithMargins = True
            Left = 113
            Top = 70
            Width = 36
            Height = 22
            Ctl3D = False
            DataField = 'L_PosicaoLetra'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit26: TDBEdit
            AlignWithMargins = True
            Left = 113
            Top = 93
            Width = 36
            Height = 22
            Ctl3D = False
            DataField = 'L_LetraAnterior'
            DataSource = D
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
        end
      end
    end
    object Configuracao: TTabSheet
      Caption = 'Configura'#231#245'es ThR'
      ImageIndex = 3
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 198
        Height = 459
        Align = alLeft
        Caption = 'Modulos'
        Padding.Left = 2
        Padding.Right = 2
        TabOrder = 0
        object DBCheckBox18: TDBCheckBox
          Left = 4
          Top = 32
          Width = 190
          Height = 17
          Align = alTop
          Caption = '002 - Tabela de Pre'#231'os'
          DataField = 'mod_cad_tabela'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox19: TDBCheckBox
          Left = 4
          Top = 49
          Width = 190
          Height = 17
          Align = alTop
          Caption = '003 - Pedidos Web'
          DataField = 'mod_pedidosWeb'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox23: TDBCheckBox
          Left = 4
          Top = 66
          Width = 190
          Height = 17
          Align = alTop
          Caption = '004 - Boletos'
          DataField = 'p_mod_boleto'
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
        object DBCheckBox39: TDBCheckBox
          Left = 4
          Top = 83
          Width = 190
          Height = 17
          Align = alTop
          Caption = '005 - SPED ( Bloco K )'
          DataField = 'mod_sped'
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
        object DBCheckBox15: TDBCheckBox
          Left = 4
          Top = 15
          Width = 190
          Height = 17
          Align = alTop
          Caption = '001 - Comiss'#227'o a pagar'
          DataField = 'comissao_pagar'
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
        object DBCheckBox41: TDBCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 437
          Width = 184
          Height = 17
          Align = alBottom
          Caption = 'Liberar Login Especial'
          DataField = 'loginEspecial'
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
        object DBCheckBox43: TDBCheckBox
          Left = 4
          Top = 100
          Width = 190
          Height = 17
          Align = alTop
          Caption = '006 - Gerente Comercial'
          DataField = 'mod_gerente_cial'
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
        object DBCheckBox63: TDBCheckBox
          Left = 4
          Top = 151
          Width = 190
          Height = 17
          Align = alTop
          Caption = '009 - Abertura/Fechamento '
          DataField = 'usa_abertura_cx'
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
        object DBCheckBox70: TDBCheckBox
          Left = 4
          Top = 134
          Width = 190
          Height = 17
          Align = alTop
          Caption = '008 - SAT'
          DataField = 'sat'
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
        object DBCheckBox71: TDBCheckBox
          Left = 4
          Top = 117
          Width = 190
          Height = 17
          Align = alTop
          Caption = '007 - MDFe'
          DataField = 'mod_mdfe'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 207
        Top = 3
        Width = 556
        Height = 459
        Align = alClient
        Caption = 'Fun'#231#245'es 2'
        Padding.Left = 2
        Padding.Right = 2
        TabOrder = 1
        object ScrollBox1: TScrollBox
          Left = 4
          Top = 47
          Width = 548
          Height = 410
          HorzScrollBar.Visible = False
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clWhite
          ParentColor = False
          TabOrder = 0
          object CategoryPanelGroup1: TCategoryPanelGroup
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 542
            Height = 404
            VertScrollBar.Tracking = True
            Align = alClient
            ChevronColor = 33023
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            GradientColor = 12046079
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object CategoryPanel5: TCategoryPanel
              Top = 1464
              Height = 83
              Caption = 'Relat'#243'rios'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object DBCheckBox67: TDBCheckBox
                Left = 0
                Top = 0
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '600 - Relat'#243'rio Estoque: Usar fator de convers'#227'o para calcular c' +
                  'usto da MP'
                DataField = 'rel_estoque_usar_fator_conv'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object CategoryPanel1: TCategoryPanel
              Top = 1198
              Height = 183
              Caption = 'Produ'#231#227'o'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object DBCheckBox2: TDBCheckBox
                Left = 0
                Top = 0
                Width = 521
                Height = 17
                Align = alTop
                Caption = '400 - Produ'#231#227'o: Sem semiacabado'
                DataField = 'prod_sem_montagem'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox38: TDBCheckBox
                Left = 0
                Top = 34
                Width = 521
                Height = 17
                Align = alTop
                Caption = '402 - Produ'#231#227'o: Com Romaneio'
                DataField = 'prod_com_romaneio'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox57: TDBCheckBox
                Left = 0
                Top = 17
                Width = 521
                Height = 17
                Align = alTop
                Caption = '401 - Sub Op...: Imprimir Romaneio 2 vias na mesma folha'
                DataField = 'vias_subop_mesma_folha'
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
              object DBCheckBox65: TDBCheckBox
                Left = 0
                Top = 51
                Width = 521
                Height = 17
                Align = alTop
                Caption = '403 - Produ'#231#227'o: Por Pedido'
                DataField = 'prod_por_pedido'
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
              object DBCheckBox81: TDBCheckBox
                Left = 0
                Top = 68
                Width = 521
                Height = 17
                Align = alTop
                Caption = '404 - Produ'#231#227'o: Por fases'
                DataField = 'producao_fases'
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
              object DBCheckBox83: TDBCheckBox
                Left = 0
                Top = 85
                Width = 521
                Height = 17
                Align = alTop
                Caption = '405 - Produ'#231#227'o: Financeiro por recebimento'
                DataField = 'financeiro_por_receb'
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
              object DBCheckBox84: TDBCheckBox
                Left = 0
                Top = 102
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '406 - Produ'#231#227'o: Usar Setor no lan'#231'amento de produ'#231#227'o (No lugar d' +
                  'e usu'#225'rio)'
                DataField = 'usar_setor'
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
              object DBCheckBox92: TDBCheckBox
                Left = 0
                Top = 136
                Width = 521
                Height = 17
                Align = alTop
                Caption = '408 - Consulta OP: Imprimir etiqueta nutricional'
                DataField = 'imprimir_desc_ficha'
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
              object DBCheckBox56: TDBCheckBox
                Left = 0
                Top = 119
                Width = 521
                Height = 17
                Align = alTop
                Caption = '407 - Programa'#231#227'o de Produ'#231#227'o: Considerar Or'#231'amento'
                DataField = 'mostra_orc_prog_prod'
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
            end
            object CategoryPanel4: TCategoryPanel
              Top = 1033
              Height = 165
              Caption = 'Financeiro'
              Color = clWhite
              TabOrder = 2
              object DBCheckBox9: TDBCheckBox
                Left = 0
                Top = 0
                Width = 521
                Height = 17
                Align = alTop
                Caption = '300 - Baixa......: N'#227'o Aceitar Troco'
                DataField = 'baixa_sem_troco'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox22: TDBCheckBox
                Left = 0
                Top = 34
                Width = 521
                Height = 17
                Align = alTop
                Caption = '302 - C.Receber: Enviar email p/ representante qdo vencidas'
                DataField = 'email_rep_vencidas'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox26: TDBCheckBox
                Left = 0
                Top = 51
                Width = 521
                Height = 17
                Align = alTop
                Caption = '303 - C.Receber: Gerar cr'#233'dito para nota avulsa'
                DataField = 'pd_cred_nf_avulsa'
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
              object DBCheckBox40: TDBCheckBox
                Left = 0
                Top = 68
                Width = 521
                Height = 17
                Align = alTop
                Caption = '304 - C.Receber: N'#227'o Permitir baixar valores negativos'
                DataField = 'nao_baixar_negativo'
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
              object DBCheckBox55: TDBCheckBox
                Left = 0
                Top = 17
                Width = 521
                Height = 17
                Align = alTop
                Caption = '301 - Baixa......: Imprimir recibo ap'#243's concluir.'
                DataField = 'impReciboFinan'
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
              object DBCheckBox68: TDBCheckBox
                Left = 0
                Top = 85
                Width = 521
                Height = 17
                Align = alTop
                Caption = '305 - Baixa......: Gerar cr'#233'dito para empresa de origem da conta'
                DataField = 'gerar_cred_emp_origem'
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
              object DBCheckBox85: TDBCheckBox
                Left = 0
                Top = 102
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '306 - Baixa......: Impress'#227'o detalhada de cheques no recibo cont' +
                  'as a receber'
                DataField = 'recibo_chq_detal'
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
            end
            object CategoryPanel2: TCategoryPanel
              Top = 255
              Height = 778
              Caption = 'Pedido / Vendas'
              Color = clWhite
              TabOrder = 3
              object DBCheckBox3: TDBCheckBox
                Left = 0
                Top = 0
                Width = 521
                Height = 17
                Align = alTop
                Caption = '100 - Vendas...: Impress'#227'o 2 vias na mesma folha A4'
                DataField = 'impPedido_2vias'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox4: TDBCheckBox
                Left = 0
                Top = 17
                Width = 521
                Height = 17
                Align = alTop
                Caption = '101 - Vendas...: Escolher Pre'#231'o a Vista ou a Prazo'
                DataField = 'venda_escolherpreco'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox7: TDBCheckBox
                Left = 0
                Top = 34
                Width = 521
                Height = 17
                Align = alTop
                Caption = '102 - Vendas...: Reduzir tamanho das letras'
                DataField = 'reduzir_romaneio'
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
              object DBCheckBox10: TDBCheckBox
                Left = 0
                Top = 68
                Width = 521
                Height = 17
                Align = alTop
                Caption = '104 - Vendas.....: N'#227'o mostrar data vencimento na impress'#227'o'
                DataField = 'venda_sem_vecto'
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
              object DBCheckBox12: TDBCheckBox
                Left = 0
                Top = 85
                Width = 521
                Height = 17
                Align = alTop
                Caption = '105 - Vendas.....: Mostrar Comercializa'#231#227'o'
                DataField = 'desconto_especial'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox13: TDBCheckBox
                Left = 0
                Top = 102
                Width = 521
                Height = 17
                Align = alTop
                Caption = '106 - Vendas.....: Mostrar Porcentagem de Comiss'#227'o'
                DataField = 'mostrar_por_comissao'
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
              object DBCheckBox14: TDBCheckBox
                Left = 0
                Top = 119
                Width = 521
                Height = 17
                Align = alTop
                Caption = '107 - Vendas.....: Mostrar Cubagem do Produto'
                DataField = 'mostrar_cubagem'
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
              object DBCheckBox21: TDBCheckBox
                Left = 0
                Top = 136
                Width = 521
                Height = 17
                Align = alTop
                Caption = '108 - Vendas.....:  Alterar valor unit'#225'rio pela margem .'
                DataField = 'venda_desc_margem'
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
                OnClick = DBCheckBox21Click
              end
              object DBCheckBox24: TDBCheckBox
                Left = 0
                Top = 153
                Width = 521
                Height = 17
                Align = alTop
                Caption = '109 - Vendas.....:  Gerar financeiro na expedi'#231#227'o.'
                DataField = 'finan_expedicao'
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
              object DBCheckBox25: TDBCheckBox
                Left = 0
                Top = 170
                Width = 521
                Height = 17
                Align = alTop
                Caption = '110 - Vendas.....:  Vincular venda expedida com NF.'
                DataField = 'pd_vincular_nf'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox27: TDBCheckBox
                Left = 0
                Top = 187
                Width = 521
                Height = 17
                Align = alTop
                Caption = '111 - Nota Fiscal: Imprimir minuta de Despacho'
                DataField = 'imp_minuta'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox28: TDBCheckBox
                Left = 0
                Top = 204
                Width = 521
                Height = 17
                Align = alTop
                Caption = '112 - Vendas.....: Folha Separa'#231#227'o - Modelo 2'
                DataField = 'novafolhasep'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox30: TDBCheckBox
                Left = 0
                Top = 238
                Width = 521
                Height = 17
                Align = alTop
                Caption = '114 - Vendas.....: Aceitar duas condi'#231#227'o de pgto'
                DataField = 'pd_duas_cond'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox31: TDBCheckBox
                Left = 0
                Top = 255
                Width = 521
                Height = 17
                Align = alTop
                Caption = '115 - Vendas.....: Impress'#227'o  modelo: Impressora Matricial'
                DataField = 'pd_imp_matricial'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 13
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox33: TDBCheckBox
                Left = 0
                Top = 272
                Width = 521
                Height = 17
                Align = alTop
                Caption = '116 - Vendas.....: Bloquear Altera'#231#227'o da Vendas'
                DataField = 'bloq_alterar_venda'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 14
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox32: TDBCheckBox
                Left = 0
                Top = 289
                Width = 521
                Height = 17
                Align = alTop
                Caption = '117 - Vendas.....: Bloquear Alterara'#231#227'o do Valor Unit'#225'rio.'
                DataField = 'bloq_unit_venda'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 15
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox8: TDBCheckBox
                Left = 0
                Top = 51
                Width = 521
                Height = 17
                Align = alTop
                Caption = '103 - Comiss'#227'o: Total Venda x Comiss'#227'o Vendedor'
                DataField = 'comi_vend'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 16
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox29: TDBCheckBox
                Left = 0
                Top = 221
                Width = 521
                Height = 17
                Align = alTop
                Caption = '113 - Nota Fiscal: Impostos por NCM'
                DataField = 'NF_IMPOSTOPORNCM'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 17
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox34: TDBCheckBox
                Left = 0
                Top = 306
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '118 - Nota Fiscal: informar separado qtde caixa e qtde itens no ' +
                  'produto. '
                DataField = 'nf_qtd_cx_separado'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 18
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox35: TDBCheckBox
                Left = 0
                Top = 323
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '119 - Vendas.....: Folha Separa'#231#227'o (Expedi'#231#227'o) - Modelo 3 - D'#250'zi' +
                  'a'
                DataField = 'folha_separacao_mod_3'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 19
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox36: TDBCheckBox
                Left = 0
                Top = 340
                Width = 521
                Height = 17
                Align = alTop
                Caption = '120 - Vendas.....: Permitir alterar venda Expedida'
                DataField = 'pd_perm_alt_exp'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 20
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox37: TDBCheckBox
                Left = 0
                Top = 357
                Width = 521
                Height = 17
                Align = alTop
                Caption = '121 - Vendas.....: N'#227'o Usar Expedi'#231#227'o'
                DataField = 'nao_usar_expedicao'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 21
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox45: TDBCheckBox
                Left = 0
                Top = 374
                Width = 521
                Height = 17
                Align = alTop
                Caption = '122 - Vendas.....: Imprimir folha separa'#231#227'o ap'#243's venda.'
                DataField = 'perg_imp_separacao'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 22
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox46: TDBCheckBox
                Left = 0
                Top = 391
                Width = 521
                Height = 17
                Align = alTop
                Caption = '123 - Nota Fiscal: Imprimir minuta de despacho modelo 2'
                DataField = 'minuta_des_mold_2'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 23
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox47: TDBCheckBox
                Left = 0
                Top = 408
                Width = 521
                Height = 17
                Align = alTop
                Caption = '124 - Nota Fiscal: Imprimir etiquetas de despacho modelo 2'
                DataField = 'etiqueta_nf_mod_2'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 24
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox48: TDBCheckBox
                Left = 0
                Top = 425
                Width = 521
                Height = 17
                Align = alTop
                Caption = '125 - Vendas.....: Verificar quantidade de estoque (aviso).'
                DataField = 'msg_estoque_baixo'
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
              object DBCheckBox49: TDBCheckBox
                Left = 0
                Top = 442
                Width = 521
                Height = 17
                Align = alTop
                Caption = '126 - Nota Fiscal: Enviar email para transportadora.'
                DataField = 'perg_email_transp'
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
              object DBCheckBox50: TDBCheckBox
                Left = 0
                Top = 459
                Width = 521
                Height = 17
                Align = alTop
                Caption = '127 - Nota Fiscal: N'#227'o puxar itens  com valores zerado.'
                DataField = 'nf_sem_itens_zerados'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 27
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox51: TDBCheckBox
                Left = 0
                Top = 476
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '128 - Vendas.....: Trazer condi'#231#227'o/forma de pgto em branco e dei' +
                  'xar obrigat'#243'rio'
                DataField = 'traz_cond_em_branco'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 28
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox53: TDBCheckBox
                Left = 0
                Top = 493
                Width = 521
                Height = 17
                Align = alTop
                Caption = '129 - Vendas.....: Mostrar campo m'#250'ltiplo (geral)'
                DataField = 'mostrar_multiplo'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 29
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox54: TDBCheckBox
                Left = 0
                Top = 510
                Width = 521
                Height = 17
                Align = alTop
                Caption = '130 - Vendas.....: Folha de Separa'#231#227'o modelo 4 ( sem valor)'
                DataField = 'folhaSepSemValor'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 30
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox58: TDBCheckBox
                Left = 0
                Top = 527
                Width = 521
                Height = 17
                Align = alTop
                Caption = '131 - Vendas.....: Alterar Unit'#225'rio no Grid'
                DataField = 'venda_alterarUnitGrid'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 31
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox59: TDBCheckBox
                Left = 0
                Top = 544
                Width = 521
                Height = 17
                Align = alTop
                Caption = '132 - Vendas.....: Mostrar Campo Frete'
                DataField = 'venda_frete'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 32
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox60: TDBCheckBox
                Left = 0
                Top = 561
                Width = 521
                Height = 17
                Align = alTop
                Caption = '133 - Vendas.....: Cancelamento: Lan'#231'ar Justificativa'
                DataField = 'venda_justificar_cancel'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 33
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox61: TDBCheckBox
                Left = 0
                Top = 578
                Width = 521
                Height = 17
                Align = alTop
                Caption = '134 - Vendas.....: Mostrar bot'#227'o "Entregar/Retirar na Loja"'
                DataField = 'mostrar_btn_entregar'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 34
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox62: TDBCheckBox
                Left = 0
                Top = 595
                Width = 521
                Height = 17
                Align = alTop
                Caption = '135 - Vendas.....: Folha de Separa'#231#227'o Modelo 5'
                DataField = 'folhaSeparacao_mod_5'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 35
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox64: TDBCheckBox
                Left = 0
                Top = 680
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '140 - Vendas.....: Permitir Desconto Somente com Permiss'#227'o (Pede' +
                  ' Senha)'
                DataField = 'pedir_senha_desc_venda'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 36
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox66: TDBCheckBox
                Left = 0
                Top = 612
                Width = 521
                Height = 17
                Align = alTop
                Caption = '136 - Vendas.....: Permitir alterar comercializa'#231#227'o na expedi'#231#227'o'
                DataField = 'mudar_cial_exp'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 37
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox72: TDBCheckBox
                Left = 0
                Top = 629
                Width = 521
                Height = 17
                Align = alTop
                Caption = '137 - Vendas.....: Usar Comercializa'#231#227'o Padr'#227'o'
                DataField = 'usa_com_padrao'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 38
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox73: TDBCheckBox
                Left = 0
                Top = 646
                Width = 521
                Height = 17
                Align = alTop
                Caption = '138 - Vendas.....: Bloquear Venda Se Limite Exedido'
                DataField = 'bloquear_limite_exedido'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 39
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox74: TDBCheckBox
                Left = 0
                Top = 663
                Width = 521
                Height = 17
                Align = alTop
                Caption = '139 - Or'#231'amento: Considerar Permiss'#227'o de Alterar Valor Unit'#225'rio'
                DataField = 'considera_perm_alt_unit'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 40
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox80: TDBCheckBox
                Left = 0
                Top = 714
                Width = 521
                Height = 17
                Align = alTop
                Caption = '142 - Expedi'#231#227'o.: N'#227'o expedir para clientes com limite excedido'
                DataField = 'bloqueia_exped_lim_exedido'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 41
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox82: TDBCheckBox
                Left = 0
                Top = 697
                Width = 521
                Height = 17
                Align = alTop
                Caption = '141 - Expedi'#231#227'o.: N'#227'o expedir para clientes inadimplentes '
                DataField = 'bloqueia_exped_cli_inadimp'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 42
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox86: TDBCheckBox
                Left = 0
                Top = 731
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '143 - Vendas.....: Liberar limite excedido com senha (Depende do' +
                  ' parametro 142)'
                DataField = 'limite_venda_liberar_com_senha'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 43
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object CategoryPanel3: TCategoryPanel
              Top = 0
              Height = 255
              Caption = 'Cadastros'
              Color = clWhite
              TabOrder = 4
              object DBCheckBox11: TDBCheckBox
                Left = 0
                Top = 0
                Width = 521
                Height = 17
                Align = alTop
                Caption = '200 - Produtos...: Mostrar Royalties'
                DataField = 'mostrar_royalties'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox17: TDBCheckBox
                Left = 0
                Top = 17
                Width = 521
                Height = 17
                Align = alTop
                Caption = '201 - Cond. Pgto:  Usar porcentagens.'
                DataField = 'usa_cond_porcentagem'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox16: TDBCheckBox
                Left = 0
                Top = 34
                Width = 521
                Height = 17
                Align = alTop
                Caption = '202 - Clientes....: Separar os cliente para cada representantes'
                DataField = 'clientes_repre'
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
              object DBCheckBox69: TDBCheckBox
                Left = 0
                Top = 119
                Width = 521
                Height = 17
                Align = alTop
                Caption = '207 - Produtos....: Usa Refer'#234'ncia Base'
                DataField = 'usa_referencia_base'
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
              object DBCheckBox75: TDBCheckBox
                Left = 0
                Top = 68
                Width = 521
                Height = 17
                Align = alTop
                Caption = '204 - Clientes.....: CEP Obrigat'#243'rio'
                DataField = 'cli_cep_obrigatorio'
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
              object DBCheckBox76: TDBCheckBox
                Left = 0
                Top = 51
                Width = 521
                Height = 17
                Align = alTop
                Caption = '203 - Usu'#225'rio ....: Vincular representante ao usu'#225'rio.'
                DataField = 'vincula_usu_vend'
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
              object DBCheckBox78: TDBCheckBox
                Left = 0
                Top = 85
                Width = 521
                Height = 17
                Align = alTop
                Caption = '205 - Clientes.....: CPF Obrigat'#243'rio'
                DataField = 'cli_cpf_obrigatorio'
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
              object DBCheckBox77: TDBCheckBox
                Left = 0
                Top = 102
                Width = 521
                Height = 17
                Align = alTop
                Caption = '206 - Produtos....: Usa Caixa Master'
                DataField = 'usa_cx_master'
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
              object DBCheckBox87: TDBCheckBox
                Left = 0
                Top = 136
                Width = 521
                Height = 17
                Align = alTop
                Caption = '208 - Clientes.....: Tabela de pre'#231'o obrigat'#243'ria'
                DataField = 'cli_tabela_obrigatorio'
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
              object DBCheckBox88: TDBCheckBox
                Left = 0
                Top = 153
                Width = 521
                Height = 17
                Align = alTop
                Caption = '209 - Clientes.....: Condi'#231'ao de pagamento obrigat'#243'ria'
                DataField = 'cli_condicao_obrigatorio'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox89: TDBCheckBox
                Left = 0
                Top = 170
                Width = 521
                Height = 17
                Align = alTop
                Caption = '210 - Clientes.....: Transportadora obrigat'#243'ria'
                DataField = 'cli_transp_obrigatorio'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox90: TDBCheckBox
                Left = 0
                Top = 204
                Width = 521
                Height = 17
                Align = alTop
                Caption = '212 - Clientes.....: Forma de pagamento obrigat'#243'ria'
                DataField = 'cli_formapgto_obrigatorio'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox91: TDBCheckBox
                Left = 0
                Top = 187
                Width = 521
                Height = 17
                Align = alTop
                Caption = '211 - Clientes.....: Redespacho obrigat'#243'rio'
                DataField = 'cli_redespacho_obrigatorio'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object CategoryPanel6: TCategoryPanel
              Top = 1381
              Height = 83
              Caption = 'Compras / Ordem Compra'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Trebuchet MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              object DBCheckBox93: TDBCheckBox
                Left = 0
                Top = 17
                Width = 521
                Height = 17
                Align = alTop
                Caption = '501 - Ordem Compra: Impress'#227'o modelo 2'
                DataField = 'imp_oc_mod_2'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox94: TDBCheckBox
                Left = 0
                Top = 0
                Width = 521
                Height = 17
                Align = alTop
                Caption = 
                  '500 - Compras: Pesquisa produto mostrar estoque empresa selecion' +
                  'ada'
                DataField = 'compra_etq_sele'
                DataSource = D
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Trebuchet MS'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox95: TDBCheckBox
                Left = 0
                Top = 34
                Width = 521
                Height = 17
                Align = alTop
                Caption = '502 - Compras: Bloquear lan'#231'amento da mesma nf para o fornecedor'
                DataField = 'bloqueia_nf_lancada_fornecedor'
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
            end
          end
        end
        object BitBtn1: TBitBtn
          AlignWithMargins = True
          Left = 7
          Top = 18
          Width = 542
          Height = 26
          Align = alTop
          Caption = 'Expandir Todos'
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
            06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A54
            C45CAAE3B010A61B039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
            10AC300DAB2809A41C039E0F3EBC48EEFAEFFFFFFF90DA97049F0D039E0C039F
            0C03A70C024C04FF00FF0357060D822317B6410EA92D05A01341BD4BF3FBF4FF
            FFFFFFFFFFFFFFFF7ED486049F0D039E0C03A50C037B0801420303570617A341
            18B54A11AB344CC158F4FCF6FCFEFCF6FCF7FCFEFCF8FCF8FFFFFF75D17D05A0
            0F03A10C03960A01420306680D21B1511EB75120B54FEBF8EFFFFFFF84D99AB7
            E9C5FFFFFF69CC72DCF4DEFFFFFF7FD48703A00C039F0C014A040874123EBD69
            2ABA5C21B553DEF6E798E1B422B655BAEBCEFFFFFF2CB53735B841F2FBF398DD
            9E03A00C039F0C02520506780E54C57A44C6741CB24E36BD6626B75822B554BB
            EBCCFFFFFF41C05B0CA62721B03913AA2C07A518039D0C01460306780E4CBD69
            83DDA722B6551CB24E22B55422B554BCEBCEFFFFFF46C2670FAA300FAA2E0CA6
            2706A716038C0A014603FF00FF21A336AAE7C568D08E16AF481BB14C22B554BD
            EBCFFFFFFF4CC56F10A9310EA7290BA42009AF1C036B0AFF00FFFF00FF21A336
            56C573C5F0D866CF8C20B45219B14CBFEDD0FFFFFF4CC67513AC3C12AA340FB0
            2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
            BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
            FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
            3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43538B45446
            BC6642B8632BA649138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 769
        Top = 3
        Width = 205
        Height = 459
        Align = alRight
        Caption = 'Fun'#231#245'es 1'
        Padding.Left = 2
        Padding.Right = 2
        TabOrder = 2
        object DBRadioGroup5: TDBRadioGroup
          AlignWithMargins = True
          Left = 7
          Top = 18
          Width = 191
          Height = 43
          Align = alTop
          Caption = 'C'#225'lculo de descontos na venda'
          Columns = 2
          DataField = 'tp_desc_ped'
          DataSource = D
          Items.Strings = (
            'Por Venda'
            'Por Produto')
          TabOrder = 0
          Values.Strings = (
            'V'
            'P')
        end
        object DBRadioGroup8: TDBRadioGroup
          Left = 7
          Top = 67
          Width = 185
          Height = 61
          Caption = 'Configura'#231#245'es de envio ACBR'
          DataField = 'envio_nfe_acbr'
          DataSource = D
          Items.Strings = (
            'Win HTTP'
            'Open SSL (somente A1)'
            'Win INet')
          TabOrder = 1
          Values.Strings = (
            'W'
            'O'
            'N')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'NFe'
      ImageIndex = 2
      object Label10: TLabel
        Left = 13
        Top = 15
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
      object Label11: TLabel
        Left = 200
        Top = 100
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
        Left = 200
        Top = 153
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
        Left = 277
        Top = 153
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
      object Label54: TLabel
        Left = 13
        Top = 100
        Width = 148
        Height = 18
        Caption = 'Aliquotas - Cr'#233'dito ICMS'
        FocusControl = DBEdit7
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
        Top = 412
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
        Top = 412
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
        Left = 773
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
        Top = 177
        Width = 232
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
        Left = 469
        Top = 412
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
        Top = 270
        Width = 127
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
        Top = 310
        Width = 63
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
        Top = 355
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
        Top = 355
        Width = 33
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
      object Label56: TLabel
        Left = 12
        Top = 328
        Width = 40
        Height = 18
        Caption = 'CSOSN'
        FocusControl = DBEdit40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label57: TLabel
        Left = 97
        Top = 328
        Width = 52
        Height = 18
        Caption = 'CSOSN 2'
        FocusControl = DBEdit41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 179
        Top = 330
        Width = 33
        Height = 18
        Caption = 'CFOP'
        FocusControl = DBEdit39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBMemo4: TDBMemo
        Left = 13
        Top = 31
        Width = 442
        Height = 67
        Ctl3D = False
        DataField = 'OBSNF'
        DataSource = D
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 200
        Top = 118
        Width = 141
        Height = 24
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
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 200
        Top = 169
        Width = 73
        Height = 24
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
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 277
        Top = 169
        Width = 65
        Height = 24
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
        TabOrder = 3
      end
      object DBGrid2: TDBGrid
        Left = 11
        Top = 116
        Width = 183
        Height = 77
        Ctl3D = True
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        TabOrder = 4
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
            Width = 78
            Visible = True
          end>
      end
      object DBCheckBox42: TDBCheckBox
        Left = 13
        Top = 199
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
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox44: TDBCheckBox
        Left = 13
        Top = 214
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
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox52: TDBCheckBox
        Left = 13
        Top = 229
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
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox208: TDBCheckBox
        Left = 13
        Top = 244
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
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox209: TDBCheckBox
        Left = 13
        Top = 259
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
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 352
        Top = 104
        Width = 103
        Height = 89
        Caption = 'Tipo Impress'#227'o'
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
        TabOrder = 10
        Values.Strings = (
          'P'
          'R')
      end
      object DBEdit71: TDBEdit
        Left = 13
        Top = 429
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
        Top = 429
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
        Width = 394
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
        TabOrder = 13
      end
      object DBEdit47: TDBEdit
        Left = 469
        Top = 71
        Width = 297
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
        TabOrder = 14
        OnExit = DBEdit47Exit
      end
      object DBEdit48: TDBEdit
        Left = 773
        Top = 71
        Width = 89
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
        TabOrder = 15
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
        TabOrder = 16
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
        TabOrder = 17
      end
      object DBMemo6: TDBMemo
        Left = 469
        Top = 194
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
        TabOrder = 18
      end
      object DBEdit50: TDBEdit
        Left = 469
        Top = 428
        Width = 489
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
        TabOrder = 25
      end
      object DBEdit51: TDBEdit
        Left = 469
        Top = 286
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
        TabOrder = 19
      end
      object DBEdit52: TDBEdit
        Left = 469
        Top = 326
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
        TabOrder = 20
      end
      object DBEdit56: TDBEdit
        Left = 469
        Top = 371
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
        TabOrder = 21
      end
      object DBCheckBox201: TDBCheckBox
        Left = 469
        Top = 396
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
        TabOrder = 23
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object ckTLS: TDBCheckBox
        Left = 517
        Top = 396
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
        TabOrder = 24
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit57: TDBEdit
        Left = 866
        Top = 371
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
        TabOrder = 22
      end
      object DBCheckBox1: TDBCheckBox
        Left = 13
        Top = 274
        Width = 305
        Height = 17
        Caption = 'NFe: Impostos por NCM'
        DataField = 'NF_IMPOSTOPORNCM'
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
      object DBCheckBox5: TDBCheckBox
        Left = 13
        Top = 290
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
        TabOrder = 27
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 13
        Top = 307
        Width = 426
        Height = 17
        Caption = 'NFe: Msg de Aproveitamento de Cr'#233'dito - NF relacionada'
        DataField = 'nf_msgAproveitCredito'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit40: TDBEdit
        Left = 12
        Top = 345
        Width = 72
        Height = 24
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
        TabOrder = 29
      end
      object DBEdit41: TDBEdit
        Left = 97
        Top = 345
        Width = 72
        Height = 24
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
        TabOrder = 30
      end
      object DBEdit39: TDBEdit
        Left = 179
        Top = 345
        Width = 72
        Height = 24
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
        TabOrder = 31
      end
    end
  end
  inherited ImageList1: TImageList
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
    Left = 624
    Top = 0
  end
  inherited T: TZQuery
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from parametro'
      'where razao like :pesq')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object Tid: TIntegerField
      FieldName = 'id'
    end
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
    object TMenuAtualizado: TDateTimeField
      FieldName = 'MenuAtualizado'
    end
    object TIE: TWideStringField
      FieldName = 'IE'
      EditMask = '###.###.###.###;0;_'
    end
    object Tseq_reneg: TIntegerField
      FieldName = 'seq_reneg'
      Required = True
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
    object Ttipoambiente: TWideStringField
      FieldName = 'tipoambiente'
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
    object Tprod_sem_montagem: TWideStringField
      FieldName = 'prod_sem_montagem'
      Required = True
      Size = 1
    end
    object TimpPedido_2vias: TWideStringField
      FieldName = 'impPedido_2vias'
      Required = True
      Size = 1
    end
    object Tvenda_escolherpreco: TWideStringField
      FieldName = 'venda_escolherpreco'
      Size = 1
    end
    object Tnf_cfopprod_puxar_NF: TWideStringField
      FieldName = 'nf_cfopprod_puxar_NF'
      Size = 1
    end
    object Tnf_msgAproveitCredito: TWideStringField
      FieldName = 'nf_msgAproveitCredito'
      Size = 1
    end
    object Treduzir_romaneio: TWideStringField
      FieldName = 'reduzir_romaneio'
      Size = 1
    end
    object Tcomi_vend: TWideStringField
      FieldName = 'comi_vend'
      Size = 1
    end
    object Tbaixa_sem_troco: TWideStringField
      FieldName = 'baixa_sem_troco'
      Size = 1
    end
    object Tvenda_sem_vecto: TWideStringField
      FieldName = 'venda_sem_vecto'
      Required = True
      Size = 1
    end
    object TtpAmbiente: TWideStringField
      FieldName = 'tpAmbiente'
      Required = True
      Size = 1
    end
    object Tvenda_foco_inicial: TIntegerField
      FieldName = 'venda_foco_inicial'
      Required = True
    end
    object Tcaminho_pasta_serasa: TWideStringField
      FieldName = 'caminho_pasta_serasa'
      Size = 100
    end
    object Tpesqproduto: TWideStringField
      FieldName = 'pesqproduto'
      Required = True
    end
    object TmaxDesconto: TFloatField
      FieldName = 'maxDesconto'
      DisplayFormat = '#0.00'
    end
    object Tmostrar_royalties: TWideStringField
      FieldName = 'mostrar_royalties'
      Required = True
      Size = 1
    end
    object Tdesconto_especial: TWideStringField
      FieldName = 'desconto_especial'
      Required = True
      Size = 1
    end
    object Tmostrar_por_comissao: TWideStringField
      FieldName = 'mostrar_por_comissao'
      Size = 1
    end
    object Tmostrar_cubagem: TWideStringField
      FieldName = 'mostrar_cubagem'
      Size = 1
    end
    object Tcomissao_pagar: TWideStringField
      FieldName = 'comissao_pagar'
      Required = True
      Size = 1
    end
    object Tusa_cond_porcentagem: TWideStringField
      FieldName = 'usa_cond_porcentagem'
      Required = True
      Size = 1
    end
    object TPorCustoOpera: TFloatField
      FieldName = 'PorCustoOpera'
      DisplayFormat = '#0.00'
    end
    object Tidweb: TIntegerField
      FieldName = 'idweb'
      Required = True
    end
    object Tclientes_repre: TWideStringField
      FieldName = 'clientes_repre'
      Required = True
      Size = 1
    end
    object Tmod_pedidosWeb: TWideStringField
      FieldName = 'mod_pedidosWeb'
      Required = True
      Size = 1
    end
    object Tfator_cubagem: TFloatField
      FieldName = 'fator_cubagem'
      Required = True
    end
    object Ttp_desc_ped: TWideStringField
      FieldName = 'tp_desc_ped'
      Required = True
      Size = 1
    end
    object Tmod_cad_tabela: TWideStringField
      FieldName = 'mod_cad_tabela'
      Required = True
      Size = 1
    end
    object Ttempo_pedido: TIntegerField
      FieldName = 'tempo_pedido'
      Required = True
    end
    object Tgerar_contas_sep: TWideStringField
      FieldName = 'gerar_contas_sep'
      Size = 1
    end
    object Tconta_com_desc: TIntegerField
      FieldName = 'conta_com_desc'
    end
    object Tconta_sem_desc: TIntegerField
      FieldName = 'conta_sem_desc'
    end
    object TloginEspecial: TWideStringField
      FieldName = 'loginEspecial'
      Required = True
      Size = 1
    end
    object Tvenda_desc_margem: TWideStringField
      FieldName = 'venda_desc_margem'
      Size = 1
    end
    object Temail_rep_vencidas: TWideStringField
      FieldName = 'email_rep_vencidas'
      Size = 1
    end
    object Tdias_vencidas: TIntegerField
      FieldName = 'dias_vencidas'
      Required = True
    end
    object Tp_mod_boleto: TWideStringField
      FieldName = 'p_mod_boleto'
      Required = True
      Size = 1
    end
    object Tfinan_expedicao: TWideStringField
      FieldName = 'finan_expedicao'
      Required = True
      Size = 1
    end
    object Tpd_vincular_nf: TWideStringField
      FieldName = 'pd_vincular_nf'
      Required = True
      Size = 1
    end
    object Tpd_cred_nf_avulsa: TWideStringField
      FieldName = 'pd_cred_nf_avulsa'
      Required = True
      Size = 1
    end
    object Tnovafolhasep: TWideStringField
      FieldName = 'novafolhasep'
      Required = True
      Size = 1
    end
    object Timp_minuta: TWideStringField
      FieldName = 'imp_minuta'
      Required = True
      Size = 1
    end
    object Tpd_duas_cond: TWideStringField
      FieldName = 'pd_duas_cond'
      Required = True
      Size = 1
    end
    object Tpd_imp_matricial: TWideStringField
      FieldName = 'pd_imp_matricial'
      Required = True
      Size = 1
    end
    object Tmargem_minima: TFloatField
      FieldName = 'margem_minima'
      Required = True
      DisplayFormat = '#0.00'
    end
    object Tbloq_unit_venda: TWideStringField
      FieldName = 'bloq_unit_venda'
      Required = True
      Size = 1
    end
    object Tbloq_alterar_venda: TWideStringField
      FieldName = 'bloq_alterar_venda'
      Required = True
      Size = 1
    end
    object Tnf_qtd_cx_separado: TWideStringField
      FieldName = 'nf_qtd_cx_separado'
      Required = True
      Size = 1
    end
    object Tfolha_separacao_mod_3: TWideStringField
      FieldName = 'folha_separacao_mod_3'
      Required = True
      Size = 1
    end
    object Tcli_atraso_dias: TIntegerField
      FieldName = 'cli_atraso_dias'
      Required = True
    end
    object Tcli_atraso: TWideStringField
      FieldName = 'cli_atraso'
      Required = True
    end
    object Tpd_perm_alt_exp: TWideStringField
      FieldName = 'pd_perm_alt_exp'
      Required = True
      Size = 1
    end
    object Tnao_usar_expedicao: TWideStringField
      FieldName = 'nao_usar_expedicao'
      Required = True
      Size = 1
    end
    object Tvias_subop_mesma_folha: TWideStringField
      FieldName = 'vias_subop_mesma_folha'
      Required = True
      Size = 1
    end
    object Tmod_sped: TWideStringField
      FieldName = 'mod_sped'
      Required = True
      Size = 1
    end
    object Tnao_baixar_negativo: TWideStringField
      FieldName = 'nao_baixar_negativo'
      Required = True
      Size = 1
    end
    object Tmod_gerente_cial: TWideStringField
      FieldName = 'mod_gerente_cial'
      Required = True
      Size = 1
    end
    object Tperg_imp_separacao: TWideStringField
      FieldName = 'perg_imp_separacao'
      Required = True
      Size = 1
    end
    object Tminuta_des_mold_2: TWideStringField
      FieldName = 'minuta_des_mold_2'
      Required = True
      Size = 1
    end
    object Tetiqueta_nf_mod_2: TWideStringField
      FieldName = 'etiqueta_nf_mod_2'
      Required = True
      Size = 1
    end
    object Tmsg_estoque_baixo: TWideStringField
      FieldName = 'msg_estoque_baixo'
      Required = True
      Size = 1
    end
    object Tperg_email_transp: TWideStringField
      FieldName = 'perg_email_transp'
      Required = True
      Size = 1
    end
    object Tnf_sem_itens_zerados: TWideStringField
      FieldName = 'nf_sem_itens_zerados'
      Required = True
      Size = 1
    end
    object Ttraz_cond_em_branco: TWideStringField
      FieldName = 'traz_cond_em_branco'
      Required = True
      Size = 1
    end
    object Tmostrar_multiplo: TWideStringField
      FieldName = 'mostrar_multiplo'
      Required = True
      Size = 1
    end
    object TfolhaSepSemValor: TWideStringField
      FieldName = 'folhaSepSemValor'
      Required = True
      Size = 1
    end
    object TimpReciboFinan: TWideStringField
      FieldName = 'impReciboFinan'
      Required = True
      Size = 1
    end
    object Tcompra_etq_sele: TWideStringField
      FieldName = 'compra_etq_sele'
      Required = True
      Size = 1
    end
    object Tprod_com_romaneio: TWideStringField
      FieldName = 'prod_com_romaneio'
      Size = 1
    end
    object Tvenda_alterarUnitGrid: TWideStringField
      FieldName = 'venda_alterarUnitGrid'
      Required = True
      Size = 1
    end
    object Tvenda_frete: TWideStringField
      FieldName = 'venda_frete'
      Required = True
      Size = 1
    end
    object Tvenda_justificar_cancel: TWideStringField
      FieldName = 'venda_justificar_cancel'
      Required = True
      Size = 1
    end
    object Tmostrar_btn_entregar: TWideStringField
      FieldName = 'mostrar_btn_entregar'
      Required = True
      Size = 1
    end
    object TfolhaSeparacao_mod_5: TWideStringField
      FieldName = 'folhaSeparacao_mod_5'
      Size = 1
    end
    object TImpressaoVenda_mod_5: TWideStringField
      FieldName = 'ImpressaoVenda_mod_5'
      Required = True
      Size = 1
    end
    object Tmod_mdfe: TWideStringField
      FieldName = 'mod_mdfe'
      Required = True
      Size = 1
    end
    object Tmudar_cial_exp: TWideStringField
      FieldName = 'mudar_cial_exp'
      Required = True
      Size = 1
    end
    object Tprod_por_pedido: TWideStringField
      FieldName = 'prod_por_pedido'
      Size = 1
    end
    object Tusa_com_padrao: TWideStringField
      FieldName = 'usa_com_padrao'
      Size = 1
    end
    object Timp_oc_mod_2: TWideStringField
      FieldName = 'imp_oc_mod_2'
      Required = True
      Size = 1
    end
    object Tgerar_cred_emp_origem: TWideStringField
      FieldName = 'gerar_cred_emp_origem'
      Required = True
      Size = 1
    end
    object Tvincula_usu_vend: TWideStringField
      FieldName = 'vincula_usu_vend'
      Required = True
      Size = 1
    end
    object Tusa_abertura_cx: TWideStringField
      FieldName = 'usa_abertura_cx'
      Size = 1
    end
    object Tsat: TWideStringField
      FieldName = 'sat'
      Size = 1
    end
    object Tbloquear_limite_exedido: TWideStringField
      FieldName = 'bloquear_limite_exedido'
      Required = True
      Size = 1
    end
    object Tconsidera_perm_alt_unit: TWideStringField
      FieldName = 'considera_perm_alt_unit'
      Required = True
      Size = 1
    end
    object Tpedir_senha_desc_venda: TWideStringField
      FieldName = 'pedir_senha_desc_venda'
      Required = True
      Size = 1
    end
    object Tcli_cep_obrigatorio: TWideStringField
      FieldName = 'cli_cep_obrigatorio'
      Required = True
      Size = 1
    end
    object Tcli_cpf_obrigatorio: TWideStringField
      FieldName = 'cli_cpf_obrigatorio'
      Required = True
      Size = 1
    end
    object Tdias_calc_preco_compra: TIntegerField
      FieldName = 'dias_calc_preco_compra'
    end
    object Tproducao_fases: TWideStringField
      FieldName = 'producao_fases'
      Required = True
      Size = 1
    end
    object Tusa_cx_master: TWideStringField
      FieldName = 'usa_cx_master'
      Required = True
      Size = 1
    end
    object Tbloqueia_nf_lancada_fornecedor: TWideStringField
      FieldName = 'bloqueia_nf_lancada_fornecedor'
      Required = True
      Size = 1
    end
    object Tbloqueia_exped_cli_inadimp: TWideStringField
      FieldName = 'bloqueia_exped_cli_inadimp'
      Required = True
      Size = 1
    end
    object Tusa_referencia_base: TWideStringField
      FieldName = 'usa_referencia_base'
      Required = True
      Size = 1
    end
    object Tdias_carencia_bloqueio: TIntegerField
      FieldName = 'dias_carencia_bloqueio'
    end
    object Tbloqueia_exped_lim_exedido: TWideStringField
      FieldName = 'bloqueia_exped_lim_exedido'
      Required = True
      Size = 1
    end
    object Tfinanceiro_por_receb: TWideStringField
      FieldName = 'financeiro_por_receb'
      Required = True
      Size = 1
    end
    object Tusar_setor: TWideStringField
      FieldName = 'usar_setor'
      Required = True
      Size = 1
    end
    object Trecibo_chq_detal: TWideStringField
      FieldName = 'recibo_chq_detal'
      Required = True
      Size = 1
    end
    object Tlimite_venda_liberar_com_senha: TWideStringField
      FieldName = 'limite_venda_liberar_com_senha'
      Size = 1
    end
    object Tcli_tabela_obrigatorio: TWideStringField
      FieldName = 'cli_tabela_obrigatorio'
      Size = 1
    end
    object Tcli_condicao_obrigatorio: TWideStringField
      FieldName = 'cli_condicao_obrigatorio'
      Size = 1
    end
    object Tcli_transp_obrigatorio: TWideStringField
      FieldName = 'cli_transp_obrigatorio'
      Size = 1
    end
    object Tcli_redespacho_obrigatorio: TWideStringField
      FieldName = 'cli_redespacho_obrigatorio'
      Size = 1
    end
    object Tcli_formapgto_obrigatorio: TWideStringField
      FieldName = 'cli_formapgto_obrigatorio'
      Size = 1
    end
    object Tmostra_orc_prog_prod: TWideStringField
      FieldName = 'mostra_orc_prog_prod'
      Required = True
      Size = 1
    end
    object Trel_estoque_usar_fator_conv: TWideStringField
      FieldName = 'rel_estoque_usar_fator_conv'
      Size = 1
    end
    object Timprimir_desc_ficha: TWideStringField
      FieldName = 'imprimir_desc_ficha'
      Required = True
      Size = 1
    end
    object TloteLetra: TWideStringField
      FieldName = 'loteLetra'
      Size = 1
    end
    object TL_Letra: TWideStringField
      FieldName = 'L_Letra'
      Size = 10
    end
    object TL_Num: TIntegerField
      FieldName = 'L_Num'
    end
    object TL_Posicao: TIntegerField
      FieldName = 'L_Posicao'
    end
    object TL_LetraAnterior: TWideStringField
      FieldName = 'L_LetraAnterior'
      Size = 10
    end
    object TL_posicaoLetra: TWideStringField
      FieldName = 'L_posicaoLetra'
      Size = 10
    end
    object Tenvio_nfe_acbr: TWideStringField
      FieldName = 'envio_nfe_acbr'
      Size = 1
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM parametro'
      'WHERE'
      '  parametro.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO parametro'
      
        '  (id, RAZAO, CNPJ, ENDERECO, BAIRRO, CIDADE, UF, CEP, SITE, EMA' +
        'IL, RESPONS, '
      
        '   TELEFONE, FAX, logo, ex, fantasia, num, idCidade, MenuAtualiz' +
        'ado, IE, '
      
        '   seq_reneg, OBSNF, ESPECIE, MARCA, SERIE, TPEMPRESANFE, NFE_DU' +
        'PLICATA, '
      
        '   NFE, CFOP, CSOSN, CSOSN2, NFE_RAVE, NFE_NUMSERIE, NFE_EMAIL, ' +
        'NFE_SENHA, '
      
        '   NFE_ASSUNTO, NFE_CORPOMSG, NFE_DANFE, NFE_XML, NFE_CANCELADA,' +
        ' NFE_COPIAEMAIL, '
      
        '   TIPO_EMPRESA, TIPOIMP_NFE, SIMPLESN_FAIXA, SIMPLESN_TIPO, DES' +
        'T_IMPOSTOS, '
      
        '   MOSTRA_FONTEIBPT, SMTP, PORTA, EMAIL_SSL, EMAIL_TLS, NT003, N' +
        'TCEST, '
      
        '   PICMSINTERDEST, CSC, IDCSC, MOSTRA_ST, PAIS, TIPOPESSOA, tipo' +
        'ambiente, '
      
        '   iduf, NF_IMPOSTOPORNCM, email_contador, prod_sem_montagem, im' +
        'pPedido_2vias, '
      
        '   tpAmbiente, venda_escolherpreco, nf_cfopprod_puxar_NF, nf_msg' +
        'AproveitCredito, '
      
        '   reduzir_romaneio, comi_vend, venda_sem_vecto, venda_foco_inic' +
        'ial, caminho_pasta_serasa, '
      
        '   baixa_sem_troco, pesqproduto, maxDesconto, mostrar_royalties,' +
        ' desconto_especial, '
      
        '   mostrar_por_comissao, mostrar_cubagem, comissao_pagar, usa_co' +
        'nd_porcentagem, '
      
        '   PorCustoOpera, idweb, clientes_repre, mod_pedidosWeb, fator_c' +
        'ubagem, '
      
        '   tp_desc_ped, mod_cad_tabela, tempo_pedido, gerar_contas_sep, ' +
        'conta_com_desc, '
      
        '   conta_sem_desc, loginEspecial, venda_desc_margem, email_rep_v' +
        'encidas, '
      
        '   dias_vencidas, finan_expedicao, p_mod_boleto, pd_vincular_nf,' +
        ' pd_cred_nf_avulsa, '
      
        '   novafolhasep, imp_minuta, pd_duas_cond, pd_imp_matricial, mar' +
        'gem_minima, '
      
        '   bloq_unit_venda, bloq_alterar_venda, nf_qtd_cx_separado, folh' +
        'a_separacao_mod_3, '
      
        '   cli_atraso, cli_atraso_dias, pd_perm_alt_exp, nao_usar_expedi' +
        'cao, vias_subop_mesma_folha, '
      
        '   mod_sped, nao_baixar_negativo, mod_gerente_cial, perg_imp_sep' +
        'aracao, '
      
        '   minuta_des_mold_2, etiqueta_nf_mod_2, msg_estoque_baixo, perg' +
        '_email_transp, '
      
        '   nf_sem_itens_zerados, traz_cond_em_branco, mostrar_multiplo, ' +
        'folhaSepSemValor, '
      
        '   impReciboFinan, compra_etq_sele, prod_com_romaneio, venda_alt' +
        'erarUnitGrid, '
      
        '   venda_frete, venda_justificar_cancel, mostrar_btn_entregar, f' +
        'olhaSeparacao_mod_5, '
      
        '   ImpressaoVenda_mod_5, mod_mdfe, mudar_cial_exp, prod_por_pedi' +
        'do, usa_com_padrao, '
      
        '   imp_oc_mod_2, gerar_cred_emp_origem, vincula_usu_vend, usa_ab' +
        'ertura_cx, '
      
        '   sat, bloquear_limite_exedido, considera_perm_alt_unit, pedir_' +
        'senha_desc_venda, '
      
        '   cli_cep_obrigatorio, cli_cpf_obrigatorio, dias_calc_preco_com' +
        'pra, producao_fases, '
      
        '   usa_cx_master, bloqueia_nf_lancada_fornecedor, bloqueia_exped' +
        '_cli_inadimp, '
      
        '   usa_referencia_base, sicredi_n, sicredi_b, dias_carencia_bloq' +
        'ueio, bloqueia_exped_lim_exedido, '
      
        '   financeiro_por_receb, usar_setor, recibo_chq_detal, limite_ve' +
        'nda_liberar_com_senha, '
      
        '   cli_tabela_obrigatorio, cli_condicao_obrigatorio, cli_transp_' +
        'obrigatorio, '
      
        '   cli_redespacho_obrigatorio, cli_formapgto_obrigatorio, mostra' +
        '_orc_prog_prod, '
      '   rel_estoque_usar_fator_conv, imprimir_desc_ficha)'
      'VALUES'
      
        '  (:id, :RAZAO, :CNPJ, :ENDERECO, :BAIRRO, :CIDADE, :UF, :CEP, :' +
        'SITE, :EMAIL, '
      
        '   :RESPONS, :TELEFONE, :FAX, :logo, :ex, :fantasia, :num, :idCi' +
        'dade, :MenuAtualizado, '
      
        '   :IE, :seq_reneg, :OBSNF, :ESPECIE, :MARCA, :SERIE, :TPEMPRESA' +
        'NFE, :NFE_DUPLICATA, '
      
        '   :NFE, :CFOP, :CSOSN, :CSOSN2, :NFE_RAVE, :NFE_NUMSERIE, :NFE_' +
        'EMAIL, '
      
        '   :NFE_SENHA, :NFE_ASSUNTO, :NFE_CORPOMSG, :NFE_DANFE, :NFE_XML' +
        ', :NFE_CANCELADA, '
      
        '   :NFE_COPIAEMAIL, :TIPO_EMPRESA, :TIPOIMP_NFE, :SIMPLESN_FAIXA' +
        ', :SIMPLESN_TIPO, '
      
        '   :DEST_IMPOSTOS, :MOSTRA_FONTEIBPT, :SMTP, :PORTA, :EMAIL_SSL,' +
        ' :EMAIL_TLS, '
      
        '   :NT003, :NTCEST, :PICMSINTERDEST, :CSC, :IDCSC, :MOSTRA_ST, :' +
        'PAIS, :TIPOPESSOA, '
      
        '   :tipoambiente, :iduf, :NF_IMPOSTOPORNCM, :email_contador, :pr' +
        'od_sem_montagem, '
      
        '   :impPedido_2vias, :tpAmbiente, :venda_escolherpreco, :nf_cfop' +
        'prod_puxar_NF, '
      
        '   :nf_msgAproveitCredito, :reduzir_romaneio, :comi_vend, :venda' +
        '_sem_vecto, '
      
        '   :venda_foco_inicial, :caminho_pasta_serasa, :baixa_sem_troco,' +
        ' :pesqproduto, '
      
        '   :maxDesconto, :mostrar_royalties, :desconto_especial, :mostra' +
        'r_por_comissao, '
      
        '   :mostrar_cubagem, :comissao_pagar, :usa_cond_porcentagem, :Po' +
        'rCustoOpera, '
      
        '   :idweb, :clientes_repre, :mod_pedidosWeb, :fator_cubagem, :tp' +
        '_desc_ped, '
      
        '   :mod_cad_tabela, :tempo_pedido, :gerar_contas_sep, :conta_com' +
        '_desc, '
      
        '   :conta_sem_desc, :loginEspecial, :venda_desc_margem, :email_r' +
        'ep_vencidas, '
      
        '   :dias_vencidas, :finan_expedicao, :p_mod_boleto, :pd_vincular' +
        '_nf, :pd_cred_nf_avulsa, '
      
        '   :novafolhasep, :imp_minuta, :pd_duas_cond, :pd_imp_matricial,' +
        ' :margem_minima, '
      
        '   :bloq_unit_venda, :bloq_alterar_venda, :nf_qtd_cx_separado, :' +
        'folha_separacao_mod_3, '
      
        '   :cli_atraso, :cli_atraso_dias, :pd_perm_alt_exp, :nao_usar_ex' +
        'pedicao, '
      
        '   :vias_subop_mesma_folha, :mod_sped, :nao_baixar_negativo, :mo' +
        'd_gerente_cial, '
      
        '   :perg_imp_separacao, :minuta_des_mold_2, :etiqueta_nf_mod_2, ' +
        ':msg_estoque_baixo, '
      
        '   :perg_email_transp, :nf_sem_itens_zerados, :traz_cond_em_bran' +
        'co, :mostrar_multiplo, '
      
        '   :folhaSepSemValor, :impReciboFinan, :compra_etq_sele, :prod_c' +
        'om_romaneio, '
      
        '   :venda_alterarUnitGrid, :venda_frete, :venda_justificar_cance' +
        'l, :mostrar_btn_entregar, '
      
        '   :folhaSeparacao_mod_5, :ImpressaoVenda_mod_5, :mod_mdfe, :mud' +
        'ar_cial_exp, '
      
        '   :prod_por_pedido, :usa_com_padrao, :imp_oc_mod_2, :gerar_cred' +
        '_emp_origem, '
      
        '   :vincula_usu_vend, :usa_abertura_cx, :sat, :bloquear_limite_e' +
        'xedido, '
      
        '   :considera_perm_alt_unit, :pedir_senha_desc_venda, :cli_cep_o' +
        'brigatorio, '
      
        '   :cli_cpf_obrigatorio, :dias_calc_preco_compra, :producao_fase' +
        's, :usa_cx_master, '
      
        '   :bloqueia_nf_lancada_fornecedor, :bloqueia_exped_cli_inadimp,' +
        ' :usa_referencia_base, '
      
        '   :sicredi_n, :sicredi_b, :dias_carencia_bloqueio, :bloqueia_ex' +
        'ped_lim_exedido, '
      
        '   :financeiro_por_receb, :usar_setor, :recibo_chq_detal, :limit' +
        'e_venda_liberar_com_senha, '
      
        '   :cli_tabela_obrigatorio, :cli_condicao_obrigatorio, :cli_tran' +
        'sp_obrigatorio, '
      
        '   :cli_redespacho_obrigatorio, :cli_formapgto_obrigatorio, :mos' +
        'tra_orc_prog_prod, '
      '   :rel_estoque_usar_fator_conv, :imprimir_desc_ficha)')
    ModifySQL.Strings = (
      'UPDATE parametro SET'
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
      '  MenuAtualizado = :MenuAtualizado,'
      '  IE = :IE,'
      '  seq_reneg = :seq_reneg,'
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
      '  tipoambiente = :tipoambiente,'
      '  iduf = :iduf,'
      '  NF_IMPOSTOPORNCM = :NF_IMPOSTOPORNCM,'
      '  email_contador = :email_contador,'
      '  prod_sem_montagem = :prod_sem_montagem,'
      '  impPedido_2vias = :impPedido_2vias,'
      '  tpAmbiente = :tpAmbiente,'
      '  venda_escolherpreco = :venda_escolherpreco,'
      '  nf_cfopprod_puxar_NF = :nf_cfopprod_puxar_NF,'
      '  nf_msgAproveitCredito = :nf_msgAproveitCredito,'
      '  reduzir_romaneio = :reduzir_romaneio,'
      '  comi_vend = :comi_vend,'
      '  venda_sem_vecto = :venda_sem_vecto,'
      '  venda_foco_inicial = :venda_foco_inicial,'
      '  caminho_pasta_serasa = :caminho_pasta_serasa,'
      '  baixa_sem_troco = :baixa_sem_troco,'
      '  pesqproduto = :pesqproduto,'
      '  maxDesconto = :maxDesconto,'
      '  mostrar_royalties = :mostrar_royalties,'
      '  desconto_especial = :desconto_especial,'
      '  mostrar_por_comissao = :mostrar_por_comissao,'
      '  mostrar_cubagem = :mostrar_cubagem,'
      '  comissao_pagar = :comissao_pagar,'
      '  usa_cond_porcentagem = :usa_cond_porcentagem,'
      '  PorCustoOpera = :PorCustoOpera,'
      '  idweb = :idweb,'
      '  clientes_repre = :clientes_repre,'
      '  mod_pedidosWeb = :mod_pedidosWeb,'
      '  fator_cubagem = :fator_cubagem,'
      '  tp_desc_ped = :tp_desc_ped,'
      '  mod_cad_tabela = :mod_cad_tabela,'
      '  tempo_pedido = :tempo_pedido,'
      '  gerar_contas_sep = :gerar_contas_sep,'
      '  conta_com_desc = :conta_com_desc,'
      '  conta_sem_desc = :conta_sem_desc,'
      '  loginEspecial = :loginEspecial,'
      '  venda_desc_margem = :venda_desc_margem,'
      '  email_rep_vencidas = :email_rep_vencidas,'
      '  dias_vencidas = :dias_vencidas,'
      '  finan_expedicao = :finan_expedicao,'
      '  p_mod_boleto = :p_mod_boleto,'
      '  pd_vincular_nf = :pd_vincular_nf,'
      '  pd_cred_nf_avulsa = :pd_cred_nf_avulsa,'
      '  novafolhasep = :novafolhasep,'
      '  imp_minuta = :imp_minuta,'
      '  pd_duas_cond = :pd_duas_cond,'
      '  pd_imp_matricial = :pd_imp_matricial,'
      '  margem_minima = :margem_minima,'
      '  bloq_unit_venda = :bloq_unit_venda,'
      '  bloq_alterar_venda = :bloq_alterar_venda,'
      '  nf_qtd_cx_separado = :nf_qtd_cx_separado,'
      '  folha_separacao_mod_3 = :folha_separacao_mod_3,'
      '  cli_atraso = :cli_atraso,'
      '  cli_atraso_dias = :cli_atraso_dias,'
      '  pd_perm_alt_exp = :pd_perm_alt_exp,'
      '  nao_usar_expedicao = :nao_usar_expedicao,'
      '  vias_subop_mesma_folha = :vias_subop_mesma_folha,'
      '  mod_sped = :mod_sped,'
      '  nao_baixar_negativo = :nao_baixar_negativo,'
      '  mod_gerente_cial = :mod_gerente_cial,'
      '  perg_imp_separacao = :perg_imp_separacao,'
      '  minuta_des_mold_2 = :minuta_des_mold_2,'
      '  etiqueta_nf_mod_2 = :etiqueta_nf_mod_2,'
      '  msg_estoque_baixo = :msg_estoque_baixo,'
      '  perg_email_transp = :perg_email_transp,'
      '  nf_sem_itens_zerados = :nf_sem_itens_zerados,'
      '  traz_cond_em_branco = :traz_cond_em_branco,'
      '  mostrar_multiplo = :mostrar_multiplo,'
      '  folhaSepSemValor = :folhaSepSemValor,'
      '  impReciboFinan = :impReciboFinan,'
      '  compra_etq_sele = :compra_etq_sele,'
      '  prod_com_romaneio = :prod_com_romaneio,'
      '  venda_alterarUnitGrid = :venda_alterarUnitGrid,'
      '  venda_frete = :venda_frete,'
      '  venda_justificar_cancel = :venda_justificar_cancel,'
      '  mostrar_btn_entregar = :mostrar_btn_entregar,'
      '  folhaSeparacao_mod_5 = :folhaSeparacao_mod_5,'
      '  ImpressaoVenda_mod_5 = :ImpressaoVenda_mod_5,'
      '  mod_mdfe = :mod_mdfe,'
      '  mudar_cial_exp = :mudar_cial_exp,'
      '  prod_por_pedido = :prod_por_pedido,'
      '  usa_com_padrao = :usa_com_padrao,'
      '  imp_oc_mod_2 = :imp_oc_mod_2,'
      '  gerar_cred_emp_origem = :gerar_cred_emp_origem,'
      '  vincula_usu_vend = :vincula_usu_vend,'
      '  usa_abertura_cx = :usa_abertura_cx,'
      '  sat = :sat,'
      '  bloquear_limite_exedido = :bloquear_limite_exedido,'
      '  considera_perm_alt_unit = :considera_perm_alt_unit,'
      '  pedir_senha_desc_venda = :pedir_senha_desc_venda,'
      '  cli_cep_obrigatorio = :cli_cep_obrigatorio,'
      '  cli_cpf_obrigatorio = :cli_cpf_obrigatorio,'
      '  dias_calc_preco_compra = :dias_calc_preco_compra,'
      '  producao_fases = :producao_fases,'
      '  usa_cx_master = :usa_cx_master,'
      
        '  bloqueia_nf_lancada_fornecedor = :bloqueia_nf_lancada_forneced' +
        'or,'
      '  bloqueia_exped_cli_inadimp = :bloqueia_exped_cli_inadimp,'
      '  usa_referencia_base = :usa_referencia_base,'
      '  sicredi_n = :sicredi_n,'
      '  sicredi_b = :sicredi_b,'
      '  dias_carencia_bloqueio = :dias_carencia_bloqueio,'
      '  bloqueia_exped_lim_exedido = :bloqueia_exped_lim_exedido,'
      '  financeiro_por_receb = :financeiro_por_receb,'
      '  usar_setor = :usar_setor,'
      '  recibo_chq_detal = :recibo_chq_detal,'
      
        '  limite_venda_liberar_com_senha = :limite_venda_liberar_com_sen' +
        'ha,'
      '  cli_tabela_obrigatorio = :cli_tabela_obrigatorio,'
      '  cli_condicao_obrigatorio = :cli_condicao_obrigatorio,'
      '  cli_transp_obrigatorio = :cli_transp_obrigatorio,'
      '  cli_redespacho_obrigatorio = :cli_redespacho_obrigatorio,'
      '  cli_formapgto_obrigatorio = :cli_formapgto_obrigatorio,'
      '  mostra_orc_prog_prod = :mostra_orc_prog_prod,'
      '  rel_estoque_usar_fator_conv = :rel_estoque_usar_fator_conv,'
      '  imprimir_desc_ficha = :imprimir_desc_ficha,'
      '  loteLetra = :loteLetra, '
      '  L_Letra = :L_Letra,'
      '  L_Num = :L_Num,'
      '  L_Posicao = :L_Posicao,'
      '  L_PosicaoLetra = :L_PosicaoLetra,'
      '  L_LetraAnterior = :L_LetraAnterior,'
      '  envio_nfe_acbr = :envio_nfe_acbr'
      'WHERE'
      '  parametro.id = :OLD_id')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
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
        Name = 'MenuAtualizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_reneg'
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
        Name = 'tipoambiente'
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
        Name = 'prod_sem_montagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impPedido_2vias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tpAmbiente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda_escolherpreco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_cfopprod_puxar_NF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_msgAproveitCredito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'reduzir_romaneio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comi_vend'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda_sem_vecto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda_foco_inicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'caminho_pasta_serasa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'baixa_sem_troco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pesqproduto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'maxDesconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mostrar_royalties'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto_especial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mostrar_por_comissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mostrar_cubagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comissao_pagar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usa_cond_porcentagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PorCustoOpera'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idweb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clientes_repre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mod_pedidosWeb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fator_cubagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp_desc_ped'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mod_cad_tabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tempo_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gerar_contas_sep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta_com_desc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta_sem_desc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loginEspecial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda_desc_margem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email_rep_vencidas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias_vencidas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'finan_expedicao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p_mod_boleto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pd_vincular_nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pd_cred_nf_avulsa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'novafolhasep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imp_minuta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pd_duas_cond'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pd_imp_matricial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'margem_minima'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloq_unit_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloq_alterar_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_qtd_cx_separado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folha_separacao_mod_3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_atraso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_atraso_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pd_perm_alt_exp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nao_usar_expedicao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vias_subop_mesma_folha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mod_sped'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nao_baixar_negativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mod_gerente_cial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'perg_imp_separacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'minuta_des_mold_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'etiqueta_nf_mod_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'msg_estoque_baixo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'perg_email_transp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_sem_itens_zerados'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'traz_cond_em_branco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mostrar_multiplo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folhaSepSemValor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impReciboFinan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'compra_etq_sele'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prod_com_romaneio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda_alterarUnitGrid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda_frete'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda_justificar_cancel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mostrar_btn_entregar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folhaSeparacao_mod_5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ImpressaoVenda_mod_5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mod_mdfe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mudar_cial_exp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prod_por_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usa_com_padrao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imp_oc_mod_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gerar_cred_emp_origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vincula_usu_vend'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usa_abertura_cx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloquear_limite_exedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'considera_perm_alt_unit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedir_senha_desc_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_cep_obrigatorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_cpf_obrigatorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias_calc_preco_compra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'producao_fases'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usa_cx_master'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloqueia_nf_lancada_fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloqueia_exped_cli_inadimp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usa_referencia_base'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sicredi_n'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sicredi_b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias_carencia_bloqueio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloqueia_exped_lim_exedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'financeiro_por_receb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usar_setor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recibo_chq_detal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'limite_venda_liberar_com_senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_tabela_obrigatorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_condicao_obrigatorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_transp_obrigatorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_redespacho_obrigatorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_formapgto_obrigatorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mostra_orc_prog_prod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rel_estoque_usar_fator_conv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imprimir_desc_ficha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loteLetra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'L_Letra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'L_Num'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'L_Posicao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'L_PosicaoLetra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'L_LetraAnterior'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envio_nfe_acbr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 763
    Top = 408
  end
  object OpenDialog1: TOpenDialog
    Left = 708
    Top = 334
  end
  object dc1: TDataSource
    DataSet = DM.qConta
    Left = 640
    Top = 320
  end
  object dc2: TDataSource
    DataSet = DM.qConta
    Left = 600
    Top = 440
  end
end
