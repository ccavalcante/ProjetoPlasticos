object fImpMP: TfImpMP
  Left = 0
  Top = 0
  Caption = 'fImpMP'
  ClientHeight = 549
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rpLista: TRLReport
    Left = 40
    Top = 26
    Width = 794
    Height = 1123
    DataSource = fCadMateriaPrima.D
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand4: TRLBand
      Left = 38
      Top = 98
      Width = 718
      Height = 32
      BandType = btSummary
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 8
        Width = 166
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itDetailCount
        ParentFont = False
        Text = 'N'#186' de Itens:  '
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 79
      Width = 718
      Height = 19
      object RLDBText10: TRLDBText
        Left = 0
        Top = 1
        Width = 114
        Height = 16
        AutoSize = False
        DataField = 'Id'
        DataSource = fCadMateriaPrima.D
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 120
        Top = 1
        Width = 473
        Height = 16
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = fCadMateriaPrima.D
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 635
        Top = 1
        Width = 68
        Height = 16
        Alignment = taRightJustify
        DataField = 'qtdestoque'
        DataSource = fCadMateriaPrima.D
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 41
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel3: TRLLabel
        Left = 0
        Top = 24
        Width = 49
        Height = 16
        Align = faBottomOnly
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lTitulo: TRLLabel
        Left = 269
        Top = 0
        Width = 180
        Height = 19
        Align = faCenterTop
        Caption = 'Lista de Mat'#233'rias Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 649
        Top = 24
        Width = 54
        Height = 16
        Align = faBottomOnly
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 120
        Top = 24
        Width = 66
        Height = 16
        Align = faBottomOnly
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 130
      Width = 718
      Height = 25
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo3: TRLSystemInfo
        Left = 613
        Top = 4
        Width = 99
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 4
        Width = 118
        Height = 14
        Caption = 'thrsoftwares.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
