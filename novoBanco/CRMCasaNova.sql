-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 12-Fev-2019 às 17:47
-- Versão do servidor: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CRMCasaNova`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `AcaoDoSistema`
--

CREATE TABLE `AcaoDoSistema` (
  `tipoAcaoDB` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `diretorioBaseArquivos` varchar(255) DEFAULT NULL,
  `iconeAcao` varchar(255) DEFAULT NULL,
  `idDescritivoJira` varchar(255) DEFAULT NULL,
  `nomeAcao` varchar(255) DEFAULT NULL,
  `nomeSlugDominio` varchar(255) DEFAULT NULL,
  `nomeUnico` varchar(255) DEFAULT NULL,
  `precisaPermissao` bit(1) NOT NULL,
  `tipoAcao` varchar(255) DEFAULT NULL,
  `tipoAcaoGenerica` varchar(255) DEFAULT NULL,
  `nomeDominio` varchar(255) DEFAULT NULL,
  `estadoFormulario` int(11) DEFAULT NULL,
  `xhtml` varchar(255) DEFAULT NULL,
  `nomeUnicoAcoesDisponiveis` tinyblob,
  `acaoTemModal` bit(1) DEFAULT NULL,
  `campoJustificativa` varchar(255) DEFAULT NULL,
  `idMetodo` int(11) DEFAULT NULL,
  `precisaComunicacao` bit(1) DEFAULT NULL,
  `precisaJustificativa` bit(1) DEFAULT NULL,
  `temLogExecucao` bit(1) DEFAULT NULL,
  `textoComunicacaoPersonalizado` varchar(255) DEFAULT NULL,
  `xhtmlModalVinculado` varchar(255) DEFAULT NULL,
  `modulo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `AcaoDoSistema`
--

