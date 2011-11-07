object dtmserver: Tdtmserver
  OldCreateOrder = False
  Height = 127
  Width = 237
  object AdoQ: TADOQuery
    Connection = ADOSERVER
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlb_movimentacao')
    Left = 36
    Top = 32
  end
  object ADOSERVER: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\tc' +
      'c\db\bancodedados.mdb;Mode=ReadWrite;Persist Security Info=False' +
      ';Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLE' +
      'DB:Database Password=pharmalife;Jet OLEDB:Engine Type=5;Jet OLED' +
      'B:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Je' +
      't OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passwo' +
      'rd="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt D' +
      'atabase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet O' +
      'LEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 140
    Top = 32
  end
end
