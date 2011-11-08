inherited frmPesquisaLab: TfrmPesquisaLab
  Caption = 'Pesquisa - Laboratorios'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Top = 55
    DataSource = dmcadlab.dtsLabsQr
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_lab'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Alignment = taCenter
        Title.Caption = 'Laboratorio'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'numero'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'estado'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'pais'
        Visible = False
      end>
  end
  inherited btnPesquisa: TButton
    OnClick = btnPesquisaClick
  end
end
