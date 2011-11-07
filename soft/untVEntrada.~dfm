object frmGerenciaEntrada: TfrmGerenciaEntrada
  Left = 427
  Top = 180
  Width = 655
  Height = 512
  Caption = 'Visualisador de Entradas'
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 27
    Width = 37
    Height = 13
    Caption = 'Produto'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 633
    Height = 385
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object edtProduto: TEdit
    Left = 56
    Top = 24
    Width = 201
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 1
  end
  object QMovimento: TADOQuery
    Connection = dtmServer.adoBancodedados
    Parameters = <
      item
        Name = '?'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = '?'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * from tlb_movimentacao where cod_produto = :cod_prod and' +
        ' cod_manobra =:cod_man')
    Left = 496
    Top = 16
  end
  object dts1: TDataSource
    DataSet = QMovimento
    Left = 560
    Top = 16
  end
  object dts2: TDataSource
    DataSet = AMovimento
    Left = 592
    Top = 16
  end
  object AMovimento: TADOTable
    Connection = dtmServer.adoBancodedados
    CursorType = ctStatic
    TableName = 'tlb_movimentacao'
    Left = 528
    Top = 16
    object AMovimentocod_movimentacoes: TAutoIncField
      FieldName = 'cod_movimentacoes'
      ReadOnly = True
    end
    object AMovimentocod_manobra: TSmallintField
      FieldName = 'cod_manobra'
    end
    object AMovimentocod_produto: TSmallintField
      FieldName = 'cod_produto'
    end
    object AMovimentodata: TDateTimeField
      FieldName = 'data'
    end
    object AMovimentodataval: TDateTimeField
      FieldName = 'dataval'
    end
    object AMovimentohistorico: TWideStringField
      FieldName = 'historico'
      Size = 40
    end
    object AMovimentoquantidade: TSmallintField
      FieldName = 'quantidade'
    end
    object AMovimentocusto: TBCDField
      FieldName = 'custo'
      Precision = 19
    end
    object AMovimentocod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
    end
  end
end
