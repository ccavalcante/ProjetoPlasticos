object fBuscaCPF: TfBuscaCPF
  Left = 428
  Top = 226
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Consulta CPF (Receita Fazenda)'
  ClientHeight = 433
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 204
    Width = 639
    Height = 174
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 15
      Width = 139
      Height = 16
      Caption = 'Nome da Pessoa F'#237'sica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 465
      Top = 15
      Width = 110
      Height = 16
      Caption = 'Situa'#231#227'o Cadastral'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel1: TLabel
      Left = 10
      Top = 63
      Width = 97
      Height = 16
      Caption = 'Digito Verificador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel2: TLabel
      Left = 10
      Top = 115
      Width = 207
      Height = 16
      Caption = 'C'#243'digo de controle do comprovante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel3: TLabel
      Left = 113
      Top = 63
      Width = 143
      Height = 16
      Caption = 'Comprovante emitido '#224's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 465
      Top = 63
      Width = 94
      Height = 16
      Caption = 'Data da Incri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EditRazaoSocial: TEdit
      Left = 10
      Top = 33
      Width = 449
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditSituacao: TEdit
      Left = 465
      Top = 33
      Width = 160
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtDigitoVerificador: TEdit
      Left = 10
      Top = 85
      Width = 97
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtCodCtrlControle: TEdit
      Left = 9
      Top = 137
      Width = 615
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtEmissao: TEdit
      Left = 113
      Top = 85
      Width = 346
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtIncricao: TEdit
      Left = 465
      Top = 85
      Width = 160
      Height = 24
      TabStop = False
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 204
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 361
      Top = 11
      Width = 78
      Height = 16
      Caption = 'Digite o CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 361
      Top = 135
      Width = 96
      Height = 16
      Caption = 'Digite o Captcha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 361
      Top = 72
      Width = 170
      Height = 16
      Caption = 'Digite a Data de Nascimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EditCaptcha: TEdit
      Left = 361
      Top = 150
      Width = 137
      Height = 41
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 9
      Top = 11
      Width = 346
      Height = 127
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
      object Image1: TImage
        Left = 2
        Top = 2
        Width = 342
        Height = 104
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 344
        ExplicitHeight = 106
      end
      object LabAtualizarCaptcha: TLabel
        Left = 2
        Top = 106
        Width = 342
        Height = 19
        Cursor = crHandPoint
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Atualizar Captcha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = LabAtualizarCaptchaClick
        ExplicitLeft = 4
        ExplicitTop = 124
      end
    end
    object btnConsultar: TBitBtn
      Left = 505
      Top = 151
      Width = 120
      Height = 41
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000120B0000120B00000000000000000000FFFFFFFDFDFD
        C1C1C1A7A7A7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D4D6C8C6C89F
        9F9FAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEBECD4CBCEC9C7C89595
        95CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE7E8D4CCCFBAB9B98D8D8D
        EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCDDD3CBCEAEAEAE949494FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D0D2CDC7C99A9A9AB4B4B4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CCCEC6C0C2868686E3E3E3FFFFFF
        FBFBFBEDEDEDECECECF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7CFD1B6B3B3808081A2A2A2949496A3
        A3A49E9EA089898AABABABF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8B9B7B7B9E4E3E4FCFCFDFFFFFFFFFF
        FFFAFAFAD2D2D2838384E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF1F1F1ADADAFF3F3F3F9F9F9F8F8F8FAFAFAFAFAFAFAFAFA
        FBFBFBECECEC878788F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFAFAFB1ECEBEBF3F3F3F4F4F4F6F6F6F6F6F6F7F7F7F6F6F6F6F6F6F8
        F8F8D8D8D9AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8
        BAB9BBF0F0F0EFEFEFF4F4F4F4F4F4F4F4F4F5F5F5F4F4F4F5F5F5F4F4F4F6F6
        F6929293DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEBC8C7C8ED
        EDEDEFEFEFF3F3F3F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F7F7F7B1B1B2
        C0C0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9BFBEBEEAEAEAEDED
        EDF0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F4F4F4B5B5B7C2C2C3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F3ADACACE4E5E4E7E7E7E8E8E8
        E8E8E8E8E8E8EAEAEAEAEAEAECECECEEEEEEF2F2F2AFAFB0DBDBDCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B0B0CACACAF1F1F1EEEEEEEDEDEDEB
        EBEBECECECEEEEEEEFEFEFF2F2F2EBEAEBB1B1B2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7969695DFDFDFF2F3F3EEEEEEEDEDEDEFEF
        EFEFEFEFF2F2F2F0F0F0B2B2B4F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD6D6D69C9B9BCFCFCFE8E8E8EEEEEEF0F0F0ECECEC
        DDDDDDB3B3B4D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE9E9E9B0B0AFA4A3A3ACACABB0B0AFB0AFAFAEAEAFE5
        E5E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAFAFAE6E6E6D9D8D8DADADAE4E3E4FCFCFCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 3
      OnClick = btnConsultarClick
    end
    object EditCNPJ: TMaskEdit
      Left = 361
      Top = 31
      Width = 263
      Height = 41
      Color = clInfoBk
      EditMask = '000.000.000-00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 0
      Text = '   .   .   -  '
      OnKeyPress = EditCNPJKeyPress
    end
    object EditDtNasc: TMaskEdit
      Left = 361
      Top = 88
      Width = 259
      Height = 41
      Color = clInfoBk
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 378
    Width = 639
    Height = 55
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object XiButton1: TXiButton
      Left = 170
      Top = 11
      Width = 145
      Height = 34
      ColorFace = 9211020
      ColorGrad = 15066597
      ColorDark = 4539717
      ColorLight = 15461355
      ColorBorder = 4539717
      ColorText = clBlack
      OverColorFace = 12171705
      OverColorGrad = clWhite
      OverColorDark = clSilver
      OverColorLight = 14211288
      OverColorBorder = clGray
      OverColorText = clBlack
      DownColorFace = 15658734
      DownColorGrad = clWhite
      DownColorDark = 13816530
      DownColorLight = clWhite
      DownColorBorder = 13816530
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 15066597
      ColorScheme = csCustom
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = acAtualiza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object XiButton4: TXiButton
      Left = 321
      Top = 11
      Width = 145
      Height = 34
      ColorFace = 9211020
      ColorGrad = 15066597
      ColorDark = 4539717
      ColorLight = 15461355
      ColorBorder = 4539717
      ColorText = clBlack
      OverColorFace = 12171705
      OverColorGrad = clWhite
      OverColorDark = clSilver
      OverColorLight = 14211288
      OverColorBorder = clGray
      OverColorText = clBlack
      DownColorFace = 15658734
      DownColorGrad = clWhite
      DownColorDark = 13816530
      DownColorLight = clWhite
      DownColorBorder = 13816530
      DownColorText = clBlack
      DisabledColorFace = 15658734
      DisabledColorGrad = clWhite
      DisabledColorDark = 13816530
      DisabledColorLight = clWhite
      DisabledColorBorder = clGray
      DisabledColorText = clGray
      ColorFocusRect = 15066597
      ColorScheme = csCustom
      Ctl3D = True
      Layout = blGlyphLeft
      Spacing = 4
      TransparentGlyph = True
      Gradient = True
      HotTrack = True
      Action = acEsc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 448
    Top = 208
  end
  object ACBrConsultaCPF1: TACBrConsultaCPF
    ProxyPort = '8080'
    TimeOut = 30000
    Left = 270
    Top = 210
  end
  object ActionList1: TActionList
    Left = 328
    Top = 192
    object acEsc: TAction
      Caption = 'Esc - Fechar'
      ShortCut = 27
      OnExecute = acEscExecute
    end
    object acNovo: TAction
      Caption = 'F2 - Novo'
      ShortCut = 113
    end
    object acAtualiza: TAction
      Caption = 'F5 - Atualiza'
      ShortCut = 116
      OnExecute = acAtualizaExecute
    end
  end
end