INSERT INTO `AcaoDoSistema` (`tipoAcaoDB`, `id`, `cor`, `descricao`, `diretorioBaseArquivos`, `iconeAcao`, `idDescritivoJira`, `nomeAcao`, `nomeSlugDominio`, `nomeUnico`, `precisaPermissao`, `tipoAcao`, `tipoAcaoGenerica`, `nomeDominio`, `estadoFormulario`, `xhtml`, `nomeUnicoAcoesDisponiveis`, `acaoTemModal`, `campoJustificativa`, `idMetodo`, `precisaComunicacao`, `precisaJustificativa`, `temLogExecucao`, `textoComunicacaoPersonalizado`, `xhtmlModalVinculado`, `modulo_id`) VALUES
('AcaoFormEntidadeSec', -1292705878, NULL, '', '/site/administracao_de_crm/tipo_relacionamento', 'fa fa-list-alt', NULL, 'Listar Tipo de Relacionamento ', 'TIPO_RELACIONAMENTO', 'FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_FRM_LISTAR', b'1', 'ACAO_ENTIDADE_FORMULARIO', 'FORMULARIO_LISTAR', NULL, 1, '/site/administracao_de_crm/tipo_relacionamento/tipo_relacionamento_listar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', -1157190924, NULL, 'Gestão de opções de Dados CRM', '/site/administracao_de_crm/opcao_dados_crm', 'fa fa-pencil-square-o', NULL, 'Opções de Dados CRM', 'OPCAO_DADOS_CRM', 'FabAcaoCrmAdmin.OPCAO_DADOS_CRM_MB_GERENCIAR', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/opcao_dados_crm/opcao_dados_crm_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', -591280281, NULL, 'Tipos de Relacionamento', '/site/administracao_de_crm/tipo_relacionamento', 'fa fa-heart', NULL, 'Tipos de Relacionamento', 'TIPO_RELACIONAMENTO', 'FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_MB_GERENCIAR', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/tipo_relacionamento/tipo_relacionamento_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', 12080907, NULL, 'Gestão de Prospectos', '/site/central_de_relacionamento/prospecto', 'fa fa-address-book-o', NULL, 'Gerenciar de Prospecto', 'PROSPECTO', 'FabAcaoCRMAtendimento.PROSPECTO_MB_GERENCIAR', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/central_de_relacionamento/prospecto/prospecto_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1374834286),
('AcaoGestaoEntidade', 193715130, NULL, 'Execucao de Atividades', '/site/central_de_relacionamento/execucao_atividade', 'fa fa-play', NULL, 'Execucao de Atividades', 'EXECUCAO_ATIVIDADE', 'FabAcaoCRMAtendimento.EXECUCAO_ATIVIDADE_MB', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/central_de_relacionamento/execucao_atividade/execucao_atividade_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1374834286),
('AcaoGestaoEntidade', 223258683, NULL, 'Gerenciar Usuarios', '/site/administracao_de_crm/cadastro_usuario', 'fa fa-user', NULL, 'Gerenciar Usuarios', 'CADASTRO_USUARIO', 'FabAcaoCrmAdmin.CADASTRO_USUARIO_MB_GERENCIAR', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/cadastro_usuario/cadastro_usuario_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', 287810846, NULL, 'DashBoard Admin', '/site/administracao_de_crm/administrativo_pagina_principal', 'fa fa-table', NULL, 'DashBoard Admin', 'ADMINISTRATIVO_PAGINA_PRINCIPAL', 'FabAcaoCrmAdmin.ADMINISTRATIVO_PAGINA_PRINCIPAL_MB', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/administrativo_pagina_principal/administrativo_pagina_principal_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', 587190021, NULL, 'Modelos de Documentos', '/site/administracao_de_crm/modelos_documentos_tipo_atividade', 'fa fa-file-word-o', NULL, 'Modelos de Documentos', 'MODELOS_DOCUMENTOS_TIPO_ATIVIDADE', 'FabAcaoCrmAdmin.MODELOS_DOCUMENTOS_TIPO_ATIVIDADE_MB_GERENCIAR', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/modelos_documentos_tipo_atividade/modelos_documentos_tipo_atividade_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', 1063282997, NULL, 'Meus Prospectos', '/site/central_de_relacionamento/meus_prospectos', 'fa fa-heart', NULL, 'Meus Prospectos', 'MEUS_PROSPECTOS', 'FabAcaoCRMAtendimento.MEUS_PROSPECTOS_MB_GERENCIAR', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/central_de_relacionamento/meus_prospectos/meus_prospectos_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1374834286),
('AcaoGestaoEntidade', 1184973423, NULL, '', '/site/administracao_de_crm/mautic', 'fa fa-line-chart', NULL, 'MAUTIC_MB_INTEGRACAO', 'MAUTIC', 'FabAcaoCrmAdmin.MAUTIC_MB_INTEGRACAO', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/mautic/mautic_integracao.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', 1294786096, NULL, 'Gerenciar Serviços Disponiveis', '/site/administracao_de_crm/servico_diponivel', 'fa fa-coffee', NULL, 'Gerenciar Servico Disponivel', 'SERVICO_DIPONIVEL', 'FabAcaoCrmAdmin.SERVICO_DIPONIVEL_MB_GESTAO', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/servico_diponivel/servico_diponivel_gestao.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963),
('AcaoGestaoEntidade', 1952702119, NULL, 'Tipos de Atividade', '/site/administracao_de_crm/tipo_atividade', 'fa fa-paint-brush', NULL, 'Tipos de Atividade', 'TIPO_ATIVIDADE', 'FabAcaoCrmAdmin.TIPO_ATIVIDADE_MB_GERENCIAR', b'1', 'ACAO_ENTIDADE_GERENCIAR', 'GERENCIAR_DOMINIO', NULL, 2, '/site/administracao_de_crm/tipo_atividade/tipo_atividade_gerenciar.xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2109946963);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Agendamento`
--

CREATE TABLE `Agendamento` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ArquivoAnexado`
--

CREATE TABLE `ArquivoAnexado` (
  `tipoAnexo` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `dataHoraCriacao` datetime(6) DEFAULT NULL,
  `dataHoraEdicao` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `foiEnviado` bit(1) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `usuarioAtualizou_id` int(11) DEFAULT NULL,
  `usuarioCriou_id` int(11) DEFAULT NULL,
  `atividadeGeradora_id` int(11) DEFAULT NULL,
  `modeloDocumento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `AtividadeCRM`
--

CREATE TABLE `AtividadeCRM` (
  `id` int(11) NOT NULL,
  `anotacoes` varchar(255) DEFAULT NULL,
  `dataHoraInicioAtividade` datetime(6) DEFAULT NULL,
  `dataHoraPrevisaoExecucao` datetime(6) DEFAULT NULL,
  `dataHoraRealizacao` datetime(6) DEFAULT NULL,
  `documentoEnviado` bit(1) NOT NULL,
  `documentoGerado` bit(1) NOT NULL,
  `formularioExecucao` varchar(255) DEFAULT NULL,
  `nomeAtividade` varchar(255) DEFAULT NULL,
  `sobrescreverAcaoAtual` bit(1) NOT NULL,
  `emailVinculado_id` int(11) DEFAULT NULL,
  `prospectoEmpresa_id` int(11) DEFAULT NULL,
  `relacionamentoGerado_id` int(11) DEFAULT NULL,
  `statusAtividade_id` int(11) DEFAULT NULL,
  `tipoAtividade_id` int(11) DEFAULT NULL,
  `usuarioAtividade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividadePrincipal_UsuarioCrm`
--

CREATE TABLE `atividadePrincipal_UsuarioCrm` (
  `acesso_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Bairro`
--

CREATE TABLE `Bairro` (
  `id` int(11) NOT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Cidade`
--

CREATE TABLE `Cidade` (
  `id` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `dataAlteracao` date DEFAULT NULL,
  `dataCriacao` date DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `id_Localidade` int(11) DEFAULT NULL,
  `unidadeFederativa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `CodigoConvite`
--

CREATE TABLE `CodigoConvite` (
  `codigo` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `conteudo` text,
  `nome` varchar(255) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `contato_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ConfigDisparoEmail`
--

CREATE TABLE `ConfigDisparoEmail` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ConfiguracaoDePermissao`
--

CREATE TABLE `ConfiguracaoDePermissao` (
  `id` int(11) NOT NULL,
  `nomeConfig` varchar(255) DEFAULT NULL,
  `permitirCriacaoDeGrupos` bit(1) NOT NULL,
  `permitirPermissaoDeUsuario` bit(1) NOT NULL,
  `ultimaVersaoBanco` varchar(255) DEFAULT NULL,
  `grupoUsuarioPadrao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ConfiguracaoDePermissao`
--

INSERT INTO `ConfiguracaoDePermissao` (`id`, `nomeConfig`, `permitirCriacaoDeGrupos`, `permitirPermissaoDeUsuario`, `ultimaVersaoBanco`, `grupoUsuarioPadrao_id`) VALUES
(0, NULL, b'0', b'0', '10617042133', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ContatoProspecto`
--

CREATE TABLE `ContatoProspecto` (
  `id` int(11) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `telefoneAlternativo` varchar(255) DEFAULT NULL,
  `umContatoPrincipal` bit(1) NOT NULL,
  `prospecto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `DadoColetado_Atividade`
--

CREATE TABLE `DadoColetado_Atividade` (
  `id` int(11) NOT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `dadoCrm_id` int(11) DEFAULT NULL,
  `dado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `DadoCRM`
--

CREATE TABLE `DadoCRM` (
  `id` int(11) NOT NULL,
  `dataHoraCadastrou` datetime(6) DEFAULT NULL,
  `dataHoraEditou` datetime(6) DEFAULT NULL,
  `datahora` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` varchar(2000) DEFAULT NULL,
  `atividadeCRM_id` int(11) DEFAULT NULL,
  `prospectoEmpresa_id` int(11) DEFAULT NULL,
  `tipoDadoCRM_id` int(11) NOT NULL,
  `tipoRelacionamentoVinculado_id` int(11) DEFAULT NULL,
  `usuarioCadastrou_id` int(11) DEFAULT NULL,
  `usuarioEditou_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `DadoNaoColetado_Atividade`
--

CREATE TABLE `DadoNaoColetado_Atividade` (
  `id` int(11) NOT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `dadoCRM_id` int(11) DEFAULT NULL,
  `dado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosDinamicosDoModelo`
--

CREATE TABLE `dadosDinamicosDoModelo` (
  `modeloDoc_id` int(11) NOT NULL,
  `tipoDado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosObrigatorios_tipoRelacionamento`
--

CREATE TABLE `dadosObrigatorios_tipoRelacionamento` (
  `tipoRelacionamento_id` int(11) NOT NULL,
  `tipoDadoCRM_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dadosObrigatorios_tipoRelacionamento`
--

INSERT INTO `dadosObrigatorios_tipoRelacionamento` (`tipoRelacionamento_id`, `tipoDadoCRM_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 5),
(4, 8),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(7, 14),
(8, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `EmailRecebido`
--

CREATE TABLE `EmailRecebido` (
  `id` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `dataHoraRecebimento` datetime(6) DEFAULT NULL,
  `destinatario` varchar(255) DEFAULT NULL,
  `mensagem` text,
  `remetente` varchar(255) DEFAULT NULL,
  `contato_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `envioDocumento_contatos`
--

CREATE TABLE `envioDocumento_contatos` (
  `envioDocumento_id` int(11) NOT NULL,
  `contatos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `EnvioEmail`
--

CREATE TABLE `EnvioEmail` (
  `tipoEmail` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `datadisparo` datetime(6) DEFAULT NULL,
  `descricaoEnvio` varchar(255) DEFAULT NULL,
  `foiEnviado` bit(1) NOT NULL,
  `texto` text,
  `subAtividadeAgendadaAposLeituraEmail` bit(1) DEFAULT NULL,
  `modeloEmail_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `statusEnvio_id` int(11) DEFAULT NULL,
  `usuarioResponsavel_id` int(11) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `EnvioEmailRascunhoAutoSave`
--

CREATE TABLE `EnvioEmailRascunhoAutoSave` (
  `id` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `dataHora` datetime(6) DEFAULT NULL,
  `texto` text,
  `emailVinculado_id` int(11) NOT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `envioEmail_arquivoAnexado`
--

CREATE TABLE `envioEmail_arquivoAnexado` (
  `envioEmail_id` int(11) NOT NULL,
  `arquivoAnexado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `GrupoUsuarioSB`
--

CREATE TABLE `GrupoUsuarioSB` (
  `tipoGrupoUsuario` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `dataHoraAlteracao` datetime(6) DEFAULT NULL,
  `dataHoraInsersao` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `paginaInicial` varchar(255) DEFAULT NULL,
  `tipoGrupoNativo` bit(1) NOT NULL,
  `moduloPrincipal_id` int(11) DEFAULT NULL,
  `usuarioAlteracao_id` int(11) DEFAULT NULL,
  `usuarioInsercao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `GrupoUsuarioSB`
--

INSERT INTO `GrupoUsuarioSB` (`tipoGrupoUsuario`, `id`, `ativo`, `dataHoraAlteracao`, `dataHoraInsersao`, `descricao`, `nome`, `paginaInicial`, `tipoGrupoNativo`, `moduloPrincipal_id`, `usuarioAlteracao_id`, `usuarioInsercao_id`) VALUES
('GrupoUsuarioCRM', 1, b'1', NULL, NULL, NULL, 'Gestão de Relacionamento com o Cliente', 'FabAcaoCRMAtendimento.MEUS_PROSPECTOS_MB_GERENCIAR', b'1', 1374834286, NULL, NULL),
('GrupoUsuarioCRM', 2, b'1', NULL, NULL, NULL, 'Administração de CRM', 'FabAcaoCrmAdmin.ADMINISTRATIVO_PAGINA_PRINCIPAL_MB', b'1', -2109946963, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(21),
(21),
(21),
(21),
(21),
(21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Ips`
--

CREATE TABLE `Ips` (
  `id` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `dataAlteracao` date DEFAULT NULL,
  `dns` varchar(255) DEFAULT NULL,
  `finalFaixa` varchar(15) NOT NULL,
  `inicialFaixa` varchar(15) NOT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `usuarioAlteracao_id` int(11) DEFAULT NULL,
  `usuarioInsercao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Localidade`
--

CREATE TABLE `Localidade` (
  `id` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `dataAlteracao` date DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Localizacao`
--

CREATE TABLE `Localizacao` (
  `tipoLocalizacao` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `latitude` bigint(20) NOT NULL,
  `longitude` bigint(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `bairro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `MetaRelacionamento`
--

CREATE TABLE `MetaRelacionamento` (
  `id` int(11) NOT NULL,
  `descricaoEtapaVisaoCliente` varchar(255) DEFAULT NULL,
  `descricaoEtapaVisaoPrestador` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `peso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ModeloDocumentoCRM`
--

CREATE TABLE `ModeloDocumentoCRM` (
  `tipoModelo` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `extencao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipoServico_id` int(11) DEFAULT NULL,
  `tipoAtividadeVinculada_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ModeloEmail`
--

CREATE TABLE `ModeloEmail` (
  `id` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `dataHoraCriou` datetime(6) DEFAULT NULL,
  `dataHoraEditou` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `textoModelo` text,
  `usuarioEditou_id` int(11) DEFAULT NULL,
  `usuariocriou_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ModuloAcaoSistema`
--

CREATE TABLE `ModuloAcaoSistema` (
  `tipoModulo` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `dataHoraCriacao` date DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `iconeDaClasse` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `umModuloNativo` bit(1) NOT NULL,
  `moduloFab` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ModuloAcaoSistema`
--

INSERT INTO `ModuloAcaoSistema` (`tipoModulo`, `id`, `dataHoraCriacao`, `descricao`, `iconeDaClasse`, `nome`, `umModuloNativo`, `moduloFab`) VALUES
('ModuloIntranetCasanova', -2109946963, '2019-02-12', '', 'fa fa-puzzle-piece', 'Administração de CRM', b'0', 1),
('ModuloIntranetCasanova', -379834316, '2019-02-12', 'Produção de produtos e serviços', 'fa fa-puzzle-piece', 'Produção', b'0', 3),
('ModuloIntranetCasanova', 1374834286, '2019-02-12', 'Central de Relacionamento com o Cliente', 'fa fa-puzzle-piece', 'Central de Relacionamento', b'0', 0),
('ModuloIntranetCasanova', 1473914980, '2019-02-12', 'Central de relacionamento do cliente', 'fa fa-puzzle-piece', 'Contato', b'0', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulos_grupo`
--

CREATE TABLE `modulos_grupo` (
  `grupo_id` int(11) NOT NULL,
  `modulo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modulos_grupo`
--

INSERT INTO `modulos_grupo` (`grupo_id`, `modulo_id`) VALUES
(2, -2109946963),
(1, 1374834286);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Negado_Grupos`
--

CREATE TABLE `Negado_Grupos` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Negado_Usuarios`
--

CREATE TABLE `Negado_Usuarios` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `OpcaoPersonalizada`
--

CREATE TABLE `OpcaoPersonalizada` (
  `id` int(11) NOT NULL,
  `codigoGrupoOpcoes` varchar(255) DEFAULT NULL,
  `descricao` text,
  `nome` varchar(255) DEFAULT NULL,
  `tipoDado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `OrigemProspecto`
--

CREATE TABLE `OrigemProspecto` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `relacionamentoPadrao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `PalavraChave`
--

CREATE TABLE `PalavraChave` (
  `id` int(11) NOT NULL,
  `palavra` varchar(255) DEFAULT NULL,
  `significado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `PalavraChave`
--

INSERT INTO `PalavraChave` (`id`, `palavra`, `significado`) VALUES
(1, 'Amor', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `PalavraChave_PalavraChave`
--

CREATE TABLE `PalavraChave_PalavraChave` (
  `PalavraChave_id` int(11) NOT NULL,
  `palavrasRelacionadas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ParametroComponente`
--

CREATE TABLE `ParametroComponente` (
  `id` int(11) NOT NULL,
  `nomeParametro` varchar(255) DEFAULT NULL,
  `valorPadrao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `PermissaoSB`
--

CREATE TABLE `PermissaoSB` (
  `id` int(11) NOT NULL,
  `idAcaoGestao` int(11) NOT NULL,
  `idacaoDoSistema` int(11) NOT NULL,
  `nomeAcesso` varchar(255) DEFAULT NULL,
  `tipoAutenticacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `PermissaoSB`
--

INSERT INTO `PermissaoSB` (`id`, `idAcaoGestao`, `idacaoDoSistema`, `nomeAcesso`, `tipoAutenticacao`) VALUES
(-1292705878, -591280281, -1292705878, 'FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_FRM_LISTAR', NULL),
(-1157190924, -1157190924, -1157190924, 'FabAcaoCrmAdmin.OPCAO_DADOS_CRM_MB_GERENCIAR', NULL),
(-591280281, -591280281, -591280281, 'FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_MB_GERENCIAR', NULL),
(12080907, 12080907, 12080907, 'FabAcaoCRMAtendimento.PROSPECTO_MB_GERENCIAR', NULL),
(193715130, 193715130, 193715130, 'FabAcaoCRMAtendimento.EXECUCAO_ATIVIDADE_MB', NULL),
(223258683, 223258683, 223258683, 'FabAcaoCrmAdmin.CADASTRO_USUARIO_MB_GERENCIAR', NULL),
(287810846, 287810846, 287810846, 'FabAcaoCrmAdmin.ADMINISTRATIVO_PAGINA_PRINCIPAL_MB', NULL),
(587190021, 587190021, 587190021, 'FabAcaoCrmAdmin.MODELOS_DOCUMENTOS_TIPO_ATIVIDADE_MB_GERENCIAR', NULL),
(1063282997, 1063282997, 1063282997, 'FabAcaoCRMAtendimento.MEUS_PROSPECTOS_MB_GERENCIAR', NULL),
(1184973423, 1184973423, 1184973423, 'FabAcaoCrmAdmin.MAUTIC_MB_INTEGRACAO', NULL),
(1294786096, 1294786096, 1294786096, 'FabAcaoCrmAdmin.SERVICO_DIPONIVEL_MB_GESTAO', NULL),
(1952702119, 1952702119, 1952702119, 'FabAcaoCrmAdmin.TIPO_ATIVIDADE_MB_GERENCIAR', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Permitido_Grupos`
--

CREATE TABLE `Permitido_Grupos` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Permitido_Grupos`
--

INSERT INTO `Permitido_Grupos` (`id`, `acesso_id`, `grupo_id`) VALUES
(-1292705876, -1292705878, 2),
(-1157190922, -1157190924, 2),
(-591280279, -591280281, 2),
(12080908, 12080907, 1),
(12080909, 12080907, 2),
(193715131, 193715130, 1),
(193715132, 193715130, 2),
(223258685, 223258683, 2),
(287810848, 287810846, 2),
(587190023, 587190021, 2),
(1063282998, 1063282997, 1),
(1063282999, 1063282997, 2),
(1184973425, 1184973423, 2),
(1294786098, 1294786096, 2),
(1952702121, 1952702119, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Permitido_Usuarios`
--

CREATE TABLE `Permitido_Usuarios` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Porte`
--

CREATE TABLE `Porte` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `Porte`
--

INSERT INTO `Porte` (`id`, `descricao`, `nome`) VALUES
(1, 'Empresas pequenas (Alcance local)', 'pequena'),
(2, 'Empresas pequenas (Alcance local)', 'Média'),
(3, 'Empresas de Grande porte (Alcance Nacional)', 'grande');

-- --------------------------------------------------------

--
-- Estrutura da tabela `PreAnalise`
--

CREATE TABLE `PreAnalise` (
  `id` int(11) NOT NULL,
  `fotoDesktop` varchar(255) DEFAULT NULL,
  `fotoMobile` varchar(255) DEFAULT NULL,
  `jsonDesktop` longtext,
  `jsonMobile` longtext,
  `nome` varchar(255) DEFAULT NULL,
  `notaDesktop` bigint(20) DEFAULT NULL,
  `notaMobile` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Proposta`
--

CREATE TABLE `Proposta` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ProspectoEmpresa`
--

CREATE TABLE `ProspectoEmpresa` (
  `id` int(11) NOT NULL,
  `CEP` varchar(255) DEFAULT NULL,
  `cadastrocompleto` bit(1) NOT NULL,
  `caminhoLocalImagem` varchar(255) DEFAULT NULL,
  `caminhoUrlImagem` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `dataHoraAlterouProspecto` datetime(6) DEFAULT NULL,
  `dataHoracriouProspecto` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `enderecoSecundario` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `outrosTelefones` varchar(255) DEFAULT NULL,
  `prospectoPrivado` bit(1) NOT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `telefonePrincipal` varchar(255) DEFAULT NULL,
  `contatoPrincipal_id` int(11) DEFAULT NULL,
  `localizacao_id` int(11) DEFAULT NULL,
  `origem_id` int(11) DEFAULT NULL,
  `porte_id` int(11) DEFAULT NULL,
  `preAnalise_id` int(11) DEFAULT NULL,
  `relacionamento_id` int(11) DEFAULT NULL,
  `tipoEmpresa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ProspectoEmpresa`
--

INSERT INTO `ProspectoEmpresa` (`id`, `CEP`, `cadastrocompleto`, `caminhoLocalImagem`, `caminhoUrlImagem`, `complemento`, `dataHoraAlterouProspecto`, `dataHoracriouProspecto`, `email`, `endereco`, `enderecoSecundario`, `nome`, `observacao`, `outrosTelefones`, `prospectoPrivado`, `responsavel`, `site`, `telefonePrincipal`, `contatoPrincipal_id`, `localizacao_id`, `origem_id`, `porte_id`, `preAnalise_id`, `relacionamento_id`, `tipoEmpresa_id`) VALUES
(1, NULL, b'0', NULL, NULL, NULL, '2019-02-12 09:46:10.250000', NULL, 'salviof@gmail.com', 'Rua goias 171 ap 41', NULL, 'Empresa X que vai fechar contrado nome da empresa', NULL, NULL, b'0', NULL, 'http://www.google.com.br', '32240677', NULL, NULL, NULL, 3, NULL, 2, NULL),
(2, NULL, b'0', NULL, NULL, NULL, '2019-02-12 09:46:07.423000', '2019-02-12 09:46:07.372000', 'prospecto2@teste.com', NULL, NULL, 'prospecto teste 2', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, NULL),
(3, NULL, b'0', NULL, NULL, NULL, '2019-02-12 09:46:07.800000', '2019-02-12 09:46:07.752000', 'prospecto3@teste.com', NULL, NULL, 'prospecto teste 3', NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ProspectoEmpresa_PalavraChave`
--

CREATE TABLE `ProspectoEmpresa_PalavraChave` (
  `prospectoEmpresa_id` int(11) NOT NULL,
  `palavraChave_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ProspectoEmpresa_PalavraChave`
--

INSERT INTO `ProspectoEmpresa_PalavraChave` (`prospectoEmpresa_id`, `palavraChave_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ProspectoEmpresa_ProspectoEmpresa`
--

CREATE TABLE `ProspectoEmpresa_ProspectoEmpresa` (
  `prospectoEmpresa_id` int(11) NOT NULL,
  `clienteRelacionado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prospectos_usuarios_responsaveis`
--

CREATE TABLE `prospectos_usuarios_responsaveis` (
  `usuarioCRM_id` int(11) NOT NULL,
  `prospecto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `prospectos_usuarios_responsaveis`
--

INSERT INTO `prospectos_usuarios_responsaveis` (`usuarioCRM_id`, `prospecto_id`) VALUES
(2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Regiao`
--

CREATE TABLE `Regiao` (
  `id` int(11) NOT NULL,
  `alteradoEm` date DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `criadoEm` date DEFAULT NULL,
  `nomeRegiao` varchar(255) DEFAULT NULL,
  `quantidadeCidades` int(11) NOT NULL,
  `sigla` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Regiao_Bairro`
--

CREATE TABLE `Regiao_Bairro` (
  `Regiao_id` int(11) NOT NULL,
  `bairros_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao_cidades`
--

CREATE TABLE `regiao_cidades` (
  `regiao_id` int(11) NOT NULL,
  `cidade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relacionamento_usuarios_responsaveis`
--

CREATE TABLE `relacionamento_usuarios_responsaveis` (
  `relacionamento_id` int(11) NOT NULL,
  `usuarioCRM_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ResultadoTipoRelacionamento`
--

CREATE TABLE `ResultadoTipoRelacionamento` (
  `id` int(11) NOT NULL,
  `classeResultado` varchar(255) DEFAULT NULL,
  `corResultado` varchar(255) DEFAULT NULL,
  `fabricaResultado` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ResultadoTipoRelacionamento`
--

INSERT INTO `ResultadoTipoRelacionamento` (`id`, `classeResultado`, `corResultado`, `fabricaResultado`, `nome`) VALUES
(1, NULL, '#9CB071', 0, 'Negócio Fechado'),
(2, NULL, '#C34A2C', 1, 'Negócio não concretizado'),
(3, NULL, '#C34A2C', 2, 'Possível fechar negocio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ServicoOferecido`
--

CREATE TABLE `ServicoOferecido` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valorMensal` double NOT NULL,
  `valorSetup` double NOT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `tipoServico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `StatusAtividade`
--

CREATE TABLE `StatusAtividade` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `StatusAtividade`
--

INSERT INTO `StatusAtividade` (`id`, `descricao`, `nome`) VALUES
(1, NULL, 'Em andamento'),
(2, NULL, 'Sucesso'),
(3, NULL, 'Agendado'),
(4, NULL, 'Cancelado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `StatusEnvioEmail`
--

CREATE TABLE `StatusEnvioEmail` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `StatusEnvioEmail`
--

INSERT INTO `StatusEnvioEmail` (`id`, `descricao`) VALUES
(1, 'Rascunho'),
(2, 'Tentando enviar'),
(3, 'Enviado'),
(4, 'Entrega Confirmada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoAtividadeCRM`
--

CREATE TABLE `TipoAtividadeCRM` (
  `id` int(11) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `diasAgendamentoAposLeitura` int(11) NOT NULL,
  `diasAgendarNovaAtividade` int(11) NOT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `nomeAtividade` varchar(255) DEFAULT NULL,
  `nomeFimAtividade` varchar(255) DEFAULT NULL,
  `nomeInicioAtivida` varchar(255) DEFAULT NULL,
  `precisaEnviarDocumento` bit(1) NOT NULL,
  `precisaServicosDefinidos` bit(1) NOT NULL,
  `precisaTerAnexo` bit(1) NOT NULL,
  `precisaTerImagem` bit(1) NOT NULL,
  `precisaTerPreAnalise` bit(1) NOT NULL,
  `precisaTerSite` bit(1) NOT NULL,
  `progresso` bit(1) NOT NULL,
  `regresso` bit(1) NOT NULL,
  `temDisparoDeEmail` bit(1) NOT NULL,
  `textoAjuda` varchar(255) DEFAULT NULL,
  `xhtmlAlternativo` varchar(255) DEFAULT NULL,
  `atividadeAgendada_id` int(11) DEFAULT NULL,
  `atividadeAgendadaAposLeituraEmail_id` int(11) DEFAULT NULL,
  `modeloEmail_id` int(11) DEFAULT NULL,
  `relacionamentoGerado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TipoAtividadeCRM`
--

INSERT INTO `TipoAtividadeCRM` (`id`, `cor`, `diasAgendamentoAposLeitura`, `diasAgendarNovaAtividade`, `icone`, `nomeAtividade`, `nomeFimAtividade`, `nomeInicioAtivida`, `precisaEnviarDocumento`, `precisaServicosDefinidos`, `precisaTerAnexo`, `precisaTerImagem`, `precisaTerPreAnalise`, `precisaTerSite`, `progresso`, `regresso`, `temDisparoDeEmail`, `textoAjuda`, `xhtmlAlternativo`, `atividadeAgendada_id`, `atividadeAgendadaAposLeituraEmail_id`, `modeloEmail_id`, `relacionamentoGerado_id`) VALUES
(1, '439fe0', 0, 0, 'fa fa-phone', 'Atendimento Telefonico Passivo', 'Finalizar Atendimento', 'Atender Telefone', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '439fe0', 0, 0, 'fa fa-bullhorn', 'Atendimento Telefonico Ativo', 'Finalizar Ligação', 'Ligar Para Empresa', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '439fe0', 0, 0, 'fa fa-envelope', 'Contato Via E-mail', 'Enviar', 'Criar e-mail', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '439fe0', 0, 0, 'fa fa-bar-chart', 'Realização de Pré análize', 'Concluir Pré Análise', 'Cadastrar Pré Análise', b'1', b'0', b'0', b'0', b'0', b'0', b'1', b'0', b'0', NULL, NULL, NULL, NULL, NULL, 4),
(5, '439fe0', 0, 0, 'fa fa-pencil-square-o ', 'Envio de Pré Análize', 'Enviar', 'Enviar Pré Análize', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, '/site/crm/atividadesPersonalizadas/enviarPreanalise.xhtml', NULL, NULL, NULL, NULL),
(6, '439fe0', 0, 0, 'fa fa-beer', 'Realização de  Brifing', 'Finalizar Brifing', 'Realizar Brifing', b'1', b'0', b'0', b'0', b'0', b'0', b'1', b'0', b'0', NULL, NULL, NULL, NULL, NULL, 6),
(7, '439fe0', 0, 0, 'fa fa-beer', 'Criação de proposta', 'Finalizar Proposta', 'Montar Proposta', b'1', b'0', b'0', b'0', b'0', b'0', b'1', b'0', b'0', NULL, '/site/crm/proposta.xhtml', NULL, NULL, NULL, 7),
(8, '439fe0', 0, 0, 'fa fa-beer', 'Consulta de dados', 'OK', 'ver Prospecto', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '439fe0', 0, 0, 'fa fa-beer', 'Definição de valores', 'Finalizar definição', 'Devinir Valores', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '439fe0', 0, 0, 'fa fa-beer', 'Impressão de Proposta', 'Imprimir', 'Imprimir Proposta', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '439fe0', 0, 0, 'fa fa-beer', 'Envio de proposta', 'Enviar', 'Enviar proposta', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '439fe0', 0, 0, 'fa fa-beer', 'Envio de propaganda', 'Enviar', 'Disparar e-mail Marketing', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(13, '439fe0', 0, 0, 'fa fa-beer', 'Envio de boleto', 'Enviar', 'Enviar Boleto', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, '/site/crm/atividadesPersonalizadas/enviarEmail.xhtml', NULL, NULL, NULL, NULL),
(14, '439fe0', 0, 0, 'fa fa-beer', 'Assinatura de contrato', 'Arquivar', 'Arquivar assinatura de contrato', b'1', b'0', b'0', b'0', b'0', b'0', b'1', b'0', b'0', NULL, NULL, NULL, NULL, NULL, 8),
(15, '439fe0', 0, 0, 'fa fa-beer', 'Ativação de campanhas', 'Ativar', 'Ativar Campanha', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '439fe0', 0, 0, 'fa fa-beer', 'Agenda de novo Contato', 'Agendar', 'Agendar Contato', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(17, '439fe0', 0, 0, 'fa fa-beer', 'Desistir de Prospecto', 'Abandonar por 6 meses', 'Abandonar Prospecto', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL),
(18, '439fe0', 0, 0, 'fa fa-beer', 'Criação de prospecto', 'Cadastrar', 'Cadastrar Prospecto', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, 3),
(19, '439fe0', 0, 0, 'fa fa-beer', 'Cancelar contrato', 'Cancelar', 'Cancelar Contrato', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'1', b'0', NULL, NULL, NULL, NULL, NULL, 9),
(20, '439fe0', 0, 0, 'fa fa-beer', 'Criar nova Proposta', 'Salvar modificações', 'Modificar Proposta', b'1', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoAtividade_autorizados`
--

CREATE TABLE `tipoAtividade_autorizados` (
  `tipoAtividade_id` int(11) NOT NULL,
  `usuarioCRM_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoCobranca`
--

CREATE TABLE `TipoCobranca` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoComponentVisual`
--

CREATE TABLE `TipoComponentVisual` (
  `id` int(11) NOT NULL,
  `codigoFonte` varchar(255) DEFAULT NULL,
  `css` varchar(255) DEFAULT NULL,
  `javaScript` varchar(255) DEFAULT NULL,
  `nomeComponente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoComponentVisual_ParametroComponente`
--

CREATE TABLE `TipoComponentVisual_ParametroComponente` (
  `TipoComponentVisual_id` int(11) NOT NULL,
  `parametros_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoDadoCRM`
--

CREATE TABLE `TipoDadoCRM` (
  `id` int(11) NOT NULL,
  `caminhoListagem` varchar(255) DEFAULT NULL,
  `campoProspectoCorrespondente` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `fabricaTipoAtributo` int(11) NOT NULL,
  `fraseValidacao` varchar(255) DEFAULT NULL,
  `iconeNegativo` varchar(255) DEFAULT NULL,
  `iconePositivo` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `mascara` varchar(255) DEFAULT NULL,
  `mascaraJqueryMode` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nomeClasseAtributoDeclarado` varchar(255) DEFAULT NULL,
  `nomeClasseObjetoDestino` varchar(255) DEFAULT NULL,
  `nomeClasseObjetoOrigem` varchar(255) DEFAULT NULL,
  `numeroDeCasasDecimais` int(11) NOT NULL,
  `objetReferente` varchar(255) DEFAULT NULL,
  `objetoReferente` varchar(255) DEFAULT NULL,
  `obrigatorio` bit(1) NOT NULL,
  `separadorDecimal` char(1) NOT NULL,
  `separadorMilhar` char(1) NOT NULL,
  `somenteLeitura` bit(1) NOT NULL,
  `textoNegativo` varchar(255) DEFAULT NULL,
  `textoPositivo` varchar(255) DEFAULT NULL,
  `tipoDadoCRM` int(11) DEFAULT NULL,
  `umValorCampoUnico` bit(1) NOT NULL,
  `umalistagemDinamica` bit(1) NOT NULL,
  `unicaColeta` bit(1) NOT NULL,
  `validacaoRegex` varchar(255) DEFAULT NULL,
  `valorMaximo` int(11) NOT NULL,
  `valorMinimo` int(11) NOT NULL,
  `valorPadrao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TipoDadoCRM`
--

INSERT INTO `TipoDadoCRM` (`id`, `caminhoListagem`, `campoProspectoCorrespondente`, `descricao`, `fabricaTipoAtributo`, `fraseValidacao`, `iconeNegativo`, `iconePositivo`, `label`, `mascara`, `mascaraJqueryMode`, `nome`, `nomeClasseAtributoDeclarado`, `nomeClasseObjetoDestino`, `nomeClasseObjetoOrigem`, `numeroDeCasasDecimais`, `objetReferente`, `objetoReferente`, `obrigatorio`, `separadorDecimal`, `separadorMilhar`, `somenteLeitura`, `textoNegativo`, `textoPositivo`, `tipoDadoCRM`, `umValorCampoUnico`, `umalistagemDinamica`, `unicaColeta`, `validacaoRegex`, `valorMaximo`, `valorMinimo`, `valorPadrao`) VALUES
(1, NULL, NULL, NULL, 41, NULL, NULL, NULL, 'Nome Contato Principal', NULL, NULL, 'Nome Contato Principal', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(2, NULL, NULL, NULL, 33, NULL, NULL, NULL, 'Telefone', NULL, NULL, 'Telefone', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(3, NULL, NULL, NULL, 33, NULL, NULL, NULL, 'Telefone Principal', NULL, NULL, 'Telefone Principal', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(4, NULL, NULL, NULL, 45, NULL, NULL, NULL, 'Site Atual', NULL, NULL, 'Site Atual', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(5, NULL, NULL, NULL, 37, NULL, NULL, NULL, 'Porte da Empresa', NULL, NULL, 'Porte da Empresa', 'Porte', NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', 'Porte', b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(6, NULL, NULL, NULL, 41, NULL, NULL, NULL, 'Outros', NULL, NULL, 'Outros', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(7, NULL, NULL, NULL, 41, NULL, NULL, NULL, 'Indicação', NULL, NULL, 'Indicação', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(8, NULL, NULL, NULL, 41, NULL, NULL, NULL, 'Responsável', NULL, NULL, 'Responsável', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(9, NULL, NULL, NULL, 41, NULL, NULL, NULL, 'Motivo Prospect', NULL, NULL, 'Motivo Prospect', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(10, NULL, NULL, NULL, 45, NULL, NULL, NULL, 'Site concorrente 1', NULL, NULL, 'Site concorrente 1', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(11, NULL, NULL, NULL, 45, NULL, NULL, NULL, 'Site concorrente 2', NULL, NULL, 'Site concorrente 2', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(12, NULL, NULL, NULL, 45, NULL, NULL, NULL, 'Site concorrente 3', NULL, NULL, 'Site concorrente 3', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(13, NULL, NULL, NULL, 42, NULL, NULL, NULL, 'é mobile?', NULL, NULL, 'é mobile?', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(14, NULL, NULL, NULL, 42, NULL, NULL, NULL, 'é Otimizado?', NULL, NULL, 'é Otimizado?', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(15, NULL, NULL, NULL, 42, NULL, NULL, NULL, 'Tem perfil e-comerce?', NULL, NULL, 'Tem perfil e-comerce?', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(16, NULL, NULL, NULL, 42, NULL, NULL, NULL, 'Já inverstil em Marketing Digital?', NULL, NULL, 'Já inverstil em Marketing Digital?', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(17, NULL, NULL, NULL, 34, NULL, NULL, NULL, 'Gastro anual com Publicidade', NULL, NULL, 'Gastro anual com Publicidade', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(18, NULL, NULL, NULL, 42, NULL, NULL, NULL, 'Produto exclusivo ou personalizado?', NULL, NULL, 'Produto exclusivo ou personalizado?', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(19, NULL, NULL, NULL, 42, NULL, NULL, NULL, 'Desejo do cliente?', NULL, NULL, 'Desejo do cliente?', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(20, NULL, NULL, NULL, 49, NULL, NULL, NULL, 'CNPJ', NULL, NULL, 'CNPJ', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 18, 0, NULL),
(21, NULL, NULL, NULL, 61, NULL, NULL, NULL, 'Arquivo', NULL, NULL, 'Arquivo', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL),
(22, NULL, NULL, NULL, 41, NULL, NULL, NULL, 'Ramo de atuação', NULL, NULL, 'Ramo de atuação', NULL, NULL, 'TipoDadoCRM', 0, 'ProspectoEmpresa', NULL, b'0', '\0', '.', b'0', NULL, NULL, NULL, b'0', b'0', b'1', NULL, 99999, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoDadoCRM_listaOpcoesTemplate`
--

CREATE TABLE `TipoDadoCRM_listaOpcoesTemplate` (
  `TipoDadoCRM_id` int(11) NOT NULL,
  `listaOpcoesTemplate` varchar(255) DEFAULT NULL,
  `listaOpcoesTemplate_KEY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoEmpresa`
--

CREATE TABLE `TipoEmpresa` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TipoEmpresa`
--

INSERT INTO `TipoEmpresa` (`id`, `descricao`, `nome`) VALUES
(1, 'Ramo de industrias', 'Industria'),
(2, 'Prestador de serviços', 'Serviços'),
(3, 'Lojistas', 'Comercio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoIp`
--

CREATE TABLE `TipoIp` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoRelacionamento`
--

CREATE TABLE `TipoRelacionamento` (
  `id` int(11) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `descricao` varchar(2000) DEFAULT NULL,
  `dicas` varchar(2000) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nomeDoRelacionado` varchar(255) DEFAULT NULL,
  `peso` int(11) NOT NULL,
  `totalAtividades` bigint(20) DEFAULT NULL,
  `metaRelacionamento_id` int(11) DEFAULT NULL,
  `resultado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TipoRelacionamento`
--

INSERT INTO `TipoRelacionamento` (`id`, `cor`, `descricao`, `dicas`, `nome`, `nomeDoRelacionado`, `peso`, `totalAtividades`, `metaRelacionamento_id`, `resultado_id`) VALUES
(1, '#C34A2C', 'Esta empresa não é indicável como possível cliente', '', 'Não Indicado', 'Desprospectado', -1, NULL, NULL, 2),
(2, NULL, 'Ouve a coleta dos dados iniciais', '', 'Cadastrado', 'Coletado', 0, NULL, NULL, 3),
(3, NULL, '', 'Um cadastro no estagio de prospecto deve ser pré-analizado, só assim poderemos partir para uma conversa sabendo quem é o cliente', 'Qualificado', 'Qualificado', 2, NULL, NULL, 3),
(4, NULL, '', '', 'Pre-Analize Entregue', 'Contato Estabelecido', 4, NULL, NULL, 3),
(5, NULL, '', '', 'Brifing Coletado', 'Brifing Coletado', 6, NULL, NULL, 3),
(6, NULL, '', '', 'Proposta Entregue', 'Prospecto em negociação', 9, NULL, NULL, 3),
(7, NULL, '', '', 'Negociação em andamento', 'Negociação em andamento', 9, NULL, NULL, 3),
(8, '#9CB071', '', '', 'Contrato Ativo', 'Cliente ', 10, NULL, NULL, 1),
(9, '#C34A2C', '', '', 'Inativo', 'Ex Cliente', -3, NULL, NULL, 2),
(10, '#C34A2C', '', '', 'Negociação perdida', 'Quase Fechou', -2, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoRelacionamento_TipoAtividadeCRM`
--

CREATE TABLE `TipoRelacionamento_TipoAtividadeCRM` (
  `TipoRelacionamento_id` int(11) NOT NULL,
  `tiposAtividadeDisponiveis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `TipoRelacionamento_TipoAtividadeCRM`
--

INSERT INTO `TipoRelacionamento_TipoAtividadeCRM` (`TipoRelacionamento_id`, `tiposAtividadeDisponiveis_id`) VALUES
(2, 18),
(2, 19),
(3, 4),
(3, 5),
(3, 2),
(3, 1),
(3, 3),
(4, 6),
(4, 2),
(4, 1),
(4, 3),
(5, 7),
(5, 17),
(5, 2),
(5, 1),
(5, 3),
(6, 9),
(6, 2),
(6, 1),
(6, 3),
(7, 9),
(7, 14),
(7, 20),
(7, 2),
(7, 1),
(7, 3),
(8, 19),
(8, 13),
(8, 8),
(8, 2),
(8, 1),
(8, 3),
(9, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `TipoServico`
--

CREATE TABLE `TipoServico` (
  `id` int(11) NOT NULL,
  `arquivoApresentacao` varchar(255) DEFAULT NULL,
  `descricao` text,
  `descricaoApresentacao` text,
  `nome` varchar(255) DEFAULT NULL,
  `urlDetalhes` varchar(255) DEFAULT NULL,
  `valorMensalMax` double NOT NULL,
  `valorMensalMin` double NOT NULL,
  `valorSetupMax` double NOT NULL,
  `valorSetupMin` double NOT NULL,
  `tipoServico_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoSevico_documentoApresentacao`
--

CREATE TABLE `tipoSevico_documentoApresentacao` (
  `tipoServico_id` int(11) NOT NULL,
  `documentoApresentacao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `UnidadeFederativa`
--

CREATE TABLE `UnidadeFederativa` (
  `id` int(11) NOT NULL,
  `UF` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `UsuarioSB`
--

CREATE TABLE `UsuarioSB` (
  `tipoUsuario` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `apelido` varchar(255) DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `dataHoraAlteracao` datetime(6) DEFAULT NULL,
  `dataHoraInsersao` datetime(6) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `assinaturaEmail` text,
  `dataHoraLembrarMaisTardeAtividadesInacabadas` datetime(6) DEFAULT NULL,
  `podeAcessarTodosProspectos` bit(1) DEFAULT NULL,
  `portaSMTP` int(11) DEFAULT NULL,
  `senhaServidorPop` varchar(255) DEFAULT NULL,
  `senhaServidorSMTP` varchar(255) DEFAULT NULL,
  `servidorSMTP` varchar(255) DEFAULT NULL,
  `ultimoEmailRecebido` datetime(6) DEFAULT NULL,
  `usarSSL` bit(1) DEFAULT NULL,
  `usarTSL` bit(1) DEFAULT NULL,
  `usuarioSMTP` varchar(255) DEFAULT NULL,
  `grupo_id` int(11) NOT NULL,
  `localizacao_id` int(11) DEFAULT NULL,
  `usuarioAlteracao_id` int(11) DEFAULT NULL,
  `usuarioInsercao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `UsuarioSB`
--

INSERT INTO `UsuarioSB` (`tipoUsuario`, `id`, `apelido`, `ativo`, `complemento`, `dataCadastro`, `dataHoraAlteracao`, `dataHoraInsersao`, `email`, `nome`, `senha`, `telefone`, `assinaturaEmail`, `dataHoraLembrarMaisTardeAtividadesInacabadas`, `podeAcessarTodosProspectos`, `portaSMTP`, `senhaServidorPop`, `senhaServidorSMTP`, `servidorSMTP`, `ultimoEmailRecebido`, `usarSSL`, `usarTSL`, `usuarioSMTP`, `grupo_id`, `localizacao_id`, `usuarioAlteracao_id`, `usuarioInsercao_id`) VALUES
('UsuarioCRM', 1, NULL, b'1', NULL, '2019-02-12', NULL, '2019-02-12 09:45:57.027000', 'salviof@gmail.com', 'Sálvio Furbino', '123', NULL, NULL, NULL, b'0', 0, NULL, NULL, NULL, NULL, b'0', b'0', NULL, 2, NULL, NULL, NULL),
('UsuarioCRM', 2, 'atendimento@casanovadigital.com.br', b'1', NULL, '2019-02-12', '2019-02-12 09:46:07.782000', NULL, 'atendimento@casanovadigital.com.br', 'Naidoca', '123', NULL, NULL, NULL, b'0', 0, NULL, NULL, NULL, NULL, b'0', b'0', NULL, 1, NULL, NULL, NULL),
('UsuarioCRM', 3, NULL, b'1', NULL, '2019-02-12', NULL, '2019-02-12 09:45:57.418000', 'convidado@casanovadigital.com.br', 'Convidado', '1116649323', NULL, NULL, NULL, b'0', 0, NULL, NULL, NULL, NULL, b'0', b'0', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_grupo`
--

CREATE TABLE `usuario_grupo` (
  `grupo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AcaoDoSistema`
--
ALTER TABLE `AcaoDoSistema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnff94k77k0bke2qf07y84ips5` (`modulo_id`);

--
-- Indexes for table `Agendamento`
--
ALTER TABLE `Agendamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK19aubepvjfge5jt1eqqn6shko` (`atividade_id`),
  ADD KEY `FK90bqxpyty23msvtaju3sq2dd0` (`prospecto_id`);

--
-- Indexes for table `ArquivoAnexado`
--
ALTER TABLE `ArquivoAnexado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcpaqaawullaun49mnyxbjwecc` (`prospecto_id`),
  ADD KEY `FK8gq7u9iiomk3exa1ov98u66uy` (`usuarioAtualizou_id`),
  ADD KEY `FKs6napt2ok0knd78jsu65gr61b` (`usuarioCriou_id`),
  ADD KEY `FK9ruls4exei7k29l2m42115k2d` (`atividadeGeradora_id`),
  ADD KEY `FKbtsox37nxdqatnrmiwo92e2by` (`modeloDocumento_id`);

--
-- Indexes for table `AtividadeCRM`
--
ALTER TABLE `AtividadeCRM`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr66xwgcb87pcdiyhbdf26jkbe` (`emailVinculado_id`),
  ADD KEY `FKa2jxlkvkhf143jg4qqwdxq563` (`prospectoEmpresa_id`),
  ADD KEY `FK3rvlx0srjatwb39yd4rfqq4b0` (`relacionamentoGerado_id`),
  ADD KEY `FKfe8l1g1y8jjjf4t6jlj1jna5i` (`statusAtividade_id`),
  ADD KEY `FK1d0rhuyaxf3mgnd2fct5d330l` (`tipoAtividade_id`),
  ADD KEY `FKcbgwj2po55ym0un32n8pifinx` (`usuarioAtividade_id`);

--
-- Indexes for table `atividadePrincipal_UsuarioCrm`
--
ALTER TABLE `atividadePrincipal_UsuarioCrm`
  ADD KEY `FKn6ojweag0vpt1sb8eml2i2qt2` (`usuario_id`),
  ADD KEY `FKh0c1d2xi43h7rfwof5wcgd4uv` (`acesso_id`);

--
-- Indexes for table `Bairro`
--
ALTER TABLE `Bairro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc6grs1jdy5u4dhdfsyd61jgk5` (`cidade_id`);

--
-- Indexes for table `Cidade`
--
ALTER TABLE `Cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgj6br5dxt0ht6uje8hy4n2wgw` (`id_Localidade`),
  ADD KEY `FK8fbd6ik5ht9qwwaik1mi6jgf0` (`unidadeFederativa_id`);

--
-- Indexes for table `CodigoConvite`
--
ALTER TABLE `CodigoConvite`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `FK2xrw2lbcfbaf6uslwk32p75u3` (`atividade_id`),
  ADD KEY `FKal2ednxa7f7pvopwv04xn5g8u` (`contato_id`);

--
-- Indexes for table `ConfigDisparoEmail`
--
ALTER TABLE `ConfigDisparoEmail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ConfiguracaoDePermissao`
--
ALTER TABLE `ConfiguracaoDePermissao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKah1otecpdqxj49533o8geb7c0` (`grupoUsuarioPadrao_id`);

--
-- Indexes for table `ContatoProspecto`
--
ALTER TABLE `ContatoProspecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKri2jbokp8p772k1gqiutinabl` (`prospecto_id`);

--
-- Indexes for table `DadoColetado_Atividade`
--
ALTER TABLE `DadoColetado_Atividade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk1yke11dfycw4mf1yh3koghx6` (`atividade_id`),
  ADD KEY `FKq05qvwdy5xjhs7hkw2y4ysoq4` (`dadoCrm_id`),
  ADD KEY `FKfobyw004eilsdjssjvnq1e3af` (`dado_id`);

--
-- Indexes for table `DadoCRM`
--
ALTER TABLE `DadoCRM`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8jd8er0t1f11vpaik90jva61s` (`atividadeCRM_id`),
  ADD KEY `FK7rwlhlx5hovjcempgp12r0dc8` (`prospectoEmpresa_id`),
  ADD KEY `FK1l2oe0ibgsdp6ntxtxa3ow40k` (`tipoDadoCRM_id`),
  ADD KEY `FKpdadk5re3ildla3go5rmdvfiv` (`tipoRelacionamentoVinculado_id`),
  ADD KEY `FKlb3c9ym0ikn03ypuer39kub10` (`usuarioCadastrou_id`),
  ADD KEY `FK5v12jqoh0l77v3f7fvg2i8fpk` (`usuarioEditou_id`);

--
-- Indexes for table `DadoNaoColetado_Atividade`
--
ALTER TABLE `DadoNaoColetado_Atividade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa1uetknhogmpw9bpy0lmk24ed` (`atividade_id`),
  ADD KEY `FKikny5qw9kxvk02fr8rjkdu6ln` (`dadoCRM_id`),
  ADD KEY `FKgl44rwhsmyjmg74rd04y0y8ou` (`dado_id`);

--
-- Indexes for table `dadosDinamicosDoModelo`
--
ALTER TABLE `dadosDinamicosDoModelo`
  ADD KEY `FK520v0kx7nluypsvt1pen2tbo3` (`tipoDado_id`),
  ADD KEY `FK4jjbuoq3uy8f6okgailvc5i3k` (`modeloDoc_id`);

--
-- Indexes for table `dadosObrigatorios_tipoRelacionamento`
--
ALTER TABLE `dadosObrigatorios_tipoRelacionamento`
  ADD KEY `FK871wmf19edcgwqp8yfitl97v5` (`tipoDadoCRM_id`),
  ADD KEY `FK92greadhkv0agdynqqs3dk6mv` (`tipoRelacionamento_id`);

--
-- Indexes for table `EmailRecebido`
--
ALTER TABLE `EmailRecebido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKswod62ciu74g6fa7xsgy2cfft` (`contato_id`),
  ADD KEY `FK2x9ra5x2vy4r8m5lrhok7x60n` (`prospecto_id`);

--
-- Indexes for table `envioDocumento_contatos`
--
ALTER TABLE `envioDocumento_contatos`
  ADD KEY `FKmkwdios85c2gwhngy3way8put` (`contatos_id`),
  ADD KEY `FKhqfstpvuys5ltyh94ta7prjqy` (`envioDocumento_id`);

--
-- Indexes for table `EnvioEmail`
--
ALTER TABLE `EnvioEmail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs3fp28u6mrv9xtjnv4nnxn3yf` (`modeloEmail_id`),
  ADD KEY `FKexxfyuf4kr1j2dvd81jryuo87` (`prospecto_id`),
  ADD KEY `FKpvv25gb360hb6dj3neeh4myj1` (`statusEnvio_id`),
  ADD KEY `FK7jwv2ja7w2etj2jtwg55frmg4` (`usuarioResponsavel_id`),
  ADD KEY `FKfxdn0p6ekmxpikyarwe4gah8d` (`atividade_id`);

--
-- Indexes for table `EnvioEmailRascunhoAutoSave`
--
ALTER TABLE `EnvioEmailRascunhoAutoSave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbaqx2nnbja9ilhcofjdf96062` (`emailVinculado_id`),
  ADD KEY `FKbf1e0lg6npcoldpb8ujd7f4vu` (`prospecto_id`),
  ADD KEY `FKhoyh4is658osiohhfg30uync5` (`usuario_id`);

--
-- Indexes for table `envioEmail_arquivoAnexado`
--
ALTER TABLE `envioEmail_arquivoAnexado`
  ADD KEY `FK1fy6i0emvrtimcrt8j1pt4nl` (`arquivoAnexado_id`),
  ADD KEY `FKsjwgpcng1ix77hic53owvsmi7` (`envioEmail_id`);

--
-- Indexes for table `GrupoUsuarioSB`
--
ALTER TABLE `GrupoUsuarioSB`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_3wv40cn2xjarnckhmw50xibgh` (`nome`),
  ADD KEY `FKrcx4qo1ruqe8koyfg2vb238jg` (`moduloPrincipal_id`),
  ADD KEY `FKn20xy684qdisrx1r0wyeffosn` (`usuarioAlteracao_id`),
  ADD KEY `FK7s5bl86yjv1r1rfn9i964cq7g` (`usuarioInsercao_id`);

--
-- Indexes for table `Ips`
--
ALTER TABLE `Ips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKg91qw90kdtcwkq94o48c8sfah` (`tipo_id`),
  ADD KEY `FK332ut8y08mn06rtgbpyqei73p` (`usuarioAlteracao_id`),
  ADD KEY `FK92k8tn1tlblje3ees74kebihi` (`usuarioInsercao_id`);

--
-- Indexes for table `Localidade`
--
ALTER TABLE `Localidade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Localizacao`
--
ALTER TABLE `Localizacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1x27cqle98ktlx448eo2lticm` (`bairro_id`);

--
-- Indexes for table `MetaRelacionamento`
--
ALTER TABLE `MetaRelacionamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ModeloDocumentoCRM`
--
ALTER TABLE `ModeloDocumentoCRM`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr4kpnlse8yw76qf7fm3spv8os` (`tipoServico_id`),
  ADD KEY `FKgcxuh9abctg98jsnuv6fep3dl` (`tipoAtividadeVinculada_id`);

--
-- Indexes for table `ModeloEmail`
--
ALTER TABLE `ModeloEmail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs87etehqx2qm1gnxdpc1m59y9` (`usuarioEditou_id`),
  ADD KEY `FKlcg6heqglul50raaf4ueh99w8` (`usuariocriou_id`);

--
-- Indexes for table `ModuloAcaoSistema`
--
ALTER TABLE `ModuloAcaoSistema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulos_grupo`
--
ALTER TABLE `modulos_grupo`
  ADD UNIQUE KEY `UKngph303pxo2b2mrtpfkoacmwq` (`grupo_id`,`modulo_id`),
  ADD KEY `FK1616eg4vq1ubds5aof20ci82b` (`modulo_id`);

--
-- Indexes for table `Negado_Grupos`
--
ALTER TABLE `Negado_Grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhd45weeoe1avo5qunwppgnfhm` (`acesso_id`),
  ADD KEY `FK7m9qmg1btyx5cwglbveiugmbm` (`grupo_id`);

--
-- Indexes for table `Negado_Usuarios`
--
ALTER TABLE `Negado_Usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK39gufe3ixex80jpg9lshm4y1v` (`usuario_id`,`acesso_id`),
  ADD KEY `FKgm8m18ifbnjd04dyl9drki4va` (`acesso_id`);

--
-- Indexes for table `OpcaoPersonalizada`
--
ALTER TABLE `OpcaoPersonalizada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjfrm6qio2eu64bi551a6v7qwp` (`tipoDado_id`);

--
-- Indexes for table `OrigemProspecto`
--
ALTER TABLE `OrigemProspecto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_74ptuyry9afjhcjcjemnp3c9v` (`nome`),
  ADD KEY `FKj6xkt4uas6xsmvw03wb92sghk` (`relacionamentoPadrao_id`);

--
-- Indexes for table `PalavraChave`
--
ALTER TABLE `PalavraChave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PalavraChave_PalavraChave`
--
ALTER TABLE `PalavraChave_PalavraChave`
  ADD UNIQUE KEY `UK_kurrmc1kihysmrybtib03c3b8` (`palavrasRelacionadas_id`),
  ADD KEY `FKbkt9m920kmg7usyn7i4tjt5k1` (`PalavraChave_id`);

--
-- Indexes for table `ParametroComponente`
--
ALTER TABLE `ParametroComponente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PermissaoSB`
--
ALTER TABLE `PermissaoSB`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Permitido_Grupos`
--
ALTER TABLE `Permitido_Grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKonpllqmu9mxhrobrxvvdvqgw3` (`acesso_id`),
  ADD KEY `FKqy7db3uujsot9o8hi9tr16ifw` (`grupo_id`);

--
-- Indexes for table `Permitido_Usuarios`
--
ALTER TABLE `Permitido_Usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK9j92iu9201tx0dm010v5fq4wo` (`usuario_id`,`acesso_id`),
  ADD KEY `FKeb1qf23eyq6brt5o1sbbka3oq` (`acesso_id`);

--
-- Indexes for table `Porte`
--
ALTER TABLE `Porte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PreAnalise`
--
ALTER TABLE `PreAnalise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Proposta`
--
ALTER TABLE `Proposta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKd9xim9ow59y512wqrpxtgbmux` (`atividade_id`),
  ADD KEY `FKhxf04t18n0sb552d1krrbmxwe` (`prospecto_id`);

--
-- Indexes for table `ProspectoEmpresa`
--
ALTER TABLE `ProspectoEmpresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_g75h86ddpg0whtwbf7ar6hj0g` (`email`),
  ADD UNIQUE KEY `UK_a4x6yd79walxvwwf4be9tj4nk` (`site`),
  ADD UNIQUE KEY `UK_27qdperqlhmjkfb3o7a5cvcxo` (`telefonePrincipal`),
  ADD KEY `FKgwkknsfrvrawytqgxud2utlrr` (`contatoPrincipal_id`),
  ADD KEY `FKsy0g7pqwg2bbpqemmkqdwqxqd` (`localizacao_id`),
  ADD KEY `FKkbpc05uwn92r91pxg6tqff009` (`origem_id`),
  ADD KEY `FKxuim764ep6271yeskrx96hm6` (`porte_id`),
  ADD KEY `FK1nspwf202dvdnff9ld973ktkj` (`preAnalise_id`),
  ADD KEY `FKhtmgsbbjnmfa2fne5mphevnna` (`relacionamento_id`),
  ADD KEY `FKj00pyy61x89fpriamckk0sjyp` (`tipoEmpresa_id`);

--
-- Indexes for table `ProspectoEmpresa_PalavraChave`
--
ALTER TABLE `ProspectoEmpresa_PalavraChave`
  ADD KEY `FKexiwj8jd46k0cjcqvoowydq0r` (`palavraChave_id`),
  ADD KEY `FKpjyhf20gphkovbxjaxkwcocqa` (`prospectoEmpresa_id`);

--
-- Indexes for table `ProspectoEmpresa_ProspectoEmpresa`
--
ALTER TABLE `ProspectoEmpresa_ProspectoEmpresa`
  ADD KEY `FK3e1dwaqq2ok3uwut0ubtjpt9e` (`clienteRelacionado_id`),
  ADD KEY `FKpferhna4qq5x6ju0w8s94r130` (`prospectoEmpresa_id`);

--
-- Indexes for table `prospectos_usuarios_responsaveis`
--
ALTER TABLE `prospectos_usuarios_responsaveis`
  ADD KEY `FKa5k80esbqvtgrolg366xs2fyl` (`prospecto_id`),
  ADD KEY `FK4luhhg333vxa9seqr820ic6fq` (`usuarioCRM_id`);

--
-- Indexes for table `Regiao`
--
ALTER TABLE `Regiao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Regiao_Bairro`
--
ALTER TABLE `Regiao_Bairro`
  ADD KEY `FKew8f3d6bl78s7v7htp3thaj1d` (`bairros_id`),
  ADD KEY `FKewbhodadapv1i3pyarhm5vpsa` (`Regiao_id`);

--
-- Indexes for table `regiao_cidades`
--
ALTER TABLE `regiao_cidades`
  ADD KEY `FKl4njys9fksqduv028a4j3mera` (`cidade_id`),
  ADD KEY `FKgcjw6nyiocwydbhjayj1q0qe2` (`regiao_id`);

--
-- Indexes for table `relacionamento_usuarios_responsaveis`
--
ALTER TABLE `relacionamento_usuarios_responsaveis`
  ADD KEY `FKhl4rls5qnncp1x8r4c27ng40x` (`usuarioCRM_id`),
  ADD KEY `FKim1wkxuh4y3uk8nr8sq33ept3` (`relacionamento_id`);

--
-- Indexes for table `ResultadoTipoRelacionamento`
--
ALTER TABLE `ResultadoTipoRelacionamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ServicoOferecido`
--
ALTER TABLE `ServicoOferecido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK10990ntj034fami5iatk7e2hp` (`prospecto_id`),
  ADD KEY `FK91iy7hku5mc0n42e6b1r88vi1` (`tipoServico_id`);

--
-- Indexes for table `StatusAtividade`
--
ALTER TABLE `StatusAtividade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StatusEnvioEmail`
--
ALTER TABLE `StatusEnvioEmail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TipoAtividadeCRM`
--
ALTER TABLE `TipoAtividadeCRM`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKersudm8u3ikghv1t8w7mtcotx` (`atividadeAgendada_id`),
  ADD KEY `FKakn0ubkbe9et1y1lk09pxs672` (`atividadeAgendadaAposLeituraEmail_id`),
  ADD KEY `FK140uj6nujnqd0t7mtih7ulgwo` (`modeloEmail_id`),
  ADD KEY `FKtknmakbsrw6xk4cqw7igj2wp5` (`relacionamentoGerado_id`);

--
-- Indexes for table `tipoAtividade_autorizados`
--
ALTER TABLE `tipoAtividade_autorizados`
  ADD KEY `FKaedrysp0niebhccvm15bfp694` (`usuarioCRM_id`),
  ADD KEY `FK6bhhtqhxewo3xl11mdc9lgvji` (`tipoAtividade_id`);

--
-- Indexes for table `TipoCobranca`
--
ALTER TABLE `TipoCobranca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TipoComponentVisual`
--
ALTER TABLE `TipoComponentVisual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TipoComponentVisual_ParametroComponente`
--
ALTER TABLE `TipoComponentVisual_ParametroComponente`
  ADD UNIQUE KEY `UK_2uub16a1ur79eur2r519347sh` (`parametros_id`),
  ADD KEY `FKbgqyqx912petqa8pakrn50wte` (`TipoComponentVisual_id`);

--
-- Indexes for table `TipoDadoCRM`
--
ALTER TABLE `TipoDadoCRM`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TipoDadoCRM_listaOpcoesTemplate`
--
ALTER TABLE `TipoDadoCRM_listaOpcoesTemplate`
  ADD PRIMARY KEY (`TipoDadoCRM_id`,`listaOpcoesTemplate_KEY`);

--
-- Indexes for table `TipoEmpresa`
--
ALTER TABLE `TipoEmpresa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TipoIp`
--
ALTER TABLE `TipoIp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TipoRelacionamento`
--
ALTER TABLE `TipoRelacionamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9aua6vv6yjuri3rm2si3f59bw` (`metaRelacionamento_id`),
  ADD KEY `FKf2ehjsqd8lngylyxmm7jm0e0o` (`resultado_id`);

--
-- Indexes for table `TipoRelacionamento_TipoAtividadeCRM`
--
ALTER TABLE `TipoRelacionamento_TipoAtividadeCRM`
  ADD KEY `FKqj6rjso4im824wbfhau57n7kl` (`tiposAtividadeDisponiveis_id`),
  ADD KEY `FKafyqjeknq0c9r5fli3aumy2tf` (`TipoRelacionamento_id`);

--
-- Indexes for table `TipoServico`
--
ALTER TABLE `TipoServico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKern5vj8fll5c0q0ef06hgpblb` (`tipoServico_id`);

--
-- Indexes for table `tipoSevico_documentoApresentacao`
--
ALTER TABLE `tipoSevico_documentoApresentacao`
  ADD KEY `FKg6jxg8wv17wnds8h1k0bhn3vg` (`documentoApresentacao_id`),
  ADD KEY `FKl5e8k425oa5bfup5dbsj6qe44` (`tipoServico_id`);

--
-- Indexes for table `UnidadeFederativa`
--
ALTER TABLE `UnidadeFederativa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UsuarioSB`
--
ALTER TABLE `UsuarioSB`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_d8hre5rs465kuoya4b9epuot7` (`apelido`),
  ADD UNIQUE KEY `UK_m1rxw56li2lkr3guust77ltso` (`email`),
  ADD KEY `FKpu9xpcabqjpw3jjdb6mu4w3a9` (`grupo_id`),
  ADD KEY `FKddt81m657meu8v89qakv0792x` (`localizacao_id`),
  ADD KEY `FKa0hk7be13ip4xg104xlxghvba` (`usuarioAlteracao_id`),
  ADD KEY `FKg5805u50psplpao25esj3i4om` (`usuarioInsercao_id`);

--
-- Indexes for table `usuario_grupo`
--
ALTER TABLE `usuario_grupo`
  ADD UNIQUE KEY `usuarioDuplicado` (`usuario_id`,`grupo_id`),
  ADD KEY `FKeq1sxhjeq2ml8suqspdgh1esk` (`grupo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Agendamento`
--
ALTER TABLE `Agendamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ArquivoAnexado`
--
ALTER TABLE `ArquivoAnexado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AtividadeCRM`
--
ALTER TABLE `AtividadeCRM`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ContatoProspecto`
--
ALTER TABLE `ContatoProspecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DadoColetado_Atividade`
--
ALTER TABLE `DadoColetado_Atividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DadoCRM`
--
ALTER TABLE `DadoCRM`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DadoNaoColetado_Atividade`
--
ALTER TABLE `DadoNaoColetado_Atividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EnvioEmailRascunhoAutoSave`
--
ALTER TABLE `EnvioEmailRascunhoAutoSave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GrupoUsuarioSB`
--
ALTER TABLE `GrupoUsuarioSB`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Localidade`
--
ALTER TABLE `Localidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Localizacao`
--
ALTER TABLE `Localizacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MetaRelacionamento`
--
ALTER TABLE `MetaRelacionamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ModeloDocumentoCRM`
--
ALTER TABLE `ModeloDocumentoCRM`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ModeloEmail`
--
ALTER TABLE `ModeloEmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `OpcaoPersonalizada`
--
ALTER TABLE `OpcaoPersonalizada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `OrigemProspecto`
--
ALTER TABLE `OrigemProspecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PalavraChave`
--
ALTER TABLE `PalavraChave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ParametroComponente`
--
ALTER TABLE `ParametroComponente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Porte`
--
ALTER TABLE `Porte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PreAnalise`
--
ALTER TABLE `PreAnalise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Proposta`
--
ALTER TABLE `Proposta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProspectoEmpresa`
--
ALTER TABLE `ProspectoEmpresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Regiao`
--
ALTER TABLE `Regiao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ServicoOferecido`
--
ALTER TABLE `ServicoOferecido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TipoComponentVisual`
--
ALTER TABLE `TipoComponentVisual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TipoDadoCRM`
--
ALTER TABLE `TipoDadoCRM`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `TipoEmpresa`
--
ALTER TABLE `TipoEmpresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TipoRelacionamento`
--
ALTER TABLE `TipoRelacionamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `TipoServico`
--
ALTER TABLE `TipoServico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UsuarioSB`
--
ALTER TABLE `UsuarioSB`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `AcaoDoSistema`
--
ALTER TABLE `AcaoDoSistema`
  ADD CONSTRAINT `FKnff94k77k0bke2qf07y84ips5` FOREIGN KEY (`modulo_id`) REFERENCES `ModuloAcaoSistema` (`id`);

--
-- Limitadores para a tabela `Agendamento`
--
ALTER TABLE `Agendamento`
  ADD CONSTRAINT `FK19aubepvjfge5jt1eqqn6shko` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FK90bqxpyty23msvtaju3sq2dd0` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`);

--
-- Limitadores para a tabela `ArquivoAnexado`
--
ALTER TABLE `ArquivoAnexado`
  ADD CONSTRAINT `FK8gq7u9iiomk3exa1ov98u66uy` FOREIGN KEY (`usuarioAtualizou_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FK9ruls4exei7k29l2m42115k2d` FOREIGN KEY (`atividadeGeradora_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FKbtsox37nxdqatnrmiwo92e2by` FOREIGN KEY (`modeloDocumento_id`) REFERENCES `ModeloDocumentoCRM` (`id`),
  ADD CONSTRAINT `FKcpaqaawullaun49mnyxbjwecc` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FKs6napt2ok0knd78jsu65gr61b` FOREIGN KEY (`usuarioCriou_id`) REFERENCES `UsuarioSB` (`id`);

--
-- Limitadores para a tabela `AtividadeCRM`
--
ALTER TABLE `AtividadeCRM`
  ADD CONSTRAINT `FK1d0rhuyaxf3mgnd2fct5d330l` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  ADD CONSTRAINT `FK3rvlx0srjatwb39yd4rfqq4b0` FOREIGN KEY (`relacionamentoGerado_id`) REFERENCES `TipoRelacionamento` (`id`),
  ADD CONSTRAINT `FKa2jxlkvkhf143jg4qqwdxq563` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FKcbgwj2po55ym0un32n8pifinx` FOREIGN KEY (`usuarioAtividade_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKfe8l1g1y8jjjf4t6jlj1jna5i` FOREIGN KEY (`statusAtividade_id`) REFERENCES `StatusAtividade` (`id`),
  ADD CONSTRAINT `FKr66xwgcb87pcdiyhbdf26jkbe` FOREIGN KEY (`emailVinculado_id`) REFERENCES `EnvioEmail` (`id`);

--
-- Limitadores para a tabela `atividadePrincipal_UsuarioCrm`
--
ALTER TABLE `atividadePrincipal_UsuarioCrm`
  ADD CONSTRAINT `FKh0c1d2xi43h7rfwof5wcgd4uv` FOREIGN KEY (`acesso_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKn6ojweag0vpt1sb8eml2i2qt2` FOREIGN KEY (`usuario_id`) REFERENCES `TipoAtividadeCRM` (`id`);

--
-- Limitadores para a tabela `Bairro`
--
ALTER TABLE `Bairro`
  ADD CONSTRAINT `FKc6grs1jdy5u4dhdfsyd61jgk5` FOREIGN KEY (`cidade_id`) REFERENCES `Cidade` (`id`);

--
-- Limitadores para a tabela `Cidade`
--
ALTER TABLE `Cidade`
  ADD CONSTRAINT `FK8fbd6ik5ht9qwwaik1mi6jgf0` FOREIGN KEY (`unidadeFederativa_id`) REFERENCES `UnidadeFederativa` (`id`),
  ADD CONSTRAINT `FKgj6br5dxt0ht6uje8hy4n2wgw` FOREIGN KEY (`id_Localidade`) REFERENCES `Localidade` (`id`);

--
-- Limitadores para a tabela `CodigoConvite`
--
ALTER TABLE `CodigoConvite`
  ADD CONSTRAINT `FK2xrw2lbcfbaf6uslwk32p75u3` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FKal2ednxa7f7pvopwv04xn5g8u` FOREIGN KEY (`contato_id`) REFERENCES `ContatoProspecto` (`id`);

--
-- Limitadores para a tabela `ConfiguracaoDePermissao`
--
ALTER TABLE `ConfiguracaoDePermissao`
  ADD CONSTRAINT `FKah1otecpdqxj49533o8geb7c0` FOREIGN KEY (`grupoUsuarioPadrao_id`) REFERENCES `GrupoUsuarioSB` (`id`);

--
-- Limitadores para a tabela `ContatoProspecto`
--
ALTER TABLE `ContatoProspecto`
  ADD CONSTRAINT `FKri2jbokp8p772k1gqiutinabl` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`);

--
-- Limitadores para a tabela `DadoColetado_Atividade`
--
ALTER TABLE `DadoColetado_Atividade`
  ADD CONSTRAINT `FKfobyw004eilsdjssjvnq1e3af` FOREIGN KEY (`dado_id`) REFERENCES `DadoCRM` (`id`),
  ADD CONSTRAINT `FKk1yke11dfycw4mf1yh3koghx6` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FKq05qvwdy5xjhs7hkw2y4ysoq4` FOREIGN KEY (`dadoCrm_id`) REFERENCES `DadoCRM` (`id`);

--
-- Limitadores para a tabela `DadoCRM`
--
ALTER TABLE `DadoCRM`
  ADD CONSTRAINT `FK1l2oe0ibgsdp6ntxtxa3ow40k` FOREIGN KEY (`tipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`),
  ADD CONSTRAINT `FK5v12jqoh0l77v3f7fvg2i8fpk` FOREIGN KEY (`usuarioEditou_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FK7rwlhlx5hovjcempgp12r0dc8` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FK8jd8er0t1f11vpaik90jva61s` FOREIGN KEY (`atividadeCRM_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FKlb3c9ym0ikn03ypuer39kub10` FOREIGN KEY (`usuarioCadastrou_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKpdadk5re3ildla3go5rmdvfiv` FOREIGN KEY (`tipoRelacionamentoVinculado_id`) REFERENCES `TipoRelacionamento` (`id`);

--
-- Limitadores para a tabela `DadoNaoColetado_Atividade`
--
ALTER TABLE `DadoNaoColetado_Atividade`
  ADD CONSTRAINT `FKa1uetknhogmpw9bpy0lmk24ed` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FKgl44rwhsmyjmg74rd04y0y8ou` FOREIGN KEY (`dado_id`) REFERENCES `DadoCRM` (`id`),
  ADD CONSTRAINT `FKikny5qw9kxvk02fr8rjkdu6ln` FOREIGN KEY (`dadoCRM_id`) REFERENCES `AtividadeCRM` (`id`);

--
-- Limitadores para a tabela `dadosDinamicosDoModelo`
--
ALTER TABLE `dadosDinamicosDoModelo`
  ADD CONSTRAINT `FK4jjbuoq3uy8f6okgailvc5i3k` FOREIGN KEY (`modeloDoc_id`) REFERENCES `ModeloDocumentoCRM` (`id`),
  ADD CONSTRAINT `FK520v0kx7nluypsvt1pen2tbo3` FOREIGN KEY (`tipoDado_id`) REFERENCES `TipoDadoCRM` (`id`);

--
-- Limitadores para a tabela `dadosObrigatorios_tipoRelacionamento`
--
ALTER TABLE `dadosObrigatorios_tipoRelacionamento`
  ADD CONSTRAINT `FK871wmf19edcgwqp8yfitl97v5` FOREIGN KEY (`tipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`),
  ADD CONSTRAINT `FK92greadhkv0agdynqqs3dk6mv` FOREIGN KEY (`tipoRelacionamento_id`) REFERENCES `TipoRelacionamento` (`id`);

--
-- Limitadores para a tabela `EmailRecebido`
--
ALTER TABLE `EmailRecebido`
  ADD CONSTRAINT `FK2x9ra5x2vy4r8m5lrhok7x60n` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FKswod62ciu74g6fa7xsgy2cfft` FOREIGN KEY (`contato_id`) REFERENCES `ProspectoEmpresa` (`id`);

--
-- Limitadores para a tabela `envioDocumento_contatos`
--
ALTER TABLE `envioDocumento_contatos`
  ADD CONSTRAINT `FKhqfstpvuys5ltyh94ta7prjqy` FOREIGN KEY (`envioDocumento_id`) REFERENCES `EnvioEmail` (`id`),
  ADD CONSTRAINT `FKmkwdios85c2gwhngy3way8put` FOREIGN KEY (`contatos_id`) REFERENCES `ContatoProspecto` (`id`);

--
-- Limitadores para a tabela `EnvioEmail`
--
ALTER TABLE `EnvioEmail`
  ADD CONSTRAINT `FK7jwv2ja7w2etj2jtwg55frmg4` FOREIGN KEY (`usuarioResponsavel_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKexxfyuf4kr1j2dvd81jryuo87` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FKfxdn0p6ekmxpikyarwe4gah8d` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FKpvv25gb360hb6dj3neeh4myj1` FOREIGN KEY (`statusEnvio_id`) REFERENCES `StatusEnvioEmail` (`id`),
  ADD CONSTRAINT `FKs3fp28u6mrv9xtjnv4nnxn3yf` FOREIGN KEY (`modeloEmail_id`) REFERENCES `ModeloEmail` (`id`);

--
-- Limitadores para a tabela `EnvioEmailRascunhoAutoSave`
--
ALTER TABLE `EnvioEmailRascunhoAutoSave`
  ADD CONSTRAINT `FKbaqx2nnbja9ilhcofjdf96062` FOREIGN KEY (`emailVinculado_id`) REFERENCES `EnvioEmail` (`id`),
  ADD CONSTRAINT `FKbf1e0lg6npcoldpb8ujd7f4vu` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FKhoyh4is658osiohhfg30uync5` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`);

--
-- Limitadores para a tabela `envioEmail_arquivoAnexado`
--
ALTER TABLE `envioEmail_arquivoAnexado`
  ADD CONSTRAINT `FK1fy6i0emvrtimcrt8j1pt4nl` FOREIGN KEY (`arquivoAnexado_id`) REFERENCES `ArquivoAnexado` (`id`),
  ADD CONSTRAINT `FKsjwgpcng1ix77hic53owvsmi7` FOREIGN KEY (`envioEmail_id`) REFERENCES `EnvioEmail` (`id`);

--
-- Limitadores para a tabela `GrupoUsuarioSB`
--
ALTER TABLE `GrupoUsuarioSB`
  ADD CONSTRAINT `FK7s5bl86yjv1r1rfn9i964cq7g` FOREIGN KEY (`usuarioInsercao_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKn20xy684qdisrx1r0wyeffosn` FOREIGN KEY (`usuarioAlteracao_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKrcx4qo1ruqe8koyfg2vb238jg` FOREIGN KEY (`moduloPrincipal_id`) REFERENCES `ModuloAcaoSistema` (`id`);

--
-- Limitadores para a tabela `Ips`
--
ALTER TABLE `Ips`
  ADD CONSTRAINT `FK332ut8y08mn06rtgbpyqei73p` FOREIGN KEY (`usuarioAlteracao_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FK92k8tn1tlblje3ees74kebihi` FOREIGN KEY (`usuarioInsercao_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKg91qw90kdtcwkq94o48c8sfah` FOREIGN KEY (`tipo_id`) REFERENCES `TipoIp` (`id`);

--
-- Limitadores para a tabela `Localizacao`
--
ALTER TABLE `Localizacao`
  ADD CONSTRAINT `FK1x27cqle98ktlx448eo2lticm` FOREIGN KEY (`bairro_id`) REFERENCES `Bairro` (`id`);

--
-- Limitadores para a tabela `ModeloDocumentoCRM`
--
ALTER TABLE `ModeloDocumentoCRM`
  ADD CONSTRAINT `FKgcxuh9abctg98jsnuv6fep3dl` FOREIGN KEY (`tipoAtividadeVinculada_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  ADD CONSTRAINT `FKr4kpnlse8yw76qf7fm3spv8os` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`);

--
-- Limitadores para a tabela `ModeloEmail`
--
ALTER TABLE `ModeloEmail`
  ADD CONSTRAINT `FKlcg6heqglul50raaf4ueh99w8` FOREIGN KEY (`usuariocriou_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKs87etehqx2qm1gnxdpc1m59y9` FOREIGN KEY (`usuarioEditou_id`) REFERENCES `UsuarioSB` (`id`);

--
-- Limitadores para a tabela `modulos_grupo`
--
ALTER TABLE `modulos_grupo`
  ADD CONSTRAINT `FK1616eg4vq1ubds5aof20ci82b` FOREIGN KEY (`modulo_id`) REFERENCES `ModuloAcaoSistema` (`id`),
  ADD CONSTRAINT `FKf5g7yb014obr43smkvslw1hmu` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`);

--
-- Limitadores para a tabela `Negado_Grupos`
--
ALTER TABLE `Negado_Grupos`
  ADD CONSTRAINT `FK7m9qmg1btyx5cwglbveiugmbm` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`),
  ADD CONSTRAINT `FKhd45weeoe1avo5qunwppgnfhm` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`);

--
-- Limitadores para a tabela `Negado_Usuarios`
--
ALTER TABLE `Negado_Usuarios`
  ADD CONSTRAINT `FK8wgk7y8p69ttbgf7if2k5n1pt` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKgm8m18ifbnjd04dyl9drki4va` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`);

--
-- Limitadores para a tabela `OpcaoPersonalizada`
--
ALTER TABLE `OpcaoPersonalizada`
  ADD CONSTRAINT `FKjfrm6qio2eu64bi551a6v7qwp` FOREIGN KEY (`tipoDado_id`) REFERENCES `TipoDadoCRM` (`id`);

--
-- Limitadores para a tabela `OrigemProspecto`
--
ALTER TABLE `OrigemProspecto`
  ADD CONSTRAINT `FKj6xkt4uas6xsmvw03wb92sghk` FOREIGN KEY (`relacionamentoPadrao_id`) REFERENCES `TipoRelacionamento` (`id`);

--
-- Limitadores para a tabela `PalavraChave_PalavraChave`
--
ALTER TABLE `PalavraChave_PalavraChave`
  ADD CONSTRAINT `FK2ad1anblrkid1mo2tj1fs6rnw` FOREIGN KEY (`palavrasRelacionadas_id`) REFERENCES `PalavraChave` (`id`),
  ADD CONSTRAINT `FKbkt9m920kmg7usyn7i4tjt5k1` FOREIGN KEY (`PalavraChave_id`) REFERENCES `PalavraChave` (`id`);

--
-- Limitadores para a tabela `Permitido_Grupos`
--
ALTER TABLE `Permitido_Grupos`
  ADD CONSTRAINT `FKonpllqmu9mxhrobrxvvdvqgw3` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`),
  ADD CONSTRAINT `FKqy7db3uujsot9o8hi9tr16ifw` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`);

--
-- Limitadores para a tabela `Permitido_Usuarios`
--
ALTER TABLE `Permitido_Usuarios`
  ADD CONSTRAINT `FKeb1qf23eyq6brt5o1sbbka3oq` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`),
  ADD CONSTRAINT `FKkk1bvscvwf4sxlf15t8pk4e10` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`);

--
-- Limitadores para a tabela `Proposta`
--
ALTER TABLE `Proposta`
  ADD CONSTRAINT `FKd9xim9ow59y512wqrpxtgbmux` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  ADD CONSTRAINT `FKhxf04t18n0sb552d1krrbmxwe` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`);

--
-- Limitadores para a tabela `ProspectoEmpresa`
--
ALTER TABLE `ProspectoEmpresa`
  ADD CONSTRAINT `FK1nspwf202dvdnff9ld973ktkj` FOREIGN KEY (`preAnalise_id`) REFERENCES `PreAnalise` (`id`),
  ADD CONSTRAINT `FKgwkknsfrvrawytqgxud2utlrr` FOREIGN KEY (`contatoPrincipal_id`) REFERENCES `ContatoProspecto` (`id`),
  ADD CONSTRAINT `FKhtmgsbbjnmfa2fne5mphevnna` FOREIGN KEY (`relacionamento_id`) REFERENCES `TipoRelacionamento` (`id`),
  ADD CONSTRAINT `FKj00pyy61x89fpriamckk0sjyp` FOREIGN KEY (`tipoEmpresa_id`) REFERENCES `TipoEmpresa` (`id`),
  ADD CONSTRAINT `FKkbpc05uwn92r91pxg6tqff009` FOREIGN KEY (`origem_id`) REFERENCES `OrigemProspecto` (`id`),
  ADD CONSTRAINT `FKsy0g7pqwg2bbpqemmkqdwqxqd` FOREIGN KEY (`localizacao_id`) REFERENCES `Localizacao` (`id`),
  ADD CONSTRAINT `FKxuim764ep6271yeskrx96hm6` FOREIGN KEY (`porte_id`) REFERENCES `Porte` (`id`);

--
-- Limitadores para a tabela `ProspectoEmpresa_PalavraChave`
--
ALTER TABLE `ProspectoEmpresa_PalavraChave`
  ADD CONSTRAINT `FKexiwj8jd46k0cjcqvoowydq0r` FOREIGN KEY (`palavraChave_id`) REFERENCES `PalavraChave` (`id`),
  ADD CONSTRAINT `FKpjyhf20gphkovbxjaxkwcocqa` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`);

--
-- Limitadores para a tabela `ProspectoEmpresa_ProspectoEmpresa`
--
ALTER TABLE `ProspectoEmpresa_ProspectoEmpresa`
  ADD CONSTRAINT `FK3e1dwaqq2ok3uwut0ubtjpt9e` FOREIGN KEY (`clienteRelacionado_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FKpferhna4qq5x6ju0w8s94r130` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`);

--
-- Limitadores para a tabela `prospectos_usuarios_responsaveis`
--
ALTER TABLE `prospectos_usuarios_responsaveis`
  ADD CONSTRAINT `FK4luhhg333vxa9seqr820ic6fq` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKa5k80esbqvtgrolg366xs2fyl` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`);

--
-- Limitadores para a tabela `Regiao_Bairro`
--
ALTER TABLE `Regiao_Bairro`
  ADD CONSTRAINT `FKew8f3d6bl78s7v7htp3thaj1d` FOREIGN KEY (`bairros_id`) REFERENCES `Bairro` (`id`),
  ADD CONSTRAINT `FKewbhodadapv1i3pyarhm5vpsa` FOREIGN KEY (`Regiao_id`) REFERENCES `Regiao` (`id`);

--
-- Limitadores para a tabela `regiao_cidades`
--
ALTER TABLE `regiao_cidades`
  ADD CONSTRAINT `FKgcjw6nyiocwydbhjayj1q0qe2` FOREIGN KEY (`regiao_id`) REFERENCES `Regiao` (`id`),
  ADD CONSTRAINT `FKl4njys9fksqduv028a4j3mera` FOREIGN KEY (`cidade_id`) REFERENCES `Cidade` (`id`);

--
-- Limitadores para a tabela `relacionamento_usuarios_responsaveis`
--
ALTER TABLE `relacionamento_usuarios_responsaveis`
  ADD CONSTRAINT `FKhl4rls5qnncp1x8r4c27ng40x` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKim1wkxuh4y3uk8nr8sq33ept3` FOREIGN KEY (`relacionamento_id`) REFERENCES `TipoRelacionamento` (`id`);

--
-- Limitadores para a tabela `ServicoOferecido`
--
ALTER TABLE `ServicoOferecido`
  ADD CONSTRAINT `FK10990ntj034fami5iatk7e2hp` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  ADD CONSTRAINT `FK91iy7hku5mc0n42e6b1r88vi1` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`);

--
-- Limitadores para a tabela `TipoAtividadeCRM`
--
ALTER TABLE `TipoAtividadeCRM`
  ADD CONSTRAINT `FK140uj6nujnqd0t7mtih7ulgwo` FOREIGN KEY (`modeloEmail_id`) REFERENCES `ModeloEmail` (`id`),
  ADD CONSTRAINT `FKakn0ubkbe9et1y1lk09pxs672` FOREIGN KEY (`atividadeAgendadaAposLeituraEmail_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  ADD CONSTRAINT `FKersudm8u3ikghv1t8w7mtcotx` FOREIGN KEY (`atividadeAgendada_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  ADD CONSTRAINT `FKtknmakbsrw6xk4cqw7igj2wp5` FOREIGN KEY (`relacionamentoGerado_id`) REFERENCES `TipoRelacionamento` (`id`);

--
-- Limitadores para a tabela `tipoAtividade_autorizados`
--
ALTER TABLE `tipoAtividade_autorizados`
  ADD CONSTRAINT `FK6bhhtqhxewo3xl11mdc9lgvji` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  ADD CONSTRAINT `FKaedrysp0niebhccvm15bfp694` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`);

--
-- Limitadores para a tabela `TipoComponentVisual_ParametroComponente`
--
ALTER TABLE `TipoComponentVisual_ParametroComponente`
  ADD CONSTRAINT `FKbgqyqx912petqa8pakrn50wte` FOREIGN KEY (`TipoComponentVisual_id`) REFERENCES `TipoComponentVisual` (`id`),
  ADD CONSTRAINT `FKtc5a9rthi35hgrcpx76yccsmm` FOREIGN KEY (`parametros_id`) REFERENCES `ParametroComponente` (`id`);

--
-- Limitadores para a tabela `TipoDadoCRM_listaOpcoesTemplate`
--
ALTER TABLE `TipoDadoCRM_listaOpcoesTemplate`
  ADD CONSTRAINT `FKp3o2eb786n737dxrlvtjcm4f5` FOREIGN KEY (`TipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`);

--
-- Limitadores para a tabela `TipoRelacionamento`
--
ALTER TABLE `TipoRelacionamento`
  ADD CONSTRAINT `FK9aua6vv6yjuri3rm2si3f59bw` FOREIGN KEY (`metaRelacionamento_id`) REFERENCES `MetaRelacionamento` (`id`),
  ADD CONSTRAINT `FKf2ehjsqd8lngylyxmm7jm0e0o` FOREIGN KEY (`resultado_id`) REFERENCES `ResultadoTipoRelacionamento` (`id`);

--
-- Limitadores para a tabela `TipoRelacionamento_TipoAtividadeCRM`
--
ALTER TABLE `TipoRelacionamento_TipoAtividadeCRM`
  ADD CONSTRAINT `FKafyqjeknq0c9r5fli3aumy2tf` FOREIGN KEY (`TipoRelacionamento_id`) REFERENCES `TipoRelacionamento` (`id`),
  ADD CONSTRAINT `FKqj6rjso4im824wbfhau57n7kl` FOREIGN KEY (`tiposAtividadeDisponiveis_id`) REFERENCES `TipoAtividadeCRM` (`id`);

--
-- Limitadores para a tabela `TipoServico`
--
ALTER TABLE `TipoServico`
  ADD CONSTRAINT `FKern5vj8fll5c0q0ef06hgpblb` FOREIGN KEY (`tipoServico_id`) REFERENCES `ModeloDocumentoCRM` (`id`);

--
-- Limitadores para a tabela `tipoSevico_documentoApresentacao`
--
ALTER TABLE `tipoSevico_documentoApresentacao`
  ADD CONSTRAINT `FKg6jxg8wv17wnds8h1k0bhn3vg` FOREIGN KEY (`documentoApresentacao_id`) REFERENCES `ArquivoAnexado` (`id`),
  ADD CONSTRAINT `FKl5e8k425oa5bfup5dbsj6qe44` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`);

--
-- Limitadores para a tabela `UsuarioSB`
--
ALTER TABLE `UsuarioSB`
  ADD CONSTRAINT `FKa0hk7be13ip4xg104xlxghvba` FOREIGN KEY (`usuarioAlteracao_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKddt81m657meu8v89qakv0792x` FOREIGN KEY (`localizacao_id`) REFERENCES `Localizacao` (`id`),
  ADD CONSTRAINT `FKg5805u50psplpao25esj3i4om` FOREIGN KEY (`usuarioInsercao_id`) REFERENCES `UsuarioSB` (`id`),
  ADD CONSTRAINT `FKpu9xpcabqjpw3jjdb6mu4w3a9` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`);

--
-- Limitadores para a tabela `usuario_grupo`
--
ALTER TABLE `usuario_grupo`
  ADD CONSTRAINT `FKeq1sxhjeq2ml8suqspdgh1esk` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`),
  ADD CONSTRAINT `FKr399r2larmugqgxwl0rbtywfi` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
