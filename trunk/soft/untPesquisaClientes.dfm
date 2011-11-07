inherited frmPesquisaClientes: TfrmPesquisaClientes
  Left = 531
  Top = 239
  Caption = 'Pesquisa - Clientes'
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 554
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = dmCadCliente.dtsClientesQr
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
        FieldName = 'nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Title.Alignment = taCenter
        Title.Caption = 'CPF'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rg'
        Visible = False
      end>
  end
  inherited btnPesquisa: TButton
    OnClick = btnPesquisaClick
  end
end
