inherited frmCadastroUsuarios: TfrmCadastroUsuarios
  Caption = 'Cadastro de Usuarios'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited clbPainel: TCoolBar
    inherited lblTitulo: TLabel
      Caption = 'Cadastro de Usuarios'
    end
  end
  inherited pagCadastro: TPageControl
    inherited pag1Cad: TTabSheet
      Caption = 'Tabela de Usuarios'
      ImageIndex = 9
      object DBGrid1: TDBGrid
        Left = 0
        Top = 3
        Width = 558
        Height = 310
        Anchors = [akLeft, akTop, akRight]
        DataSource = dmCadUsuario.dtsUsuarios
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_usuario'
            Title.Alignment = taCenter
            Title.Caption = 'Cod'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario'
            Title.Alignment = taCenter
            Title.Caption = 'Usuario'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'senha'
            Title.Alignment = taCenter
            Title.Caption = 'Senha'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nivel'
            Title.Alignment = taCenter
            Title.Caption = 'Nivel'
            Width = 100
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Cadastro de Usuarios'
      ImageIndex = 10
      object grbDados: TGroupBox
        Left = 0
        Top = 0
        Width = 563
        Height = 137
        Align = alTop
        Caption = '| Cadastro de Usuarios |'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 29
          Top = 96
          Width = 27
          Height = 13
          Caption = 'Nivel:'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 202
          Top = 64
          Width = 34
          Height = 13
          Caption = 'Senha:'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 17
          Top = 64
          Width = 39
          Height = 13
          Caption = 'Usuario:'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 25
          Top = 32
          Width = 31
          Height = 13
          Caption = 'Nome:'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Left = 62
          Top = 89
          Width = 134
          Height = 24
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'nivel'
          DataSource = dmCadUsuario.dtsUsuarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 242
          Top = 59
          Width = 143
          Height = 24
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'senha'
          DataSource = dmCadUsuario.dtsUsuarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 62
          Top = 59
          Width = 134
          Height = 24
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'usuario'
          DataSource = dmCadUsuario.dtsUsuarios
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 62
          Top = 29
          Width = 323
          Height = 24
          BevelInner = bvLowered
          BevelKind = bkFlat
          BevelWidth = 2
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'nome'
          DataSource = dmCadUsuario.dtsUsuarios
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
end
