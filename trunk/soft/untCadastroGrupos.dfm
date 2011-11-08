inherited frmCadastroGrupos: TfrmCadastroGrupos
  Caption = 'Cadastro de Grupos'
  ClientHeight = 523
  ClientWidth = 573
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitWidth = 579
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbPainel: TCoolBar
    Width = 573
    Bands = <
      item
        Control = tlbBotoes
        ImageIndex = -1
        MinHeight = 55
        Width = 567
      end>
    ExplicitWidth = 573
    inherited lblTitulo: TLabel
      Caption = 'Cadastro de Grupos'
    end
    inherited tlbBotoes: TToolBar
      Width = 553
      ExplicitWidth = 553
      inherited btnVoltar: TToolButton
        OnClick = btnVoltarClick
      end
      inherited btnAvan: TToolButton
        OnClick = btnAvanClick
      end
    end
  end
  inherited pagCadastro: TPageControl
    Width = 573
    ActivePage = TabSheet1
    ExplicitWidth = 573
    object TabSheet1: TTabSheet [0]
      Caption = 'Tabela de Dados'
      ImageIndex = 9
      DesignSize = (
        565
        371)
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 561
        Height = 345
        Anchors = [akLeft, akTop, akRight]
        DataSource = dtmcadgrupo.dtsGrupos
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
            FieldName = 'descricao'
            Visible = True
          end>
      end
    end
    inherited pag1Cad: TTabSheet
      Caption = 'Cadastro de Informa'#231#245'es'
      ExplicitWidth = 565
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 565
        Height = 89
        Align = alTop
        Caption = '| Cadastro de Grupos |'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 48
          Width = 37
          Height = 13
          Caption = 'Grupos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 56
          Top = 43
          Width = 121
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'descricao'
          DataSource = dtmcadgrupo.dtsGrupos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  inherited stbCad: TStatusBar
    Top = 504
    Width = 573
    ExplicitTop = 504
    ExplicitWidth = 573
  end
end
