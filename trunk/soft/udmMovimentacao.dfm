object dmMovimentacao: TdmMovimentacao
  OldCreateOrder = False
  Height = 246
  Width = 324
  object qryMovimentacao: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    EnableBCD = False
    ParamCheck = False
    Parameters = <
      item
        Name = 'COD_MOVIMENTACOES'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = 0
      end>
    SQL.Strings = (
      'SELECT'
      ' MOV.COD_MOVIMENTACOES,'
      ' MOV.COD_MANOBRA,'
      ' MOV.COD_PRODUTO,'
      ' MOV.DATA,'
      ' MOV.DATAVAL,'
      ' MOV.HISTORICO,'
      ' MOV.QUANTIDADE,'
      ' MOV.CUSTO,'
      ' MOV.COD_FORNECEDOR,'
      ' PROD.PROD_NOME'
      'FROM'
      ' TLB_MOVIMENTACAO MOV'
      'INNER JOIN  TLB_PRODUTOS PROD ON PROD.COD = MOV.COD_PRODUTO'
      'WHERE'
      ' MOV.COD_MOVIMENTACOES = :COD_MOVIMENTACOES')
    Left = 40
    Top = 136
    object qryMovimentacaoCOD_MOVIMENTACOES: TAutoIncField
      FieldName = 'COD_MOVIMENTACOES'
      ReadOnly = True
    end
    object qryMovimentacaoCOD_MANOBRA: TSmallintField
      FieldName = 'COD_MANOBRA'
    end
    object qryMovimentacaoCOD_PRODUTO: TSmallintField
      FieldName = 'COD_PRODUTO'
    end
    object qryMovimentacaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qryMovimentacaoDATAVAL: TDateTimeField
      FieldName = 'DATAVAL'
    end
    object qryMovimentacaoHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 40
    end
    object qryMovimentacaoQUANTIDADE: TSmallintField
      FieldName = 'QUANTIDADE'
    end
    object qryMovimentacaoCUSTO: TBCDField
      FieldName = 'CUSTO'
      Precision = 19
    end
    object qryMovimentacaoCOD_FORNECEDOR: TSmallintField
      FieldName = 'COD_FORNECEDOR'
    end
    object qryMovimentacaoPROD_NOME: TWideStringField
      FieldName = 'PROD_NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsMovimentacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'stpMovimentacao'
    OnReconcileError = cdsMovimentacaoReconcileError
    Left = 40
    Top = 24
    object cdsMovimentacaoCOD_MOVIMENTACOES: TAutoIncField
      FieldName = 'COD_MOVIMENTACOES'
      ReadOnly = True
    end
    object cdsMovimentacaoCOD_MANOBRA: TSmallintField
      FieldName = 'COD_MANOBRA'
    end
    object cdsMovimentacaoCOD_PRODUTO: TSmallintField
      FieldName = 'COD_PRODUTO'
      OnValidate = cdsMovimentacaoCOD_PRODUTOValidate
    end
    object cdsMovimentacaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object cdsMovimentacaoDATAVAL: TDateTimeField
      FieldName = 'DATAVAL'
    end
    object cdsMovimentacaoHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 40
    end
    object cdsMovimentacaoQUANTIDADE: TSmallintField
      FieldName = 'QUANTIDADE'
    end
    object cdsMovimentacaoCUSTO: TBCDField
      FieldName = 'CUSTO'
      Precision = 19
    end
    object cdsMovimentacaoCOD_FORNECEDOR: TSmallintField
      FieldName = 'COD_FORNECEDOR'
    end
    object cdsMovimentacaoPROD_NOME: TWideStringField
      FieldName = 'PROD_NOME'
      ProviderFlags = []
      Size = 50
    end
  end
  object stpMovimentacao: TDataSetProvider
    DataSet = qryMovimentacao
    Left = 40
    Top = 80
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 152
    Top = 24
  end
  object dspFornecedor: TDataSetProvider
    DataSet = qryFornecedores
    Left = 152
    Top = 80
  end
  object qryFornecedores: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      ' COD,'
      ' EMPRESA'
      'FROM'
      ' TLB_FORNECEDOR'
      ' ')
    Left = 152
    Top = 136
  end
  object qryProduto: TADOQuery
    Connection = dtmServer.adoBancodedados
    Parameters = <
      item
        Name = 'COD'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '    PROD_NOME'
      'FROM'
      ' TLB_PRODUTOS'
      'WHERE'
      ' COD = :COD')
    Left = 40
    Top = 192
  end
  object qryEstoque: TADOQuery
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    EnableBCD = False
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'Select '
      '  cod_movimentacao,'
      '  cod_produto, ')
    Left = 248
    Top = 136
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'stpMovimentacao'
    OnReconcileError = cdsMovimentacaoReconcileError
    Left = 248
    Top = 24
  end
  object dstEstoque: TDataSetProvider
    DataSet = qryEstoque
    Left = 248
    Top = 80
  end
end
