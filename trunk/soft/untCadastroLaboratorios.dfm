inherited frmCadastroLaboratorios: TfrmCadastroLaboratorios
  Left = 293
  Top = 146
  Caption = 'Cadastro de Laboratorios'
  ClientHeight = 459
  ClientWidth = 569
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 575
  ExplicitHeight = 487
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
      Caption = 'Cadastro de Laboratorios'
    end
    inherited tlbBotoes: TToolBar
      Width = 554
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
    ActivePage = TabSheet1
    ExplicitTop = 89
    ExplicitWidth = 569
    object TabSheet1: TTabSheet [0]
      Caption = 'Lista de dados'
      ImageIndex = 9
      object dbgLabs: TDBGrid
        Left = 0
        Top = 0
        Width = 625
        Height = 337
        DataSource = dmcadlab.dtsLabs
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgLabsDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_lab'
            Title.Caption = 'COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_representante'
            Title.Caption = 'REPRESENTANTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Title.Caption = 'TELEFONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpj'
            Title.Caption = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rua'
            Title.Caption = 'RUA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Title.Caption = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Title.Caption = 'BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Title.Caption = 'CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estado'
            Title.Caption = 'ESTADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pais'
            Title.Caption = 'PAIS'
            Visible = True
          end>
      end
    end
    inherited pag1Cad: TTabSheet
      Caption = 'Dados cadastrais'
      ExplicitLeft = 4
      ExplicitTop = 41
      ExplicitWidth = 561
      ExplicitHeight = 371
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 561
        Height = 169
        Align = alTop
        Caption = '| Cadastro de Laboratorios |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 25
          Width = 31
          Height = 13
          Caption = 'Nome:'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 184
          Top = 55
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 21
          Top = 52
          Width = 18
          Height = 13
          Caption = 'Tel:'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 81
          Width = 31
          Height = 13
          Caption = 'Ende.:'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 295
          Top = 82
          Width = 11
          Height = 13
          Caption = 'N:'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 15
          Top = 105
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 248
          Top = 110
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 422
          Top = 110
          Width = 36
          Height = 13
          Caption = 'Estado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 22
          Top = 137
          Width = 23
          Height = 13
          Caption = 'Pais:'
          FocusControl = DBEdit10
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 311
          Top = 25
          Width = 40
          Height = 13
          Caption = 'Repres.:'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 64
          Top = 23
          Width = 233
          Height = 21
          Hint = 'Nome do Laboratorio'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'nome'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 224
          Top = 51
          Width = 328
          Height = 21
          Hint = 'CNPJ'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cnpj'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 64
          Top = 50
          Width = 114
          Height = 21
          Hint = 'Telefone'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'telefone'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 64
          Top = 78
          Width = 225
          Height = 21
          Hint = 'Endere'#231'o'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'rua'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 310
          Top = 78
          Width = 73
          Height = 21
          Hint = 'Numero'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'numero'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 64
          Top = 106
          Width = 175
          Height = 21
          Hint = 'Bairro'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'bairro'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 288
          Top = 106
          Width = 129
          Height = 21
          Hint = 'Cidade'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'cidade'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object DBEdit10: TDBEdit
          Left = 64
          Top = 134
          Width = 73
          Height = 21
          Hint = 'Pais'
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'pais'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 461
          Top = 105
          Width = 44
          Height = 21
          Hint = 'Estado - UF'
          DataField = 'estado'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'uf'
          ListField = 'uf'
          ListSource = dmcadlab.dtsEstados
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBEdit1: TDBEdit
          Left = 357
          Top = 22
          Width = 196
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'nome_representante'
          DataSource = dmcadlab.dtsLabs
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 440
    Width = 569
    ExplicitTop = 440
    ExplicitWidth = 569
  end
end
