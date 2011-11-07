object frmPesquisaRapidaProdutos: TfrmPesquisaRapidaProdutos
  Left = 648
  Top = 135
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Produtos'
  ClientHeight = 365
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 49
    Height = 13
    Caption = 'Pesquisar:'
  end
  object editPesquisa: TEdit
    Left = 63
    Top = 20
    Width = 209
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 0
  end
  object btnPesquisa: TButton
    Left = 280
    Top = 14
    Width = 65
    Height = 31
    Caption = 'Filtrar'
    TabOrder = 1
    OnClick = btnPesquisaClick
  end
  object dbgProdutos: TDBGrid
    Left = 0
    Top = 96
    Width = 417
    Height = 265
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgProdutosCellClick
    OnDblClick = dbgProdutosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cod'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prod_nome'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 335
        Visible = True
      end>
  end
  object grpBoxProdutos: TGroupBox
    Left = 0
    Top = 48
    Width = 417
    Height = 41
    TabOrder = 3
    object lblCodNome: TLabel
      Left = 8
      Top = 16
      Width = 94
      Height = 16
      Caption = 'Codigo / Nome: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblResultado: TLabel
      Left = 105
      Top = 16
      Width = 4
      Height = 16
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object btnSair: TButton
    Left = 352
    Top = 13
    Width = 59
    Height = 32
    Caption = 'Sair'
    TabOrder = 4
    OnClick = btnSairClick
  end
end
