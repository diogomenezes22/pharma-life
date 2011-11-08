program pharmalife;

uses
  Forms,
  U_Login in 'U_Login.pas' {FrmLogin},
  unitPesquisaRapidaProdutos in 'unitPesquisaRapidaProdutos.pas' {frmPesquisaRapidaProdutos},
  untCadastroP in 'untCadastroP.pas' {frmCadastroGeral},
  untCadastroProdutos in 'untCadastroProdutos.pas' {frmCadastroProdutos},
  untcadCategorias in 'untcadCategorias.pas' {frmCadastroCategorias},
  untClasses in 'untClasses.pas',
  untMenu in 'untMenu.pas' {frmMenu},
  untPesquisaGeral in 'untPesquisaGeral.pas' {frmPesquisaGeral},
  untPesquisaGrupos in 'untPesquisaGrupos.pas' {frmPesquisaGrupos},
  untPesquisaLaboratorios in 'untPesquisaLaboratorios.pas' {frmPesquisaLab},
  untPesquisaProdutos in 'untPesquisaProdutos.pas' {frmPesquisaProdutos},
  untPesquisaRapidaForne in 'untPesquisaRapidaForne.pas' {frmPesquisaRapidaForn},
  uSobre in 'uSobre.pas' {frmSobre},
  untCadastroClientes in 'untCadastroClientes.pas' {frmCadastroClientes},
  untCadastroForncedor in 'untCadastroForncedor.pas' {frmCadastroForncedor},
  untCadastroLaboratorios in 'untCadastroLaboratorios.pas' {frmCadastroLaboratorios},
  untCadastroGrupos in 'untCadastroGrupos.pas' {frmCadastroGrupos},
  untBanco in 'untBanco.pas' {dtmServer: TDataModule},
  untMSG in 'untMSG.pas',
  uCadastroUsuarios in 'uCadastroUsuarios.pas' {frmCadastroUsuarios},
  uBaseDados in 'uBaseDados.pas' {frmConfig},
  USplash in 'USplash.pas' {FrmSplash},
  SysUtils,
  udmMovimentacao in 'udmMovimentacao.pas' {dmMovimentacao: TDataModule},
  untCadastroMovimentacoes in 'untCadastroMovimentacoes.pas' {frmCadastroMov},
  udmCadCliente in 'udmCadCliente.pas' {dmCadCliente: TDataModule},
  udmfornecedor in 'udmfornecedor.pas' {dmfornecedor: TDataModule},
  udmcadgrupo in 'udmcadgrupo.pas' {dtmcadgrupo: TDataModule},
  ucadlaboratorio in 'ucadlaboratorio.pas' {dmcadlab: TDataModule},
  udmcadcategoria in 'udmcadcategoria.pas' {dmcadcategoria: TDataModule},
  ucadprodutos in 'ucadprodutos.pas' {dmcadproduto: TDataModule},
  udmcadUsuario in 'udmcadUsuario.pas' {dmCadUsuario: TDataModule},
  untPesquisaClientes in 'untPesquisaClientes.pas' {frmPesquisaClientes},
  untPesquisaFornecedor in 'untPesquisaFornecedor.pas' {frmPesquisaForncedor},
  udmRelatorios in 'udmRelatorios.pas' {dtmRelatorio: TDataModule},
  untPesquisaCategorias in 'untPesquisaCategorias.pas' {frmPesquisaCategorias};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  FrmSplash := TFrmSplash.Create(Application);
  try
    FrmSplash.Show;
    FrmSplash.Update;
    Sleep(1500);
    FrmSplash.Label1.Caption := 'Efetue o Login.';
  Application.Title := 'Sistema de Gerenciamento de Farmacias - Pharma Life';
  Application.CreateForm(TdtmServer, dtmServer);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmPesquisaCategorias, frmPesquisaCategorias);
  Finally
    FrmSplash.Free;
  end;
  Application.Run;
end.
