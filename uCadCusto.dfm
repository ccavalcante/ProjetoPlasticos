inherited fCadCusto: TfCadCusto
  Caption = 'Cadastro de Centro de Custo'
  ClientHeight = 625
  ClientWidth = 993
  OldCreateOrder = True
  ExplicitWidth = 1009
  ExplicitHeight = 664
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 993
    Height = 584
    ExplicitWidth = 993
    ExplicitHeight = 584
  end
  inherited ToolBar1: TToolBar
    Width = 993
    ExplicitWidth = 993
  end
  inherited EdPesq: TEdit
    Left = 109
    Width = 1015
    ExplicitLeft = 109
    ExplicitWidth = 1015
  end
  inherited PageControl1: TPageControl
    Width = 1117
    Height = 544
    ActivePage = TabSheet2
    ExplicitWidth = 1117
    ExplicitHeight = 544
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 1109
      ExplicitHeight = 516
      inherited DBGrid1: TDBGrid
        Width = 1109
        Height = 516
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 58
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 1109
      ExplicitHeight = 516
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
        Width = 58
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 89
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
        Width = 641
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Descricao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 9
        Top = 92
        Width = 325
        Height = 41
        Caption = 'Tipo'
        Columns = 3
        DataField = 'Tipo'
        DataSource = D
        Items.Strings = (
          'Despesas'
          'Manuten'#231#227'o'
          'Investimento')
        TabOrder = 2
        Values.Strings = (
          'D'
          'M'
          'I')
      end
    end
  end
  inherited D: TDataSource
    Left = 624
    Top = 0
  end
  inherited T: TZQuery
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from centrocusto'
      'where descricao like :pesq or '
      '           Id like :pesq'
      'order by descricao')
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
    object TID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
    end
    object TDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object TTipo: TWideStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM centrocusto'
      'WHERE'
      '  centrocusto.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO centrocusto'
      '  (Id, Descricao, Tipo)'
      'VALUES'
      '  (:Id, :Descricao, :Tipo)')
    ModifySQL.Strings = (
      'UPDATE centrocusto SET'
      '  Id = :Id,'
      '  Descricao = :Descricao,'
      '  Tipo = :Tipo'
      'WHERE'
      '  centrocusto.Id = :OLD_Id')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
end
