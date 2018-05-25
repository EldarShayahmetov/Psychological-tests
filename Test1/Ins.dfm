object Instruction: TInstruction
  Left = 0
  Top = 0
  Caption = 'Instruction'
  ClientHeight = 470
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PTop: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 57
    Align = alTop
    Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 577
    Height = 362
    Align = alClient
    TabOrder = 1
    object REIns: TRichEdit
      Left = 1
      Top = 1
      Width = 575
      Height = 360
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        
          #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103': "'#1057#1077#1081#1095#1072#1089' '#1074#1099' '#1086#1079#1085#1072#1082#1086#1084#1080#1090#1077#1089#1100' '#1089' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103#1084#1080', '#1082#1072#1089#1072#1102#1097#1080#1084#1080#1089#1103 +
          ' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1074#1072#1096#1077#1075#1086' '#1079#1076#1086#1088#1086#1074#1100#1103' '
        
          #1080' '#1074#1072#1096#1077#1075#1086' '#1093#1072#1088#1072#1082#1090#1077#1088#1072'. '#1055#1088#1086#1095#1080#1090#1072#1081#1090#1077' '#1082#1072#1078#1076#1086#1077' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1080' '#1088#1077#1096#1080#1090#1077', '#1074#1077#1088#1085 +
          #1086' '#1086#1085#1086' '#1080#1083#1080' '#1085#1077#1074#1077#1088#1085#1086' '#1087#1086' '#1086#1090#1085#1086#1096#1077#1085#1080#1102' '#1082' '#1074#1072#1084'. '
        
          #1053#1077' '#1090#1088#1072#1090#1100#1090#1077' '#1074#1088#1077#1084#1077#1085#1080' '#1085#1072' '#1088#1072#1079#1076#1091#1084#1099#1074#1072#1085#1080#1077'. '#1053#1072#1080#1073#1086#1083#1077#1077' '#1077#1089#1090#1077#1089#1090#1074#1077#1085#1085#1086' '#1090#1086' '#1088#1077#1096#1077 +
          #1085#1080#1077', '#1082#1086#1090#1086#1088#1086#1077' '#1087#1077#1088#1074#1099#1084' '#1087#1088#1080#1093#1086#1076#1080#1090' '#1074' '
        #1075#1086#1083#1086#1074#1091'."')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Zoom = 100
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 419
    Width = 577
    Height = 51
    Align = alBottom
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    object BBExit: TBitBtn
      Left = 248
      Top = 16
      Width = 75
      Height = 25
      Caption = '&0 '#1042#1099#1093#1086#1076
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end
