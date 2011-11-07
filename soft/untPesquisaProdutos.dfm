inherited frmPesquisaProdutos: TfrmPesquisaProdutos
  Left = 433
  Top = 195
  Caption = 'Pesquisa de Produtos'
  ClientWidth = 583
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 589
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Width = 569
    DataSource = dmcadproduto.dtsProdutosQr
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cod'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo_barra'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Barras'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prod_nome'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = -1
        Visible = False
      end>
  end
  inherited editPesquisa: TEdit
    CharCase = ecLowerCase
  end
  inherited btnPesquisa: TButton
    OnClick = btnPesquisaClick
  end
  inherited BitBtn1: TBitBtn
    Left = 472
    Width = 103
    Height = 49
    Anchors = [akLeft, akTop, akRight, akBottom]
    Spacing = 3
    ExplicitLeft = 472
    ExplicitWidth = 68
    ExplicitHeight = 49
  end
end
