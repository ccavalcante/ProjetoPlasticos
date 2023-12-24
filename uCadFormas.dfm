inherited fCadFormas: TfCadFormas
  Left = 239
  Top = 165
  Caption = 'Formas de Pagamentos'
  ClientHeight = 605
  ClientWidth = 929
  OldCreateOrder = True
  ExplicitWidth = 945
  ExplicitHeight = 644
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 929
    Height = 564
    ExplicitWidth = 929
    ExplicitHeight = 564
  end
  inherited ToolBar1: TToolBar
    Width = 929
    ExplicitWidth = 929
  end
  inherited EdPesq: TEdit
    Left = 80
    Width = 809
    ExplicitLeft = 80
    ExplicitWidth = 809
  end
  inherited PageControl1: TPageControl
    Width = 914
    Height = 522
    ActivePage = TabSheet2
    ExplicitWidth = 914
    ExplicitHeight = 522
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 906
      ExplicitHeight = 494
      inherited DBGrid1: TDBGrid
        Width = 906
        Height = 494
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 906
      ExplicitHeight = 494
      object Label2: TLabel
        Left = 12
        Top = 19
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
      object Label19: TLabel
        Left = 13
        Top = 51
        Width = 54
        Height = 18
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 73
        Top = 18
        Width = 71
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Id'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 73
        Top = 51
        Width = 424
        Height = 19
        Ctl3D = False
        DataField = 'descricao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 752
    Top = 240
  end
  inherited D: TDataSource
    Left = 752
    Top = 112
  end
  inherited ActionList1: TActionList
    Left = 720
    Top = 240
  end
  inherited T: TZQuery
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from formas'
      'where descricao like :pesq       '
      'order by id ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Left = 688
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    object TId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object TDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM formas'
      'WHERE'
      '  formas.Id = :OLD_Id')
    InsertSQL.Strings = (
      'INSERT INTO formas'
      '  (Id, Descricao)'
      'VALUES'
      '  (:Id, :Descricao)')
    ModifySQL.Strings = (
      'UPDATE formas SET'
      '  Id = :Id,'
      '  Descricao = :Descricao'
      'WHERE'
      '  formas.Id = :OLD_Id')
    Left = 720
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
end
