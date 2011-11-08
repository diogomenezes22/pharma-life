object frmPesquisaGeral: TfrmPesquisaGeral
  Left = 356
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Pesquisa'
  ClientHeight = 420
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 23
    Width = 46
    Height = 13
    Caption = 'Pesquisa:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 529
    Height = 345
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object editPesquisa: TEdit
    Left = 64
    Top = 20
    Width = 185
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object btnPesquisa: TButton
    Left = 256
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 462
    Top = 8
    Width = 75
    Height = 41
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object btnAtualizar: TButton
    Left = 352
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 4
  end
end
