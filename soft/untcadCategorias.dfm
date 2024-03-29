inherited frmCadastroCategorias: TfrmCadastroCategorias
  Left = 572
  Top = 227
  Caption = 'Cadastro de Categorias - Produtos'
  ClientHeight = 509
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbPainel: TCoolBar
    inherited lblTitulo: TLabel
      Caption = 'Cadastro de Categorias'
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
    ActivePage = pag2
    object pag2: TTabSheet [0]
      Caption = 'Dados'
      ImageIndex = 9
      DesignSize = (
        563
        371)
      object dbgCategorias: TDBGrid
        Left = 8
        Top = 8
        Width = 409
        Height = 353
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgCategoriasDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_categorias'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Categorias'
            Width = 200
            Visible = True
          end>
      end
    end
    inherited pag1Cad: TTabSheet
      Caption = 'Formulario'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 563
        Height = 89
        Align = alTop
        Caption = '| Cadastro de Categorias | '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblCategoria: TLabel
          Left = 8
          Top = 34
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
        object dbeCategoria: TDBEdit
          Left = 63
          Top = 31
          Width = 209
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'descricao'
          DataSource = dmcadcategoria.dtsCategorias
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
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 484
    Height = 25
    ExplicitTop = 484
    ExplicitHeight = 25
  end
end
