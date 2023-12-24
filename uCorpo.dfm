object fCorpo: TfCorpo
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Corpo do Email'
  ClientHeight = 479
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pCorpo: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 479
    Align = alClient
    Color = 16744448
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -147
    ExplicitTop = -9
    ExplicitWidth = 699
    ExplicitHeight = 441
    object Label6: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 554
      Height = 18
      Align = alTop
      Alignment = taCenter
      Caption = 'Informe corpo do email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 143
    end
    object mCorpo: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 28
      Width = 554
      Height = 408
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 544
      ExplicitHeight = 397
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 442
      Width = 554
      Height = 33
      Action = acCOnf
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 433
      ExplicitWidth = 544
    end
  end
  object ActionList1: TActionList
    Left = 272
    Top = 240
    object esc: TAction
      Caption = 'esc'
      ShortCut = 27
      OnExecute = escExecute
    end
    object acCOnf: TAction
      Caption = 'F10 - Confirmar'
      ShortCut = 121
      OnExecute = acCOnfExecute
    end
  end
end
