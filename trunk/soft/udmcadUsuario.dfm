object dmCadUsuario: TdmCadUsuario
  OldCreateOrder = False
  Height = 150
  Width = 106
  object adoUsuarios: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_usuarios'
    Left = 40
    Top = 32
    object adoUsuarioscod_usuario: TAutoIncField
      FieldName = 'cod_usuario'
      ReadOnly = True
    end
    object adoUsuariosnome: TWideStringField
      FieldName = 'nome'
    end
    object adoUsuariosusuario: TWideStringField
      FieldName = 'usuario'
      Size = 10
    end
    object adoUsuariossenha: TWideStringField
      FieldName = 'senha'
      Size = 10
    end
    object adoUsuariosnivel: TSmallintField
      FieldName = 'nivel'
    end
  end
  object dtsUsuarios: TDataSource
    DataSet = adoUsuarios
    Left = 40
    Top = 88
  end
end
