object dtmServer: TdtmServer
  OldCreateOrder = True
  Height = 564
  Width = 900
  object adoBancodedados: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=..\db' +
      '\bancodedados1.mdb;Mode=ReadWrite;Persist Security Info=False;Je' +
      't OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:' +
      'Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database ' +
      'Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glo' +
      'bal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet O' +
      'LEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fal' +
      'se;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compac' +
      't Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 192
    Top = 8
  end
  object dtsClientes: TDataSource
    AutoEdit = False
    DataSet = adoClientes
    Left = 29
    Top = 80
  end
  object dtsFornecedor: TDataSource
    AutoEdit = False
    DataSet = adoFornecedor
    Left = 101
    Top = 80
  end
  object adoClientes: TADOTable
    Connection = adoBancodedados
    CursorType = ctStatic
    OnNewRecord = adoClientesNewRecord
    TableName = 'tlb_clientes'
    Left = 29
    Top = 136
    object adoClientescod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoClientesnome: TWideStringField
      FieldName = 'nome'
      Size = 40
    end
    object adoClientesnacionalidade: TWideStringField
      FieldName = 'nacionalidade'
      Size = 50
    end
    object adoClientesdata_nasc: TDateTimeField
      FieldName = 'data_nasc'
      EditMask = '!99/99/0000;1;_'
    end
    object adoClientessexo: TWideStringField
      FieldName = 'sexo'
      Size = 3
    end
    object adoClientesrg: TWideStringField
      FieldName = 'rg'
      EditMask = '!99.999.999-A;1;_'
      Size = 40
    end
    object adoClientescpf: TWideStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;1;_'
      Size = 30
    end
    object adoClientesemail: TWideStringField
      FieldName = 'email'
      Size = 40
    end
    object adoClientestelefone_residencial: TWideStringField
      FieldName = 'telefone_residencial'
      EditMask = '!(99) 9999-9999;1;_'
      Size = 40
    end
    object adoClientestelefone_celular: TWideStringField
      FieldName = 'telefone_celular'
      EditMask = '!(99) 9999-9999;1;_'
      Size = 40
    end
    object adoClientesstatus_cliente: TWideStringField
      FieldName = 'status_cliente'
    end
    object adoClientestipo_cliente: TIntegerField
      FieldName = 'tipo_cliente'
    end
    object adoClientesnumero: TWideStringField
      FieldName = 'numero'
      Size = 50
    end
    object adoClientesbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object adoClientesrua: TWideStringField
      FieldName = 'rua'
      Size = 50
    end
    object adoClientescidade: TWideStringField
      FieldName = 'cidade'
      Size = 15
    end
    object adoClientesestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object adoClientescep: TWideStringField
      FieldName = 'cep'
      Size = 18
    end
    object adoClientespais: TWideStringField
      FieldName = 'pais'
      Size = 12
    end
    object adoClientesdata_reg: TDateTimeField
      FieldName = 'data_reg'
      EditMask = '!99/99/0000;1;_'
    end
    object adoClientesanotacoes: TMemoField
      FieldName = 'anotacoes'
      BlobType = ftMemo
    end
  end
  object adoFornecedor: TADOTable
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_fornecedor'
    Left = 101
    Top = 136
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
  object dtsLabs: TDataSource
    DataSet = adoLabs
    Left = 173
    Top = 80
  end
  object adoLabs: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_laboratorios'
    Left = 173
    Top = 136
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
      EditMask = '!99.999.999/9999-99;1;_'
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
  object dtsProdutos: TDataSource
    AutoEdit = False
    DataSet = adoProdutos
    Left = 237
    Top = 80
  end
  object adoProdutos: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_produtos'
    Left = 237
    Top = 136
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
  object queryClientes: TADOQuery
    Active = True
    Connection = adoBancodedados
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
    Active = True
    Connection = adoBancodedados
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
  object adoEstados: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_estado'
    Left = 301
    Top = 136
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
  object dts_statuscliente: TDataSource
    DataSet = adostatuscliente
    Left = 373
    Top = 80
  end
  object adostatuscliente: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_statuscliente'
    Left = 373
    Top = 136
    object adostatusclienteid_status: TAutoIncField
      FieldName = 'id_status'
      ReadOnly = True
    end
    object adostatusclientetipo_status: TWideStringField
      FieldName = 'tipo_status'
      Size = 50
    end
  end
  object dtsTipoClientes: TDataSource
    DataSet = adoTipoCliente
    Left = 461
    Top = 80
  end
  object adoTipoCliente: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_tipodecliente'
    Left = 461
    Top = 136
    object adoTipoClienteid_campo: TAutoIncField
      FieldName = 'id_campo'
      ReadOnly = True
    end
    object adoTipoClientetipo_cliente: TWideStringField
      FieldName = 'tipo_cliente'
      Size = 30
    end
  end
  object dtsTarja: TDataSource
    DataSet = adoTarja
    Left = 533
    Top = 80
  end
  object adoTarja: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_tarjas'
    Left = 533
    Top = 136
    object adoTarjacod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoTarjatarja: TWideStringField
      FieldName = 'tarja'
      Size = 255
    end
  end
  object dtsFornecedoresQr: TDataSource
    DataSet = queryFornecedor
    Left = 192
    Top = 224
  end
  object queryFornecedor: TADOQuery
    Active = True
    Connection = adoBancodedados
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
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tlb_laboratorios')
    Left = 280
    Top = 272
  end
  object dtsCategorias: TDataSource
    AutoEdit = False
    DataSet = adoCategorias
    Left = 589
    Top = 80
  end
  object adoCategorias: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_prod_categorias'
    Left = 589
    Top = 136
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
    Left = 360
    Top = 232
  end
  object queryCategorias: TADOQuery
    Active = True
    Connection = adoBancodedados
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
  object adoGrupos: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_prod_grupos'
    Left = 656
    Top = 136
    object adoGruposcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object adoGruposdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object stsGruposQ: TDataSource
    DataSet = queryGrupos
    Left = 440
    Top = 232
  end
  object queryGrupos: TADOQuery
    Active = True
    Connection = adoBancodedados
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
  object adoUnidades: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_unidades'
    Left = 528
    Top = 288
  end
  object dtsMovimentacao: TDataSource
    DataSet = adoMovimentacao
    Left = 744
    Top = 80
  end
  object adoMovimentacao: TADOTable
    Active = True
    Connection = adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_movimentacao'
    Left = 744
    Top = 136
    object adoMovimentacaocod_movimentacoes: TAutoIncField
      FieldName = 'cod_movimentacoes'
      ReadOnly = True
    end
    object adoMovimentacaocod_manobra: TSmallintField
      FieldName = 'cod_manobra'
    end
    object adoMovimentacaocod_produto: TSmallintField
      FieldName = 'cod_produto'
    end
    object adoMovimentacaodata: TDateTimeField
      FieldName = 'data'
    end
    object adoMovimentacaohistorico: TWideStringField
      FieldName = 'historico'
      Size = 40
    end
    object adoMovimentacaoquantidade: TSmallintField
      FieldName = 'quantidade'
    end
    object adoMovimentacaocusto: TBCDField
      FieldName = 'custo'
      Precision = 19
    end
    object adoMovimentacaocod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
    end
  end
end
