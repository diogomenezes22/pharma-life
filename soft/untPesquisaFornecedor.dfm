inherited frmPesquisaForncedor: TfrmPesquisaForncedor
  Caption = 'Pesquisa - Fornecedores'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Top = 67
    DataSource = dmfornecedor.dtsFornecedoresQr
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cod'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'empresa'
        Title.Alignment = taCenter
        Title.Caption = 'Empresa'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone_comercial'
        Title.Caption = 'Tel. Comercial'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone_cel'
        Title.Caption = 'Tel. Cel'
        Title.Color = clHighlight
        Width = 100
        Visible = True
      end>
  end
  inherited btnPesquisa: TButton
    OnClick = btnPesquisaClick
  end
  inherited btnAtualizar: TButton
    OnClick = btnAtualizarClick
  end
end
