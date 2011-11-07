object dmfornecedor: Tdmfornecedor
  OldCreateOrder = False
  Height = 170
  Width = 346
  object dtsFornecedor: TDataSource
    AutoEdit = False
    DataSet = adoFornecedor
    Left = 37
    Top = 20
  end
  object adoFornecedor: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_fornecedor'
    Left = 37
    Top = 76
    object adoFornecedorcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoFornecedorvendedor: TWideStringField
      FieldName = 'vendedor'
      Size = 50
    end
    object adoFornecedorempresa: TWideStringField
      FieldName = 'empresa'
      Size = 50
    end
    object adoFornecedorcnpj: TWideStringField
      FieldName = 'cnpj'
      EditMask = '!99.999.999/9999-99;1;_'
      Size = 18
    end
    object adoFornecedorim: TWideStringField
      FieldName = 'im'
    end
    object adoFornecedorie: TWideStringField
      FieldName = 'ie'
      EditMask = '1999/9999999;1;_'
    end
    object adoFornecedortelefone_cel: TWideStringField
      FieldName = 'telefone_cel'
      EditMask = '!(99) 9999-9999;1;_'
      Size = 18
    end
    object adoFornecedortelefone_comercial: TWideStringField
      FieldName = 'telefone_comercial'
      EditMask = '!(99) 9999-9999;1;_'
      Size = 18
    end
    object adoFornecedoremail: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object adoFornecedornumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object adoFornecedorrua: TWideStringField
      FieldName = 'rua'
      Size = 50
    end
    object adoFornecedorbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object adoFornecedorcidade: TWideStringField
      FieldName = 'cidade'
      Size = 30
    end
    object adoFornecedorestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object adoFornecedorpais: TWideStringField
      FieldName = 'pais'
      Size = 30
    end
    object adoFornecedoranotacoes: TMemoField
      FieldName = 'anotacoes'
      BlobType = ftMemo
    end
  end
  object dtsFornecedoresQr: TDataSource
    DataSet = queryFornecedor
    Left = 132
    Top = 24
  end
  object queryFornecedor: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tlb_fornecedor')
    Left = 132
    Top = 80
    object queryFornecedorcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object queryFornecedorvendedor: TWideStringField
      FieldName = 'vendedor'
      Size = 50
    end
    object queryFornecedorempresa: TWideStringField
      FieldName = 'empresa'
      Size = 50
    end
    object queryFornecedorcnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 18
    end
    object queryFornecedorim: TWideStringField
      FieldName = 'im'
    end
    object queryFornecedorie: TWideStringField
      FieldName = 'ie'
    end
    object queryFornecedortelefone_cel: TWideStringField
      FieldName = 'telefone_cel'
      Size = 18
    end
    object queryFornecedortelefone_comercial: TWideStringField
      FieldName = 'telefone_comercial'
      Size = 18
    end
    object queryFornecedoremail: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object queryFornecedornumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object queryFornecedorrua: TWideStringField
      FieldName = 'rua'
      Size = 50
    end
    object queryFornecedorbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object queryFornecedorcidade: TWideStringField
      FieldName = 'cidade'
      Size = 30
    end
    object queryFornecedorestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object queryFornecedorpais: TWideStringField
      FieldName = 'pais'
      Size = 30
    end
    object queryFornecedoranotacoes: TMemoField
      FieldName = 'anotacoes'
      BlobType = ftMemo
    end
  end
  object dtsEstados: TDataSource
    DataSet = adoEstados
    Left = 221
    Top = 20
  end
  object adoEstados: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_estado'
    Left = 221
    Top = 76
    object adoEstadoscod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoEstadosuf: TWideStringField
      FieldName = 'uf'
    end
    object adoEstadosnome: TWideStringField
      FieldName = 'nome'
      Size = 255
    end
  end
end
