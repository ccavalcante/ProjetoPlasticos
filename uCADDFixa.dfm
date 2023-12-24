inherited fCADDFixa: TfCADDFixa
  Left = 266
  Top = 278
  Caption = 'Despesas Fixas'
  ClientHeight = 515
  ClientWidth = 908
  OldCreateOrder = True
  ExplicitWidth = 924
  ExplicitHeight = 554
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 908
    Height = 474
    ExplicitWidth = 908
    ExplicitHeight = 474
  end
  inherited ToolBar1: TToolBar
    Width = 908
    ExplicitWidth = 908
  end
  inherited EdPesq: TEdit
    Width = 793
    ExplicitWidth = 793
  end
  inherited PageControl1: TPageControl
    Width = 893
    Height = 432
    ActivePage = TabSheet2
    ExplicitWidth = 893
    ExplicitHeight = 432
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 885
      ExplicitHeight = 404
      inherited DBGrid1: TDBGrid
        Width = 885
        Height = 404
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idCusto'
            Title.Caption = 'C'#243'd. Custo'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descri'
            Title.Caption = 'Descri'#231#227'o'
            Width = 204
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idFornecedor'
            Title.Caption = 'C'#243'd.Fornecedor'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dia_Venci'
            Title.Caption = 'Dia Vencto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ativo'
            Title.Caption = 'Origem'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idUsuario'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'X'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Dia_Venci'
            Title.Caption = 'Data'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idemp'
            Title.Caption = 'Empresa'
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 885
      ExplicitHeight = 404
      object Label4: TLabel
        Left = 120
        Top = 176
        Width = 90
        Height = 13
        Caption = 'Dia Vencimento'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 16
        Top = 176
        Width = 50
        Height = 13
        Caption = 'R$ Valor'
        FocusControl = DBEdit4
      end
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label6: TLabel
        Left = 16
        Top = 136
        Width = 58
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 16
        Top = 56
        Width = 92
        Height = 13
        Caption = 'Centro de Custo'
      end
      object Label9: TLabel
        Left = 16
        Top = 96
        Width = 65
        Height = 13
        Caption = 'Fornecedor'
        FocusControl = DBEdit7
      end
      object Label3: TLabel
        Left = 85
        Top = 96
        Width = 169
        Height = 15
        Caption = '(Somente marcados como despesas)'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 175
        Top = 14
        Width = 47
        Height = 18
        Alignment = taRightJustify
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit3: TDBEdit
        Left = 120
        Top = 192
        Width = 41
        Height = 19
        Ctl3D = False
        DataField = 'Dia_Venci'
        DataSource = D
        MaxLength = 2
        ParentCtl3D = False
        TabOrder = 6
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 192
        Width = 90
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'VALOR'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 32
        Width = 81
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 152
        Width = 425
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DESCRICAO'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 72
        Width = 425
        Height = 21
        Ctl3D = True
        DataField = 'IDCUSTO'
        DataSource = D
        KeyField = 'ID'
        ListField = 'DESCRICAO'
        ListSource = dCCusto
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 111
        Width = 77
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'idFornecedor'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBEdit6Exit
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 111
        Width = 345
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'nome'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
        OnChange = DBEdit7Change
        OnKeyDown = DBEdit7KeyDown
      end
      object gdForn: TDBGrid
        Left = 240
        Top = 208
        Width = 425
        Height = 110
        Ctl3D = True
        DataSource = DM.dPesq
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Trebuchet MS'
        TitleFont.Style = []
        Visible = False
        OnKeyPress = gdFornKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 316
            Visible = True
          end>
      end
      object DBCheckBox1: TDBCheckBox
        Left = 103
        Top = 33
        Width = 75
        Height = 17
        Caption = 'Ativo'
        DataField = 'ativo'
        DataSource = D
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object cbEmp: TDBLookupComboBox
        Left = 175
        Top = 32
        Width = 266
        Height = 21
        DataField = 'idemp'
        DataSource = D
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'id'
        ListField = 'fantasia'
        ListSource = DM.dEmpresa
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inherited D: TDataSource
    Left = 616
    Top = 16
  end
  inherited T: TZQuery
    AfterScroll = TAfterScroll
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select DFixa.* , CentroCusto.descricao descri, fornecedor.nome'
      'from DFixa'
      'left join CentroCusto on CentroCusto.id = DFixa.idcusto'
      'left join fornecedor on fornecedor.id = DFixa.idfornecedor'
      'where DFixa.descricao like :pesq  or  fornecedor.nome like :pesq'
      'order by DFixa.descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Left = 552
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
    end
    object TidCusto: TIntegerField
      FieldName = 'idCusto'
    end
    object TidFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object TDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object TDia_Venci: TIntegerField
      FieldName = 'Dia_Venci'
      MaxValue = 31
      MinValue = 1
    end
    object TValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object TidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object TAtivo: TWideStringField
      FieldName = 'Ativo'
      Size = 1
    end
    object TX: TWideStringField
      FieldName = 'X'
      Size = 1
    end
    object Tdescri: TWideStringField
      FieldName = 'descri'
      Size = 100
    end
    object Tnome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object Tidemp: TIntegerField
      FieldName = 'idemp'
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM DFixa'
      'WHERE'
      '  DFixa.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO DFixa'
      
        '  (Id, idCusto, idFornecedor, Descricao, Dia_Venci, Valor, idUsu' +
        'ario, Ativo, '
      '   X, idemp)'
      'VALUES'
      
        '  (:Id, :idCusto, :idFornecedor, :Descricao, :Dia_Venci, :Valor,' +
        ' :idUsuario, '
      '   :Ativo, :X, :idemp)')
    ModifySQL.Strings = (
      'UPDATE DFixa SET'
      '  Id = :Id,'
      '  idCusto = :idCusto,'
      '  idFornecedor = :idFornecedor,'
      '  Descricao = :Descricao,'
      '  Dia_Venci = :Dia_Venci,'
      '  Valor = :Valor,'
      '  idUsuario = :idUsuario,'
      '  Ativo = :Ativo,'
      '  X = :X,'
      '  idemp = :idemp'
      'WHERE'
      '  DFixa.Id = :OLD_Id')
    Left = 584
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCUSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idFornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Dia_Venci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'X'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object dCCusto: TDataSource
    DataSet = qCCusto
    Left = 604
    Top = 136
  end
  object qCCusto: TZQuery
    Connection = DM.Conex
    SQL.Strings = (
      'select * from CentroCUSTO'
      'order by DESCRICAO')
    Params = <>
    Left = 576
    Top = 136
    object qCCustoID: TIntegerField
      FieldName = 'ID'
    end
    object qCCustoDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
