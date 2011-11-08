inherited frmPesquisaGrupos: TfrmPesquisaGrupos
  Caption = 'Pesquisa - Grupos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = dtmcadgrupo.dtsGruposQ
    OnCellClick = DBGrid1CellClick
  end
  inherited btnPesquisa: TButton
    OnClick = btnPesquisaClick
  end
  inherited BitBtn1: TBitBtn
    Left = 465
    ExplicitLeft = 465
  end
  inherited btnAtualizar: TButton
    OnClick = btnAtualizarClick
  end
end
