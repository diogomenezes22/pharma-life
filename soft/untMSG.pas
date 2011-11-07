unit untMSG;


interface

{o objetivo desta unit é centralizar as strings utilizadas no sistema
 evitando duplicações e inconsistencias, facilitando ainda, a
 internacionalização do software e gerando um ponto único de manutenção}

ResourceString
//SISTEMA
rsLoginInvalido = 'ERRO: Login ou Senha ínvalidos!';
rsSemPermissaoExclusao = 'Você não tem permissão para efetuar exclusões';
rsSemPermissaoInclusao = 'Você não tem permissão para efetuar inclusões';
rsSemPermissaoEdicao = 'Você não tem permissão para efetuar edições';
rsSomenteAdmin = 'Somente administradores do sistema podem realizar esta tarefa';
rsRegistroAlterado = 'Alteração realizada com sucesso!';
rsRegistroExcluido = 'Registro excluído com sucesso!';
rsRegistroNaoPodeSerExcluido = 'O registro não pode ser excluído!' + #13 + 'Verifique!';
rsRegistroSalvo = 'Registro salvo com sucesso!';
rsRegistroInclusaoConfirmacao = 'Deseja incluir um novo registro?';
rsRegistroEdicaoConfirmacao = 'Deseja editar este registro?';
rsRegistroExclusaoConfirmacao = 'Deseja realmente excluir este registro?';
rsErroDeAtualizacao = 'Ocorreram erros durante a atualização!' +  #13 + 'Verifique!';
rsErroDeExclusao = 'O registro não pode ser excluído!' + #13 + 'Verifique!';
rsCancelarOperacaoConfirmacao = 'Deseja cancelar esta operação?';
rsSaidaDeTelaConfirmacao = 'Deseja realmente sair?';


//frmPrincipal
rsLogoffHint = 'Logoff | Efetuar logoff do usuário ';
rsFinalizarSistema = 'Deseja finalizar o Sistema?';
rsLogoffConfirmacao = 'Deseja efetuar logoff do usuário ';
rsSalvarMenuConfirmacao = 'Você customizou o menu da aplicação, deseja salvá-lo';
rsErroSalvarMenu = 'Não foi possível encontrar um menu para ';


//frmPedidos
rsPedidoConfirmar = 'Deseja confirmar este pedido?';
rsDataEmissao = 'data_emissao';
rsDataEntrada = 'data_entrada';
rsComissao = 'comissao';
rsSituacao = 'situacao';
rsPedidoConfirmacao = 'Pedido realizado com sucesso!';
rsSalvarPedido = 'Salve o pedido para confirmar a operação!';
rsPedidoIncluirConfirmacao = 'Deseja incluir um novo PEDIDO?';
rsPesquisaPedidoNome = 'Pesquisa de pedido por nome do cliente';
rsErroPedidoFechado = 'Não é possível editar um pedido já fechado!';
rsErroExcluirPedido = 'Não é possível excluir um pedido já fechado!';
rsSelecionarVendedor = 'Selecione o vendedor e o cliente deste pedido!';
rsItemIncluirConfirmacao = 'Deseja incluir um novo ítem para este pedido?';
rsItemExcluirConfirmacao = 'Deseja excluir o Ítem?';
rsPesquisaClienteNome = 'Pesquisa de cliente por nome';
rsPesquisaVendedorNome = 'Pesquisa de vendedor por nome';
rsPesquisaPagamentoDescricao = 'Pesquisa de Forma de Pagamento por descrição';
rsEscolhaFormaPagamento = 'Escolha a forma de pagamento antes';
rsCliqueInserir =
 'Selecione a opção Incluir item antes de procurar um produto';
rsGerarParcelasAutoInformacao = 'As parcelas à receber serão geradas automaticamente';
rsInformeValorValido = 'Informe valores válidos';
rsSairSemSalvarConfirmacao = 'Existem alterações não salvas, deseja sair assim mesmo?';

//frmFormaPagto
rsPagamentoExcluirConfirmacao = 'Deseja excluir a forma de pagamento?';
rsPagamentoIncluirConfirmacao = 'Deseja incluir uma nova Forma de pagamento?';
rsPesquisaProdutoDescricao = 'Pesquisa de produto por descrição';


//frmPesquisa
rsDigitarValor = 'Favor digitar um valor para consulta!';
rsRegistroNaoEncontrado = 'Nenhum registro encontrado!';
rsRefacaPesquisa = 'Refaça a pesquisa com outros valores!';
rsPesquisaCancelarConfirmacao = 'Deseja cancelar a pesquisa?';
rsPesquisaResultadoVazio = 'Sua pesquisa não retornou nenhum valor!';

//frmLogin
rsUsuarioSenhaInvalidos = 'Usuário ou Senha inválido! ';
rsXTentativas = 'ª Tentativa.';

//frmReceber
rsSemPermissaoQuitacao = 'Você não tem permissão efetuar quitações';

//frmRelatorios
rsPedidoParaRelatorio = 'Seleção de pedido para Impressão de Relatório';
rsSelecionePedido = 'Selecione um pedido';

//frmUsuario
rsRepetirSenha = 'Favor repetir a senha antes de salvar!';
rsRepetirAMesmaSenha = 'Repetir a mesma senha antes de salvar!';
rsPesquisaUsuarioNome = 'Pesquisa de usuario por nome';

//DM_Model
rsEstoqueInsuficiente = 'O estoque do produto informado está abaixo do mínimo, comunique ao responsável';

//dpr
rsTitulo = 'Modelagem';
rsIniciando = 'Iniciando o sistema';
rsCriaAcessoDados = 'Criando o módulo de acesso a dados';
rsCriaModuloRelatorio = 'Criando o módulo de Relatorios';
rsCriaInterface = 'Criando a interface com o usuário';
rsPreparaSistema = 'Preparando para iniciar o sistema';

implementation

end.
