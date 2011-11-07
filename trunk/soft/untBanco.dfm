object dtmServer: TdtmServer
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 171
  Width = 390
  object adoBancodedados: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\tcc\db\bancodeda' +
      'dos.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:Dat' +
      'abase Password=pharmalife;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 16
  end
  object adoQ: TADOQuery
    Connection = adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlb_usuarios')
    Left = 28
    Top = 68
  end
  object dtQ: TDataSource
    DataSet = adoQ
    Left = 28
    Top = 12
  end
  object imglBotoes: TImageList
    Height = 32
    Width = 32
    Left = 100
    Top = 72
  end
end
