object FResult: TFResult
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FResult'
  ClientHeight = 581
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 49
    Align = alTop
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 750
    Height = 439
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    object Bevel1: TBevel
      Left = 184
      Top = 216
      Width = 369
      Height = 217
    end
    object L1: TLabel
      Left = 360
      Top = 337
      Width = 17
      Height = 19
      Caption = 'L1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 264
      Top = 377
      Width = 347
      Height = 19
      Caption = #1042#1099' '#1095#1077#1083#1086#1074#1077#1082' '#1076#1086#1089#1090#1072#1090#1086#1095#1085#1086' '#1078#1080#1074#1086#1081' '#1080' '#1086#1073#1097#1080#1090#1077#1083#1100#1085#1099#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 488
    Width = 750
    Height = 93
    Align = alBottom
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 328
      Top = 22
      Width = 75
      Height = 25
      Caption = '&0 '#1042#1099#1093#1086#1076
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end
