unit untMSG;


interface

{o objetivo desta unit � centralizar as strings utilizadas no sistema
 evitando duplica��es e inconsistencias, facilitando ainda, a
 internacionaliza��o do software e gerando um ponto �nico de manuten��o}

ResourceString
//SISTEMA
rsLoginInvalido = 'ERRO: Login ou Senha �nvalidos!';
rsSemPermissaoExclusao = 'Voc� n�o tem permiss�o para efetuar exclus�es';
rsSemPermissaoInclusao = 'Voc� n�o tem permiss�o para efetuar inclus�es';
rsSemPermissaoEdicao = 'Voc� n�o tem permiss�o para efetuar edi��es';
rsSomenteAdmin = 'Somente administradores do sistema podem realizar esta tarefa';
rsRegistroAlterado = 'Altera��o realizada com sucesso!';
rsRegistroExcluido = 'Registro exclu�do com sucesso!';
rsRegistroNaoPodeSerExcluido = 'O registro n�o pode ser exclu�do!' + #13 + 'Verifique!';
rsRegistroSalvo = 'Registro salvo com sucesso!';
rsRegistroInclusaoConfirmacao = 'Deseja incluir um novo registro?';
rsRegistroEdicaoConfirmacao = 'Deseja editar este registro?';
rsRegistroExclusaoConfirmacao = 'Deseja realmente excluir este registro?';
rsErroDeAtualizacao = 'Ocorreram erros durante a atualiza��o!' +  #13 + 'Verifique!';
rsErroDeExclusao = 'O registro n�o pode ser exclu�do!' + #13 + 'Verifique!';
rsCancelarOperacaoConfirmacao = 'Deseja cancelar esta opera��o?';
rsSaidaDeTelaConfirmacao = 'Deseja realmente sair?';


//frmPrincipal
rsLogoffHint = 'Logoff | Efetuar logoff do usu�rio ';
rsFinalizarSistema = 'Deseja finalizar o Sistema?';
rsLogoffConfirmacao = 'Deseja efetuar logoff do usu�rio ';
rsSalvarMenuConfirmacao = 'Voc� customizou o menu da aplica��o, deseja salv�-lo';
rsErroSalvarMenu = 'N�o foi poss�vel encontrar um menu para ';


//frmPedidos
rsPedidoConfirmar = 'Deseja confirmar este pedido?';
rsDataEmissao = 'data_emissao';
rsDataEntrada = 'data_entrada';
rsComissao = 'comissao';
rsSituacao = 'situacao';
rsPedidoConfirmacao = 'Pedido realizado com sucesso!';
rsSalvarPedido = 'Salve o pedido para confirmar a opera��o!';
rsPedidoIncluirConfirmacao = 'Deseja incluir um novo PEDIDO?';
rsPesquisaPedidoNome = 'Pesquisa de pedido por nome do cliente';
rsErroPedidoFechado = 'N�o � poss�vel editar um pedido j� fechado!';
rsErroExcluirPedido = 'N�o � poss�vel excluir um pedido j� fechado!';
rsSelecionarVendedor = 'Selecione o vendedor e o cliente deste pedido!';
rsItemIncluirConfirmacao = 'Deseja incluir um novo �tem para este pedido?';
rsItemExcluirConfirmacao = 'Deseja excluir o �tem?';
rsPesquisaClienteNome = 'Pesquisa de cliente por nome';
rsPesquisaVendedorNome = 'Pesquisa de vendedor por nome';
rsPesquisaPagamentoDescricao = 'Pesquisa de Forma de Pagamento por descri��o';
rsEscolhaFormaPagamento = 'Escolha a forma de pagamento antes';
rsCliqueInserir =
 'Selecione a op��o Incluir item antes de procurar um produto';
rsGerarParcelasAutoInformacao = 'As parcelas � receber ser�o geradas automaticamente';
rsInformeValorValido = 'Informe valores v�lidos';
rsSairSemSalvarConfirmacao = 'Existem altera��es n�o salvas, deseja sair assim mesmo?';

//frmFormaPagto
rsPagamentoExcluirConfirmacao = 'Deseja excluir a forma de pagamento?';
rsPagamentoIncluirConfirmacao = 'Deseja incluir uma nova Forma de pagamento?';
rsPesquisaProdutoDescricao = 'Pesquisa de produto por descri��o';


//frmPesquisa
rsDigitarValor = 'Favor digitar um valor para consulta!';
rsRegistroNaoEncontrado = 'Nenhum registro encontrado!';
rsRefacaPesquisa = 'Refa�a a pesquisa com outros valores!';
rsPesquisaCancelarConfirmacao = 'Deseja cancelar a pesquisa?';
rsPesquisaResultadoVazio = 'Sua pesquisa n�o retornou nenhum valor!';

//frmLogin
rsUsuarioSenhaInvalidos = 'Usu�rio ou Senha inv�lido! ';
rsXTentativas = '� Tentativa.';

//frmReceber
rsSemPermissaoQuitacao = 'Voc� n�o tem permiss�o efetuar quita��es';

//frmRelatorios
rsPedidoParaRelatorio = 'Sele��o de pedido para Impress�o de Relat�rio';
rsSelecionePedido = 'Selecione um pedido';

//frmUsuario
rsRepetirSenha = 'Favor repetir a senha antes de salvar!';
rsRepetirAMesmaSenha = 'Repetir a mesma senha antes de salvar!';
rsPesquisaUsuarioNome = 'Pesquisa de usuario por nome';

//DM_Model
rsEstoqueInsuficiente = 'O estoque do produto informado est� abaixo do m�nimo, comunique ao respons�vel';

//dpr
rsTitulo = 'Modelagem';
rsIniciando = 'Iniciando o sistema';
rsCriaAcessoDados = 'Criando o m�dulo de acesso a dados';
rsCriaModuloRelatorio = 'Criando o m�dulo de Relatorios';
rsCriaInterface = 'Criando a interface com o usu�rio';
rsPreparaSistema = 'Preparando para iniciar o sistema';

implementation

end.
