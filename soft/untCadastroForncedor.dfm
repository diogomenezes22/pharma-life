inherited frmCadastroForncedor: TfrmCadastroForncedor
  Left = 358
  Top = 140
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 520
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 577
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbPainel: TCoolBar
    inherited lblTitulo: TLabel
      Caption = 'Cadastro de Fornecedor'
    end
    inherited tlbBotoes: TToolBar
      inherited btnVoltar: TToolButton
        OnClick = btnVoltarClick
      end
      inherited btnAvan: TToolButton
        OnClick = btnAvanClick
      end
    end
  end
  inherited pagCadastro: TPageControl
    ActivePage = TabSheet1
    ExplicitTop = 89
    object TabSheet1: TTabSheet [0]
      Caption = 'Tabela de Dados'
      ImageIndex = 9
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 329
        DataSource = dmfornecedor.dtsFornecedor
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cod'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'empresa'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpj'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'im'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ie'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone_cel'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone_comercial'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rua'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estado'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pais'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'anotacoes'
            Visible = True
          end>
      end
    end
    inherited pag1Cad: TTabSheet
      Caption = 'Dados Cadastrais'
      ExplicitLeft = 4
      ExplicitTop = 41
      ExplicitWidth = 563
      ExplicitHeight = 371
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 563
        Height = 89
        Align = alTop
        Caption = '| Dados Primarios |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 27
          Width = 44
          Height = 13
          Caption = 'Empresa:'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 283
          Top = 27
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 20
          Top = 54
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 228
          Top = 54
          Width = 13
          Height = 13
          Caption = 'IE:'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 62
          Top = 24
          Width = 209
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'empresa'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 340
          Top = 24
          Width = 213
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'vendedor'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 62
          Top = 51
          Width = 153
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cnpj'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 248
          Top = 51
          Width = 153
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ie'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 89
        Width = 563
        Height = 160
        Align = alTop
        Caption = '| Dados Secundarios |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label6: TLabel
          Left = 28
          Top = 22
          Width = 21
          Height = 13
          Caption = 'Tel.:'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 208
          Top = 22
          Width = 42
          Height = 13
          Caption = 'Tel. Cel.:'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 18
          Top = 48
          Width = 31
          Height = 13
          Caption = 'E-mail:'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 2
          Top = 73
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          FocusControl = DBEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 288
          Top = 75
          Width = 11
          Height = 13
          Caption = 'N:'
          FocusControl = DBEdit10
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 21
          Top = 103
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          FocusControl = DBEdit11
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 272
          Top = 104
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          FocusControl = DBEdit12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 29
          Top = 131
          Width = 23
          Height = 13
          Caption = 'Pais:'
          FocusControl = DBEdit13
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 447
          Top = 105
          Width = 36
          Height = 13
          Caption = 'Estado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 64
          Top = 20
          Width = 133
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'telefone_comercial'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 256
          Top = 19
          Width = 280
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'telefone_cel'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 64
          Top = 46
          Width = 472
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'email'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 64
          Top = 72
          Width = 217
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'rua'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 303
          Top = 72
          Width = 97
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'numero'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 64
          Top = 100
          Width = 201
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'bairro'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 312
          Top = 101
          Width = 129
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cidade'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 64
          Top = 129
          Width = 130
          Height = 20
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'pais'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 489
          Top = 101
          Width = 41
          Height = 21
          DataField = 'estado'
          DataSource = dmfornecedor.dtsFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'uf'
          ListField = 'uf'
          ListSource = dmfornecedor.dtsEstados
          ParentFont = False
          TabOrder = 7
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Anota'#231#245'es'
      ImageIndex = 1
      object DBMemo1: TDBMemo
        Left = 3
        Top = 3
        Width = 601
        Height = 289
        DataField = 'anotacoes'
        DataSource = dmfornecedor.dtsFornecedor
        TabOrder = 0
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 501
    ExplicitTop = 501
  end
end
