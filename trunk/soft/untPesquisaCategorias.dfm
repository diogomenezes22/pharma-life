inherited frmPesquisaCategorias: TfrmPesquisaCategorias
  Caption = 'Pesquisa - Categorias'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_categorias'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Categorias'
        Width = 300
        Visible = True
      end>
  end
  inherited btnPesquisa: TButton
    OnClick = btnPesquisaClick
  end
end
