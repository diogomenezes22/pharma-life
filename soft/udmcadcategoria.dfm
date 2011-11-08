object dmcadcategoria: Tdmcadcategoria
  OldCreateOrder = False
  Height = 136
  Width = 396
  object dtsCategorias: TDataSource
    AutoEdit = False
    DataSet = adoCategorias
    Left = 37
    Top = 4
  end
  object adoCategorias: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_prod_categorias'
    Left = 37
    Top = 60
    object adoCategoriascod_categorias: TAutoIncField
      FieldName = 'cod_categorias'
      ReadOnly = True
    end
    object adoCategoriasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
  object dtsCategoriasQ: TDataSource
    DataSet = queryCategorias
    Left = 132
    Top = 8
  end
  object queryCategorias: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tlb_prod_categorias')
    Left = 132
    Top = 64
    object queryCategoriascod_categorias: TAutoIncField
      FieldName = 'cod_categorias'
      ReadOnly = True
    end
    object queryCategoriasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
end
