object dmcadproduto: Tdmcadproduto
  OldCreateOrder = False
  Height = 264
  Width = 358
  object dtsLabs: TDataSource
    DataSet = adoLabs
    Left = 29
    Top = 20
  end
  object adoLabs: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_laboratorios'
    Left = 29
    Top = 76
    object adoLabscod_lab: TAutoIncField
      FieldName = 'cod_lab'
      ReadOnly = True
    end
    object adoLabsnome: TWideStringField
      FieldName = 'nome'
      Size = 40
    end
    object adoLabsnome_representante: TWideStringField
      FieldName = 'nome_representante'
      Size = 25
    end
    object adoLabstelefone: TWideStringField
      FieldName = 'telefone'
      EditMask = '!(99) 9999-9999;1;_'
      Size = 15
    end
    object adoLabscnpj: TWideStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;1;_'
      Size = 18
    end
    object adoLabsrua: TWideStringField
      FieldName = 'rua'
      Size = 40
    end
    object adoLabsnumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object adoLabsbairro: TWideStringField
      FieldName = 'bairro'
      Size = 30
    end
    object adoLabscidade: TWideStringField
      FieldName = 'cidade'
      Size = 30
    end
    object adoLabsestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object adoLabspais: TWideStringField
      FieldName = 'pais'
      Size = 30
    end
  end
  object queryProdutos: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tlb_produtos')
    Left = 28
    Top = 184
  end
  object dtsProdutosQr: TDataSource
    DataSet = queryProdutos
    Left = 28
    Top = 136
  end
  object adoProdutos: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_produtos'
    Left = 93
    Top = 76
    object adoProdutoscod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoProdutoscodigo_barra: TWideStringField
      FieldName = 'codigo_barra'
      Size = 13
    end
    object adoProdutosprod_nome: TWideStringField
      FieldName = 'prod_nome'
      Size = 50
    end
    object adoProdutosdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object adoProdutoscod_categorias: TSmallintField
      FieldName = 'cod_categorias'
    end
    object adoProdutoscod_grupo: TSmallintField
      FieldName = 'cod_grupo'
    end
    object adoProdutosid_fornecedor: TSmallintField
      FieldName = 'id_fornecedor'
    end
    object adoProdutosid_laboratorio: TSmallintField
      FieldName = 'id_laboratorio'
    end
    object adoProdutosICMS: TBCDField
      FieldName = 'ICMS'
      Precision = 19
    end
    object adoProdutosIPI: TBCDField
      FieldName = 'IPI'
      Precision = 19
    end
    object adoProdutosestoque_minimo: TSmallintField
      FieldName = 'estoque_minimo'
    end
    object adoProdutosestoque_maximo: TIntegerField
      FieldName = 'estoque_maximo'
    end
    object adoProdutosvalor_compra: TBCDField
      FieldName = 'valor_compra'
      Precision = 19
    end
    object adoProdutosvalor_venda: TBCDField
      FieldName = 'valor_venda'
      Precision = 19
    end
    object adoProdutosid_unidade: TSmallintField
      FieldName = 'id_unidade'
    end
    object adoProdutostarja: TWideStringField
      FieldName = 'tarja'
      Size = 10
    end
    object adoProdutosreceita: TWideStringField
      FieldName = 'receita'
      Size = 3
    end
    object adoProdutosid_univenda: TSmallintField
      FieldName = 'id_univenda'
    end
    object adoProdutoslocalizacao: TWideStringField
      FieldName = 'localizacao'
    end
  end
  object dtsProdutos: TDataSource
    AutoEdit = False
    DataSet = adoProdutos
    Left = 93
    Top = 20
  end
  object dtsTarja: TDataSource
    DataSet = adoTarja
    Left = 165
    Top = 20
  end
  object adoTarja: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_tarjas'
    Left = 165
    Top = 76
    object adoTarjacod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoTarjatarja: TWideStringField
      FieldName = 'tarja'
      Size = 255
    end
  end
  object adoCategorias: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_prod_categorias'
    Left = 261
    Top = 76
    object adoCategoriascod_categorias: TAutoIncField
      FieldName = 'cod_categorias'
      ReadOnly = True
    end
    object adoCategoriasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
  object dtsCategorias: TDataSource
    AutoEdit = False
    DataSet = adoCategorias
    Left = 261
    Top = 20
  end
  object adoGrupos: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_prod_grupos'
    Left = 104
    Top = 180
    object adoGruposcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoGruposdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtsGrupos: TDataSource
    DataSet = adoGrupos
    Left = 104
    Top = 132
  end
  object dtsUnidades: TDataSource
    DataSet = adoUnidades
    Left = 176
    Top = 136
  end
  object adoUnidades: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_unidades'
    Left = 176
    Top = 184
  end
  object adoFornecedor: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_fornecedor'
    Left = 261
    Top = 188
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
  object dtsFornecedor: TDataSource
    AutoEdit = False
    DataSet = adoFornecedor
    Left = 261
    Top = 132
  end
end
