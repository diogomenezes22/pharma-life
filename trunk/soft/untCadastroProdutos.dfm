inherited frmCadastroProdutos: TfrmCadastroProdutos
  Left = 551
  Top = 145
  Caption = 'Cadastro de Produtos'
  ClientHeight = 458
  ClientWidth = 597
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitWidth = 603
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbPainel: TCoolBar
    Width = 597
    Bands = <
      item
        Control = tlbBotoes
        ImageIndex = -1
        MinHeight = 55
        Width = 591
      end>
    ExplicitWidth = 597
    inherited lblTitulo: TLabel
      Caption = 'Cadastro de Produtos'
    end
    inherited tlbBotoes: TToolBar
      Width = 577
      ExplicitWidth = 577
      inherited btnVoltar: TToolButton
        OnClick = btnVoltarClick
      end
      inherited btnAvan: TToolButton
        OnClick = btnAvanClick
      end
    end
  end
  inherited pagCadastro: TPageControl
    Width = 597
    Height = 552
    ActivePage = TabSheet1
    ExplicitWidth = 597
    ExplicitHeight = 552
    object TabSheet1: TTabSheet [0]
      Caption = 'Lista de dados'
      ImageIndex = 9
      DesignSize = (
        589
        507)
      object dbgProdutos: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 321
        Anchors = [akLeft, akTop, akRight]
        DataSource = dmcadproduto.dtsProdutos
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgProdutosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cod'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigo_barra'
            Title.Caption = 'C'#243'd. Barras'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prod_nome'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_categorias'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_grupo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_laboratorio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estoque_minimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estoque_maximo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_compra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tarja'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'receita'
            Visible = True
          end>
      end
    end
    inherited pag1Cad: TTabSheet
      Caption = 'Dados para Cadastro'
      ExplicitWidth = 589
      ExplicitHeight = 507
      object brBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 589
        Height = 113
        Align = alTop
        Caption = '| Cadastro de Produtos |'
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 32
          Width = 58
          Height = 13
          Caption = 'C'#243'd. Barras:'
          FocusControl = dbCodBarras
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 34
          Top = 58
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 357
          Top = 58
          Width = 77
          Height = 13
          Caption = 'Unidade Venda:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 357
          Top = 33
          Width = 48
          Height = 13
          Caption = 'Categoria:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 180
          Top = 33
          Width = 32
          Height = 13
          Caption = 'Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 10
          Top = 87
          Width = 56
          Height = 13
          Caption = 'Laboratorio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 222
          Top = 88
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 433
          Top = 89
          Width = 29
          Height = 13
          Caption = 'Local:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbCodBarras: TDBEdit
          Left = 79
          Top = 31
          Width = 97
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'codigo_barra'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object dbNome: TDBEdit
          Left = 79
          Top = 56
          Width = 275
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'prod_nome'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object dblUnidade: TDBLookupComboBox
          Left = 440
          Top = 56
          Width = 65
          Height = 21
          DataField = 'id_univenda'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cod'
          ListField = 'unidade'
          ListSource = dmcadproduto.dtsUnidades
          ParentFont = False
          TabOrder = 2
        end
        object dblCategoria: TDBLookupComboBox
          Left = 440
          Top = 31
          Width = 143
          Height = 21
          DataField = 'cod_categorias'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cod_categorias'
          ListField = 'descricao'
          ListSource = dmcadproduto.dtsCategorias
          ParentFont = False
          TabOrder = 3
        end
        object dblGrupo: TDBLookupComboBox
          Left = 216
          Top = 31
          Width = 134
          Height = 21
          DataField = 'cod_grupo'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cod'
          ListField = 'descricao'
          ListSource = dmcadproduto.dtsGrupos
          ParentFont = False
          TabOrder = 4
        end
        object dblLaboratorio: TDBLookupComboBox
          Left = 79
          Top = 83
          Width = 137
          Height = 21
          Hint = 'Cadastro de Laboratorio'
          DataField = 'id_laboratorio'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cod_lab'
          ListField = 'nome'
          ListSource = dmcadproduto.dtsLabs
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object dblFornecedor: TDBLookupComboBox
          Left = 285
          Top = 83
          Width = 137
          Height = 21
          Hint = 'Selecione o Fornecedor'
          DataField = 'id_fornecedor'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'cod'
          ListField = 'empresa'
          ListSource = dmcadproduto.dtsFornecedor
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit1: TDBEdit
          Left = 467
          Top = 82
          Width = 116
          Height = 22
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'localizacao'
          DataSource = dmcadproduto.dtsProdutos
          TabOrder = 7
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 113
        Width = 589
        Height = 208
        Align = alTop
        TabOrder = 1
        object Label6: TLabel
          Left = 32
          Top = 82
          Width = 30
          Height = 13
          Caption = 'Custo:'
          FocusControl = dbValorCompra
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 182
          Top = 82
          Width = 34
          Height = 13
          Caption = 'Venda:'
          FocusControl = dbValorVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 16
          Top = 19
          Width = 46
          Height = 13
          Caption = 'ICMS (%):'
          FocusControl = dbICMS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 184
          Top = 19
          Width = 33
          Height = 13
          Caption = 'IPI (%):'
          FocusControl = dbIPI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 318
          Top = 21
          Width = 65
          Height = 13
          Caption = 'Estq. M'#237'nimo:'
          FocusControl = dbEstoqueMi
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 13
          Top = 48
          Width = 47
          Height = 13
          Caption = 'Est. Max.:'
          FocusControl = dbEstoqueMax
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 188
          Top = 51
          Width = 27
          Height = 13
          Caption = 'Tarja:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 11
          Top = 110
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
          FocusControl = dbmDescricao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 302
          Top = 84
          Width = 82
          Height = 13
          Caption = 'Unidade Compra:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbValorCompra: TDBEdit
          Left = 78
          Top = 79
          Width = 99
          Height = 21
          Hint = 'Valor de Compra'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'valor_compra'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object dbValorVenda: TDBEdit
          Left = 222
          Top = 80
          Width = 73
          Height = 21
          Hint = 'Valor de Venda'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'valor_venda'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object dbICMS: TDBEdit
          Left = 78
          Top = 17
          Width = 99
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ICMS'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dbIPI: TDBEdit
          Left = 223
          Top = 17
          Width = 89
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'IPI'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbEstoqueMi: TDBEdit
          Left = 389
          Top = 17
          Width = 92
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'estoque_minimo'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dbEstoqueMax: TDBEdit
          Left = 78
          Top = 48
          Width = 99
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'estoque_maximo'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dblTarja: TDBLookupComboBox
          Left = 223
          Top = 48
          Width = 260
          Height = 21
          Hint = 'Tarja'
          BevelInner = bvLowered
          DataField = 'tarja'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'tarja'
          ListField = 'tarja'
          ListSource = dmcadproduto.dtsTarja
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object dbcReceita: TDBCheckBox
          Left = 516
          Top = 156
          Width = 68
          Height = 33
          Hint = 'Necessita de receita ?'
          Caption = 'Receita ?'
          DataField = 'receita'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          ValueChecked = 'Sim'
          ValueUnchecked = 'N'#227'o'
        end
        object dbmDescricao: TDBMemo
          Left = 77
          Top = 109
          Width = 433
          Height = 81
          Hint = 'Descri'#231#227'o do Produtos'
          DataField = 'descricao'
          DataSource = dmcadproduto.dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 8
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 388
          Top = 79
          Width = 97
          Height = 24
          DataField = 'id_unidade'
          DataSource = dmcadproduto.dtsProdutos
          KeyField = 'cod'
          ListField = 'unidade'
          ListSource = dmcadproduto.dtsUnidades
          TabOrder = 9
        end
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 439
    Width = 597
    ExplicitTop = 439
    ExplicitWidth = 597
  end
end
