object dtmServer: TdtmServer
  OldCreateOrder = True
  Height = 419
  Width = 900
  object dtsClientes: TDataSource
    DataSet = adoClientes
    Left = 37
    Top = 88
  end
  object dtsFornecedor: TDataSource
    DataSet = adoFornecedor
    Left = 101
    Top = 80
  end
  object dtsLabs: TDataSource
    DataSet = adoLabs
    Left = 173
    Top = 80
  end
  object dtsProdutos: TDataSource
    DataSet = adoProdutos
    Left = 237
    Top = 80
  end
  object queryClientes: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlb_clientes')
    Left = 24
    Top = 272
  end
  object dtsClientesQr: TDataSource
    DataSet = queryClientes
    Left = 24
    Top = 224
  end
  object queryProdutos: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tlb_produtos')
    Left = 104
    Top = 272
  end
  object dtsProdutosQr: TDataSource
    DataSet = queryProdutos
    Left = 104
    Top = 224
  end
  object dtsEstados: TDataSource
    DataSet = adoEstados
    Left = 301
    Top = 80
  end
  object dts_statuscliente: TDataSource
    DataSet = adostatuscliente
    Left = 373
    Top = 80
  end
  object dtsTipoClientes: TDataSource
    DataSet = adoTipoCliente
    Left = 461
    Top = 80
  end
  object dtsTarja: TDataSource
    DataSet = adoTarja
    Left = 533
    Top = 80
  end
  object dtsFornecedoresQr: TDataSource
    DataSet = queryFornecedor
    Left = 192
    Top = 224
  end
  object queryFornecedor: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tlb_fornecedor')
    Left = 192
    Top = 272
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
  object dtsLabsQr: TDataSource
    DataSet = queryLabs
    Left = 280
    Top = 224
  end
  object queryLabs: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tlb_laboratorios')
    Left = 280
    Top = 272
  end
  object dtsCategorias: TDataSource
    DataSet = adoCategorias
    Left = 589
    Top = 80
  end
  object dtsCategoriasQ: TDataSource
    DataSet = queryCategorias
    Left = 360
    Top = 232
  end
  object queryCategorias: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tlb_prod_categorias')
    Left = 360
    Top = 280
    object queryCategoriascod_categorias: TAutoIncField
      FieldName = 'cod_categorias'
      ReadOnly = True
    end
    object queryCategoriasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
  object dtsGrupos: TDataSource
    DataSet = adoGrupos
    Left = 656
    Top = 80
  end
  object stsGruposQ: TDataSource
    DataSet = queryGrupos
    Left = 440
    Top = 232
  end
  object queryGrupos: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlb_prod_grupos')
    Left = 440
    Top = 288
  end
  object dtsUnidades: TDataSource
    DataSet = adoUnidades
    Left = 528
    Top = 232
  end
  object dtsMovimentacao: TDataSource
    DataSet = adoMovimentacao
    Left = 736
    Top = 80
  end
  object srvConexao: TSQLConnection
    ConnectionName = 'PHARMA'
    DriverName = 'FIREBIRD'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=FIREBIRD'
      'blobsize=-1'
      'commitretain=False'
      'Database=I:\tcc\db\database.gdb'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    VendorLib = 'fbclient.DLL'
    Left = 64
    Top = 16
  end
  object adoClientes: TSQLTable
    IndexName = 'IDX_TLB_CLIENTES1'
    MaxBlobSize = 1
    SQLConnection = srvConexao
    TableName = 'TLB_CLIENTES'
    Left = 24
    Top = 136
  end
  object adoFornecedor: TSQLTable
    IndexName = 'INTEG_7'
    MaxBlobSize = 1
    SQLConnection = srvConexao
    TableName = 'TLB_FORNECEDOR'
    Left = 96
    Top = 144
  end
  object adoLabs: TSQLTable
    IndexName = 'INTEG_9'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_LABORATORIOS'
    Left = 176
    Top = 144
  end
  object adoProdutos: TSQLTable
    IndexName = 'INTEG_17'
    MaxBlobSize = 1
    SQLConnection = srvConexao
    TableName = 'TLB_PRODUTOS'
    Left = 232
    Top = 144
  end
  object adoEstados: TSQLTable
    IndexName = 'INTEG_3'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_ESTADO'
    Left = 304
    Top = 144
  end
  object adoUnidades: TSQLTable
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_UNIDADES'
    Left = 528
    Top = 280
  end
  object adostatuscliente: TSQLTable
    IndexName = 'ID_STATUS'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_STATUSCLIENTE'
    Left = 368
    Top = 144
  end
  object adoTipoCliente: TSQLTable
    IndexName = 'INTEG_23'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_TIPODECLIENTE'
    Left = 456
    Top = 144
  end
  object adoTarja: TSQLTable
    IndexName = 'INTEG_21'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_TARJAS'
    Left = 528
    Top = 144
  end
  object adoCategorias: TSQLTable
    IndexName = 'INTEG_13'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_PROD_CATEGORIAS'
    Left = 592
    Top = 144
  end
  object adoGrupos: TSQLTable
    IndexName = 'INTEG_15'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_PROD_GRUPOS'
    Left = 664
    Top = 144
  end
  object adoMovimentacao: TSQLTable
    IndexName = 'INTEG_11'
    MaxBlobSize = -1
    SQLConnection = srvConexao
    TableName = 'TLB_MOVIMENTACAO'
    Left = 744
    Top = 144
  end
end
