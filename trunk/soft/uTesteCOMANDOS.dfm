object frmComandos: TfrmComandos
  Left = 0
  Top = 0
  Caption = 'Teste de Comandos'
  ClientHeight = 408
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 644
    Height = 253
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 0
    Top = 344
    Width = 650
    Height = 35
    Align = alTop
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 262
    Width = 644
    Height = 79
    Align = alTop
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 383
    Width = 650
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = dtmserver.AdoQ
    Left = 496
    Top = 128
  end
end
