inherited fCadCxMaster: TfCadCxMaster
  Left = 239
  Top = 165
  Caption = 'Unidade de Medida'
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
    ExplicitWidth = 914
    ExplicitHeight = 522
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 906
      ExplicitHeight = 494
      inherited DBGrid1: TDBGrid
        Width = 906
        Height = 494
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sigla'
            Title.Caption = 'Sigla'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Num'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DtAdm'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DtNasc'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tel1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tel2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Tel3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Email'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RG'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'User'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Senha'
            Visible = False
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 906
      ExplicitHeight = 494
      object Label2: TLabel
        Left = 12
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
      object Label10: TLabel
        Left = 12
        Top = 44
        Width = 26
        Height = 18
        Caption = 'Sigla'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 12
        Top = 72
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
        Top = 12
        Width = 71
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Id'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 73
        Top = 43
        Width = 72
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'sigla'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 73
        Top = 71
        Width = 424
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'descricao'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
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
      'select * from unidmedida'
      'where descricao like :pesq       '
      'order by descricao ')
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
    object Tid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object Tdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Tsigla: TWideStringField
      FieldName = 'sigla'
      Size = 10
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM unidmedida'
      'WHERE'
      
        '  ((unidmedida.id IS NULL AND :OLD_id IS NULL) OR (unidmedida.id' +
        ' = '
      ':OLD_id))')
    InsertSQL.Strings = (
      'INSERT INTO unidmedida'
      '  (unidmedida.id, unidmedida.descricao, unidmedida.sigla)'
      'VALUES'
      '  (:id, :descricao, :sigla)')
    ModifySQL.Strings = (
      'UPDATE unidmedida SET'
      '  unidmedida.id = :id,'
      '  unidmedida.descricao = :descricao,'
      '  unidmedida.sigla = :sigla'
      'WHERE'
      
        '  ((unidmedida.id IS NULL AND :OLD_id IS NULL) OR (unidmedida.id' +
        ' = '
      ':OLD_id))')
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
        Name = 'sigla'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_Id'
        ParamType = ptUnknown
      end>
  end
end
