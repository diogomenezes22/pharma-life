object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Teste DLL'
  ClientHeight = 140
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 257
    Height = 18
    Caption = 'Teste de calculo de valores com DLL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Edit2: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 96
    Width = 257
    Height = 25
    Caption = 'Calcular > ou <'
    TabOrder = 2
    OnClick = Button1Click
  end
end
