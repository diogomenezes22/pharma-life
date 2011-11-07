inherited frmCadastroMov: TfrmCadastroMov
  Caption = 'Cadastro de Movimenta'#231#245'es [ESTOQUE]'
  ClientHeight = 434
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 577
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbPainel: TCoolBar
    inherited lblTitulo: TLabel
      Caption = 'Cadastro de Movimenta'#231#245'es'
    end
    inherited tlbBotoes: TToolBar
      inherited btnVoltar: TToolButton
        Enabled = False
        OnClick = btnVoltarClick
      end
      inherited btnAvan: TToolButton
        Enabled = False
        OnClick = btnAvanClick
      end
      inherited btnPesquisa: TToolButton
        Enabled = False
      end
    end
  end
  inherited pagCadastro: TPageControl
    ExplicitTop = 89
    object TabSheet1: TTabSheet [0]
      Caption = 'Produtos em Estoque'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 3
        Top = 255
        Width = 84
        Height = 13
        Caption = 'Total em Produto:'
      end
      object lblTotal: TLabel
        Left = 94
        Top = 254
        Width = 7
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbgEstoque: TDBGrid
        Left = 0
        Top = 0
        Width = 563
        Height = 249
        Align = alCustom
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Title.Caption = 'PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'TOTAL'
            Visible = True
          end>
      end
    end
    inherited pag1Cad: TTabSheet
      Caption = 'Cadastro de Movimenta'#231#245'es'
      ImageIndex = 1
      ExplicitLeft = 4
      ExplicitTop = 41
      ExplicitWidth = 563
      ExplicitHeight = 371
      object Label1: TLabel
        Left = 83
        Top = 63
        Width = 40
        Height = 13
        Caption = 'Produto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 69
        Top = 257
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 65
        Top = 97
        Width = 58
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 97
        Top = 128
        Width = 26
        Height = 13
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 79
        Top = 163
        Width = 47
        Height = 13
        Caption = 'Data Val.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 86
        Top = 192
        Width = 27
        Height = 13
        Caption = 'Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 75
        Top = 223
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 9
        Top = 33
        Width = 114
        Height = 16
        Caption = 'Cod Movimentac'#227'o:'
      end
      object Label4: TLabel
        Left = 212
        Top = 31
        Width = 69
        Height = 16
        Caption = 'Cod Barras:'
      end
      object dbeProdutoDesc: TDBEdit
        Left = 212
        Top = 60
        Width = 241
        Height = 24
        DataField = 'PROD_NOME'
        DataSource = dtsMovimentacao
        TabOrder = 0
      end
      object dbeProdutoCod: TDBEdit
        Left = 129
        Top = 60
        Width = 77
        Height = 24
        DataField = 'cod_produto'
        DataSource = dtsMovimentacao
        TabOrder = 1
      end
      object dbeQntd: TDBEdit
        Left = 129
        Top = 94
        Width = 121
        Height = 24
        DataField = 'quantidade'
        DataSource = dtsMovimentacao
        TabOrder = 2
      end
      object dbeData: TDBEdit
        Left = 129
        Top = 125
        Width = 121
        Height = 24
        DataField = 'data'
        DataSource = dtsMovimentacao
        TabOrder = 3
      end
      object dbeDatval: TDBEdit
        Left = 129
        Top = 157
        Width = 121
        Height = 24
        DataField = 'dataval'
        DataSource = dtsMovimentacao
        TabOrder = 4
      end
      object dbeCust: TDBEdit
        Left = 129
        Top = 189
        Width = 121
        Height = 24
        DataField = 'custo'
        DataSource = dtsMovimentacao
        TabOrder = 5
      end
      object dbeDesc: TDBEdit
        Left = 129
        Top = 221
        Width = 324
        Height = 24
        DataField = 'historico'
        DataSource = dtsMovimentacao
        TabOrder = 6
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 256
        Top = 87
        Width = 197
        Height = 121
        Caption = 'Tipo de Movimenta'#231#227'o'
        Columns = 2
        DataField = 'cod_manobra'
        DataSource = dtsMovimentacao
        Items.Strings = (
          'Entrada'
          'Saida')
        ParentBackground = True
        TabOrder = 7
        Values.Strings = (
          '1'
          '2')
      end
      object dbeCodMovimentacao: TDBEdit
        Left = 129
        Top = 28
        Width = 77
        Height = 24
        DataField = 'cod_movimentacoes'
        DataSource = dtsMovimentacao
        TabOrder = 8
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 129
        Top = 253
        Width = 324
        Height = 24
        DataField = 'cod_fornecedor'
        DataSource = dtsMovimentacao
        KeyField = 'COD'
        ListField = 'EMPRESA'
        ListSource = dtsFornecedor
        TabOrder = 9
      end
      object btnPesquisaRaP: TBitBtn
        Left = 456
        Top = 61
        Width = 21
        Height = 23
        DoubleBuffered = True
        Enabled = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF8FF73706CFF828282FFD0D0D0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF9FF4469E7FF94A5C0FFAEA9A3FF7E7E7FFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F8FF4667E2FF2D89FFFF5FD6FFFFB8C3CBFF716F6CFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FF4364
          E2FF328EFFFF70DBFFFF42A4FFFF285AE7FFF7F1E4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE3E4E5FFC7C8CAFFD9D9DAFFFFFFFFFF6D6B79FF237C
          E7FF71E0FFFF41A0FFFF2C5AEAFFFFFFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEDEEEFFF6F747BFF7C7972FF8D8274FF707274FF505358FFA8A5A2FFCCD4
          CCFF2A8AF0FF315CE9FFFFFFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
          F3FF716F6EFFDDBB86FFF2C089FFF3BD8FFFF0C58EFFCFB690FF797E86FFBAB7
          B2FF60637FFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8C
          90FFE3C28CFFF5C79CFF479D3FFF00A420FF89924EFFFCD3A8FFCCB490FF5356
          5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8FBFFA193
          7DFFD1C48FFF869955FF55A64CFF33E371FF557826FF8A9352FFF2CA95FF696B
          6DFFE8E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E6E9FFBEA9
          90FF8EAF66FF41F484FF40E879FF48E17AFF34E372FF00A21EFFF5C39CFF8B82
          75FFD5D6D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F4FFB2A4
          8FFFB8D09BFF6EC872FF65CA6FFF40E879FF56A64DFF469E40FFF5C998FF7876
          72FFEFF0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B99
          95FFF8EDD5FFFFFDFFFF6FCB76FF41F382FF889C5AFFF6CDA7FFDBBF92FF787C
          83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEE
          F0FF9D9B8EFFFAF2DEFFB8D3A4FF8FB36DFFD2CB99FFE3C898FF717070FFF2F3
          F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEBECEEFF95948FFFB5AA98FFC1B19CFFA29785FF85878AFFF0F1F2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEAEBEDFFDEDFE2FFEFF0F2FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 10
        OnClick = btnPesquisaRaPClick
      end
      object DBEdit1: TDBEdit
        Left = 296
        Top = 28
        Width = 157
        Height = 24
        TabOrder = 11
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 415
    ExplicitTop = 415
  end
  object dtsMovimentacao: TDataSource
    DataSet = dmMovimentacao.cdsMovimentacao
    Left = 416
    Top = 96
  end
  object dtsFornecedor: TDataSource
    DataSet = dmMovimentacao.cdsFornecedor
    Left = 496
    Top = 96
  end
end
