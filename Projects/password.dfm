object FPassword: TFPassword
  Left = 0
  Top = 0
  Caption = #1050#1086#1076' '#1076#1086#1089#1090#1091#1087#1072
  ClientHeight = 412
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object LPassword: TLabel
    Left = 144
    Top = 18
    Width = 110
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1076' '#1076#1086#1089#1090#1091#1087#1072
  end
  object LNew1: TLabel
    Left = 144
    Top = 56
    Width = 117
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
    Visible = False
  end
  object LNew2: TLabel
    Left = 144
    Top = 93
    Width = 129
    Height = 13
    Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
    Visible = False
  end
  object MEPassword: TMaskEdit
    Left = 136
    Top = 37
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    Text = ''
  end
  object MEPassword1: TMaskEdit
    Left = 136
    Top = 75
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = ''
    Visible = False
  end
  object MEPassword2: TMaskEdit
    Left = 136
    Top = 112
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    Text = ''
    Visible = False
  end
  object BBPassword: TBitBtn
    Left = 141
    Top = 139
    Width = 132
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BBPasswordClick
  end
  object BBNewPassword: TBitBtn
    Left = 141
    Top = 139
    Width = 132
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF33339993707399933333773337F3777FF3399933000339
      9933377333777F3377F3399333707333993337733337333337FF993333333333
      399377F33333F333377F993333303333399377F33337FF333373993333707333
      333377F333777F333333993333101333333377F333777F3FFFFF993333000399
      999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
      99933773FF777F3F777F339993707399999333773F373F77777F333999999999
      3393333777333777337333333999993333333333377777333333}
    NumGlyphs = 2
    TabOrder = 4
    Visible = False
    OnClick = BBNewPasswordClick
  end
  object BBCancelPassword: TBitBtn
    Left = 141
    Top = 170
    Width = 132
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object BBChargePassword: TBitBtn
    Left = 141
    Top = 201
    Width = 132
    Height = 25
    Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      003337777777777777F330FFFFFFFFFFF03337F33F333F3337F330FF0FFF0FFF
      F03337F37F337F3337F330FF0FFF0FFFF03337F37FFF7FFF37F330F00000000F
      F03337F77777777337F330FFF0FFF0FFF03337F337F337F337F330FFF0FFF0FF
      F03337F337FFF7FFF7F330FF00000000F03337F37777777737F330FFFF0FFF0F
      F03337F3337F337F37F330FFFF0FFF0FF03337F33373337337F330FFFFFFFFFF
      F03337F33333333FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
      F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
      333337FFFFFFFF77333330000000000333333777777777733333}
    NumGlyphs = 2
    TabOrder = 6
    OnClick = BBChargePasswordClick
  end
end
