object dmCadCliente: TdmCadCliente
  OldCreateOrder = False
  Height = 160
  Width = 475
  object dtsClientes: TDataSource
    AutoEdit = False
    DataSet = adoClientes
    Left = 45
    Top = 16
  end
  object adoClientes: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    OnNewRecord = adoClientesNewRecord
    TableName = 'tlb_clientes'
    Left = 45
    Top = 72
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
  object dtsClientesQr: TDataSource
    DataSet = queryClientes
    Left = 132
    Top = 16
  end
  object queryClientes: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlb_clientes')
    Left = 132
    Top = 76
  end
  object dtsEstados: TDataSource
    DataSet = adoEstados
    Left = 213
    Top = 20
  end
  object adoEstados: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_estado'
    Left = 213
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
  object dts_statuscliente: TDataSource
    DataSet = adostatuscliente
    Left = 293
    Top = 20
  end
  object adostatuscliente: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_statuscliente'
    Left = 293
    Top = 76
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
    Left = 381
    Top = 20
  end
  object adoTipoCliente: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_tipodecliente'
    Left = 381
    Top = 76
    object adoTipoClienteid_campo: TAutoIncField
      FieldName = 'id_campo'
      ReadOnly = True
    end
    object adoTipoClientetipo_cliente: TWideStringField
      FieldName = 'tipo_cliente'
      Size = 30
    end
  end
end
