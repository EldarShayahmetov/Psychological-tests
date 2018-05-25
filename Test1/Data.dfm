object DM: TDM
  OldCreateOrder = False
  Height = 430
  Width = 508
  object ADOQTest: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Test')
    Left = 40
    Top = 16
  end
  object ADOQTesting: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Testing')
    Left = 112
    Top = 16
  end
  object ADOQQuest: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Question')
    Left = 184
    Top = 16
  end
  object ADOQAnsw: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Answer')
    Left = 256
    Top = 16
  end
  object ADOQProt: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Protocol')
    Left = 328
    Top = 16
  end
  object ADOQRes: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Result')
    Left = 408
    Top = 16
  end
  object ADOQParamRes: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM ParamResult WHERE Parametr ='#39#1054#1073#1097#1072#1103' '#1090#1088#1077#1074#1086#1078#1085#1086#1089#1090#1100' '#1074' '#1096 +
        #1082#1086#1083#1077#39)
    Left = 168
    Top = 112
  end
  object ADOQTemp: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\PDT.mdb;Persist S' +
      'ecurity Info=False'
    Parameters = <>
    Left = 256
    Top = 112
  end
  object TPausa: TTimer
    Enabled = False
    Interval = 500
    Left = 240
    Top = 200
  end
end
