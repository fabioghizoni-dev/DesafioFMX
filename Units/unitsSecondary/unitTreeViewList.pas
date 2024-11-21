unit unitTreeViewList;

interface

uses FMX.TreeView;

implementation

//procedure treeViewlist;
//var
//  frmMain : TfrmPrincipal;
//
//                      { DECLARA��O DOS N�S }
//  NoDashboard, NoCadastros, NoBasicos, NoClienteFornecedor, NoMercadorias,
//  NoProdutos, NoFinanceiros, NoContas, NoFiscais, NoEtiquetas, NoChatBot,
//  NoEntradas, NoEntrada, NoRepor, NoEstoque, NoSaidas, NoAdministracao,
//  NoMovimentos, NoFinanceiro, NoConsultar, NoEcommerce, NoMoviContas,
//  NoReceberPagar, NoBoletos, NoControleCheques, NoConferenciaCaixa,
//  NoConciCartoes, NoSupriCaixa, NoCashback, NoCadastro, NoFiscal,
//  NoNextPostos, NoCentralAcoes, NoCartaTroco, NoCombustivel,
//  NoMoviCombustivel, NoMedicoes, NoCentral, NoCentralRela,
//  NoNextPay: TTreeViewItem;
//
//begin
//  try
//    frmMain := TfrmPrincipal.Create(nil);
//    with frmMain do
//      begin
//      begin
//        TreeView.Clear;
//
//        // DASHBOARD
//        NoDashboard := CriarTreeViewItem(nil, 'Dashboard', '01');
//        CriarTreeViewItem(NoDashboard, 'Financeiro', '01.01');
//        CriarTreeViewItem(NoDashboard, 'Operacional', '01.02');
//        CriarTreeViewItem(NoDashboard, 'Fiscal', '01.03');
//
//        // ADMINISTRA��O
//        NoAdministracao := CriarTreeViewItem(nil, 'Administra��o', '02');
//        CriarTreeViewItem(NoAdministracao, 'Empresas', '02.01');
//        CriarTreeViewItem(NoAdministracao, 'Funcion�rios', '02.02');
//        CriarTreeViewItem(NoAdministracao, 'Configura��es', '02.03');
//
//        // CADASTROS
//        NoCadastros := CriarTreeViewItem(nil, 'Cadastros', '03');
//
//        // B�sicos
//        NoBasicos := CriarTreeViewItem(NoCadastros, 'B�sicos', '03.01');
//        CriarTreeViewItem(NoBasicos, 'Cidades', '03.01.01');
//
//        // Clientes/Fornecedores
//        NoClienteFornecedor := CriarTreeViewItem(NoBasicos, 'Clientes/Fornecedores',
//          '03.01.02');
//        CriarTreeViewItem(NoClienteFornecedor, 'Incluir/Alterar', '03.01.02.01');
//        CriarTreeViewItem(NoClienteFornecedor, 'Excluir', '03.01.02.02');
//        CriarTreeViewItem(NoClienteFornecedor, 'Alterar CPF/CNPJ j� cadastrado',
//          '03.01.02.03');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es', '03.01.02.04');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es: Habilitado',
//          '03.01.02.05');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es: Forma Faturamento',
//          '03.01.02.06');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es: Dias Prazo Boleto',
//          '03.01.02.07');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es: Limite de Cr�dito',
//          '03.01.02.08');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es: Limite de D�bito',
//          '03.01.02.09');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es: Bloquear por Dia',
//          '03.01.02.10');
//        CriarTreeViewItem(NoClienteFornecedor, 'Configura��es: Tabela de Pre�o',
//          '03.01.02.11');
//        CriarTreeViewItem(NoClienteFornecedor, 'Tabela de Descontos', '03.01.02.12');
//        CriarTreeViewItem(NoClienteFornecedor, 'Contas', '03.01.02.13');
//
//        CriarTreeViewItem(NoBasicos, 'Transportadora', '03.01.03');
//        CriarTreeViewItem(NoBasicos, 'Contabilista', '03.01.04');
//        CriarTreeViewItem(NoBasicos, 'Configura��es', '03.01.05');
//        CriarTreeViewItem(NoBasicos, 'Cadastro de Ve�culos', '03.01.06');
//
//        // Mercadorias e Servi�os
//        NoMercadorias := CriarTreeViewItem(NoCadastros,
//          'Mercadorias e Servi�os', '03.02');
//        CriarTreeViewItem(NoMercadorias, 'Grupos', '03.02.01');
//        CriarTreeViewItem(NoMercadorias, 'Sub-Grupos', '03.02.02');
//        CriarTreeViewItem(NoMercadorias, 'Classes', '03.02.03');
//
//        // Produtos e servi�os
//        NoProdutos := CriarTreeViewItem(NoMercadorias, 'Produtos/Servi�os',
//          '03.02.04');
//        CriarTreeViewItem(NoProdutos, 'Incluir/Alterar', '03.02.04.01');
//        CriarTreeViewItem(NoProdutos, 'Excluir', '03.02.04.02');
//        CriarTreeViewItem(NoProdutos, 'Hist�rico de Custos', '03.02.04.03');
//        CriarTreeViewItem(NoProdutos, 'Hist�rico de Custos: Manuten��o',
//          '03.02.04.04');
//        CriarTreeViewItem(NoProdutos, 'Hist�rico de Pre�os', '03.02.04.05');
//        CriarTreeViewItem(NoProdutos, 'Hist�rico de Pre�os: Manuten��o',
//          '03.02.04.06');
//        CriarTreeViewItem(NoProdutos, 'Varia��o de Pre�os por Unidade',
//          '03.02.04.07');
//        CriarTreeViewItem(NoProdutos, 'E-Commerce', '03.02.04.08');
//        CriarTreeViewItem(NoProdutos, 'Tributa��o', '03.02.04.09');
//        CriarTreeViewItem(NoProdutos, 'Tributa��o: Manuten��o', '03.02.04.10');
//        CriarTreeViewItem(NoProdutos, 'Varia��es/Grade', '03.02.04.11');
//        CriarTreeViewItem(NoProdutos, 'Varia��es/Grade: Manuten��o', '03.02.04.12');
//        CriarTreeViewItem(NoProdutos, 'Hist�rico de Compras', '03.02.04.13');
//        CriarTreeViewItem(NoProdutos, 'Hist�rico de Vendas', '03.02.04.14');
//        CriarTreeViewItem(NoProdutos, 'Estoque', '03.02.04.15');
//        CriarTreeViewItem(NoProdutos, 'CashBack', '03.02.04.16');
//        CriarTreeViewItem(NoProdutos, 'CashBack: Manuten��o', '03.02.04.17');
//
//        CriarTreeViewItem(NoMercadorias, 'Promo��o', '03.02.05');
//        CriarTreeViewItem(NoMercadorias, 'Configura��es', '03.02.06');
//        CriarTreeViewItem(NoMercadorias, 'Tabelas de Descontos', '03.02.07');
//
//        // Financeiros
//        NoFinanceiros := CriarTreeViewItem(NoCadastros, 'Financeiros', '03.03');
//
//        // Contas
//        NoContas := CriarTreeViewItem(NoFinanceiros, 'Contas', '03.03.01');
//        CriarTreeViewItem(NoContas, 'Manuten��es', '03.03.01.01');
//
//        CriarTreeViewItem(NoFinanceiros, 'Plano de Contas', '03.03.02');
//        CriarTreeViewItem(NoFinanceiros, 'Configura��es', '03.03.03');
//        CriarTreeViewItem(NoFinanceiros, 'PSP Pix', '03.03.04');
//        CriarTreeViewItem(NoFinanceiros, 'Adquirentes', '03.03.05');
//        CriarTreeViewItem(NoFinanceiros, 'Bandeiras', '03.03.06');
//        CriarTreeViewItem(NoFinanceiros, 'Tarifas de Cart�o', '03.03.07');
//        CriarTreeViewItem(NoFinanceiros, 'Layout EDI', '03.03.08');
//
//        // Fiscais
//        NoFiscais := CriarTreeViewItem(NoCadastros, 'Fiscais', '03.04');
//        CriarTreeViewItem(NoFiscais, 'COI', '03.04.01');
//        CriarTreeViewItem(NoFiscais, 'Tabelas Fiscais', '03.04.02');
//        CriarTreeViewItem(NoFiscais, 'Regras Fiscais', '03.04.03');
//        CriarTreeViewItem(NoFiscais, 'Convers�es de CFOP nas Compras', '03.04.04');
//        CriarTreeViewItem(NoFiscais, 'Campos Permitidos CCe', '03.04.05');
//
//        // Etiquetas
//        NoEtiquetas := CriarTreeViewItem(NoCadastros, 'Etiquetas', '03.05');
//        CriarTreeViewItem(NoEtiquetas, 'Cadastrais', '03.05.01');
//
//        // Chat-Bot
//        NoChatBot := CriarTreeViewItem(NoCadastros, 'Chat Bot', '03.06');
//        CriarTreeViewItem(NoChatBot, 'Setor', '03.06.01');
//        CriarTreeViewItem(NoChatBot, 'Funcion�rio - Setor', '03.06.02');
//        CriarTreeViewItem(NoChatBot, 'Chat Menu', '03.06.03');
//        CriarTreeViewItem(NoChatBot, 'Status do Bot', '03.06.04');
//
//        // MOVIMENTOS
//        NoMovimentos := CriarTreeViewItem(nil, 'Movimentos', '04');
//
//        // Entradas de Mercadorias
//        NoEntradas := CriarTreeViewItem(NoMovimentos,
//          'Entradas de Mercadorias', '04.01');
//        NoEntrada := CriarTreeViewItem(NoEntradas, 'Nova Entrada', '04.01.01');
//        CriarTreeViewItem(NoEntrada, 'Lan�amento Retroativo', '04.01.01.01');
//        CriarTreeViewItem(NoEntrada, 'Marcar Nota como Conferida', '04.01.01.02');
//
//        NoRepor := CriarTreeViewItem(NoEntradas, 'Produtos a Repor', '04.01.03');
//        CriarTreeViewItem(NoRepor, 'Produtos a Repor - Incluir', '04.01.03.01');
//
//        // Estoque
//        NoEstoque := CriarTreeViewItem(NoMovimentos, 'Estoque', '04.02');
//        CriarTreeViewItem(NoEstoque, 'Consultar Estoque', '04.02.01');
//        CriarTreeViewItem(NoEstoque, 'Auditoria de Estoque', '04.02.02');
//        CriarTreeViewItem(NoEstoque, 'Ajuste de Entrada', '04.02.03');
//        CriarTreeViewItem(NoEstoque, 'Ajuste de Sa�da', '04.02.04');
//        CriarTreeViewItem(NoEstoque, 'Contagem de Estoque', '04.02.05');
//
//        // Sa�das de mercadorias
//        NoSaidas := CriarTreeViewItem(NoMovimentos, 'Sa�das de Mercadorias', '04.03');
//        CriarTreeViewItem(NoSaidas, 'Nova Sa�da', '04.03.01');
//        CriarTreeViewItem(NoSaidas, 'Frente de Caixa', '04.03.02');
//        CriarTreeViewItem(NoSaidas, 'Entrega Imediata', '04.03.03');
//
//        NoConsultar := CriarTreeViewItem(NoSaidas, 'Consultar Lan�amentos',
//          '04.03.04');
//        CriarTreeViewItem(NoConsultar, 'Excluir Lan�amento', '04.03.04.01');
//        CriarTreeViewItem(NoConsultar, 'Cancelar NFe', '04.03.04.02');
//        CriarTreeViewItem(NoConsultar, 'Expandir Acerto de Clientes', '04.03.04.03');
//        CriarTreeViewItem(NoConsultar, 'Editar/Visualizar Venda', '04.03.04.04');
//
//        CriarTreeViewItem(NoSaidas, 'Configura��es', '04.03.05');
//        CriarTreeViewItem(NoSaidas, 'Carta de Corre��o Eletr�nica', '04.03.06');
//        CriarTreeViewItem(NoSaidas, 'Faturar Or�amento', '04.03.07');
//
//        // Devolu��es
//        CriarTreeViewItem(NoMovimentos, 'Devolu��es', '04.04');
//
//        // E-Commerce
//        NoEcommerce := CriarTreeViewItem(NoMovimentos, 'E-Commerce', '04.05');
//        CriarTreeViewItem(NoEcommerce, 'Tray', '04.05.01');
//        CriarTreeViewItem(NoEcommerce, 'Mercado Livre', '04.05.02');
//
//        // FINANCEIRO
//        NoFinanceiro := CriarTreeViewItem(nil, 'Financeiro', '05');
//
//        // Movimenta��o de Contas
//        NoMoviContas := CriarTreeViewItem(NoFinanceiro,
//          'Movimenta��o de Contas', '05.01');
//        CriarTreeViewItem(NoMoviContas, 'Lan�amento Retroativo', '05.01.01');
//        CriarTreeViewItem(NoMoviContas, 'Exclus�o de Lan�amentos', '05.01.02');
//        CriarTreeViewItem(NoMoviContas, 'Quebrar Valor de Lan�amentos', '05.01.03');
//        CriarTreeViewItem(NoMoviContas, 'Estorno de Baixa', '05.01.04');
//
//        // Contas a Receber / Pagar
//        NoReceberPagar := CriarTreeViewItem(NoFinanceiro,
//          'Contas a Receber / Pagar', '05.02');
//        CriarTreeViewItem(NoReceberPagar, 'Baixar T�tulos', '05.02.01');
//        CriarTreeViewItem(NoReceberPagar, 'Amortizar T�tulos', '05.02.02');
//        CriarTreeViewItem(NoReceberPagar, 'Concilia��o Banc�ria', '05.02.03');
//
//        CriarTreeViewItem(NoFinanceiro, 'Contas a Pagar', '05.03');
//
//        // Controle de Boletos
//        NoBoletos := CriarTreeViewItem(NoFinanceiro, 'Controle de Boletos', '05.04');
//        CriarTreeViewItem(NoBoletos, 'Boleto Avulso', '05.04.01');
//        CriarTreeViewItem(NoBoletos, 'Travar Consulta p/ somente Transportadora',
//          '05.04.02');
//        CriarTreeViewItem(NoBoletos, 'Travar Consulta p/ somente Clientes',
//          '05.04.03');
//
//        // Controle de Cheques
//        NoControleCheques := CriarTreeViewItem(NoFinanceiro,
//          'Controle de Cheques', '05.05');
//        CriarTreeViewItem(NoControleCheques, 'Incluir', '05.05.01');
//        CriarTreeViewItem(NoControleCheques, 'Alterar', '05.05.02');
//        CriarTreeViewItem(NoControleCheques, 'Excluir', '05.05.03');
//        CriarTreeViewItem(NoControleCheques, 'Alterar Status', '05.05.04');
//        CriarTreeViewItem(NoControleCheques, 'Alterar Vencimento', '05.05.05');
//
//        CriarTreeViewItem(NoFinanceiro, 'Controle de PIX', '05.06');
//        CriarTreeViewItem(NoFinanceiro, 'Configura��es', '05.07');
//
//        // Confer�ncia Caixa
//        NoConferenciaCaixa := CriarTreeViewItem(NoFinanceiro,
//          'Confer�ncia Caixa', '05.08');
//        CriarTreeViewItem(NoConferenciaCaixa, 'Conferido', '05.08.01');
//        CriarTreeViewItem(NoConferenciaCaixa, 'Exportar Carta Frete', '05.08.02');
//        CriarTreeViewItem(NoConferenciaCaixa, 'Exportar Cheque', '05.08.03');
//        CriarTreeViewItem(NoConferenciaCaixa, 'Exportar Dinheiro', '05.08.04');
//        CriarTreeViewItem(NoConferenciaCaixa, 'Conciliar Dep�sitos', '05.08.05');
//
//        // Concilia��o de Cart�es
//        NoConciCartoes := CriarTreeViewItem(NoFinanceiro,
//          'Concilia��o de Cart�es', '05.09');
//        CriarTreeViewItem(NoConciCartoes, 'Concilia��o Banc�ria', '05.09.01');
//        CriarTreeViewItem(NoConciCartoes, 'Cancelar', '05.09.02');
//        CriarTreeViewItem(NoConciCartoes, 'Alterar Total', '05.09.03');
//        CriarTreeViewItem(NoConciCartoes, 'Alterar Adquirente/Bandeira', '05.09.04');
//        CriarTreeViewItem(NoConciCartoes, 'Incluir', '05.09.05');
//        CriarTreeViewItem(NoConciCartoes, 'Revisar Tarifas', '05.09.06');
//        CriarTreeViewItem(NoConciCartoes, 'Concilia��o com Adquirente', '05.09.07');
//
//        CriarTreeViewItem(NoFinanceiro, 'Cr�ditos de Clientes', '05.10');
//
//        // Suprimentos de Caixa
//        NoSupriCaixa := CriarTreeViewItem(NoFinanceiro,
//          'Suprimentos de Caixa', '05.11');
//        CriarTreeViewItem(NoSupriCaixa, 'Gerar Transfer�ncias', '05.11.01');
//        CriarTreeViewItem(NoSupriCaixa, 'Gerar Transfer�ncia entre Unidades',
//          '05.11.02');
//        CriarTreeViewItem(NoSupriCaixa, 'Confirmar Recebimentos', '05.11.03');
//
//        // Controle de CashBack
//        NoCashback := CriarTreeViewItem(NoFinanceiro, 'Controle de Cashback',
//          '05.12');
//        NoCadastro := CriarTreeViewItem(NoCashback, 'Cadastro de Clientes',
//          '05.12.01');
//        CriarTreeViewItem(NoCadastro, 'Manuten��o', '05.12.01.01');
//        CriarTreeViewItem(NoCadastro, 'Alterar N�vel', '05.12.01.02');
//        CriarTreeViewItem(NoCadastro, 'Alterar Documento', '05.12.01.03');
//
//        // FISCAL
//        NoFiscal := CriarTreeViewItem(nil, 'Fiscal', '06');
//        CriarTreeViewItem(NoFiscal, 'Manifesto de Documentos', '06.01');
//        CriarTreeViewItem(NoFiscal, 'Sped Fiscal', '06.02');
//        CriarTreeViewItem(NoFiscal, 'Sped PIS COFINS', '06.03');
//        CriarTreeViewItem(NoFiscal, 'Ajusta Documentos', '06.04');
//        CriarTreeViewItem(NoFiscal, 'Ajusta Inutiliza��o de N�mero', '06.05');
//
//        // NEXT POSTOS
//        NoNextPostos := CriarTreeViewItem(nil, 'Next Postos', '07');
//
//        // Controle de Carta Frete
//        var
//        NoCartaFrete := CriarTreeViewItem(NoNextPostos,
//          'Controle de Carta Frete', '07.01');
//        CriarTreeViewItem(NoCartaFrete, 'Incluir', '07.01.01');
//        CriarTreeViewItem(NoCartaFrete, 'Alterar', '07.01.02');
//        CriarTreeViewItem(NoCartaFrete, 'Excluir', '07.01.03');
//        CriarTreeViewItem(NoCartaFrete, 'Gerar Lote Faturamento', '07.01.04');
//        CriarTreeViewItem(NoCartaFrete, 'Manuten��es', '07.01.05');
//        CriarTreeViewItem(NoCartaFrete, 'Concilia��o', '07.01.06');
//
//        // Controle de Cheque Troco
//        NoCartaTroco := CriarTreeViewItem(NoNextPostos,
//          'Controle de Cheque Troco', '07.02');
//        CriarTreeViewItem(NoCartaTroco, 'Gerar Cheques', '07.02.01');
//        CriarTreeViewItem(NoCartaTroco, 'Transferir entre Contas', '07.02.02');
//        CriarTreeViewItem(NoCartaTroco, 'Transferir entre Unidades', '07.02.03');
//        CriarTreeViewItem(NoCartaTroco, 'Cancelar Folha', '07.02.04');
//
//        CriarTreeViewItem(NoNextPostos, 'Controle de Dep�sito Troco', '07.03');
//
//        // Controle de Combust�veis
//        NoCombustivel := CriarTreeViewItem(NoNextPostos,
//          'Controle de Combust�veis', '07.05');
//
//        // Movimentos
//        NoMoviCombustivel := CriarTreeViewItem(NoCombustivel, 'Movimentos',
//          '07.05.01');
//        CriarTreeViewItem(NoMoviCombustivel, 'Lan�amento sobre Rodas', '07.05.01.01');
//        CriarTreeViewItem(NoMoviCombustivel, 'Lan�amento Descargas', '07.05.01.02');
//        CriarTreeViewItem(NoMoviCombustivel, 'Consultar Lan�amentos', '07.05.01.03');
//        CriarTreeViewItem(NoMoviCombustivel, 'Cancelar Lan�amentos', '07.05.01.04');
//
//        // Medi��es
//        NoMedicoes := CriarTreeViewItem(NoCombustivel, 'Medi��es', '07.05.02');
//        CriarTreeViewItem(NoMedicoes, 'Visualiza Diferen�as', '07.05.02.01');
//        CriarTreeViewItem(NoMedicoes, 'Consultar Lan�amento', '07.05.02.02');
//
//        CriarTreeViewItem(NoCombustivel, 'Tanques', '07.05.03');
//        CriarTreeViewItem(NoCombustivel, 'Ajuste de Estoque', '07.05.04');
//
//        CriarTreeViewItem(NoNextPostos, 'Controle de Concentradores', '07.06');
//        CriarTreeViewItem(NoNextPostos, 'LMC', '07.07');
//
//        // CENTRAL DE A��ES
//        NoCentral := CriarTreeViewItem(nil, 'Central de A��es', '08');
//
//        // Central de Relat�rios
//        NoCentralRela := CriarTreeViewItem(NoCentral,
//          'Central de Relat�rios', '08.01');
//        CriarTreeViewItem(NoCentralRela, 'Grupos de Relat�rios', '08.01.01');
//        CriarTreeViewItem(NoCentralRela, 'Novo Relat�rio', '08.01.02');
//        CriarTreeViewItem(NoCentralRela, 'Editar Relat�rio', '08.01.03');
//        CriarTreeViewItem(NoCentralRela, 'Efetuar Download do Reposit�rio',
//          '08.01.04');
//        CriarTreeViewItem(NoCentralRela, 'Enviar Relat�rio para Reposit�rio',
//          '08.01.05');
//
//        CriarTreeViewItem(NoCentral, 'Central de Procedimentos', '08.02');
//
//        // NEXT PAY
//        NoNextPay := CriarTreeViewItem(nil, 'Next Pay', '09');
//        CriarTreeViewItem(NoNextPay, 'Fun��es Gerenciais', '09.01');
//      end;
//      end;
//  finally
//    frmMain.Free;
//  end;
// end;
end.
