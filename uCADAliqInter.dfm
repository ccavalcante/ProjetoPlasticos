inherited fCADAliqInter: TfCADAliqInter
  Left = 316
  Top = 176
  Caption = 'Aliquota InterEstadual'
  ClientHeight = 595
  ClientWidth = 966
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 982
  ExplicitHeight = 634
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 966
    Height = 554
    ExplicitTop = 47
    ExplicitWidth = 966
    ExplicitHeight = 554
  end
  inherited Label1: TLabel
    Left = 315
    Top = 52
    ExplicitLeft = 315
    ExplicitTop = 52
  end
  object Label6: TLabel [3]
    Left = 13
    Top = 51
    Width = 161
    Height = 16
    Caption = 'Tipo Tributa'#231#227'o Prod.: '
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
    Width = 966
    ExplicitWidth = 966
  end
  inherited EdPesq: TEdit
    Left = 389
    Width = 567
    ExplicitLeft = 389
    ExplicitWidth = 567
  end
  inherited PageControl1: TPageControl
    Width = 952
    Height = 510
    ExplicitWidth = 952
    ExplicitHeight = 510
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 944
      ExplicitHeight = 482
      inherited DBGrid1: TDBGrid
        Width = 944
        Height = 482
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQINTERESTADUAL'
            Title.Caption = 'Aliq. Interestadual'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQDESTINO'
            Title.Caption = 'Aliq. UF Destino'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQNT003'
            Title.Caption = 'Aliq. Anual'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FCP'
            Title.Caption = 'Aliq. Fundo Combate Pobreza'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Title.Caption = 'Tipo Tributa'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CELULAR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RG'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COMISSAO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NASC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDCIDADE'
            Visible = False
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 944
      ExplicitHeight = 482
      object Label2: TLabel
        Left = 11
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
        Left = 11
        Top = 38
        Width = 15
        Height = 18
        Caption = 'UF'
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
        Left = 11
        Top = 114
        Width = 62
        Height = 18
        Caption = 'Aliq. Anual'
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
        Left = 11
        Top = 138
        Width = 113
        Height = 18
        Caption = 'Aliq. Fundo Pobreza'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 11
        Top = 88
        Width = 93
        Height = 18
        Caption = 'Aliq. UF Destino'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lCPFCNPJ: TLabel
        Left = 11
        Top = 63
        Width = 105
        Height = 18
        Caption = 'Aliq. InterEstadual'
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
        Left = 11
        Top = 160
        Width = 88
        Height = 18
        Caption = 'Tipo Tributa'#231#227'o'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 138
        Top = 12
        Width = 71
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 137
        Top = 37
        Width = 72
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'UF'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 113
        Width = 73
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ALIQNT003'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 137
        Width = 73
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'FCP'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 136
        Top = 87
        Width = 73
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ALIQDESTINO'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit14: TDBEdit
        Left = 136
        Top = 62
        Width = 73
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ALIQINTERESTADUAL'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 136
        Top = 162
        Width = 168
        Height = 21
        DataField = 'IDTIPO_TRIBUTACAO'
        DataSource = D
        KeyField = 'ID'
        ListField = 'TIPO'
        ListSource = dsTipoTribu
        TabOrder = 6
      end
    end
  end
  object cbTipoTrib: TComboBox [7]
    Left = 176
    Top = 48
    Width = 121
    Height = 22
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = 'Todos'
    OnExit = cbTipoTribExit
    Items.Strings = (
      'Todos'
      'Revenda')
  end
  inherited ImageList1: TImageList
    Left = 856
    Top = 0
  end
  inherited D: TDataSource
    Left = 688
    Top = 0
  end
  inherited ActionList1: TActionList
    Left = 768
    Top = 0
  end
  inherited T: TZQuery
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select a.*, t.tipo from aliq_interestadual a'
      'inner join tipo_tributacao t on (a.idtipo_tributacao = t.id)'
      'where a.uf like :pesq'
      'order by a.UF')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Left = 656
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object TID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object TALIQINTERESTADUAL: TFloatField
      FieldName = 'ALIQINTERESTADUAL'
      DisplayFormat = '#0.00'
    end
    object TALIQDESTINO: TFloatField
      FieldName = 'ALIQDESTINO'
      DisplayFormat = '#0.00'
    end
    object TALIQNT003: TFloatField
      FieldName = 'ALIQNT003'
      DisplayFormat = '#0.00'
    end
    object TFCP: TFloatField
      FieldName = 'FCP'
      DisplayFormat = '#0.00'
    end
    object TIDUSU: TIntegerField
      FieldName = 'IDUSU'
    end
    object TIDTIPO_TRIBUTACAO: TIntegerField
      FieldName = 'IDTIPO_TRIBUTACAO'
    end
    object Ttipo: TWideStringField
      FieldName = 'tipo'
      Size = 100
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM aliq_interestadual'
      'WHERE'
      '  aliq_interestadual.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO aliq_interestadual'
      
        '  (ID, UF, ALIQINTERESTADUAL, ALIQDESTINO, ALIQNT003, FCP, IDUSU' +
        ', IDTIPO_TRIBUTACAO)'
      'VALUES'
      
        '  (:ID, :UF, :ALIQINTERESTADUAL, :ALIQDESTINO, :ALIQNT003, :FCP,' +
        ' :IDUSU, '
      '   :IDTIPO_TRIBUTACAO)')
    ModifySQL.Strings = (
      'UPDATE aliq_interestadual SET'
      '  ID = :ID,'
      '  UF = :UF,'
      '  ALIQINTERESTADUAL = :ALIQINTERESTADUAL,'
      '  ALIQDESTINO = :ALIQDESTINO,'
      '  ALIQNT003 = :ALIQNT003,'
      '  FCP = :FCP,'
      '  IDUSU = :IDUSU,'
      '  IDTIPO_TRIBUTACAO = :IDTIPO_TRIBUTACAO'
      'WHERE'
      '  aliq_interestadual.ID = :OLD_ID')
    Left = 728
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALIQINTERESTADUAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALIQDESTINO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALIQNT003'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTIPO_TRIBUTACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object dsTipoTribu: TDataSource
    DataSet = qTipoTribu
    Left = 536
    Top = 8
  end
  object qTipoTribu: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from tipo_tributacao')
    Params = <>
    Left = 496
    Top = 8
    object qTipoTribuID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoTribuTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 100
    end
  end
end
