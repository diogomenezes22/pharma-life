object dtmcadgrupo: Tdtmcadgrupo
  OldCreateOrder = False
  Height = 132
  Width = 173
  object dtsGrupos: TDataSource
    DataSet = adoGrupos
    Left = 24
    Top = 12
  end
  object adoGrupos: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_prod_grupos'
    Left = 24
    Top = 68
    object adoGruposcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoGruposdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtsGruposQ: TDataSource
    DataSet = queryGrupos
    Left = 92
    Top = 16
  end
  object queryGrupos: TADOQuery
    Active = True
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlb_prod_grupos')
    Left = 92
    Top = 72
  end
end
