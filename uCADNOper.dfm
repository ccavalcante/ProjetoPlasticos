inherited fCADNOper: TfCADNOper
  Caption = 'Natureza da Opera'#231#227'o (CFOP)'
  ClientHeight = 597
  ClientWidth = 991
  OldCreateOrder = True
  ExplicitWidth = 1007
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image2: TImage
    Width = 991
    Height = 556
    ExplicitWidth = 991
    ExplicitHeight = 556
  end
  inherited Label1: TLabel
    Left = 12
    Top = 52
    ExplicitLeft = 12
    ExplicitTop = 52
  end
  inherited ToolBar1: TToolBar
    Width = 991
    ExplicitWidth = 991
  end
  inherited EdPesq: TEdit
    Left = 86
    Width = 897
    ExplicitLeft = 86
    ExplicitWidth = 897
  end
  inherited PageControl1: TPageControl
    Width = 978
    Height = 512
    ExplicitWidth = 978
    ExplicitHeight = 512
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 970
      ExplicitHeight = 484
      inherited DBGrid1: TDBGrid
        Width = 970
        Height = 484
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'naofinanceiro'
            Title.Caption = 'N'#227'o Gerar Financeiro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS_REDU'
            Visible = False
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 970
      ExplicitHeight = 484
      object Label2: TLabel
        Left = 13
        Top = 16
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
        Left = 13
        Top = 41
        Width = 29
        Height = 18
        Caption = 'CFOP'
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
        Left = 13
        Top = 66
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
      object Label5: TLabel
        Left = 13
        Top = 135
        Width = 20
        Height = 18
        Caption = 'Obs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 13
        Top = 183
        Width = 71
        Height = 18
        Caption = 'Obs Redu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 13
        Top = 90
        Width = 65
        Height = 18
        Caption = 'Dados Adic.'
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
        Left = 87
        Top = 15
        Width = 52
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'ID'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 87
        Top = 40
        Width = 98
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CFOP'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 87
        Top = 65
        Width = 394
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DESCRICAO'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBMemo1: TDBMemo
        Left = 87
        Top = 128
        Width = 394
        Height = 53
        Ctl3D = False
        DataField = 'OBS'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBMemo2: TDBMemo
        Left = 87
        Top = 184
        Width = 394
        Height = 53
        Ctl3D = False
        DataField = 'OBS_REDU'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 87
        Top = 89
        Width = 394
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'DADOSADD'
        DataSource = D
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBCheckBox1: TDBCheckBox
        Left = 206
        Top = 42
        Width = 275
        Height = 17
        Caption = 'N'#227'o Gerar Financeiro'
        DataField = 'naofinanceiro'
        DataSource = D
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited D: TDataSource
    Left = 760
  end
  inherited T: TZQuery
    BeforeOpen = TBeforeOpen
    OnNewRecord = TNewRecord
    SQL.Strings = (
      'select * from NOPER'
      'where descricao like :pesq'
      'order by descricao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pesq'
        ParamType = ptUnknown
      end>
    Left = 680
    Top = 8
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
    object TCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object TDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object TOBS: TWideMemoField
      FieldName = 'OBS'
      BlobType = ftWideMemo
    end
    object TOBS_REDU: TWideMemoField
      FieldName = 'OBS_REDU'
      BlobType = ftWideMemo
    end
    object TIDUSU: TIntegerField
      FieldName = 'IDUSU'
    end
    object TDADOSADD: TWideStringField
      FieldName = 'DADOSADD'
      Size = 255
    end
    object Tnaofinanceiro: TWideStringField
      FieldName = 'naofinanceiro'
      Size = 1
    end
  end
  inherited up: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM NOPER'
      'WHERE'
      '  NOPER.ID = :OLD_ID')
    InsertSQL.Strings = (
      'INSERT INTO NOPER'
      
        '  (ID, CFOP, DESCRICAO, OBS, OBS_REDU, IDUSU, DADOSADD, naofinan' +
        'ceiro)'
      'VALUES'
      
        '  (:ID, :CFOP, :DESCRICAO, :OBS, :OBS_REDU, :IDUSU, :DADOSADD,  ' +
        ':naofinanceiro)')
    ModifySQL.Strings = (
      'UPDATE NOPER SET'
      '  ID = :ID,'
      '  CFOP = :CFOP,'
      '  DESCRICAO = :DESCRICAO,'
      '  OBS = :OBS,'
      '  OBS_REDU = :OBS_REDU,'
      '  IDUSU = :IDUSU,'
      '  DADOSADD = :DADOSADD,'
      '  naofinanceiro =:naofinanceiro'
      'WHERE'
      '  NOPER.ID = :OLD_ID')
    Left = 720
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFOP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRICAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS_REDU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DADOSADD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'naofinanceiro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
end
