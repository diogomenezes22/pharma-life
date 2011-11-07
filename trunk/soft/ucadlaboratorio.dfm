object dmcadlab: Tdmcadlab
  OldCreateOrder = False
  Height = 139
  Width = 259
  object dtsLabs: TDataSource
    DataSet = adoLabs
    Left = 21
    Top = 12
  end
  object adoLabs: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_laboratorios'
    Left = 21
    Top = 68
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
  object dtsEstados: TDataSource
    DataSet = adoEstados
    Left = 85
    Top = 12
  end
  object adoEstados: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_estado'
    Left = 85
    Top = 68
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
  object dtsLabsQr: TDataSource
    DataSet = queryLabs
    Left = 156
    Top = 16
  end
  object queryLabs: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select cod_lab, nome, telefone from tlb_laboratorios')
    Left = 156
    Top = 72
  end
end
