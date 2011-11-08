inherited frmCadastroClientes: TfrmCadastroClientes
  Left = 522
  Top = 143
  Caption = 'Cadastro de Clientes'
  ClientHeight = 545
  ClientWidth = 569
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitWidth = 575
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbPainel: TCoolBar
    Width = 569
    Bands = <
      item
        Control = tlbBotoes
        ImageIndex = -1
        MinHeight = 55
        Width = 563
      end>
    ExplicitWidth = 569
    inherited lblTitulo: TLabel
      Width = 588
      Caption = 'Cadastro de Clientes'
      ExplicitWidth = 588
    end
    inherited tlbBotoes: TToolBar
      Width = 549
      ExplicitWidth = 549
      inherited btnVoltar: TToolButton
        OnClick = btnVoltarClick
      end
      inherited btnAvan: TToolButton
        OnClick = btnAvanClick
      end
    end
  end
  inherited pagCadastro: TPageControl
    Width = 569
    Height = 496
    ExplicitWidth = 569
    ExplicitHeight = 496
    object TabSheet1: TTabSheet [0]
      Caption = 'Tabela de Dados'
      ImageIndex = 9
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 617
        Height = 377
        DataSource = dmCadCliente.dtsClientes
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'cod'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sexo'
            Title.Alignment = taCenter
            Title.Caption = 'Sexo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'data_nasc'
            Title.Alignment = taCenter
            Title.Caption = 'Data Nas'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'nascionalidade'
            Title.Alignment = taCenter
            Title.Caption = 'Nascionalidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone_residencial'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone_celular'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status_cliente'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo_cliente'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Title.Alignment = taCenter
            Width = 64
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
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estado'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pais'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_reg'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'anotacoes'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    inherited pag1Cad: TTabSheet
      Caption = 'Ficha Cadastral'
      ExplicitLeft = 4
      ExplicitTop = 41
      ExplicitWidth = 561
      ExplicitHeight = 451
      object grbDados: TGroupBox
        Left = 0
        Top = 0
        Width = 561
        Height = 105
        Align = alTop
        Caption = '| Cadastro de Clientes - Informa'#231#245'es Obrigatorias |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitTop = -6
        object Label1: TLabel
          Left = 7
          Top = 22
          Width = 77
          Height = 13
          Caption = 'Nome completo:'
          FocusControl = cpNome
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 307
          Top = 22
          Width = 85
          Height = 13
          Caption = 'Data Nascimento:'
          FocusControl = cpNascimento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 56
          Top = 51
          Width = 27
          Height = 13
          Caption = 'Sexo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 242
          Top = 54
          Width = 71
          Height = 13
          Caption = 'Nacionalidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 64
          Top = 78
          Width = 19
          Height = 13
          Caption = 'RG:'
          FocusControl = cpRG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 226
          Top = 78
          Width = 23
          Height = 13
          Caption = 'CPF:'
          FocusControl = cpCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cpNome: TDBEdit
          Left = 97
          Top = 21
          Width = 201
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'NOME'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
        end
        object cpNascimento: TDBEdit
          Left = 397
          Top = 20
          Width = 95
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_NASC'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
        end
        object cpRG: TDBEdit
          Left = 97
          Top = 75
          Width = 119
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          TabOrder = 2
        end
        object cpCPF: TDBEdit
          Left = 254
          Top = 75
          Width = 160
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cpf'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 3
        end
        object DBComboBox1: TDBComboBox
          Left = 98
          Top = 48
          Width = 122
          Height = 24
          BevelEdges = []
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          DataField = 'sexo'
          DataSource = dmCadCliente.dtsClientes
          Items.Strings = (
            'M'
            'F')
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Left = 319
          Top = 49
          Width = 160
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'nacionalidade'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 5
        end
      end
      object grbOutros: TGroupBox
        Left = 0
        Top = 105
        Width = 561
        Height = 285
        Align = alTop
        Caption = '| Outras Informa'#231#245'es |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label7: TLabel
          Left = 13
          Top = 32
          Width = 67
          Height = 13
          Caption = 'Telefone Res:'
          FocusControl = cpTel
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 222
          Top = 32
          Width = 66
          Height = 13
          Caption = 'Telefone Cel.:'
          FocusControl = cpCel
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 48
          Top = 60
          Width = 31
          Height = 13
          Caption = 'E-mail:'
          FocusControl = cpEmail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 30
          Top = 85
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          FocusControl = cpEndereco
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 398
          Top = 87
          Width = 11
          Height = 13
          Caption = 'N:'
          FocusControl = cpN
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 47
          Top = 113
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          FocusControl = cpBairro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 479
          Top = 115
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 55
          Top = 140
          Width = 23
          Height = 13
          Caption = 'Pais:'
          FocusControl = cpPais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 253
          Top = 168
          Width = 68
          Height = 13
          Caption = 'Data Registro:'
          FocusControl = cpDataRegistro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 238
          Top = 142
          Width = 83
          Height = 13
          Caption = 'Status do Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 3
          Top = 170
          Width = 77
          Height = 13
          Caption = 'Tipo de  Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 26
          Top = 202
          Width = 54
          Height = 13
          Caption = 'Anota'#231#245'es:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 285
          Top = 113
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cpTel: TDBEdit
          Left = 95
          Top = 28
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'telefone_residencial'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 0
        end
        object cpCel: TDBEdit
          Left = 297
          Top = 28
          Width = 129
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'telefone_celular'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 1
        end
        object cpEmail: TDBEdit
          Left = 95
          Top = 57
          Width = 193
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'email'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cpEndereco: TDBEdit
          Left = 95
          Top = 84
          Width = 297
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'rua'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object cpN: TDBEdit
          Left = 416
          Top = 84
          Width = 112
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'numero'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object cpBairro: TDBEdit
          Left = 95
          Top = 110
          Width = 185
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'bairro'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object cpPais: TDBEdit
          Left = 95
          Top = 139
          Width = 121
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'pais'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object cpDataRegistro: TDBEdit
          Left = 327
          Top = 165
          Width = 224
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'data_reg'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 11
        end
        object cpUF: TDBLookupComboBox
          Left = 501
          Top = 110
          Width = 51
          Height = 21
          BevelEdges = []
          BevelInner = bvLowered
          BevelKind = bkFlat
          DataField = 'estado'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'uf'
          ListField = 'uf'
          ListSource = dmCadCliente.dtsEstados
          ParentFont = False
          TabOrder = 7
        end
        object cpStatus: TDBLookupComboBox
          Left = 327
          Top = 137
          Width = 225
          Height = 21
          BevelEdges = []
          BevelInner = bvLowered
          BevelKind = bkFlat
          DataField = 'status_cliente'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'id_status'
          ListField = 'tipo_status'
          ListSource = dmCadCliente.dts_statuscliente
          ParentFont = False
          TabOrder = 9
        end
        object cpTipoCliente: TDBLookupComboBox
          Left = 95
          Top = 167
          Width = 145
          Height = 21
          BevelEdges = []
          BevelInner = bvLowered
          BevelKind = bkFlat
          DataField = 'tipo_cliente'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'id_campo'
          ListField = 'tipo_cliente'
          ListSource = dmCadCliente.dtsTipoClientes
          ParentFont = False
          TabOrder = 10
        end
        object cpNotes: TDBMemo
          Left = 101
          Top = 194
          Width = 457
          Height = 72
          BevelKind = bkFlat
          DataField = 'anotacoes'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 12
        end
        object DBEdit1: TDBEdit
          Left = 327
          Top = 110
          Width = 145
          Height = 21
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cidade'
          DataSource = dmCadCliente.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 526
    Width = 569
    ExplicitTop = 526
    ExplicitWidth = 569
  end
end
