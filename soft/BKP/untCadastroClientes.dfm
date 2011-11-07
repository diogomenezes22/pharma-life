inherited frmCadastroClientes: TfrmCadastroClientes
  Left = 522
  Top = 143
  Caption = 'Cadastro de Clientes'
  ClientHeight = 513
  ClientWidth = 569
  OldCreateOrder = True
  ExplicitWidth = 575
  ExplicitHeight = 541
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
      Left = 11
      Width = 554
      ExplicitLeft = 11
      ExplicitWidth = 554
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
    ExplicitLeft = 32
    ExplicitTop = 92
    ExplicitWidth = 569
    ExplicitHeight = 496
    inherited pag1Cad: TTabSheet
      Caption = 'Ficha Cadastral'
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 561
      ExplicitHeight = 468
      object grbDados: TGroupBox
        Left = 0
        Top = 0
        Width = 561
        Height = 105
        Align = alTop
        Caption = '| Cadastro de Clietes - Informa'#231#245'es Obrigatorias |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
          FocusControl = cpSexo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 142
          Top = 51
          Width = 71
          Height = 13
          Caption = 'Nacionalidade:'
          FocusControl = cpNascionalidade
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
          Left = 98
          Top = 20
          Width = 201
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dtmServer.dtsClientes
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
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_NASC'
          DataSource = dtmServer.dtsClientes
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
        object cpSexo: TDBEdit
          Left = 102
          Top = 47
          Width = 34
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sexo'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cpNascionalidade: TDBEdit
          Left = 220
          Top = 48
          Width = 129
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'nacionalidade'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object cpRG: TDBEdit
          Left = 97
          Top = 75
          Width = 119
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'rg'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          TabOrder = 4
        end
        object cpCPF: TDBEdit
          Left = 254
          Top = 75
          Width = 160
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cpf'
          DataSource = dtmServer.dtsClientes
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
        Height = 264
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
          Left = 14
          Top = 20
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
          Left = 223
          Top = 20
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
          Left = 49
          Top = 48
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
          Left = 31
          Top = 73
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
          Left = 399
          Top = 75
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
          Left = 48
          Top = 101
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
          Left = 480
          Top = 103
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
          Left = 56
          Top = 128
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
          Left = 248
          Top = 158
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
          Left = 223
          Top = 130
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
          Left = 4
          Top = 158
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
          Left = 27
          Top = 190
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
          Left = 286
          Top = 101
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
          Left = 96
          Top = 16
          Width = 121
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'telefone_residencial'
          DataSource = dtmServer.dtsClientes
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
          Left = 298
          Top = 16
          Width = 129
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'telefone_celular'
          DataSource = dtmServer.dtsClientes
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
          Left = 96
          Top = 43
          Width = 193
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecLowerCase
          DataField = 'email'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cpEndereco: TDBEdit
          Left = 96
          Top = 72
          Width = 297
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'rua'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object cpN: TDBEdit
          Left = 417
          Top = 72
          Width = 112
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'numero'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object cpBairro: TDBEdit
          Left = 96
          Top = 98
          Width = 185
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'bairro'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object cpPais: TDBEdit
          Left = 96
          Top = 127
          Width = 121
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'pais'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object cpDataRegistro: TDBEdit
          Left = 322
          Top = 155
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_REG'
          DataSource = dtmServer.dtsClientes
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
          Left = 502
          Top = 98
          Width = 51
          Height = 21
          BevelEdges = []
          BevelInner = bvLowered
          BevelKind = bkFlat
          DataField = 'estado'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'UF'
          ListField = 'UF'
          ListSource = dtmServer.dtsEstados
          ParentFont = False
          TabOrder = 7
        end
        object cpStatus: TDBLookupComboBox
          Left = 314
          Top = 127
          Width = 145
          Height = 21
          BevelEdges = []
          BevelInner = bvLowered
          BevelKind = bkFlat
          DataField = 'STATUS_CLIENTE'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_STATUS'
          ListField = 'TIPO_STATUS'
          ListSource = dtmServer.dts_statuscliente
          ParentFont = False
          TabOrder = 9
        end
        object cpTipoCliente: TDBLookupComboBox
          Left = 96
          Top = 155
          Width = 145
          Height = 21
          BevelEdges = []
          BevelInner = bvLowered
          BevelKind = bkFlat
          DataField = 'tipo_cliente'
          DataSource = dtmServer.dtsClientes
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_CAMPO'
          ListField = 'TIPO_CLIENTE'
          ListSource = dtmServer.dtsTipoClientes
          ParentFont = False
          TabOrder = 10
        end
        object cpNotes: TDBMemo
          Left = 96
          Top = 185
          Width = 457
          Height = 72
          BevelInner = bvLowered
          BevelKind = bkFlat
          DataField = 'anotacoes'
          DataSource = dtmServer.dtsClientes
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
          Left = 329
          Top = 98
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cidade'
          DataSource = dtmServer.dtsClientes
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
    object TabSheet1: TTabSheet
      Caption = 'Tabela de Dados'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 617
        Height = 377
        DataSource = dtmServer.dtsClientes
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
            FieldName = 'COD'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEXO'
            Title.Alignment = taCenter
            Title.Caption = 'Sexo'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_NASC'
            Title.Alignment = taCenter
            Title.Caption = 'Data Nas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
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
            FieldName = 'TELEFONE_RESIDENCIAL'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE_CELULAR'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS_CLIENTE'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_CLIENTE'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RUA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTADO'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAIS'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_REG'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANOTACOES'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end>
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 494
    Width = 569
    ExplicitTop = 494
    ExplicitWidth = 569
  end
  inherited imglBotoes: TImageList
    Left = 592
    Top = 72
    Bitmap = {
      494C010109000E000C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF9933
      00FF993300FF000000FF993300FF993300FFCB977EFF993300FF993300FF0000
      00FF993300FF993300FFCB977EFF993300FF993300FF000000FF993300FF9933
      00FFCB977EFF993300FF993300FF000000FF993300FF993300FFCB977EFF9933
      00FF993300FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FFC18466FF000000FFC18466FFC18466FF000000FFC18466FFC18466FF0000
      00FFC18466FFC18466FF000000FFC18466FFC18466FF000000FFC18466FFC184
      66FF000000FFC18466FFC18466FF000000FFC18466FFC18466FF000000FFC184
      66FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFACAAA6FFA2A2A1FFC7C7C7FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF5B70B5FFBFBBB3FF949494FF828282FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF245CFFFF3085FFFF8FB0C6FFFCF7F3FF969696FFBABA
      BAFFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF245EFFFF3887FFFF56B6FFFF63CFFFFFADC5D4FFC9C6C1FFB8B8
      B7FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF245EFFFF3A89FFFF59B9FFFF69CFFFFF5DC3FFFF4099FFFF7A87A2FF9694
      92FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF235F
      FFFF3B8BFFFF5BBAFFFF69D1FFFF5EC0FFFF449AFFFF2368FFFF99AEFFFF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFB1B7CCFF1950E0FF3B8C
      FBFF5BBDFFFF69D1FFFF5EBEFFFF4498FFFF2366FFFFA3B6FFFF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFBFBFBFFFA29E97FF5176A4FF52B1
      F1FF6AD1FFFF5DBEFFFF4397FFFF2365FFFFA9BCFFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FF000000FF000000FFA6A7A7FF7D7E80FF7779
      7CFF77787BFF787A7BFFA1A1A2FF000000FFC8C8C8FF969696FFDBD5CFFF69A0
      BAFF53B2F4FF4094FFFF2464FFFFAFC0FFFF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FFB0B0B1FF76797DFFB1A697FFDDC49BFFE6C6
      93FFEAC995FFE8CDA6FFBCB3A5FF6B6F73FF545456FFBCBCBCFFE6E5E4FFD9D3
      CEFF4678B5FF1C56E4FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF9F9FA1FF95928DFFE6C691FFF2CB8DFFF0CC94FFEFCE
      99FFF1D1A1FFF0D19EFFEFC687FFF1CE9AFF90908DFF757678FFC4C4C4FFACAC
      ABFF9E9993FFADB8E3FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FFBEBEBFFF94908BFFF1CF94FFEFCE94FFEDCD94FFEDCC93FFEDCB
      92FFECC88CFFEDCA92FFF0D5A9FFF0CF9EFFF2C889FF8F8F8DFF565758FFB3B3
      B3FFB1B1B0FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF838587FFE6CA99FFF2D39CFFEFD39EFFEFD39EFFEFD29FFFEFD1
      9DFFEECF98FFEDCC93FFECC88BFFF0D2A5FFF0D0A1FFF1D09DFF676A6EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFC4C4C4FFA99F8FFFF6DAA4FFF1D8A6FFF1D9A8FFF1D9AAFFF1DAA9FFF0D8
      A5FFEFD4A2FFEFD39CFFEECE96FFEDCA8EFFF1D8AEFFF1C98CFFABA49CFFB9B9
      BAFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FFA6A7A8FFCEBD9AFFF4DCABFFF5E0B4FFF4DFB2FFF5E0B3FFF3DEB1FFF3DD
      AEFFF1DAAAFFF0D6A4FFEFD29DFFEECE95FFEECF9BFFF1D4A2FFDCC7A4FF8C8D
      8EFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF999A9DFFDFCDA5FFF7E3B6FFF5E5BEFFF7E9C5FFF7E9C6FFF6E7C1FFF5E3
      B9FFF5E1B2FFF2DBABFFF0D6A5FFEFD29CFFEECE94FFF4D9ADFFE9CC9EFF8182
      85FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF9D9EA1FFE0CFA9FFF8E9C1FFFAF0D6FFFAEED0FFF8EECEFFF8ECC9FFF6E8
      C2FFF5E4BAFFF5E1B2FFF1DAAAFFF0D5A2FFEECF97FFF2D8AAFFE4CA9DFF8586
      89FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FFB6B6B8FFCABFA2FFFBEECAFFFAF5E1FFFBF5DCFFFCF7E5FFFAF2D5FFFAEE
      CCFFF7EBC6FFF5E3B8FFF3DDAEFFF0D7A5FFEFD19CFFF2D6A5FFD2BE9DFF9696
      98FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FFD6D6D6FFA6A295FFFFF5D2FFFCF8E4FFFCFBF0FFFDFDF5FFFCFAEAFFFBF2
      D3FFF8EECDFFF7E5BBFFF3DEB1FFF1D9A8FFF1D39FFFF7D59DFF9D978EFFC4C4
      C5FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF9FA0A1FFE4DBBDFFFEFBE3FFFEFDF2FFFFFEF7FFFCF9E6FFFAF4
      D8FFF8EFCFFFF5E5BCFFF5E0B3FFF1D9A9FFF2D6A2FFDFC79DFF75777CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FFDFDFDFFF959491FFF7F1D6FFFFFFE9FFFEFCEBFFFDFAE7FFFBF6
      E0FFF8EECDFFF7E6BFFFF3E0B2FFF3DCA8FFEED19FFF868785FFCACBCBFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FFCBCCCCFF959590FFE2DCC2FFFFFBDCFFFFF5D8FFFBF0
      CDFFFAEBC1FFF9E6BAFFFAE2B0FFDDC9A3FF898988FFB6B6B7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFDEDEDEFF9E9EA0FFA4A198FFC7C0A9FFDBD0
      B1FFDCCEADFFC5B9A1FFA09B92FF828487FFCBCBCBFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FF000000FF000000FF000000FF000000FF000000FFD3D3D3FFB4B4B5FF9C9D
      9FFF9B9C9EFFA5A6A7FFC4C4C4FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF993300FFC184
      66FFC18466FF000000FFC18466FFC18466FF000000FFC18466FFC18466FF0000
      00FFC18466FFC18466FF000000FFC18466FFC18466FF000000FFC18466FFC184
      66FF000000FFC18466FFC18466FF000000FFC18466FFC18466FF000000FFC184
      66FFC18466FF993300FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF9933
      00FF993300FF000000FF993300FF993300FFCB977EFF993300FF993300FF0000
      00FF993300FF993300FFCB977EFF993300FF993300FF000000FF993300FF9933
      00FFCB977EFF993300FF993300FF000000FF993300FF993300FFCB977EFF9933
      00FF993300FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE3BE
      A6FFA94B18FFA03C0DFF9A380DFF7A665DFF908480FF978B86FF9D918CFFA397
      92FFA79B96FFA39792FF998E88FF918580FF887D78FF80746FFF644E45FF9937
      0DFF99370DFF98360DFF9B380FFFB87151FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF9D7575FF9063
      63FFBFA5A5FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF7E7ECFFF1212ABFF1515ACFF5B5BC5FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF9494DAFF9696D6FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFEABE9FFFB14D
      04FFC37225FFC97A2AFFC87B2BFF8E877FFFBAB1A6FFCBAE8EFFD5B897FFDFC4
      A2FFEEE2D3FFFAFAFAFFF0F0F0FFE1E1E1FFD3D3D3FFC5C5C5FF857C72FFD68E
      36FFD78F37FFDEA559FFE0A85BFFB45C18FFC3886CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD4BFBFFFC19999FFB284
      84FF895757FF804E4EFFAC8585FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4939
      99FF1419B3FF0D18B6FF0C14B1FF0B13AEFF0A10AAFF090FA9FF0A0EA7FF0B0F
      A6FF0C10A6FF0D11A8FF0D10A5FF0C0EA4FF0C0DA1FF0B0C9EFF070797FF0C08
      93FF0C0894FF0C0996FF0C0996FF0A0591FF0B0796FF0E0E9EFF0E0E9EFF1919
      A3FF7272C5FF000000FF000000FF000000FF000000FF000000FF000000FF8787
      D9FF0612BDFF1544EBFF123CD6FF0A21B9FF0305A8FF5F5FCDFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF003956FF020AACFF0311ADFF1616A3FF8C8CD6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE8B994FFBA5604FFC271
      24FFC57528FFC47627FFC57529FF8A837BFFB1977DFFC87A2BFFCB7E2DFFD186
      32FFDEBF9AFFF0F0F0FFFAFAFAFFF1F1F1FFE2E2E2FFD3D3D3FF8D847AFFD388
      33FFD38A33FFDCA159FFDDA45BFFD68F35FF9A3F21FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD5BEBEFFCDA5A5FFB587
      87FF9F6C6CFF9E6B6BFF8F5B5BFF804C4CFF926464FFC6ADADFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4C2F79FF0D22
      C7FF2C41D4FF0015C7FF0015C5FF0016C3FF0014C3FF0013C0FF0012BEFF0011
      BCFF0010B9FF000EB7FF000DB5FF000CB3FF000BB1FF000AAFFF0009ADFF0008
      ABFF0007A9FF0007A7FF0006A5FF0005A3FF0004A2FF0003A0FF00029FFF0002
      9DFF00019CFF7272C5FF000000FF000000FF000000FF000000FF000000FF0D0D
      B2FF1A4BFDFF1949FAFF1847F4FF1745EDFF143DD4FF081AB0FF1C1CB0FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF185D
      89FF020AAFFF0D3CF0FF0B38E4FF072BC4FF0310A9FF0107A0FF4343B6FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC86814FFC26E23FFC372
      26FFC27125FFC27225FFC37226FF8F8780FFA78B73FFBE6B22FFC27125FFC87A
      2BFFD3B28FFFE1E1E1FFEFEFEFFFFAFAFAFFF1F1F1FFE2E2E2FF968D83FFD086
      32FFD28731FFDB9E58FFDCA159FFD58C33FF8B3219FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFCECE
      CEFF686868FF666666FF646464FF696969FF727373FF706E6EFFD1A8A8FFB789
      89FFA06D6DFF9F6C6CFFA06D6DFFA26F6FFF956262FF845151FF7B4A4AFFAD8A
      8AFF000000FF000000FF000000FF000000FF000000FF000000FF0E16B5FF4259
      E0FF223DDAFF001CD5FF001ED3FF001CD2FF001BD1FF001ACFFF031FD2FF011C
      CFFF0018CAFF0016C9FF0015C5FF0014C3FF0013C1FF0012C0FF0011BCFF0010
      BAFF000BB5FF0919BEFF0009B1FF000BB0FF0009ADFF0008ACFF0006A6FF0002
      9FFF00029EFF1717A1FF000000FF000000FF000000FF000000FF9292DBFF0C21
      CFFF1E52FFFF1B4DFFFF1A4BFCFF194AF9FF1947F4FF1743E5FF0F2DBEFF0102
      A4FF3D84A6FF000000FF000000FF000000FF000000FF000000FF135785FF040D
      B3FF0F41F3FF0F3DF3FF0C3BEEFF0B38E8FF0937E4FF0834D7FF0211A4FF4949
      B6FF000000FF000000FF000000FF000000FF000000FFCD6D13FFC06D24FFC06F
      23FFC06E23FFC06F24FFC16F24FF9A928BFFAC8E78FFB55C19FFBA641EFFC16F
      24FFC8A684FFD3D3D3FFE1E1E1FFEFEFEFFFF9F9F9FFF1F1F1FF9D948BFFCF84
      30FFD08531FFDA9C57FFDB9F58FFD28A32FF8D361FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF8686
      86FF828282FF6D6C6CFF777778FFACA7AAFFAEABAEFFA1A0A1FFD0A6A7FFB88A
      8AFFA06D6DFFA16E6EFFA16E6EFFA26F6FFFA16E6EFFA37070FF9E6B6BFF8956
      56FF784444FF8B6767FF000000FF000000FF000000FF000000FF0D1FBCFF4A65
      EEFF2141E4FF0022E0FF0022DFFF0022DEFF0021DDFF0021DEFF2354FFFF2354
      FEFF001DD9FF001DD5FF001CD4FF001CD1FF0019D0FF0018CCFF0017CAFF000E
      C3FF2F57EFFF4A7CFFFF061BC6FF000EBAFF000EB7FF000EB5FF000CB1FF0005
      A5FF00029EFF09099CFF000000FF000000FF000000FF000000FF3C3CBFFF2249
      F0FF295BFFFF2152FEFF1E4FFEFF1D4EFFFF1C4DFDFF1A4AF6FF1947EDFF1339
      CBFF0309A9FF01336BFF000000FF000000FF000000FF185191FF040FB5FF1344
      F6FF1041F5FF0F40F5FF0E3DF4FF0D3BF1FF0B3AEDFF0B37E8FF0831D4FF020D
      A2FF7474CCFF000000FF000000FF000000FF000000FFD07013FFBE6B21FFBE6A
      21FFBE6B22FFBE6C22FFBF6C22FFA49C95FFB3937FFFAB4E11FFB35917FFBB67
      1FFFBD9A79FFC4C4C4FFD3D3D3FFE1E1E1FFEFEFEFFFF9F9F9FFA59C93FFCD81
      2FFFCF842EFFD79A56FFDA9F57FFD18831FF8D361FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7777
      77FF969696FF6F6D6EFF5F7D68FF63B079FF7DB78EFF8DB498FFD3A7A9FFBB8C
      8DFFA26F6FFFA37070FFA37070FFA26F6FFFA26F6FFFA26F6FFFA26F6FFFA370
      70FFA47171FF845050FF505353FF000000FF000000FF000000FF0C1EC1FF4F6B
      F1FF2344E9FF0023E5FF0025E4FF0024E3FF0024E4FF0F43FFFFB2BFE9FFA9B9
      ECFF194CFDFF001EDAFF001ED7FF001DD5FF001CD2FF001ACFFF0011C9FF2953
      EFFF95B2FEFFE9EDF8FF4677FFFF0419C5FF000DB9FF000EB7FF000EB5FF0007
      A9FF0003A0FF09099CFF000000FF000000FF000000FF000000FF9393E1FF080A
      B6FF2246E8FF295CFFFF2354FFFF2051FFFF1F50FFFF1E50FFFF1C4DF9FF1A49
      F1FF1640D4FF0610ABFF164899FF000000FF195390FF050FB7FF1547F9FF1444
      F7FF1242F6FF1141F5FF0F3FF4FF0E3DF3FF0D3CF3FF0B3BEFFF0B37E8FF082E
      CAFF04059FFF000000FF000000FF000000FF000000FFD07013FFBB671FFFBC67
      1FFFBC6820FFBC6920FFBD6921FFADA59EFFBA9986FFA4430AFFAE5213FFB862
      1CFFB39070FFB6B6B6FFC4C4C4FFD2D2D2FFE0E0E0FFEEEEEEFFA89F95FFD081
      2FFFD0822FFFD99D57FFDA9E58FFD08630FF93360FFFA9776EFF70180CFF6E16
      0AFF6E1409FF96564DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7777
      77FF989898FF706D70FF4D825BFF1BB042FF1BAC41FF1EA440FFDAAAAEFFBC90
      8EFFA57272FFA57272FFA47171FFA47171FFA47171FFA37070FFA37070FFA26F
      6FFFA57171FF8B5858FF4D5151FF000000FF000000FF000000FF0D1FC4FF5671
      F6FF2648EDFF0026EAFF0027E9FF0027E9FF063BFFFFA4B3E8FFEBE8DEFFF0EC
      E1FFA2B3F0FF194CFDFF001EDBFF001FD9FF001ED6FF0016D1FF214EF1FF8DAA
      FEFFFFFFF7FFFFFFF9FFE1E9FCFF4575FFFF0319C5FF000DB9FF000EB8FF0008
      ABFF0004A2FF050396FF000000FF000000FF000000FF000000FF000000FF9090
      DFFF1225CFFF2D60FFFF2658FFFF2455FFFF2354FFFF2253FFFF2051FFFF1E4F
      FBFF1C4AF4FF1744DCFF0815ADFF00108EFF0610B8FF184BFBFF1747FAFF1445
      F8FF1344F8FF1243F7FF1141F5FF0F3FF4FF0E3DF3FF0D3CF3FF0B39EEFF0937
      E5FF0418B3FF8181CEFF000000FF000000FF000000FFD07013FFBB641FFFBA65
      1FFFBA651EFFBA661EFFBB671FFFB4ACA5FFCEC2BCFFBB9986FFB5957FFFAF91
      79FFA3968BFFA7A7A7FFB5B5B5FFC4C4C4FFD2D2D2FFE0E0E0FF9F978EFF905A
      21FF915B20FFAC702EFFD28937FFD08631FF953B13FFD0AA7AFFB17020FFB884
      3FFFB98741FF924204FFA86C5AFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF7B7B
      7BFF9D9D9DFF716E71FF4C7E56FF19A238FF1C9F39FF1E9A39FFDCADB1FFBE90
      90FFA57272FFA67373FFA67373FFA67373FFA57272FFA57272FFA47171FFA471
      71FFA57171FF8D5A5AFF515555FF000000FF000000FF000000FF0D21C5FF5B78
      F8FF284DF2FF0027EFFF0029EFFF0032FFFF9FAFE8FFEAE7DDFFE1E0E0FFE4E4
      E3FFF2EEE5FFA4B5F2FF184AFCFF001FDDFF001BD8FF1B47F3FF86A4FEFFFFFF
      F7FFFBFBF9FFFBFBFBFFFFFFFDFFE4ECFFFF4374FFFF0318C4FF000EBAFF000A
      ADFF0005A3FF050293FF000000FF000000FF000000FF000000FF000000FF0337
      6CFF1F3EE2FF2F62FFFF2A5BFFFF2859FFFF2758FFFF2657FFFF2457FFFF2355
      FFFF2051FDFF1C4BF6FF1946E2FF0D26C9FF194BF8FF1A4AFCFF1848FAFF1647
      FAFF1545F9FF1344F8FF1243F7FF1141F5FF0F3FF4FF0E3DF3FF0E3DF3FF0C3D
      F5FF0418BDFF5D5DC0FF000000FF000000FF000000FFD07013FFB8621CFFB862
      1CFFB8621CFFB9631DFFB9641DFFA49284FFB6ABA3FFB1A79EFFABA198FFA298
      8FFF978D84FF91877DFF938980FF958B82FF968D83FF988F85FF847261FFCD7D
      2CFFCF812EFFCE812EFFCF8330FFCF8430FF963B13FFCFA779FFAE6C1DFFB680
      3FFFB78341FFB0701FFF842E1BFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF9FD49FFF000000FF000000FF7D7D
      7DFF9F9F9FFF747173FF4A7853FF13972DFF15952EFF1B8E2EFFDDADB2FFBF95
      93FFA77474FFA87575FFA87575FFA77474FFA77474FFA77474FFA67373FFA572
      72FFA87474FF8D5B5BFF535757FF000000FF000000FF000000FF0E23C8FF617F
      FDFF2B51F6FF0028F4FF0027FFFF9BABE6FFE8E5DBFFE1E0DFFFE1E1E1FFE4E4
      E4FFE9E8E7FFF7F4E9FFA3B6F4FF1245FBFF103EF2FF7C9CFEFFFFFFF6FFFBFB
      F9FFFBFBFBFFFDFDFDFFFEFEFEFFFFFFFFFFE4EDFFFF4272FFFF0218C4FF0009
      AFFF0006A5FF060494FF000000FF000000FF000000FF000000FF000000FF0A24
      8DFF325AF3FF396AFFFF3162FFFF2D5DFFFF2A5BFFFF295AFFFF2859FFFF2858
      FFFF2657FFFF2353FEFF1D4DF7FF1D4CF7FF1B4DFCFF1B4BFEFF1A4AFCFF1849
      FBFF1647FAFF1545F9FF1344F8FF1243F7FF1142F5FF1041F7FF0E3DF2FF020E
      B5FF0C287FFF000000FF000000FF000000FF000000FFD07013FFB65F19FFB65F
      1AFFB65F1AFFB7601BFFB7611CFFB8621CFFB9631DFFBA651EFFBB661FFFBC68
      20FFBD6A21FFBF6C22FFC06E23FFC17024FFC37226FFC47427FFC67729FFC879
      2AFFC97C2BFFCB7E2DFFCD822EFFCD812FFF973C14FFCDA679FFAD691BFFB57E
      3EFFB6803FFFAF6D1DFF812B18FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7DC47DFF2DA035FF000000FF8B8B
      8BFF9F9F9FFF757274FF47744DFF0D891FFF0F8822FF188225FFE0B1B5FFC196
      97FFA97676FFAA7777FFAA7777FFA47272FFA57373FFA97676FFA87575FFA774
      74FFA87474FF8F5D5DFF575A5AFF000000FF000000FF000000FF0F24CAFF6785
      FFFF2E55F9FF0025F9FF9BA9E3FFE9E5D9FFDFDEDDFFDFDFDFFFE2E2E2FFE5E5
      E5FFE8E8E8FFEBEAEAFFFCF8EDFF9DB1F7FF698CFCFFFFFFF5FFFBFAF8FFFAFA
      FAFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFEAF1FFFF4778FFFF0716
      BAFF0006A7FF060494FF000000FF000000FF000000FF000000FF000000FF002D
      6DFF0A13C0FF3D67F6FF4073FFFF3666FFFF3162FFFF2D5EFFFF2B5CFFFF295A
      FFFF2859FFFF2659FFFF2555FEFF2152FFFF1F50FEFF1D4EFEFF1B4CFDFF1A4A
      FCFF1849FBFF1647FAFF1545F9FF1345F7FF1345F9FF0E39E9FF0105A7FF1D64
      89FF000000FF000000FF000000FF000000FF000000FFD07113FFB45C17FFB45C
      18FFB45C19FFB55D19FFB55E1AFFB65F1BFFB7611BFFB8621CFFB9641DFFBA66
      1EFFBC671FFFBD6921FFBE6C22FFC06E23FFC17025FFC37226FFC57527FFC677
      29FFC87A2AFFCA7C2CFFCD802FFFCC812EFF973D15FFCDA477FFAB671BFFB47C
      3DFFB57F3EFFAD6C1CFF812B18FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7DC27DFF3EC26EFF2BA033FFA4B5
      A4FFAAAAAAFF767376FF437149FF067D13FF097C16FF13781AFFE3B4B9FFC398
      97FFAC7878FFAC7878FFA57272FFA07070FFA37272FFA77575FFA97676FFA976
      76FFAB7777FF915F5FFF595D5DFF000000FF000000FF000000FF0F26CCFF6C8C
      FFFF3059FEFF0024F6FF7388E7FFEEEADAFFDEDEDDFFE0E0E0FFE3E3E3FFE6E6
      E6FFE9E9E9FFEBEBEBFFEFEFEEFFF9F7F1FFFDFCF4FFFAF9F7FFF9F9F9FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3C7FFFF3560F4FF000C
      B4FF0007A9FF060496FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0616AAFF243CD9FF477AFFFF3D6EFFFF3666FFFF3061FFFF2D5E
      FFFF2B5CFFFF295AFFFF295AFFFF2556FFFF2253FFFF1F50FFFF1D4FFEFF1B4C
      FDFF1A4AFCFF1849FBFF1648FBFF1548FCFF0E31E1FF030E9DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD17113FFB25917FFB259
      16FFB25917FFAF9683FFB1A195FFB1A195FFB1A296FFB1A296FFB0A094FFB0A1
      94FFAFA094FFAE9F92FFAD9F92FFAB9D90FFAB9C8FFFA89A8DFFA7998BFFA698
      8AFFA7927DFFC97B2BFFCA7D2DFFCB7E2DFF983D15FFCBA377FFAA6618FFB17A
      3CFFB47F3DFFAC6A1BFF812B18FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7DC07DFF3DBF6DFF3EBE6CFF2299
      29FFB7C8B7FF858385FF3F6A40FF006D00FF006D02FF0E690BFFE4B5B9FFC59B
      9BFFAD7878FFA78888FF858585FF887B7BFFA27070FFA67474FFAA7777FFAA77
      77FFAB7777FF936161FF5A5E5EFF000000FF000000FF000000FF1027CFFF7293
      FFFF3661FFFF0034FFFF0021F7FF7488E8FFF0ECDDFFE3E3E1FFE4E4E4FFE6E6
      E6FFE9E9E9FFECECECFFEFEFEFFFF2F2F2FFF5F5F5FFF8F8F8FFFAFAFAFFFDFD
      FDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFAFC5FFFF2E5CF5FF0010C5FF000E
      B7FF0008ABFF060598FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF17519EFF090FBEFF3F69F5FF4577FFFF3A69FFFF3363
      FFFF2F60FFFF2C5DFFFF2A5AFFFF2859FFFF2758FFFF2354FFFF2051FFFF1D4F
      FEFF1B4CFDFF194BFDFF184CFDFF0E2CD7FF0A1A9EFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD17113FFB05614FFB056
      15FFB05615FFB3A79FFFE2E2E2FFE3E3E3FFE4E4E4FFE5E5E5FFE4E4E4FFE4E4
      E4FFE3E3E3FFE1E1E1FFDFDFDFFFDDDDDDFFDBDBDBFFD8D8D8FFD5D5D5FFD2D2
      D2FFA59C93FFC8792AFFC97C2CFFCA7D2CFF983D15FFCDA377FFAB6419FFB37D
      3DFFB47E3EFFAB681AFF812B18FF000000FF000000FF56A556FF50AA55FF50AB
      54FF50AD54FF51B053FF4FB251FF4DB153FF229122FF47E67FFF45D978FF3FBD
      6EFF27A02CFFA1B2A0FF648871FF329F59FF339D59FF3D945AFFE4B5B8FFC69B
      9BFFB48A8AFFB9BEBEFFC3C4C4FFABAFAFFFA27575FFAD7979FFAC7979FFAC79
      79FFAD7A7AFF966363FF5D6060FF000000FF000000FF000000FF1028D2FF7B9B
      FFFF3966FFFF0039FFFF033AFFFF0022F7FF748AE9FFF3EFE0FFE5E5E4FFE7E7
      E7FFEAEAEAFFEDEDEDFFF0F0F0FFF3F3F3FFF5F5F5FFF8F8F8FFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFABC1FFFF2654F7FF0014CBFF0017C9FF000F
      B9FF0009ADFF06069BFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0718AAFF273FDAFF4B7DFFFF3E6D
      FFFF3565FFFF3061FFFF2D5EFFFF2A5BFFFF2959FFFF2657FFFF2354FFFF1F50
      FEFF1C4EFDFF1C4FFEFF0D28D4FF0E299FFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD17113FFAE5212FFAE53
      13FFAE5413FFB5A9A1FFE6E6E6FFE8E8E8FFD2D2D2FFD0D0D0FFD0D0D0FFD0D0
      D0FFD0D0D0FFCFCFCFFFCFCFCFFFCFCFCFFFCECECEFFCFCFCFFFD8D8D8FFD5D5
      D5FFA79E95FFC77829FFC87C2BFFC97C2CFF983D15FFAB8E6FFF72410BFF8A54
      18FFAD6B20FFAB681BFF812C18FF000000FF000000FF239532FF3CC26FFF38BD
      68FF39BE6AFF3BBD6BFF3CBD6CFF3EBE6DFF3DBA6BFF41CB71FF4BE87FFF49DA
      7AFF42BC6FFF249E29FFA7CCBAFFB7FFFFFFAEFFFFFFAEFFFFFFE1B5B5FFC89D
      9DFFBD9898FFECEEEEFFF8F9F9FFC8CBCBFFAF7C7CFFB07C7CFFAE7B7BFFAD7A
      7AFFAD7A7AFF976666FF5F6262FF000000FF000000FF000000FF102AD4FF81A2
      FFFF3F6CFFFF043FFFFF0640FFFF053EFFFF0021F5FF798EEBFFF6F2E3FFE8E8
      E7FFEAEAEAFFEDEDEDFFF0F0F0FFF3F3F3FFF6F6F6FFF9F9F9FFFCFCFCFFFEFE
      FEFFFFFFFFFFFFFFFFFFA9BFFFFF1E4EF7FF0018D2FF001ACFFF0018CCFF0010
      BCFF000AAFFF06079DFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF174A9DFF0F18C1FF4475
      FFFF3A69FFFF3464FFFF3163FFFF2E5FFFFF2A5BFFFF2A59FFFF2658FFFF2254
      FEFF1C4DF8FF102CD4FF0D24A1FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD17113FFAD5111FFAC50
      11FFAC5112FFB8ADA4FFEAEAEAFFEBEBEBFFD3D3D3FFD0D0D0FFD0D0D0FFD0D0
      D0FFD0D0D0FFD0D0D0FFCFCFCFFFCFCFCFFFCFCFCFFFD0D0D0FFDBDBDBFFD7D7
      D7FFA89F96FFC67628FFC9792AFFC87B2BFF953A11FFCBA175FFAA6318FFA963
      18FFAA651AFFAA661AFF812C18FF000000FF000000FF1F942EFF4EE183FF3CD8
      70FF3FDB73FF43DF77FF44E078FF48E47CFF4AE67EFF4BE67FFF4CE680FF4EEA
      83FF4DDD7FFF45BC71FF25A62FFFC9F7E3FFCBFFFFFFC6FFFFFFE1B5B5FFCCA4
      A4FFB17B7BFFCFBDBDFFC6C2C2FFB69F9FFFB17C7CFFB07D7DFFB07D7DFFAF7C
      7CFFB07D7DFF996767FF646767FF000000FF000000FF000000FF112CD6FF89AB
      FFFF4272FFFF0444FFFF0945FFFF0945FFFF0642FFFF0021F6FF798EECFFF1EF
      E7FFEAEAEAFFEDEDEDFFF0F0F0FFF3F3F3FFF6F6F6FFF9F9F9FFFCFCFCFFFEFE
      FEFFFFFFFFFFA0B6FFFF1345F9FF001BD9FF001ED6FF001CD2FF0019D0FF0012
      BEFF000BB1FF06089FFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0A12BEFF4476
      FFFF3B6BFFFF3666FFFF3464FFFF3162FFFF2E5FFFFF2A5BFFFF2859FFFF2555
      FEFF1D4EF6FF173ED7FF0206A8FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD27113FFAB4D0FFFAA4D
      0FFFAA4E10FFBBAFA7FFEDEDEDFFEFEFEFFFF1F1F1FFF1F1F1FFF1F1F1FFF0F0
      F0FFEEEEEEFFECECECFFEAEAEAFFE6E6E6FFE3E3E3FFE0E0E0FFDDDDDDFFD9D9
      D9FFA9A097FFC57528FFC77829FFC97A2AFF9B3A0DFFC99E74FFA55F15FFA661
      17FFA86418FFA86319FF812C18FF000000FF000000FF1D922DFF5EE38EFF3CD7
      70FF40D973FF43DC76FF46DF79FF48E17BFF4AE37DFF4CE57FFF4FE882FF50E9
      83FF54EF88FF51E182FF47BD73FF2CAE33FFD5F4E3FFE3FFFFFFE1B6B6FFCDA5
      A5FFB37F7FFFB37E7EFFB47E7EFFB37F7FFFB38080FFB27F7FFFB17E7EFFB07D
      7DFFB07D7DFF9B6969FF666A6AFF000000FF000000FF000000FF122ED8FF8FB1
      FFFF4878FFFF0849FFFF0B4BFFFF0A49FFFF094AFFFF002EF7FF2649EEFFF0EF
      E7FFEAEAEAFFEDEDEDFFF0F0F0FFF3F3F3FFF6F6F6FFF9F9F9FFFCFCFCFFFEFE
      FEFFFFFFFFFF6E8FFFFF0B39F3FF001CDAFF001FD9FF001DD5FF001CD1FF0013
      C0FF000CB3FF0608A1FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF1239ACFF3355EBFF4273
      FFFF3D6CFFFF3969FFFF3666FFFF3464FFFF3162FFFF2D5EFFFF2A5AFFFF295A
      FEFF2152FCFF1C4AEFFF112EBEFF0B1EA7FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD27213FFA84A0DFFA84A
      0DFFA94B0EFFBDB1A9FFF0F0F0FFF3F3F3FFE2E2E2FFE0E0E0FFE0E0E0FFDFDF
      DFFFDEDEDEFFDDDDDDFFDBDBDBFFDADADAFFD8D8D8FFD8D8D8FFDEDEDEFFDBDB
      DBFFABA299FFC47427FFC6772AFFC7792AFF9B3A0DFFC89D74FFA45D15FFA55F
      16FFA86219FFA76318FF812C18FF000000FF000000FF1B932BFF6BE998FF3BD8
      6FFF42DB75FF45DE78FF48E17BFF4AE37DFF4DE680FF4FE882FF51EA84FF53EC
      86FF55EE88FF58F48CFF56E488FF4DC178FF4DB84DFFFEFFFFFFE4B9BAFFCFA7
      A7FFB58282FFB68383FFB58282FFB58282FFB48181FFB38080FFB38080FFB27F
      7FFFB38080FF9D6B6BFF676A6AFF000000FF000000FF000000FF122FDEFF96B7
      FFFF4B7FFFFF094EFFFF0F50FFFF0E51FFFF0030F0FF2D49E4FFF4F1E4FFEAEA
      E7FFEAEAEAFFEDEDEDFFF0F0F0FFF3F3F3FFF6F6F6FFF8F8F8FFFBFBFBFFFFFF
      FEFFFFFFFFFFFFFFFFFF7797FFFF0D3CF4FF001CDAFF001ED7FF001CD5FF0014
      C3FF000DB5FF0609A5FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF090EC1FF4C7FFFFF4372
      FFFF3F6FFFFF3C6CFFFF3969FFFF3666FFFF3464FFFF3161FFFF2C5DFFFF295A
      FFFF2758FFFF1F50FAFF1B48E7FF0A1CB3FF2052AEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD27213FFA6470CFFA647
      0CFFA7480CFFC0B3ABFFF3F3F3FFF6F6F6FFCECECEFFCDCDCDFFCDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFE0E0E0FFDCDC
      DCFFACA39AFFC37326FFC57628FFC67829FF983D15FFB7AFA8FF867360FFA55E
      15FFA56017FFA66117FF812C18FF000000FF000000FF189328FF7BEBA3FF39DA
      6EFF41DD75FF44E078FF47E37CFF49E57DFF4CE881FF4EEA83FF54ED87FF56EF
      89FF58F18BFF5EF993FF5CED92FF31AF35FFE6F4E3FFFFFDF9FFE5BCBCFFD1AB
      ABFFB78484FFB88585FFB78484FFB78484FFB68383FFB58282FFB48181FFB380
      80FFB38080FF9E6D6DFF6A6D6DFF000000FF000000FF000000FF1333DEFF9DBD
      FFFF4F83FFFF0D53FFFF115AFFFF0031EBFF2A41DBFFEFEDE1FFE8E7E4FFE6E6
      E6FFE9E9E9FFECECECFFEFEFEFFFF2F2F2FFF5F5F5FFF8F8F8FFFBFBFBFFFDFD
      FDFFFFFFFFFFFFFFFFFFFFFFFFFF7494FFFF0C3BF3FF001BD7FF001DD6FF0015
      C5FF000EB7FF060AA6FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF2A56B1FF314EE4FF4D7DFFFF4574
      FFFF4170FFFF3F70FFFF3C6CFFFF396AFFFF3A6CFFFF3969FFFF3262FFFF2B5C
      FFFF2859FFFF2556FEFF1D4DF7FF1944DAFF020AADFF287E82FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD27313FFA4450AFFA444
      0AFFA5460BFFC2B6AEFFF6F6F6FFF9F9F9FFE6E6E6FFE3E3E3FFE3E3E3FFE2E2
      E2FFE1E1E1FFDFDFDFFFDEDEDEFFDCDCDCFFDADADAFFD9D9D9FFE1E1E1FFDDDD
      DDFFADA39BFFC37226FFC67529FFC67729FF9D421BFFCECECEFF847C74FFA45C
      15FFA55F16FFA56016FF812C18FF000000FF000000FF199429FF8EF0B2FF5CE0
      88FF63E38DFF67E792FF6AE894FF6DEC97FF70ED9AFF75F19EFF5CF08DFF59F3
      8CFF5EF793FF63FD9AFF2FB334FFE6F6DFFFFFF8EFFFFFF7EDFFE6BDBDFFD1AD
      ADFFB98686FFB98686FFB98686FFB88585FFB88585FFB78484FFB68383FFB481
      81FFB48181FFA06F6FFF6B6E6EFF000000FF000000FF000000FF1434E1FFA4C3
      FFFF558AFFFF0F5DFFFF0033E7FF293CD1FFECE9DDFFE4E3E0FFE3E3E3FFE6E6
      E6FFE9E9E9FFECECECFFEEEEEEFFF1F1F1FFF4F4F4FFF7F7F7FFFAFAFAFFFCFC
      FCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF7495FFFF0D3BF2FF001BD6FF0016
      C7FF000FB9FF060CA8FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0508BCFF5484FFFF4B7BFFFF4776
      FFFF4473FFFF4270FFFF3E6CFFFF3B6EFFFF2A4BE8FF4374FFFF3B6AFFFF3061
      FFFF2A5AFFFF2859FEFF2153FDFF1C4AF2FF1437C9FF070BADFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD27313FFA24107FFA241
      08FFA34309FFC4B8B0FFF7F7F7FFFBFBFBFFFEFEFEFFFFFFFFFFFEFEFEFFFDFD
      FDFFFAFAFAFFF6F6F6FFF2F2F2FFEEEEEEFFEAEAEAFFE5E5E5FFE1E1E1FFDEDE
      DEFFADA39BFFC37225FFC77628FFC77728FFA1471BFFD0D0D0FF867E75FFA35B
      14FFA45F15FFA55F16FF812C18FF000000FF000000FF1F9B32FF72F5A6FF74F0
      A2FF78F3A6FF7CF4A9FF7EF8ABFF83F9B1FF82FBADFF9FF8BEFF5AF28DFF5EF7
      92FF64FF9BFF2AAC30FFBECBB9FFFFF9EAFFFFF4E4FFFFF4E4FFE9C1C1FFD3AD
      ADFFBC8888FFBA8787FFBB8787FFBA8787FFB98686FFB88585FFB78484FFB683
      83FFB78484FFA17171FF6C6F6FFF000000FF000000FF000000FF1536E4FFAACB
      FFFF5A93FFFF0035E2FF2734C6FFE9E7DBFFE1E0DDFFE1E1E0FFE2E2E2FFE5E5
      E5FFE8E8E8FFEBEBEBFFEEEEEDFFF9F6F0FFFCFAF3FFF8F8F6FFF8F8F8FFFBFB
      FBFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF7193FFFF123FF2FF0015
      C8FF0010BBFF060DABFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF207893FF263BD9FF5687FFFF4D7CFFFF4A78
      FFFF4675FFFF4273FFFF3E6FFFFF2D53F2FF060EACFF0D13C1FF4576FFFF3968
      FFFF2E5FFFFF2859FFFF2456FFFF1E4FFAFF1A48EBFF0C23B7FF1033A1FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD37313FFA13E07FFA13F
      07FFA24108FFC5B9B1FFF8F8F8FFFCFCFCFFD7D7D7FFD3D3D3FFD3D3D3FFD3D3
      D3FFD2D2D2FFD2D2D2FFD1D1D1FFD1D1D1FFD0D0D0FFD2D2D2FFE2E2E2FFDEDE
      DEFFADA39BFFB36822FF9A5B1FFFC27427FFA64B1BFFD1D1D1FF877F76FFA259
      13FFA55C15FFA45E15FF812C18FF000000FF000000FF5EB05EFF52B258FF51B5
      55FF50B554FF4FB954FF4FBA53FF50BA53FF269826FF7FF7A8FF5BF891FF64FF
      9BFF2EAF35FFA7B7A8FFB5ADA5FFFFF1DFFFFFEEDBFFFFEEDBFFEAC1C2FFD6B0
      B0FFBA8686FFD9A9A9FFD3A2A2FFC59191FFBD8888FFB78282FFB58282FFB683
      83FFB78484FFA37272FF6F7272FF000000FF000000FF000000FF1537E6FFB1D0
      FFFF5A8CF9FF0000B5FFCCCBD5FFE3E2DAFFDCDCDCFFDFDFDFFFE1E1E1FFE4E4
      E4FFE7E7E7FFECECEAFFFCF9ECFF8C9EEFFF8EA0F2FFFFFFF4FFF9F9F7FFF9F9
      F9FFFBFBFBFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF2559FFFF0724
      D2FF0011BDFF060EADFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0317A6FF5179F7FF5584FFFF4F7DFFFF4C7A
      FFFF4A78FFFF4473FFFF3D6EFFFF0105B9FF000000FF4283B1FF0B12C3FF4374
      FFFF3666FFFF2C5DFFFF2657FFFF2353FFFF1C4CF7FF1944DEFF060FAFFF1051
      67FF000000FF000000FF000000FF000000FF000000FFD27517FF9F3C05FF9F3C
      05FFA03F07FFC6B9B2FFF7F7F7FFFBFBFBFFD7D7D7FFD3D3D3FFD3D3D3FFD3D3
      D3FFD2D2D2FFD2D2D2FFD1D1D1FFD1D1D1FFD0D0D0FFD2D2D2FFE2E2E2FFDEDE
      DEFFAEA49CFFA66120FF784819FFBE7326FFAC521EFFD2D2D2FF887F77FFA158
      13FFA35B14FFA55D15FF812C18FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7DC27DFF76FDA7FF63FE9AFF2BAB
      32FFC5D6C5FF8D8E8EFFB2A79CFFFFECD5FFFFE8D2FFFFE8D2FFECC4C4FFD6B1
      B1FFBB8686FFF4DCDCFFFFECECFFFFE7E7FFFDDCDCFFF7CECEFFE9BBBBFFDCAB
      ABFFBC8989FFA47474FF707474FF000000FF000000FF000000FF173AE8FFB8D5
      FFFF629DFFFF0D52F0FF000EB8FFD0CFD8FFE1E1DCFFDEDEDEFFE0E0E0FFE3E3
      E3FFE8E8E6FFF8F5E9FF95A3E8FF001AEEFF001DF2FF99AAF2FFFFFFF5FFF8F8
      F7FFF9F9F9FFFDFDFDFFFEFEFDFFFFFFFEFFFEFEFFFF2958FFFF032BE7FF0017
      CBFF0013BFFF060FB0FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0D14CBFF6294FFFF5685FFFF517FFFFF4D7C
      FFFF4A79FFFF4477FFFF1628D3FF04446AFF000000FF000000FF317FAFFF0E18
      C7FF4274FFFF3263FFFF295AFFFF2354FEFF1E4EFCFF1B48F2FF1338CBFF0909
      B2FF000000FF000000FF000000FF000000FF000000FFDD9A58FFB85201FF9C3A
      04FF9D3B07FFC5B9B2FFF6F6F6FFF9F9F9FFFCFCFCFFFDFDFDFFFDFDFDFFFBFB
      FBFFF8F8F8FFF4F4F4FFF1F1F1FFEDEDEDFFE9E9E9FFE5E5E5FFE1E1E1FFDDDD
      DDFFACA39BFFC47228FFC97729FFBB5E11FFBD8560FFD3D3D3FF898179FFA058
      12FFA25A15FFA35C15FF812C18FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7DC67DFF69FFA1FF33B33BFFAEC1
      AEFFC4C4C4FF848586FFB1A498FFFFE8CCFFFFE5C9FFFFE5C9FFEEC5C6FFD6B3
      B3FFBD8787FFF0DADAFFFFEDEDFFFFE8E8FFFFE4E4FFFFE1E1FFFFDDDDFFFFDA
      DAFFC18D8DFFA77676FF727676FF000000FF000000FF000000FF173AEAFFBDDA
      FFFF649EFFFF1A70FFFF1154EEFF010FB8FFD1D0D9FFE4E3DEFFDFDFDFFFE3E3
      E2FFF3F1E5FF98A1E2FF0017E2FF0847FFFF0641FFFF001CF1FF99AAF3FFFFFF
      F5FFF8F8F7FFF9F9F9FFFFFFFBFFFBFCFDFF2151FFFF0029EBFF001FDDFF001A
      CEFF0013C1FF0610B2FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF7878E3FF364EE2FF6090FFFF5785FFFF5381FFFF507E
      FFFF4A7AFFFF345BF2FF1928BAFF000000FF000000FF000000FF000000FF0044
      6DFF1221CAFF3E72FFFF2E60FFFF2657FFFF2051FFFF1B4CF9FF1846EBFF0C24
      B8FF3838C2FF000000FF000000FF000000FF000000FF000000FFDFA163FFD171
      10FFD06E0BFFC8B39EFFCBC2BAFFCEC5BAFFCEC4BAFFCDC3B9FFCBC1B8FFC8BE
      B5FFC5BBB2FFC2B9B0FFBEB5ACFFBCB2A9FFB9B0A6FFB5ACA3FFB3A9A0FFB0A6
      9DFFAC9886FFC35F09FFBB5C0DFFBD8255FFD5D2CFFFCBCBCBFF8A827AFF9F57
      11FFA15913FFA25B14FF812C18FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7DCC7DFF35B33FFF000000FF9B9B
      9BFFC1C1C1FF868789FFB1A292FFFFE3C3FFFFDFC0FFFFDFC0FFF1C8C9FFD8B6
      B6FFC08B8BFFEEDCDCFFFFF8F8FFFFF1F1FFFFE9E9FFFFE3E3FFFFDEDEFFFFD7
      D7FFBC8888FFA77878FF737676FF000000FF000000FF000000FF173CEFFFC3E0
      FFFF68A3FFFF1A72FFFF1F77FFFF1254EEFF020FB8FFD2D2DBFFE6E5DFFFF0EF
      E3FF939DDCFF0012D9FF0C4EFFFF0A4AFFFF0945FFFF053DFFFF001BF0FFA0AE
      F2FFFFFFF5FFFFFDF7FFF6F8F9FF1647FFFF0029EFFF0023E3FF0023DFFF001B
      D0FF0014C3FF0310B6FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2828D6FF6893FDFF6593FFFF5B88FFFF5583FFFF507E
      FFFF4A7CFFFF060DC6FF000000FF000000FF000000FF000000FF000000FF0000
      00FF002F76FF192DD4FF3A6EFFFF2B5BFFFF2253FFFF1D4EFEFF1949F5FF1642
      DDFF050FB0FF8B8BDAFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFCDA07DFFBB8C73FFBB8B73FFBB8C73FFCAC4
      C0FFE4E4E4FFE5E5E5FFDCDCDCFFDADADAFFDADADAFFDADADAFFD9D9D9FFD9D9
      D9FFD8D8D8FFD7D7D7FFD5D5D5FFD4D4D4FFCFCFCFFFB9B9B9FF8B827BFF9F56
      11FFA25814FFA25A14FF822C18FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA2DBA2FF000000FF000000FF9494
      94FFC1C1C1FF88898BFFB3A28EFFFFDDB8FFFFDAB6FFFFDAB6FFF1C9CAFFD9B6
      B6FFC38E8EFFCAA3A3FFDDC0C0FFE4CACAFFEFD3D3FFFADEDEFFFFE4E4FFFFDB
      DBFFBB8686FFAA7979FF747777FF000000FF000000FF000000FF193EF1FFC8E3
      FFFF6CA8FFFF1C77FFFF2276FFFF1F77FFFF1153EEFF030EB8FFDFDEDCFF999E
      D6FF000ECEFF0F55FFFF0F52FFFF0B4BFFFF0945FFFF0641FFFF023AFFFF001B
      F0FFA3B0F2FFFFFEF5FF1140FEFF0028F3FF0027E9FF0025E4FF0022E0FF001B
      D1FF0015C5FF0010BBFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF5050DEFF3D52E0FF79A9FFFF6795FFFF5C8AFFFF5281
      FFFF2744E4FF1F4BA9FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF3F3FC8FF1F3ADEFF3368FFFF2657FFFF1F50FEFF1B4DFFFF194D
      FDFF143FE1FF1313B6FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFA24D11FF812900FF812900FF822B00FFA095
      8EFFCECECEFFD2D2D2FFD5D5D5FFD6D6D6FFD5D5D5FFD4D4D4FFD1D1D1FFCDCD
      CDFFCACACAFFC6C6C6FFC2C2C2FFBEBEBEFFBABABAFFB8B8B8FF8B827BFF9F56
      10FFA35913FFA35A13FF863118FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9696
      96FFC3C3C3FF8B8C8EFFB8A18BFFFFDFB1FFFFDCAFFFFFDCAFFFF4CCCDFFDBB7
      B7FFC59191FFC59191FFC38F8FFFC08C8CFFBC8787FFB98585FFB78383FFBE8C
      8CFFBA8787FFAB7A7AFF767979FF000000FF000000FF000000FF1B41F3FFCDE8
      FFFF7CB3FFFF1978FFFF1F79FFFF1E75FFFF1D73FFFF0D4FEDFF0611B7FF000D
      C4FF105AFFFF1056FFFF0C50FFFF0B4BFFFF0746FFFF0642FFFF023CFFFF0034
      FFFF0020EFFF1139F2FF0027F4FF0029EFFF0028EAFF0025E5FF0023E1FF001B
      D2FF0015C6FF0011BEFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF4747D4FF222DD4FF587BF2FF709FFFFF5484
      FFFF070BC1FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2B2BC3FF2547E9FF2E61FFFF2357FFFF1B49F9FF0C23
      D8FF0809BAFF6C6CD9FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFA34C10FF802700FF802800FF812900FFA196
      8FFFCFCFCFFFD3D3D3FFB1B1B1FFAEAEAEFFAEAEAEFFAEAEAEFFADADADFFADAD
      ADFFACACACFFACACACFFABABABFFADADADFFBBBBBBFFB8B8B8FF8B827BFF914D
      0DFF7A410BFF9E5812FF8B3518FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9898
      98FFC9C9C9FF8F9091FF837D79FF8D8378FF93887BFFA38C82FFFCD9D9FFE2C8
      C8FFCD9F9FFFC79494FFC59191FFC38F8FFFC18D8DFFBF8B8BFFBE8B8BFFBC89
      89FFBA8787FFAD7C7CFF797B7BFF000000FF000000FF000000FF0C33EEFFCEEB
      FFFFC2DEFFFF5DA1FFFF3E8DFFFF3D89FFFF3A84FFFF3983FFFF2C61ECFF2F70
      FBFF2E71FFFF2B69FFFF2664FFFF245EFFFF1F59FFFF1D53FFFF194DFFFF1649
      FFFF1341FDFF0F3BF6FF113BF5FF1039F0FF0F34ECFF0D32E7FF0C30E2FF112C
      D6FF2337CFFF0112BFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA1A1EEFF4A4ADAFF0D10CAFF1823
      D1FF5781C6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF1A1AC1FF1F3FE7FF0A16CBFF2121BDFF8585
      DFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFB05D17FF7F2500FF7F2500FF7F2800FFA296
      90FFCECECEFFD2D2D2FFB1B1B1FFAEAEAEFFAEAEAEFFAEAEAEFFADADADFFADAD
      ADFFACACACFFACACACFFABABABFFADADADFFBBBBBBFFB8B8B8FF8C837CFF8546
      0BFF5B3005FF9B5711FF913C1BFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9A9A
      9AFFCACACAFF8F8F8FFF929293FF8F9091FF8C8D8EFF908B8BFFBC9999FFC39F
      9FFFCCA7A7FFD4AFAFFFD8AFAFFFD8ABABFFD6A7A7FFD4A3A3FFD0A0A0FFCE9C
      9CFFCC9797FFB07E7EFF7A7D7DFF000000FF000000FF000000FF344DC6FF4E7B
      FBFFCDEBFFFFCDE7FFFFCAE4FFFFC5E1FFFFC0DBFFFFBAD6FFFFB3D3FFFFADCC
      FFFFA6C5FFFF9FBFFFFF98B8FFFF92B2FFFF8AABFFFF83A3FFFF7D9CFFFF7494
      FFFF6E8CFFFF6786FEFF617FFCFF5B79F7FF5672F3FF506BF0FF4B65EBFF4459
      DFFF172CCEFF1A199EFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0042
      67FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF3737C6FFAEAEE7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFC58858FF953900FF7C2300FF7D2400FFA196
      90FFCDCDCDFFD0D0D0FFD3D3D3FFD4D4D4FFD4D4D4FFD2D2D2FFCFCFCFFFCCCC
      CCFFC9C9C9FFC5C5C5FFC2C2C2FFBEBEBEFFBABABAFFB7B7B7FF8A827BFFA056
      13FFA55A14FF984400FFB3775BFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF9C9C
      9CFFD6D6D6FFC0C0C0FFC0C0C0FFBEBEBEFFB7B7B7FFB4B4B4FFACB0B0FFA6A9
      A9FFA4A7A7FF9FA1A1FF999B9BFF969797FF989494FF989191FF968C8CFF998A
      8AFF948383FF837B7BFF7B7D7DFF000000FF000000FF000000FF000000FF3149
      C3FF0A35F0FF113BF1FF113BF0FF0F39EEFF1038ECFF0E36EBFF0E34E9FF0F35
      E7FF0E34E7FF1034E6FF0F33E3FF0F31E1FF0F30E2FF0E2FE0FF0E2EDDFF0E2D
      DCFF0F2BD9FF0E2BD8FF0D29D6FF0A25D4FF0621D2FF0520D1FF071FD0FF0017
      C9FF191AA2FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC38453FFAD540CFFAB5208FFA491
      7FFFA79F97FFA9A198FFA9A198FFA8A097FFA69E96FFA49B92FFA19890FF9E96
      8EFF9B928AFF999088FF968E85FF928A82FF91887FFF8E857DFF8A7969FFA245
      08FF9C450CFFB67854FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC9C9
      C9FF979898FF969797FF939494FF939494FF929393FF929393FF8C8D8DFF8C8D
      8DFF8B8C8CFF8B8B8BFF878888FF858686FF858686FF848585FF818282FF7E7F
      7FFF838484FF858686FFCECECEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA576
      71FF985F59FF9D5F56FF9B5442FF876661FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0079
      00FF007800FF007700FF007600FF007500FF007400FF007300FF007200FF0071
      00FF007000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA774
      74FFD8A9A9FFF4E5E5FFD9BDBDFFC49D9CFFAF807CFFA77771FFB7857BFFC59B
      8AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0079
      00FF4CD779FF33C25DFF34C25EFF33C05BFF31C05CFF32BF5BFF31BE5AFF2EB7
      54FF007000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFAB77
      77FFDBAFAFFFFFFBFBFFFFF7F7FFFFFBF8FFC8CDFEFF627DFBFFF1D6CFFFD0AE
      AEFFB98F8FFFA57171FFB28484FFC5A0A0FFCAB4B4FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF048408FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF028404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF007A
      00FF68E78EFF3DD16CFF3ACF69FF39CE68FF38CD67FF39CC66FF37CB65FF33C2
      5DFF007100FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFB86E3DFFB07D
      7DFFDFB5B4FFFFF8F7FFFFF4F8FFFFF7F5FFB3BAF7FF7A8FFAFFFFFBF3FFFFF4
      F4FFFFF5F5FFFFF8F8FFF6E1E1FFDCC0C0FFC7A0A0FFAF8080FF9F6A69FFAF71
      5BFFBB7A50FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF027A05FF048308FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF008000FF018601FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF007B
      00FF6CE994FF43D672FF3DD36DFF3ED26CFF3CD16BFF3CD16BFF39CD67FF33C2
      5DFF007200FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFB76E42FFB481
      81FFE3B9AFFFFFE7BFFFFFE1B6FFFFE7BDFFA2A6DEFF8D9AEDFFFFF5EBFFFFF2
      F4FFFFF1F4FFFFF0F2FFFFF0F1FFFFF2F2FFFFF2F3FFFFF5F5FFFFF0F0FFECD2
      D2FFC9A3A3FFB67D68FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF027A03FF3AD36BFF048108FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF038405FF35BB61FF028604FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF007C
      00FF71EA96FF47D976FF3ED46EFF3ED46EFF3DD36DFF3CD16BFF39CF69FF34C4
      60FF007300FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFB46D44FFB884
      85FFE6C2C3FFFFFBFDFFFFF6F9FFFFF8ECFF919EEDFFA1A4DEFFFFE4B8FFFFDB
      AEFFFFDDB3FFF3D6BBFFF8DFCFFFFEEAE4FFFFEFF1FFFFEDF1FFFFEFF1FFFFF2
      F3FFE4C8C8FFBA7E63FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4DCC66FF027D04FF40DB75FF3ED271FF048208FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF038306FF3DC36CFF37B962FF028804FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF007C
      00FF77EE9BFF4ADB77FF3FD56FFF3FD56FFF3ED46EFF3DD46EFF3CD06AFF35C5
      60FF007300FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFB26C48FFBE8A
      8AFFE9C7C8FFFFFAFDFFFFF7FAFFFFFDF7FF8198FCFFB3BCFAFFFFF8F7FFFFF5
      F8FFEFE2E1FFDDCCC1FFEED3BDFFFEDBB8FFFFD5A8FFFFD4A9FFFFDAB7FFFFE3
      CDFFD8B5AFFFBF8463FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0081
      00FF038004FF44DC77FF46E47EFF39C468FF048308FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF038205FF3ABF69FF3BBE6BFF3ABB65FF018D
      03FF008100FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF007D
      00FF7CEE9EFF4EDD7BFF41D771FF40D670FF3FD56FFF3ED46EFF3CD26CFF36C6
      61FF007400FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFB26C4EFFC390
      90FFECC7B7FFFFE5BAFFFFE1B7FFFFEABFFF7185E9FFC5C1E3FFFFF2E5FFFEF2
      F2FFC8BEBFFFD8CDD0FFF9EDF2FFFFF2F6FFFFF2F6FFFFF0F1FFFFE8E0FFFFE4
      CFFFCFA79CFFAB704CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFA9D8A9FF007E
      00FF45E17AFF46E17DFF44E27AFF37B962FF048208FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF027F03FF3BC26AFF3EC36CFF3DBC6AFF3ABB
      67FF008D00FFADE1ADFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF007E
      00FF80F1A0FF53E07FFF42D973FF41D872FF40D670FF41D771FF3DD36DFF37C7
      62FF007500FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFAF6E53FFC793
      93FFF0D5D6FFFFFCFEFFFFF8FAFFFFFBEDFF637EF6FFD6CCD9FFFFE7C4FFD5BC
      9AFF807160FFF0CFACFFFFE9C7FFFFE8CFFFFFE9D9FFFFEBE7FFFFF0F4FFFFF6
      FAFFC7A2A3FFC17B46FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFA6D8A6FF058505FF49E4
      7FFF4AE47FFF45DF79FF46E57CFF33AD5AFF047306FF038007FF06830AFF0583
      0AFF027E04FF138715FF138715FF138715FF138714FF138715FF138715FF1186
      13FF168918FF000000FF000000FF000000FF000000FF000000FF000000FF067F
      06FF057C05FF057C05FF057C05FF057E05FF077F07FF057E05FF007C00FF0481
      07FF048207FF048207FF048307FF037705FF46E27AFF48E77EFF42D172FF3EBC
      69FF3DBE69FF009000FF0D920EFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF007F
      00FF6CED95FF55E080FF44DA74FF42D973FF41D872FF41D771FF3ED46EFF38C8
      63FF007600FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFAF6C55FFCC98
      98FFF1DCDDFFFFFCFEFFFFF8FAFFFFFFF8FF5277FFFFE9E6F9FFFFFBFBFFD5D2
      D8FF4B4E50FF3B4953FF666969FFAF9C8FFFFAD4BFFFFFDFBEFFFFD5A7FFFFD7
      A9FFC09088FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA4D8A4FF058804FF4DE783FF4DE7
      83FF48E17BFF46E07AFF45DD78FF36AE5EFF30AE55FF31B057FF30AD55FF2FAF
      55FF2EAC52FF2CAB51FF2BAC50FF2AA84EFF28A74BFF2BAA50FF2AAA4FFF2BAC
      51FF268326FF000000FF000000FF000000FF000000FF000000FF000000FF2177
      21FF2AAE53FF28A84DFF29A94EFF27A84CFF2AA94FFF2BAA50FF2DAB4FFF2EAC
      53FF2FAD55FF30AE55FF31AE57FF2EA952FF42D374FF4AE57DFF4BE67EFF44D4
      75FF40BC6BFF3FBE6BFF019202FF1CA934FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008800FF0087
      00FF008600FF008500FF008400FF008300FF008200FF008100FF008000FF007F
      00FF4AE27DFF4BDF7AFF45DC76FF44DA74FF43D973FF42DA74FF3FD46EFF3BCB
      66FF007600FF007600FF007500FF007300FF007300FF007100FF007000FF0070
      00FF006E00FF006E00FF000000FF000000FF000000FF000000FFAF6F5BFFD29E
      9EFFF5D4C0FFFFE9C8FFFFEBD0FFFFF5D6FF466BF8FFF9ECE9FFFFF7F2FFF6F1
      F3FF617F90FF87A2B6FF5F6F71FF1E6C32FF046815FF348A3DFFEBE7E2FFFFFB
      FFFFB88B8BFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF008900FF028A02FF50EA86FF50EA86FF4BE4
      7EFF4AE37DFF49E37CFF44D675FF3DBC68FF3DBF69FF3CC069FF3BBE68FF3ABE
      69FF3BBE68FF3ABE67FF38BD67FF37BD66FF36BC65FF35BB64FF37BE67FF35B7
      64FF006B00FF000000FF000000FF000000FF000000FF000000FF000000FF0062
      00FF40D275FF33BA62FF35BB63FF36BB64FF37BC65FF38BD66FF38BD67FF39BD
      66FF3ABE67FF3BBE68FF3CBF69FF3CBC68FF3BB766FF48DF7AFF49E37CFF4CE8
      80FF48D777FF42BB6CFF41BD6CFF019602FF23B742FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008900FF95FB
      B2FF5CE486FF46DD76FF48DC76FF46DC77FF47DB75FF45DB75FF45DB75FF46DC
      76FF47DE78FF47DE78FF46DD77FF45DC76FF44DB75FF43DA74FF41D771FF3FD2
      6CFF3CCD68FF3BCC67FF3ACB67FF39CA66FF38C863FF36C762FF36C662FF34C6
      61FF2DB753FF006E00FF000000FF000000FF000000FF000000FFB07061FFD7A3
      A3FFF6E6E3FFFFF7F0FFFFF2E5FFFFF7D9FF3C63F7FFFFE9C5FFFFE1BAFFFFE1
      B4FF7194ACFF80C0CBFF12952AFF2CB148FF31B44BFF179329FF147918FFFFF4
      EFFFB28181FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF2DC249FF028E04FF53EE89FF53ED89FF4EE781FF4DE6
      80FF4BE57FFF4BE47EFF4AE57EFF4AE67EFF49E67DFF46E37BFF45E27AFF44E1
      79FF43E078FF42DF77FF41DE76FF40DD75FF3FDC74FF3FDB73FF3FDE75FF38C0
      69FF06770BFF000000FF000000FF000000FF000000FF000000FF000000FF116F
      14FF50E084FF3BD76FFF3AD76FFF3DDA72FF40DC74FF40DD75FF43DF77FF44E0
      78FF47E37AFF47E47BFF48E57CFF4BE77EFF4BE77FFF4BE57EFF4BE47EFF4DE6
      80FF4FEB83FF49D97AFF44BB6EFF44BE6FFF019903FF28CB4AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008A00FF96FA
      B0FF79EF9BFF5AE786FF54E683FF53E582FF54E382FF53E481FF50E27EFF4FE1
      7DFF50E37FFF4CE17CFF48DF79FF46DD77FF46DC76FF45DB75FF43DA74FF41D9
      73FF40D56FFF3FD56FFF3FD46EFF3CD26CFF3BD16BFF3AD06AFF3ACE68FF37CA
      64FF2FBB57FF006F00FF000000FF000000FF000000FF000000FFAF7368FFDDA8
      A8FFF8EBECFFFFFDFEFFFFFAFBFFFFFFFBFF3864FFFFFFFFFAFFFFF9FCFFFFFD
      FFFF95B6D2FF1FA342FF47D870FF5AEC86FF49D36DFF36B751FF158F27FF2C82
      1FFFAF797CFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF36CA50FF059207FF56F18DFF56F08BFF51EA84FF4EE781FF4DE6
      80FF4CE57FFF4BE47EFF4AE37DFF49E27CFF48E17BFF47E07AFF46DF79FF45DE
      78FF44DD77FF43DC76FF42DB75FF41DA74FF40D973FF40D973FF41DC75FF3CC6
      6EFF06780BFF000000FF000000FF000000FF000000FF000000FF000000FF106C
      13FF51E285FF48D979FF3CD56FFF3DD670FF3FD872FF42DB75FF42DB75FF45DE
      78FF45DE78FF46DF79FF48E27BFF49E27CFF4CE57FFF4CE57FFF4DE680FF4EE7
      81FF50E983FF52EF86FF4DDC7CFF44BC6FFF46C071FF029D05FF28CC48FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008A00FF97FB
      B2FF7EF29FFF62EA8CFF5CE989FF5CEA89FF58E886FF56E785FF56E685FF56E4
      82FF52E380FF52E27FFF4FE17DFF49DF7AFF47DD78FF46DD77FF45DB75FF43DA
      74FF42DA74FF41D771FF40D670FF40D670FF3DD36DFF3CD16BFF3CD16BFF37CC
      66FF2FBC57FF007000FF000000FF000000FF000000FF000000FFB0756EFFE1AC
      ACFFFAEBE1FFFFF7F0FFFFF7F3FFFFFFF6FF3966FFFFFFFFFBFFFFF9FCFFFFFC
      FFFF99D0C0FF25BB4EFF69FF9CFF5FF48EFF55E47EFF46CE68FF34B34DFF118C
      22FF32762AFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4BD05EFF049507FF59F590FF6BF49BFF51EB85FF51EA84FF50E983FF4FE8
      82FF4EE781FF4DE680FF4CE57FFF4BE47EFF4AE37DFF49E27CFF48E17BFF47E0
      7AFF46DF79FF45DE78FF44DD77FF43DC76FF42DB75FF42DB75FF43DE76FF3FCC
      72FF06770BFF000000FF000000FF000000FF000000FF000000FF000000FF106E
      13FF52E286FF57DC83FF3BD66FFF3ED771FF40D973FF42DB75FF43DC76FF45DE
      78FF46DF79FF48E17BFF49E27CFF4BE47EFF4CE57FFF4DE680FF4FE882FF50E9
      83FF51EA84FF53EC86FF56F289FF4EDE80FF46BB70FF48C173FF04A006FF27C4
      46FF000000FF000000FF000000FF000000FF000000FF000000FF008B00FF98FC
      B2FF83F4A2FF65ED8FFF60EB8CFF61EB8BFF5EEA8AFF5CE989FF59E887FF56E7
      85FF55E583FF53E481FF51E37FFF50E37FFF4ADF7AFF47DE78FF46DC76FF44DB
      75FF43DA74FF41D872FF40D670FF3FD56FFF3ED46EFF3DD36DFF3CD16BFF38CD
      67FF31BB56FF007000FF000000FF000000FF000000FF000000FFB07874FFE7B2
      B3FFFDE7D0FFFFEBCBFFFFE6C5FFFFEDBBFF3C65F4FFFFE7B2FFFFDCB1FFFFDC
      B1FFB7CF97FF2BC759FF62FC91FF65FD98FF5DF28CFF53E27CFF44CB65FF31B0
      4AFF11871FFF4A7816FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF58D2
      67FF0DA014FF5FFE98FF93FAB8FF6BF198FF50ED85FF53EC86FF52EB85FF51EA
      84FF50E983FF4FE882FF4EE781FF4DE680FF4CE57FFF4BE47EFF4AE37DFF49E2
      7CFF48E17BFF47E07AFF46DF79FF45DE78FF44DD77FF44DD77FF44DF78FF43D5
      77FF06780AFF000000FF000000FF000000FF000000FF000000FF000000FF0869
      0AFF51E488FF65DF8FFF3AD76EFF40D973FF41DA74FF43DC76FF45DE78FF46DF
      79FF48E17BFF49E27CFF4BE47EFF4CE57FFF4EE781FF4FE882FF50E983FF52EB
      85FF53EC86FF54ED87FF56EF89FF59F58CFF52E282FF48BD71FF4DC27AFF09A4
      0EFF048D06FF000000FF000000FF000000FF000000FF000000FF008C00FF9AFB
      B3FF86F4A4FF6BEF93FF65ED8FFF63EC8EFF61EC8CFF60EB8BFF5EEA8AFF5BE9
      88FF57E786FF56E684FF54E482FF51E37FFF50E27FFF49DF7AFF46DD77FF45DC
      76FF44DA74FF42D973FF41D872FF40D670FF3FD56FFF3ED46EFF3ED26CFF3ACE
      68FF30BC57FF007100FF000000FF000000FF000000FF000000FFAB7775FFEAB4
      B4FFFCFDFDFFFFFEFFFFFFFFFFFFFFFFFFFF446FFFFFFFFFFEFFFFFCFFFFFFFB
      FFFFFFFBFFFF3BC062FF46DF73FF60FA91FF64FD97FF5CF08AFF52E07AFF41C7
      61FF2FAC46FF10831DFF5D7D19FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF53CF
      61FF10A519FF70FFA6FFA7FDC7FF8EF6B0FF51F085FF53EE88FF54ED87FF53EC
      86FF52EB85FF51EA84FF50E983FF4FE882FF4EE781FF4DE680FF4CE57FFF4BE4
      7EFF4AE37DFF49E27CFF48E17BFF47E07AFF45DE78FF44DD77FF44DF78FF48DC
      7FFF057909FF000000FF000000FF000000FF000000FF000000FF000000FF0768
      08FF53E789FF75E298FF39D86EFF41DA74FF42DB75FF44DD77FF46DF79FF47E0
      7AFF49E27CFF4BE47EFF4CE57FFF4EE781FF4FE882FF51EA84FF52EB85FF53EC
      86FF55EE88FF56EF89FF58F18BFF59F38CFF5BFA91FF51D57FFF50C37DFF0BA7
      13FF038F05FF000000FF000000FF000000FF000000FF000000FF008C00FF9CFC
      B4FF89F5A5FF71F197FF6BF094FF6BEF93FF69EE91FF65ED90FF63EC8EFF62EB
      8DFF5EE98AFF58E886FF56E684FF54E482FF51E37FFF4FE17DFF48DF79FF46DD
      77FF45DC76FF44DA74FF41D973FF41D771FF40D670FF3ED46EFF3DD36DFF3ACF
      69FF31BD58FF007200FF000000FF000000FF000000FF000000FFAD7B7AFFECB5
      B5FFFEF9F0FFFFF9F1FFFFFAF3FFFDF7F4FF5279FEFFFFFFF8FFFFFAFCFFFFFA
      FCFFFFFBFFFFF0F6F2FF26BD57FF50EB7EFF60FA92FF64FC97FF5BEE88FF50DD
      77FF3FC45EFF2CA842FF0E7E17FF727D1DFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4BD15BFF049E0CFF6AFFA0FFA6FCC5FF91F7B3FF53F086FF54EF89FF55EE
      88FF54ED87FF53EC86FF52EB85FF51EA84FF50E983FF4EE781FF4DE680FF4CE5
      7FFF4BE47EFF4AE37DFF49E27CFF48E17BFF47E07AFF46DF79FF46E07AFF4CE4
      83FF057A09FF000000FF000000FF000000FF000000FF000000FF000000FF0D6B
      0FFF51E788FF85E7A6FF38D86DFF42DB75FF43DC76FF45DE78FF47E07AFF49E2
      7CFF4AE37DFF4CE57FFF4EE781FF4FE882FF51EA84FF52EB85FF54ED87FF55EE
      88FF56EF89FF58F18BFF5AF38DFF59F38DFF60FC97FF53D080FF05A309FF2BD1
      4AFF000000FF000000FF000000FF000000FF000000FF000000FF008D00FF9EFD
      B6FF8FF6A9FF8AF6A7FF88F5A6FF87F6A5FF85F4A3FF84F3A3FF82F4A1FF81F3
      A0FF7AF19CFF62EA8DFF58E886FF56E684FF53E481FF52E27FFF4CE17CFF48DF
      79FF51E17FFF5BE486FF58E183FF54DF7FFF4FDD7CFF4CDA79FF47D875FF3FD2
      6DFF32BF5BFF007300FF000000FF000000FF000000FF000000FFB37F7FFFEDB9
      B9FFFFF1D3FFFFEBCBFFFFEAC5FFEFDAC7FF627FECFFFFE7B6FFFFDEB4FFFFDC
      B1FFFFDBAFFFFFDAB1FFD1D39CFF1FBE51FF58F285FF61FA92FF62FB95FF5AEC
      86FF4EDA74FF3DC05AFF29A43EFF0D7C15FF655412FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF4DD25DFF059D0AFF6AFFA0FFA7FDC6FF93F7B4FF54F187FF55F0
      8AFF56EF89FF55EE88FF54ED87FF52EB85FF4EEA82FF4AE980FF49E87FFF48E7
      7EFF47E67DFF47E57CFF46E47BFF45E37AFF45E279FF45E179FF47E17BFF4DEA
      87FF05790AFF000000FF000000FF000000FF000000FF000000FF000000FF0D6D
      0FFF53E889FF8FEAAEFF37DA6DFF3DDC72FF3EDD73FF40DF75FF42E177FF44E3
      7AFF46E57CFF47E67CFF49E87EFF4BEA81FF4CEB81FF50ED84FF55EE88FF57F0
      8AFF58F18BFF59F28CFF5AF38EFF60FA96FF65FF9CFF06A209FF29CF47FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008E00FFACFF
      C2FF9EFDB5FF9CFDB4FF9BFDB5FF9CFCB3FF9AFCB4FF99FBB2FF98FBB3FF98F9
      B0FF90F5AAFF7BF19CFF5EE98AFF57E786FF55E583FF52E380FF4DE17CFF47DE
      78FF4EE581FF7AF09CFF84F2A2FF80EFA0FF7CEF9DFF77EC9AFF70EB96FF6DE8
      93FF4ED87AFF007300FF000000FF000000FF000000FF000000FFB98585FFF0BE
      BDFFFFFFFFFFFFFFFFFFFFFFFFFFDFE7FFFF7495FFFFFFFFFFFFFFFDFFFFFFFC
      FFFFFFFDFFFFFFFCFFFFFFFDFFFFA6E0B7FF26C356FF5CF68AFF62FB94FF61F9
      93FF59EA84FF4CD771FF3ABD57FF269F39FF0D7912FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF59D968FF029D05FF6BFF9FFFA6FFC7FF95F8B7FF54F2
      8AFF56F18BFF56EF89FF55EE88FF51ED86FF68EE96FF81F1A7FF7BF0A3FF79EF
      A1FF77EC9FFF75EB9CFF72EA9AFF70E998FF6DE997FF6EE896FF49E37EFF4EEC
      88FF087E0DFF000000FF000000FF000000FF000000FF000000FF000000FF0E6C
      10FF54E98CFF8FEAAEFF6DE395FF6DE395FF70E697FF74E89AFF75E99CFF79EB
      9EFF7BECA0FF7DEEA3FF7FEFA5FF81F1A5FF84F2A7FF87F3ABFF53F087FF58F1
      8BFF5BF48EFF5CF590FF62FB98FF64FE9AFF04A308FF42D259FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF008E00FF008E
      00FF008C00FF008C00FF008B00FF008A00FF008900FF008800FF008700FF0086
      00FF98F8B1FF7FF39FFF62EB8DFF5BE988FF56E785FF56E682FF4BDF7AFF46DB
      76FF007D00FF007C00FF007B00FF007A00FF007900FF007800FF007700FF0076
      00FF007500FF007400FF000000FF000000FF000000FF000000FFBF8B8BFFF2C3
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFD1DDFFFF85A3FFFFFFFFFFFFFFFDFFFFFFFE
      FFFFFFFCFEFFFFFBFDFFFFFBFDFFFFFEFFFF78D697FF33D063FF5DF78BFF64FD
      95FF60F892FF57E882FF4AD46EFF38B953FF229C34FF0E7F1AFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF009700FF009C04FF6AFE9FFFA8FEC7FF96F9
      B8FF56F38BFF56F18AFF57F08AFF52EF87FF9CF7BCFFAAF9C5FFA4F8C1FFA0F7
      BFFF9DF6BBFF99F5B9FF96F5B7FF92F4B3FF8EF1B2FF8CF2B1FF82EFA9FF53EE
      8CFF007700FF000000FF000000FF000000FF000000FF000000FF000000FF0063
      00FF56EA8FFF8BEDADFF8BECACFF8DEEAFFF8FEFB1FF93F1B3FF93F2B5FF95F2
      B5FF97F3B7FF99F5BAFF9BF6BCFF9CF5BBFFA0F6BEFF9EF7BBFF51F186FF5AF3
      8DFF5BF58FFF63FC99FF64FF9AFF04A007FF57D86EFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0086
      00FF99FBB1FF81F2A0FF62EC8DFF5EEA8AFF59E887FF57E685FF4EE17BFF42D5
      6FFF007E00FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC49191FFF5C4
      BEFFFFE7BDFFFFE3B9FFFFE5B7FFC4BDCDFF95A0DDFFFFE3B2FFFFDEB2FFFFDC
      B0FFFFDBB1FFFFDAAFFFFFD9AEFFFFD8AEFFFFD9B2FF4FC56DFF41DC6FFF5EF8
      8DFF64FD96FF5FF58FFF56E780FF45D669FF469F58FF5D695DFF6C676CFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF9ADE9AFF039F06FF69FE9FFFA9FE
      C8FF97F8B9FF55F48BFF57F28DFF59F48FFF4BE97CFF4BED80FF49EC7FFF48EB
      7EFF48EA7DFF47E97CFF46E87AFF42E476FF42E375FF43E274FF45E276FF4AE6
      7CFF229022FF000000FF000000FF000000FF000000FF000000FF000000FF1C78
      1CFF3DDA72FF37D66AFF37D76AFF3ADA6AFF3ADA6DFF3EDF73FF40E175FF42E3
      77FF43E578FF45E77AFF47E97DFF42E676FF69F498FF8DF6B0FF53F288FF5CF5
      8FFF63FC99FF64FD9AFF03A105FF29CF4AFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0087
      00FF9AFBB3FF83F3A2FF66ED8FFF60EB8BFF5DE989FF56E785FF4EE17DFF42D4
      6FFF007F00FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC67637FFC99696FFF7CD
      CDFFFFFFFFFFFEFFFFFFFFFFFFFFB8CAFFFFA5BBFFFFFFFFFFFFFBFCFFFFFDFE
      FFFFFFFFFFFFF5F3F6FFFFFEFFFFF4F1F4FFF6F0F4FFFFFBFCFF37C664FF4DE8
      7BFF5EF88DFF64FF96FF5CF68CFF719E7FFF867D85FF918F91FF747473FF7066
      59FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF9DE09DFF039F05FF69FF
      9FFFA8FFC8FFA0F9BFFF95FAB7FF51F083FF048006FF06860AFF099311FF0890
      10FF018704FF1C941FFF1D9520FF1E9521FF1E9521FF1E9421FF1E9521FF1E95
      21FF2C9D2EFF000000FF000000FF000000FF000000FF000000FF000000FF0880
      08FF138513FF138513FF138513FF138513FF138513FF0B830BFF008201FF0B8C
      11FF128E15FF118D14FF108C13FF037606FF6EF199FF7DF7A6FF58F58DFF62FB
      98FF63FE99FF019C04FF129E14FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0088
      00FF9BFCB4FF84F4A3FF67EE91FF61EC8CFF5EEA8AFF58E986FF50E27EFF42D5
      70FF007F00FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFCC8F67FFCF9B9BFFFAD4
      D3FFFFFFFFFFEBEBEBFFFFFFFCFFA4B5EDFFA9BAEDFFFFFFFFFFBEBDBDFFF6F3
      F3FFCFCECEFFABA9A9FFF5F2F2FF636363FFCAC7C7FFC5BDBFFF3D5043FF2EC8
      5EFF54F081FF5FF88FFF8CA193FFBAB5B8FFDAD9D9FFBAB9B4FF929395FF4148
      94FF453477FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF9FE09FFF009F
      02FF6BFF9EFFA9FFC9FF96FBBAFF54F68AFF06890AFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF098E0FFF75F7A1FF6CF79BFF60FB96FF62FD
      98FF019A02FFA4E1A4FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0089
      00FF9CFCB4FF86F6A4FF69EF93FF63EC8EFF61EB8BFF5CE889FF4FE37FFF44D5
      6FFF008000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFDABEBBFFD4A0A0FFFEDC
      DBFFA4A7A7FF666666FFFFFFFFFF33312EFF898989FFC0C0C0FF151515FFBEBE
      BEFF6C6D6DFF232323FFE3E1E1FF393A3AFF4B4B4BFFDEDBDBFF342F34FF446C
      4DFF2CD25FFF97B6A0FFD4CFD2FFFFFFFFFFF7F5ECFF98A2D4FF233CCFFF1B30
      C6FF0D17AEFF4F2D60FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0096
      00FF02A103FF6DFEA0FF9EFFC4FF59F88FFF0A930EFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0A9410FF75FAA2FF62FD99FF60FA96FF019A
      03FF008F00FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF008A
      00FF9CFCB5FF87F5A5FF6BF094FF65ED8FFF60EB8CFF5DE98AFF4FE37EFF43D4
      6FFF008100FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFDAC1C1FFDAA6A6FFFFE4
      E4FFA1A3A3FF1D1D1DFFCFCFCDFF6F7481FF2B2B29FFFCFEFEFF676969FF4F50
      50FFFFFFFFFF3E4040FF938F8FFFD4C9C9FF2C2F2FFFD2BDBDFF847576FF4D3F
      46FF93D1A7FFC0B7BDFFF3F2F2FFFFFFFAFF95A7F1FF284CE2FF3A61EBFF2B47
      D5FF1625B8FF01039AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF64E174FF03A103FF6AFF9EFF65FF9BFF0A940FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0B9511FF67FD9FFF5FF994FF029503FF2CC7
      4AFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF008A
      00FF9DFDB4FF8AF6A6FF72F197FF6CEF94FF67ED90FF63EB8DFF55E482FF43D6
      71FF008100FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD6BBBBFFDAA5A5FFFDE2
      E2FFFFFFFFFF565454FF797472FFB4AEDEFF343533FFAB9494FFA28888FF383B
      3BFFC19191FF574F4FFF675A5AFF9A7878FF3F4343FFA58E8EFF7E7272FF5050
      51FF000000FFBFBEBEFFD2D2CCFFA7B6ECFF2B52E7FF4C7AFFFF416AF1FF2C48
      D6FF1728B9FF04069FFF431858FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF5CE06FFF04A506FF63FD97FF0A980FFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0B9811FF5DF992FF039704FF3AD159FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF008B
      00FF9EFDB5FF8FF7A9FF8BF5A7FF88F4A5FF84F4A3FF80F2A0FF7AEF9CFF50DC
      7BFF008200FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE7D1D1FFAC8282FFB98B
      8BFFD3A3A3FF575050FF696263FF966B5CFF434444FF7A4634FF564842FF4C4D
      4DFF000000FF4B4D4DFF767777FF757676FF4E4E4EFF000000FF585959FF7474
      74FF000000FF000000FFB3B6BFFF2A4ADDFF4A78FFFF4A7AFFFF3B61E9FF2842
      D1FF1523B6FF01019AFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF5EDF71FF06A509FF0D9910FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF019301FF029704FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF008C
      00FFACFFC0FF9EFDB5FF9CFCB5FF9AFDB5FF98FBB2FF96FAB1FF97FAB1FF93F9
      AFFF008300FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF7F8181FF8082
      82FF000000FF4C4D4DFF919292FF7F5632FF4F5050FF6B3721FF564D49FF5857
      57FF7D7D7DFF565656FF696969FF585858FF686868FF5A5A5AFF606060FF0000
      00FF000000FF000000FF000000FF273DCBFF436DF5FF3F68F0FF3050DCFF2136
      C7FF070AA1FF3C216BFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF69E77CFF109F14FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0EA211FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF008C
      00FF008B00FF008A00FF008A00FF008800FF008800FF008700FF008500FF0085
      00FF008300FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFBEBEBEFF7676
      76FF898989FF565656FF707070FF5A5857FF676462FF5F5F5FFF5D534FFF7F7D
      7CFF6C6C6CFF9C9C9CFF949494FFA1A1A1FF000000FFA8A8A8FF000000FF0000
      00FF000000FF000000FF000000FF000000FF1A27B9FF253DCDFF1A2BBDFF0506
      A0FF3B206FFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFA0A0
      A0FF6E6E6EFFB9B9B9FFACACACFFB2AEABFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF363592FF383184FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000E4104107000000000000000000000000
      C4924923000000000000000000000000CFFFFE33000000000000000000000000
      FFFFFE1F000000000000000000000000CFFFFC03000000000000000000000000
      CFFFF803000000000000000000000000FFFFF00F000000000000000000000000
      CFFFE013000000000000000000000000CFFF8033000000000000000000000000
      FFFF007F000000000000000000000000CF8100F3000000000000000000000000
      CE0003F3000000000000000000000000FC0003FF000000000000000000000000
      C80007F3000000000000000000000000C8001FF3000000000000000000000000
      F0000FFF000000000000000000000000C0000FF3000000000000000000000000
      C0000FF3000000000000000000000000F0000FFF000000000000000000000000
      C0000FF3000000000000000000000000C0000FF3000000000000000000000000
      F8001FFF000000000000000000000000C8001FF3000000000000000000000000
      CC003FF3000000000000000000000000FE007FFF000000000000000000000000
      CF81FFF3000000000000000000000000C4924923000000000000000000000000
      E4104107000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE00000FFFFFFC7FFFFFFFFFFF0FFF9FFC000007FFFFF81FFE0000007
      E03FF07F8000007FFFFF803FC0000003E01FE01F8000007FFFE0000FC0000003
      C007C00F8000007FFFE00003C0000003C00380078000007FFFE00001C0000003
      C001000780000003FFE00001C0000003E000000380000001FFE00001C0000003
      E000000380000001FF600001C0000003E000000780000001FF200001C0000003
      E000000F80000001FF000001C0000003F800003F80000001FF000001C0000003
      FC00007F8000000180000001C0000003FF0000FF8000000180000001C0000003
      FF8001FF8000000180000001C0000003FFC001FF8000000180000001C0000003
      FF8000FF8000000180000001C0000003FF80007F8000000180000001C0000003
      FF00003F8000000180000001C0000003FF00003F8000000180000001C0000003
      FE00001F8000000180000001C0000003FE00800F80000001FF000001C0000003
      FE00C00F80000001FF000001C0000003FC01E007C0000001FF200001C0000003
      FC03F003FE000001FF600001C0000003FC03F803FE000001FFE00001C0000003
      FE07FC03FE000001FFE00001C0000003FF07FE0FFE000001FFE00001C0000003
      FFEFFF3FFE000001FFE00001E0000007FFFFFFFFFF000003FFE00001FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFE007FFE00FFFFFFFFFFFFFFFFFFFFF
      FFE007FFE0007FFFFFFF7FFFFFFEFFFFFFE007FFC00007FFFFFE7FFFFFFE7FFF
      FFE007FFC00003FFFFFC7FFFFFFE3FFFFFE007FFC00003FFFFF07FFFFFFE1FFF
      FFE007FFC00003FFFFE07FFFFFFE07FFFFE007FFC00003FFFFC07FFFFFFE03FF
      FFE007FFC00003FFFF800007E00001FFFFE007FFC00007FFFF000007E00000FF
      C0000003C00007FFFE000007E000007FC0000003C00007FFFC000007E000003F
      C0000003C00007FFF8000007E000001FC0000003C00007FFF0000007E000000F
      C0000003C00003FFE0000007E0000007C0000003C00001FFE0000007E0000007
      C0000003C00000FFF0000007E000000FC0000003C000007FF8000007E000001F
      C0000003C000007FFC000007E000003FC0000003C000003FFE000007E000007F
      FFE007FFC000001FFF000007E00000FFFFE007FF8000000FFF800007E00001FF
      FFE007FF80000007FFC07FFFFFFE03FFFFE007FF80000003FFE07FFFFFFE07FF
      FFE007FF80000003FFF07FFFFFFE0FFFFFE007FF80000801FFF87FFFFFFE1FFF
      FFE007FF80084C03FFFC7FFFFFFE7FFFFFE007FFC8001E03FFFE7FFFFFFEFFFF
      FFE007FFC000BF07FFFFFFFFFFFFFFFFFFFFFFFFE0FFFF9FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
