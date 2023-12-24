inherited fCADConta: TfCADConta
  Left = 562
  Top = 155
  Caption = 'Contas'
  ClientHeight = 588
  ClientWidth = 964
  OldCreateOrder = True
  ExplicitWidth = 980
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 964
    Height = 547
    ExplicitWidth = 964
    ExplicitHeight = 545
  end
  inherited ToolBar1: TToolBar
    Width = 964
    ExplicitWidth = 964
  end
  inherited EdPesq: TEdit
    Top = 47
    Width = 852
    ExplicitTop = 47
    ExplicitWidth = 852
  end
  inherited PageControl1: TPageControl
    Width = 950
    Height = 503
    ActivePage = TabSheet2
    ExplicitWidth = 950
    ExplicitHeight = 503
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 942
      ExplicitHeight = 475
      inherited DBGrid1: TDBGrid
        Width = 942
        Height = 475
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BSEQ_REMESSA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DIASPROT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDUSU'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MSG_BOLETO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MULTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TITULAR'
            Title.Caption = 'Titular'
            Width = 343
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AG'
            Title.Caption = 'Agencia'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC'
            Title.Caption = 'Conta Corrente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BCO'
            Title.Caption = 'Banco'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Tipo'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USABOLETO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BTIPO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BAGENCIA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BAGENCIAD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BCONTA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BCONTAD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BCEDENTE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BCEDENTED'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BCONVENIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BCARTEIRA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOMECEDENTE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CNPJCEDENTE'
            Visible = False
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 942
      ExplicitHeight = 475
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 37
        Height = 13
        Caption = 'Titular'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 8
        Top = 96
        Width = 47
        Height = 13
        Caption = 'Ag'#234'ncia'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 149
        Top = 96
        Width = 86
        Height = 13
        Caption = 'Conta Corrente'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 291
        Top = 97
        Width = 37
        Height = 13
        Caption = 'Banco'
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 32
        Width = 134
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 72
        Width = 593
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'TITULAR'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 112
        Width = 134
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'AG'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 149
        Top = 112
        Width = 134
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CC'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 291
        Top = 113
        Width = 62
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'BCO'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 139
        Width = 113
        Height = 17
        Caption = 'Conta Banc'#225'ria'
        DataField = 'TIPO'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        ValueChecked = 'B'
        ValueUnchecked = 'N'
        OnClick = DBCheckBox1Click
      end
      object Panel1: TPanel
        Left = 3
        Top = 183
        Width = 936
        Height = 280
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        object Label45: TLabel
          Left = 5
          Top = 1
          Width = 48
          Height = 18
          Caption = 'Ag'#234'ncia'
          FocusControl = DBEdit41
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 5
          Top = 46
          Width = 50
          Height = 18
          Caption = 'Carteira'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 173
          Top = 46
          Width = 112
          Height = 18
          Caption = 'Tipos de Carteiras'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 102
          Top = 2
          Width = 35
          Height = 18
          Caption = 'Conta'
          FocusControl = DBEdit43
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label59: TLabel
          Left = 236
          Top = 1
          Width = 50
          Height = 18
          Caption = 'Cedente'
          FocusControl = DBEdit54
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 412
          Top = 1
          Width = 56
          Height = 18
          Caption = 'Conv'#234'nio'
          FocusControl = DBEdit30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 6
          Top = 89
          Width = 139
          Height = 18
          Caption = 'Ultimo N'#186'. de Remessa'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 6
          Top = 134
          Width = 100
          Height = 18
          Caption = 'Titular da Conta'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 411
          Top = 134
          Width = 36
          Height = 18
          Caption = 'CNPJ '
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 589
          Top = 1
          Width = 27
          Height = 18
          Caption = 'Msg '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 686
          Top = 117
          Width = 81
          Height = 18
          Caption = 'Juros Por Dia'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 780
          Top = 117
          Width = 141
          Height = 18
          Caption = 'Multa ap'#243's Vencimento'
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 589
          Top = 117
          Width = 80
          Height = 18
          Caption = 'Dias Protesto'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 7
          Top = 182
          Width = 57
          Height = 18
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 334
          Top = 182
          Width = 48
          Height = 18
          Caption = 'N'#250'mero'
          FocusControl = DBEdit15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 7
          Top = 230
          Width = 42
          Height = 18
          Caption = 'Cidade'
          FocusControl = DBEdit16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 378
          Top = 230
          Width = 17
          Height = 18
          Caption = 'UF'
          FocusControl = DBEdit17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 399
          Top = 182
          Width = 38
          Height = 18
          Caption = 'Bairro'
          FocusControl = DBEdit17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 446
          Top = 230
          Width = 23
          Height = 18
          Caption = 'CEP'
          FocusControl = DBEdit17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 579
          Top = 3
          Width = 9
          Height = 270
          Shape = bsLeftLine
        end
        object Label22: TLabel
          Left = 476
          Top = 136
          Width = 92
          Height = 15
          Caption = '(somente n'#250'meros)'
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit30: TDBEdit
          Left = 411
          Top = 19
          Width = 160
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BCONVENIO'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          OnExit = DBEdit30Exit
        end
        object DBEdit41: TDBEdit
          Left = 5
          Top = 63
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BCARTEIRA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          MaxLength = 4
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit40: TDBEdit
          Left = 72
          Top = 19
          Width = 23
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BAGENCIAD'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          MaxLength = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 4
          Top = 19
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BAGENCIA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          MaxLength = 4
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit7Exit
        end
        object DBEdit43: TDBEdit
          Left = 101
          Top = 19
          Width = 101
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BCONTA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBEdit43Exit
        end
        object DBEdit42: TDBEdit
          Left = 204
          Top = 19
          Width = 23
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BCONTAD'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          MaxLength = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit54: TDBEdit
          Left = 234
          Top = 19
          Width = 147
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BCEDENTE'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnExit = DBEdit54Exit
        end
        object DBEdit6: TDBEdit
          Left = 383
          Top = 19
          Width = 25
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BCEDENTED'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          MaxLength = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
        end
        object mCarteira: TMemo
          Left = 176
          Top = 63
          Width = 395
          Height = 67
          TabStop = False
          BevelOuter = bvRaised
          Color = clBtnFace
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 6
          Top = 106
          Width = 139
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'BSEQ_REMESSA'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 7
          Top = 152
          Width = 400
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NOMECEDENTE'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit10: TDBEdit
          Left = 412
          Top = 152
          Width = 156
          Height = 24
          Ctl3D = False
          DataField = 'CNPJCEDENTE'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          MaxLength = 14
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          OnKeyPress = DBEdit10KeyPress
        end
        object Button1: TButton
          Left = 114
          Top = 136
          Width = 118
          Height = 15
          Caption = 'Usar Dados da Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          TabStop = False
          OnClick = Button1Click
        end
        object DBMemo3: TDBMemo
          Left = 589
          Top = 19
          Width = 335
          Height = 94
          Ctl3D = False
          DataField = 'MSG_BOLETO'
          DataSource = D
          ParentCtl3D = False
          ScrollBars = ssVertical
          TabOrder = 18
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 589
          Top = 216
          Width = 160
          Height = 56
          Caption = 'Formato '
          DataField = 'BTIPO'
          DataSource = D
          Items.Strings = (
            'Carn'#234
            'Padr'#227'o')
          TabOrder = 19
          Values.Strings = (
            'C'
            'P')
        end
        object DBEdit14: TDBEdit
          Left = 686
          Top = 135
          Width = 81
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'JUROS'
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
        object DBEdit11: TDBEdit
          Left = 780
          Top = 135
          Width = 94
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'MULTA'
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
        object DBEdit12: TDBEdit
          Left = 589
          Top = 135
          Width = 80
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'DIASPROT'
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
        object DBEdit13: TDBEdit
          Left = 8
          Top = 200
          Width = 322
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'endcedende'
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
        object DBEdit15: TDBEdit
          Left = 335
          Top = 200
          Width = 60
          Height = 24
          Ctl3D = False
          DataField = 'numcedende'
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
        object DBEdit16: TDBEdit
          Left = 8
          Top = 248
          Width = 361
          Height = 24
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cidcedende'
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
        object DBEdit17: TDBEdit
          Left = 446
          Top = 248
          Width = 122
          Height = 24
          Ctl3D = False
          DataField = 'cepcedende'
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
        object DBEdit18: TDBEdit
          Left = 399
          Top = 200
          Width = 169
          Height = 24
          Ctl3D = False
          DataField = 'baicedende'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
        end
        object DBComboBox1: TDBComboBox
          Left = 378
          Top = 248
          Width = 63
          Height = 26
          Style = csDropDownList
          BevelKind = bkFlat
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ufcedende'
          DataSource = D
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 16
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 752
          Top = 216
          Width = 166
          Height = 56
          Caption = 'Remessa'
          DataField = 'BCNAB'
          DataSource = D
          Items.Strings = (
            'CNAB240'
            'CNAB400')
          TabOrder = 24
          Values.Strings = (
            '240'
            '400')
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 752
          Top = 161
          Width = 166
          Height = 53
          Caption = 'Multa em '
          DataField = 'tipoMulta'
          DataSource = D
          Items.Strings = (
            'Porcentagem %'
            'Valor R$')
          TabOrder = 25
          Values.Strings = (
            'P'
            'V')
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 589
          Top = 161
          Width = 160
          Height = 53
          Caption = 'Protesto em'
          DataField = 'tipoProtesto'
          DataSource = D
          Items.Strings = (
            'Dias '#218'teis'
            'Dias Corridos')
          TabOrder = 26
          Values.Strings = (
            'U'
            'C')
        end
      end
      object ckBoleto: TDBCheckBox
        Left = 8
        Top = 160
        Width = 169
        Height = 17
        Caption = 'Usa Boleto Nesta Conta'
        DataField = 'USABOLETO'
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
        Visible = False
        OnClick = ckBoletoClick
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
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from conta '
      'where titular like :pesq'
      'order by titular')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object TID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'CONTA.ID'
      Required = True
    end
    object TBSEQ_REMESSA: TIntegerField
      FieldName = 'BSEQ_REMESSA'
      Origin = 'CONTA.BSEQ_REMESSA'
    end
    object TDIASPROT: TIntegerField
      FieldName = 'DIASPROT'
      Origin = 'CONTA.DIASPROT'
      DisplayFormat = '#0'
    end
    object TIDUSU: TIntegerField
      FieldName = 'IDUSU'
    end
    object TMSG_BOLETO: TWideMemoField
      FieldName = 'MSG_BOLETO'
      BlobType = ftWideMemo
    end
    object TMULTA: TFloatField
      FieldName = 'MULTA'
      DisplayFormat = '#0.000'
    end
    object TJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '#0.000'
    end
    object TTITULAR: TWideStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object TAG: TWideStringField
      FieldName = 'AG'
      Size = 10
    end
    object TCC: TWideStringField
      FieldName = 'CC'
      Size = 30
    end
    object TBCO: TWideStringField
      FieldName = 'BCO'
      Size = 3
    end
    object TTIPO: TWideStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object TUSABOLETO: TWideStringField
      FieldName = 'USABOLETO'
      Required = True
      Size = 1
    end
    object TBTIPO: TWideStringField
      FieldName = 'BTIPO'
      Size = 1
    end
    object TBAGENCIA: TWideStringField
      FieldName = 'BAGENCIA'
      Size = 10
    end
    object TBCONTA: TWideStringField
      FieldName = 'BCONTA'
      Size = 10
    end
    object TBCONTAD: TWideStringField
      FieldName = 'BCONTAD'
      Size = 2
    end
    object TBCEDENTED: TWideStringField
      FieldName = 'BCEDENTED'
      Size = 1
    end
    object TBCEDENTE: TWideStringField
      FieldName = 'BCEDENTE'
      Size = 10
    end
    object TBCONVENIO: TWideStringField
      FieldName = 'BCONVENIO'
      Size = 10
    end
    object TBCARTEIRA: TWideStringField
      FieldName = 'BCARTEIRA'
      Size = 10
    end
    object TNOMECEDENTE: TWideStringField
      FieldName = 'NOMECEDENTE'
      Size = 150
    end
    object TCNPJCEDENTE: TWideStringField
      FieldName = 'CNPJCEDENTE'
    end
    object Tendcedende: TWideStringField
      FieldName = 'endcedende'
      Size = 80
    end
    object Tnumcedende: TWideStringField
      FieldName = 'numcedende'
      Size = 10
    end
    object Tbaicedende: TWideStringField
      FieldName = 'baicedende'
      Size = 50
    end
    object Tcidcedende: TWideStringField
      FieldName = 'cidcedende'
      Size = 50
    end
    object Tufcedende: TWideStringField
      FieldName = 'ufcedende'
      Size = 2
    end
    object Tcepcedende: TWideStringField
      FieldName = 'cepcedende'
      EditMask = '00000\-999;0;_'
      Size = 10
    end
    object TBCNAB: TIntegerField
      FieldName = 'BCNAB'
      Required = True
    end
    object TtipoMulta: TWideStringField
      FieldName = 'tipoMulta'
      Required = True
      Size = 1
    end
    object TtipoProtesto: TWideStringField
      FieldName = 'tipoProtesto'
      Required = True
      Size = 1
    end
    object TBAGENCIAD: TWideStringField
      FieldName = 'BAGENCIAD'
      Size = 2
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM conta'
      'WHERE'
      '  conta.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO conta'
      
        '  (ID, TITULAR, AG, CC, BCO, TIPO, IDUSU, USABOLETO, BTIPO, BAGE' +
        'NCIA, BAGENCIAD, '
      
        '   BCONTA, BCONTAD, BCEDENTE, BCEDENTED, BCONVENIO, BCARTEIRA, B' +
        'SEQ_REMESSA, '
      
        '   MSG_BOLETO, NOMECEDENTE, CNPJCEDENTE, DIASPROT, MULTA, JUROS,' +
        ' endcedende, '
      
        '   numcedende, baicedende, cidcedende, ufcedende, cepcedende, BC' +
        'NAB, tipoMulta, '
      '   tipoProtesto)'
      'VALUES'
      
        '  (:ID, :TITULAR, :AG, :CC, :BCO, :TIPO, :IDUSU, :USABOLETO, :BT' +
        'IPO, :BAGENCIA, '
      
        '   :BAGENCIAD, :BCONTA, :BCONTAD, :BCEDENTE, :BCEDENTED, :BCONVE' +
        'NIO, :BCARTEIRA, '
      
        '   :BSEQ_REMESSA, :MSG_BOLETO, :NOMECEDENTE, :CNPJCEDENTE, :DIAS' +
        'PROT, :MULTA, '
      
        '   :JUROS, :endcedende, :numcedende, :baicedende, :cidcedende, :' +
        'ufcedende, '
      '   :cepcedende, :BCNAB, :tipoMulta, :tipoProtesto)')
    ModifySQL.Strings = (
      'UPDATE conta SET'
      '  ID = :ID,'
      '  TITULAR = :TITULAR,'
      '  AG = :AG,'
      '  CC = :CC,'
      '  BCO = :BCO,'
      '  TIPO = :TIPO,'
      '  IDUSU = :IDUSU,'
      '  USABOLETO = :USABOLETO,'
      '  BTIPO = :BTIPO,'
      '  BAGENCIA = :BAGENCIA,'
      '  BAGENCIAD = :BAGENCIAD,'
      '  BCONTA = :BCONTA,'
      '  BCONTAD = :BCONTAD,'
      '  BCEDENTE = :BCEDENTE,'
      '  BCEDENTED = :BCEDENTED,'
      '  BCONVENIO = :BCONVENIO,'
      '  BCARTEIRA = :BCARTEIRA,'
      '  BSEQ_REMESSA = :BSEQ_REMESSA,'
      '  MSG_BOLETO = :MSG_BOLETO,'
      '  NOMECEDENTE = :NOMECEDENTE,'
      '  CNPJCEDENTE = :CNPJCEDENTE,'
      '  DIASPROT = :DIASPROT,'
      '  MULTA = :MULTA,'
      '  JUROS = :JUROS,'
      '  endcedende = :endcedende,'
      '  numcedende = :numcedende,'
      '  baicedende = :baicedende,'
      '  cidcedende = :cidcedende,'
      '  ufcedende = :ufcedende,'
      '  cepcedende = :cepcedende,'
      '  BCNAB = :BCNAB,'
      '  tipoMulta = :tipoMulta,'
      '  tipoProtesto = :tipoProtesto'
      'WHERE'
      '  conta.ID = :OLD_ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TITULAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USABOLETO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BTIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAGENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAGENCIAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCONTAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCEDENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCEDENTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCONVENIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCARTEIRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BSEQ_REMESSA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MSG_BOLETO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMECEDENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJCEDENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIASPROT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MULTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'JUROS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endcedende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numcedende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'baicedende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidcedende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ufcedende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cepcedende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BCNAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoMulta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipoProtesto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
end
