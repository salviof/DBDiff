-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: CRMCasaNova
-- ------------------------------------------------------
-- Server version	5.7.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AcaoDoSistema`
--

DROP TABLE IF EXISTS `AcaoDoSistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `modulo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnff94k77k0bke2qf07y84ips5` (`modulo_id`),
  CONSTRAINT `FKnff94k77k0bke2qf07y84ips5` FOREIGN KEY (`modulo_id`) REFERENCES `ModuloAcaoSistema` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcaoDoSistema`
--

LOCK TABLES `AcaoDoSistema` WRITE;
/*!40000 ALTER TABLE `AcaoDoSistema` DISABLE KEYS */;
INSERT INTO `AcaoDoSistema` VALUES ('AcaoGestaoEntidade',-2126973122,NULL,'Gestão de Prospectos','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-globe',NULL,'Descobertas','DESCOBRIDOR_PROSPECTO','FabAcaoCRMAtendimento.DESCOBRIDOR_PROSPECTO_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/descobridor_prospecto_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',-1660841818,NULL,'Gerenciar Grupos','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-users',NULL,'Gerenciar Grupos','GRUPO','FabAcaoCrmAdmin.GRUPO_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/grupo_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoFormEntidadeSec',-1292705878,NULL,'','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-list-alt',NULL,'Listar Tipo de Relacionamento ','TIPO_RELACIONAMENTO','FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_FRM_LISTAR',_binary '','ACAO_ENTIDADE_FORMULARIO','FORMULARIO_LISTAR',NULL,1,'/caminhodosArquivosDeAçãoNaoDefinidos/tipo_relacionamento_listar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoGestaoEntidade',-1157190924,NULL,'Gestão de opções de Dados CRM','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-pencil-square-o',NULL,'Opções de Dados CRM','OPCAO_DADOS_CRM','FabAcaoCrmAdmin.OPCAO_DADOS_CRM_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/opcao_dados_crm_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoGestaoEntidade',-591280281,NULL,'Tipos de Relacionamento','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-heart',NULL,'Tipos de Relacionamento','TIPO_RELACIONAMENTO','FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/tipo_relacionamento_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoFormEntidadeSec',-408271661,NULL,'Serviços da empresa','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-money',NULL,'Serviços da empresa','PROSPECTO','FabAcaoCRMAtendimento.PROSPECTO_FRM_SERVICOS',_binary '','ACAO_ENTIDADE_FORMULARIO','FORMULARIO_PERSONALIZADO',NULL,1,'/caminhodosArquivosDeAçãoNaoDefinidos/prospecto_servicos.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoDeEntidadeController',-372870609,NULL,'Exluir','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-minus',NULL,'PROSPECTO_CTR_REMOVER','PROSPECTO','FabAcaoCRMAtendimento.PROSPECTO_CTR_REMOVER',_binary '','ACAO_ENTIDADE_CONTROLLER','CONTROLLER_REMOVER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',12080907,NULL,'Gestão de Prospectos','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-address-book-o',NULL,'Gerenciar de Prospecto','PROSPECTO','FabAcaoCRMAtendimento.PROSPECTO_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/prospecto_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',193715130,NULL,'Execucao de Atividades','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-play',NULL,'Execucao de Atividades','EXECUCAO_ATIVIDADE','FabAcaoCRMAtendimento.EXECUCAO_ATIVIDADE_MB',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/execucao_atividade_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',223258683,NULL,'Gerenciar Usuarios','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-user',NULL,'Gerenciar Usuarios','CADASTRO_USUARIO','FabAcaoCrmAdmin.CADASTRO_USUARIO_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/cadastro_usuario_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoGestaoEntidade',287810846,NULL,'DashBoard Admin','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-table',NULL,'DashBoard Admin','ADMINISTRATIVO_PAGINA_PRINCIPAL','FabAcaoCrmAdmin.ADMINISTRATIVO_PAGINA_PRINCIPAL_MB',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/administrativo_pagina_principal_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoFormEntidadeSec',540984173,NULL,'Excluir Empresa','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-minus',NULL,'Excluir Empresa','PROSPECTO','FabAcaoCRMAtendimento.PROSPECTO_FRM_EXCLUIR_EMPRESA',_binary '','ACAO_ENTIDADE_FORMULARIO','FORMULARIO_PERSONALIZADO',NULL,1,'/caminhodosArquivosDeAçãoNaoDefinidos/prospecto_excluir_empresa.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',587190021,NULL,'Modelos de Documentos','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-file-word-o',NULL,'Modelos de Documentos','MODELOS_DOCUMENTOS_TIPO_ATIVIDADE','FabAcaoCrmAdmin.MODELOS_DOCUMENTOS_TIPO_ATIVIDADE_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/modelos_documentos_tipo_atividade_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoDeEntidadeController',963669396,NULL,'Forçar Alteração','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-exchange',NULL,'PROSPECTO_CTR_ALTERAR_RELACIONAMENTO','PROSPECTO','FabAcaoCRMAtendimento.PROSPECTO_CTR_ALTERAR_RELACIONAMENTO',_binary '','ACAO_ENTIDADE_CONTROLLER','CONTROLLER_PERSONALIZADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',1063282997,NULL,'Minhas empresas','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-heart',NULL,'Minhas empresas','MEUS_PROSPECTOS','FabAcaoCRMAtendimento.MEUS_PROSPECTOS_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/meus_prospectos_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',1184973423,NULL,'','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-line-chart',NULL,'MAUTIC_MB_INTEGRACAO','MAUTIC','FabAcaoCrmAdmin.MAUTIC_MB_INTEGRACAO',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/mautic_integracao.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoFormEntidadeSec',1251213972,NULL,'Alterar Relacionamento','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-exchange',NULL,'Alterar Relacionamento','PROSPECTO','FabAcaoCRMAtendimento.PROSPECTO_FRM_ALTERAR_RELACIONAMENTO',_binary '','ACAO_ENTIDADE_FORMULARIO','FORMULARIO_PERSONALIZADO',NULL,1,'/caminhodosArquivosDeAçãoNaoDefinidos/prospecto_alterar_relacionamento.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',1294786096,NULL,'Gerenciar Serviços Disponiveis','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-coffee',NULL,'Gerenciar Servico Disponivel','SERVICO_DIPONIVEL','FabAcaoCrmAdmin.SERVICO_DIPONIVEL_MB_GESTAO',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/servico_diponivel_gestao.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963),('AcaoFormEntidadeSec',1386796776,NULL,'Coletar Google Site Insights','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-search-plus',NULL,'Coletar Google Site Insights','PROSPECTO','FabAcaoCRMAtendimento.PROSPECTO_FRM_PRE_ANALISE',_binary '','ACAO_ENTIDADE_FORMULARIO','FORMULARIO_PERSONALIZADO',NULL,1,'/caminhodosArquivosDeAçãoNaoDefinidos/prospecto_pre_analise.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1374834286),('AcaoGestaoEntidade',1952702119,NULL,'Tipos de Atividade','/caminhodosArquivosDeAçãoNaoDefinidos','fa fa-paint-brush',NULL,'Tipos de Atividade','TIPO_ATIVIDADE','FabAcaoCrmAdmin.TIPO_ATIVIDADE_MB_GERENCIAR',_binary '','ACAO_ENTIDADE_GERENCIAR','GERENCIAR_DOMINIO',NULL,2,'/caminhodosArquivosDeAçãoNaoDefinidos/tipo_atividade_gerenciar.xhtml',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-2109946963);
/*!40000 ALTER TABLE `AcaoDoSistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AgendaDisponivel`
--

DROP TABLE IF EXISTS `AgendaDisponivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AgendaDisponivel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3lo71w34v2qaq7mecqxko7iny` (`usuario_id`),
  CONSTRAINT `FK3lo71w34v2qaq7mecqxko7iny` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AgendaDisponivel`
--

LOCK TABLES `AgendaDisponivel` WRITE;
/*!40000 ALTER TABLE `AgendaDisponivel` DISABLE KEYS */;
/*!40000 ALTER TABLE `AgendaDisponivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Agendamento`
--

DROP TABLE IF EXISTS `Agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Agendamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK19aubepvjfge5jt1eqqn6shko` (`atividade_id`),
  KEY `FK90bqxpyty23msvtaju3sq2dd0` (`prospecto_id`),
  CONSTRAINT `FK19aubepvjfge5jt1eqqn6shko` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FK90bqxpyty23msvtaju3sq2dd0` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Agendamento`
--

LOCK TABLES `Agendamento` WRITE;
/*!40000 ALTER TABLE `Agendamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaTrabalho`
--

DROP TABLE IF EXISTS `AreaTrabalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaTrabalho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `meta_id` int(11) DEFAULT NULL,
  `relacionamento_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg42j3qrh325e8vf0ybh43jdvf` (`meta_id`),
  KEY `FKgq61hf4bivukc77bcj0lo31lj` (`relacionamento_id`),
  KEY `FKnydn4mnu26v6cwik5tc5neabr` (`tag_id`),
  KEY `FKfoymhvjd668jemxf2xq8wm2b4` (`usuario_id`),
  CONSTRAINT `FKfoymhvjd668jemxf2xq8wm2b4` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKg42j3qrh325e8vf0ybh43jdvf` FOREIGN KEY (`meta_id`) REFERENCES `MetaRelacionamento` (`id`),
  CONSTRAINT `FKgq61hf4bivukc77bcj0lo31lj` FOREIGN KEY (`relacionamento_id`) REFERENCES `TipoRelacionamento` (`id`),
  CONSTRAINT `FKnydn4mnu26v6cwik5tc5neabr` FOREIGN KEY (`tag_id`) REFERENCES `TagAtendimento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaTrabalho`
--

LOCK TABLES `AreaTrabalho` WRITE;
/*!40000 ALTER TABLE `AreaTrabalho` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaTrabalho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArquivoAnexado`
--

DROP TABLE IF EXISTS `ArquivoAnexado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ArquivoAnexado` (
  `tipoAnexo` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(255) DEFAULT NULL,
  `dataHoraCriacao` datetime(6) DEFAULT NULL,
  `dataHoraEdicao` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `foiEnviado` bit(1) DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `usuarioAtualizou_id` int(11) DEFAULT NULL,
  `usuarioCriou_id` int(11) DEFAULT NULL,
  `emailCrm_id` int(11) DEFAULT NULL,
  `atividadeGeradora_id` int(11) DEFAULT NULL,
  `modeloDocumento_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcpaqaawullaun49mnyxbjwecc` (`prospecto_id`),
  KEY `FK8gq7u9iiomk3exa1ov98u66uy` (`usuarioAtualizou_id`),
  KEY `FKs6napt2ok0knd78jsu65gr61b` (`usuarioCriou_id`),
  KEY `FK60pkdma6fhnrfg4mhvmttvb27` (`emailCrm_id`),
  KEY `FK9ruls4exei7k29l2m42115k2d` (`atividadeGeradora_id`),
  KEY `FKbtsox37nxdqatnrmiwo92e2by` (`modeloDocumento_id`),
  CONSTRAINT `FK60pkdma6fhnrfg4mhvmttvb27` FOREIGN KEY (`emailCrm_id`) REFERENCES `EmailCrm` (`id`),
  CONSTRAINT `FK8gq7u9iiomk3exa1ov98u66uy` FOREIGN KEY (`usuarioAtualizou_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FK9ruls4exei7k29l2m42115k2d` FOREIGN KEY (`atividadeGeradora_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKbtsox37nxdqatnrmiwo92e2by` FOREIGN KEY (`modeloDocumento_id`) REFERENCES `ModeloDocumentoCRM` (`id`),
  CONSTRAINT `FKcpaqaawullaun49mnyxbjwecc` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKs6napt2ok0knd78jsu65gr61b` FOREIGN KEY (`usuarioCriou_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArquivoAnexado`
--

LOCK TABLES `ArquivoAnexado` WRITE;
/*!40000 ALTER TABLE `ArquivoAnexado` DISABLE KEYS */;
/*!40000 ALTER TABLE `ArquivoAnexado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AtividadeCRM`
--

DROP TABLE IF EXISTS `AtividadeCRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AtividadeCRM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anotacoes` varchar(400) DEFAULT NULL,
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
  `usuarioAtividade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi03w2gawtnflt443600akhiss` (`emailVinculado_id`),
  KEY `FKa2jxlkvkhf143jg4qqwdxq563` (`prospectoEmpresa_id`),
  KEY `FK3rvlx0srjatwb39yd4rfqq4b0` (`relacionamentoGerado_id`),
  KEY `FKfe8l1g1y8jjjf4t6jlj1jna5i` (`statusAtividade_id`),
  KEY `FK1d0rhuyaxf3mgnd2fct5d330l` (`tipoAtividade_id`),
  KEY `FKcbgwj2po55ym0un32n8pifinx` (`usuarioAtividade_id`),
  CONSTRAINT `FK1d0rhuyaxf3mgnd2fct5d330l` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  CONSTRAINT `FK3rvlx0srjatwb39yd4rfqq4b0` FOREIGN KEY (`relacionamentoGerado_id`) REFERENCES `TipoRelacionamento` (`id`),
  CONSTRAINT `FKa2jxlkvkhf143jg4qqwdxq563` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKcbgwj2po55ym0un32n8pifinx` FOREIGN KEY (`usuarioAtividade_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKfe8l1g1y8jjjf4t6jlj1jna5i` FOREIGN KEY (`statusAtividade_id`) REFERENCES `StatusAtividade` (`id`),
  CONSTRAINT `FKi03w2gawtnflt443600akhiss` FOREIGN KEY (`emailVinculado_id`) REFERENCES `EmailCrm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AtividadeCRM`
--

LOCK TABLES `AtividadeCRM` WRITE;
/*!40000 ALTER TABLE `AtividadeCRM` DISABLE KEYS */;
/*!40000 ALTER TABLE `AtividadeCRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bairro`
--

DROP TABLE IF EXISTS `Bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bairro` (
  `id` int(11) NOT NULL,
  `coordenadas` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cidade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc6grs1jdy5u4dhdfsyd61jgk5` (`cidade_id`),
  CONSTRAINT `FKc6grs1jdy5u4dhdfsyd61jgk5` FOREIGN KEY (`cidade_id`) REFERENCES `Cidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bairro`
--

LOCK TABLES `Bairro` WRITE;
/*!40000 ALTER TABLE `Bairro` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cidade`
--

DROP TABLE IF EXISTS `Cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cidade` (
  `id` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `dataAlteracao` date DEFAULT NULL,
  `dataCriacao` date DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `id_Localidade` int(11) DEFAULT NULL,
  `unidadeFederativa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgj6br5dxt0ht6uje8hy4n2wgw` (`id_Localidade`),
  KEY `FK8fbd6ik5ht9qwwaik1mi6jgf0` (`unidadeFederativa_id`),
  CONSTRAINT `FK8fbd6ik5ht9qwwaik1mi6jgf0` FOREIGN KEY (`unidadeFederativa_id`) REFERENCES `UnidadeFederativa` (`id`),
  CONSTRAINT `FKgj6br5dxt0ht6uje8hy4n2wgw` FOREIGN KEY (`id_Localidade`) REFERENCES `Localidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cidade`
--

LOCK TABLES `Cidade` WRITE;
/*!40000 ALTER TABLE `Cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CodigoConvite`
--

DROP TABLE IF EXISTS `CodigoConvite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CodigoConvite` (
  `tipoCodigo` varchar(31) NOT NULL,
  `codigo` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `conteudo` text,
  `nome` varchar(255) DEFAULT NULL,
  `foiagendado` bit(1) DEFAULT NULL,
  `contato_id` int(11) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `tipoAtividade_id` int(11) DEFAULT NULL,
  `usuarioCRM_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FKal2ednxa7f7pvopwv04xn5g8u` (`contato_id`),
  KEY `FK2xrw2lbcfbaf6uslwk32p75u3` (`atividade_id`),
  KEY `FKb5m8nq07vmpcttmduv17ruy7l` (`tipoAtividade_id`),
  KEY `FK10era6566fmomgf26jbml4rtc` (`usuarioCRM_id`),
  CONSTRAINT `FK10era6566fmomgf26jbml4rtc` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FK2xrw2lbcfbaf6uslwk32p75u3` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKal2ednxa7f7pvopwv04xn5g8u` FOREIGN KEY (`contato_id`) REFERENCES `ContatoProspecto` (`id`),
  CONSTRAINT `FKb5m8nq07vmpcttmduv17ruy7l` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CodigoConvite`
--

LOCK TABLES `CodigoConvite` WRITE;
/*!40000 ALTER TABLE `CodigoConvite` DISABLE KEYS */;
/*!40000 ALTER TABLE `CodigoConvite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConfigDisparoEmail`
--

DROP TABLE IF EXISTS `ConfigDisparoEmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigDisparoEmail` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConfigDisparoEmail`
--

LOCK TABLES `ConfigDisparoEmail` WRITE;
/*!40000 ALTER TABLE `ConfigDisparoEmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConfigDisparoEmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConfiguracaoDePermissao`
--

DROP TABLE IF EXISTS `ConfiguracaoDePermissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfiguracaoDePermissao` (
  `id` int(11) NOT NULL,
  `nomeConfig` varchar(255) DEFAULT NULL,
  `permitirCriacaoDeGrupos` bit(1) NOT NULL,
  `permitirPermissaoDeUsuario` bit(1) NOT NULL,
  `ultimaVersaoBanco` varchar(255) DEFAULT NULL,
  `grupoUsuarioPadrao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKah1otecpdqxj49533o8geb7c0` (`grupoUsuarioPadrao_id`),
  CONSTRAINT `FKah1otecpdqxj49533o8geb7c0` FOREIGN KEY (`grupoUsuarioPadrao_id`) REFERENCES `GrupoUsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConfiguracaoDePermissao`
--

LOCK TABLES `ConfiguracaoDePermissao` WRITE;
/*!40000 ALTER TABLE `ConfiguracaoDePermissao` DISABLE KEYS */;
INSERT INTO `ConfiguracaoDePermissao` VALUES (0,NULL,_binary '\0',_binary '\0','6136718282',NULL);
/*!40000 ALTER TABLE `ConfiguracaoDePermissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContatoProspecto`
--

DROP TABLE IF EXISTS `ContatoProspecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContatoProspecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `telefoneAlternativo` varchar(255) DEFAULT NULL,
  `umContatoPrincipal` bit(1) NOT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKri2jbokp8p772k1gqiutinabl` (`prospecto_id`),
  CONSTRAINT `FKri2jbokp8p772k1gqiutinabl` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContatoProspecto`
--

LOCK TABLES `ContatoProspecto` WRITE;
/*!40000 ALTER TABLE `ContatoProspecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContatoProspecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ControleCaixaDeEntrada`
--

DROP TABLE IF EXISTS `ControleCaixaDeEntrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ControleCaixaDeEntrada` (
  `id` int(11) NOT NULL,
  `codigoPrimeiroEmail` varchar(255) NOT NULL,
  `codigoUltimoEmail` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `quantidadeEmails` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ControleCaixaDeEntrada`
--

LOCK TABLES `ControleCaixaDeEntrada` WRITE;
/*!40000 ALTER TABLE `ControleCaixaDeEntrada` DISABLE KEYS */;
/*!40000 ALTER TABLE `ControleCaixaDeEntrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ControleEmailRecebido`
--

DROP TABLE IF EXISTS `ControleEmailRecebido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ControleEmailRecebido` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `remetente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_e17m15b8jhowgpkclp74fcfay` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ControleEmailRecebido`
--

LOCK TABLES `ControleEmailRecebido` WRITE;
/*!40000 ALTER TABLE `ControleEmailRecebido` DISABLE KEYS */;
/*!40000 ALTER TABLE `ControleEmailRecebido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DadoCRM`
--

DROP TABLE IF EXISTS `DadoCRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DadoCRM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `usuarioEditou_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8jd8er0t1f11vpaik90jva61s` (`atividadeCRM_id`),
  KEY `FK7rwlhlx5hovjcempgp12r0dc8` (`prospectoEmpresa_id`),
  KEY `FK1l2oe0ibgsdp6ntxtxa3ow40k` (`tipoDadoCRM_id`),
  KEY `FKpdadk5re3ildla3go5rmdvfiv` (`tipoRelacionamentoVinculado_id`),
  KEY `FKlb3c9ym0ikn03ypuer39kub10` (`usuarioCadastrou_id`),
  KEY `FK5v12jqoh0l77v3f7fvg2i8fpk` (`usuarioEditou_id`),
  CONSTRAINT `FK1l2oe0ibgsdp6ntxtxa3ow40k` FOREIGN KEY (`tipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`),
  CONSTRAINT `FK5v12jqoh0l77v3f7fvg2i8fpk` FOREIGN KEY (`usuarioEditou_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FK7rwlhlx5hovjcempgp12r0dc8` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FK8jd8er0t1f11vpaik90jva61s` FOREIGN KEY (`atividadeCRM_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKlb3c9ym0ikn03ypuer39kub10` FOREIGN KEY (`usuarioCadastrou_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKpdadk5re3ildla3go5rmdvfiv` FOREIGN KEY (`tipoRelacionamentoVinculado_id`) REFERENCES `TipoRelacionamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DadoCRM`
--

LOCK TABLES `DadoCRM` WRITE;
/*!40000 ALTER TABLE `DadoCRM` DISABLE KEYS */;
/*!40000 ALTER TABLE `DadoCRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DadoColetado_Atividade`
--

DROP TABLE IF EXISTS `DadoColetado_Atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DadoColetado_Atividade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atividade_id` int(11) DEFAULT NULL,
  `dadoCrm_id` int(11) DEFAULT NULL,
  `dado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk1yke11dfycw4mf1yh3koghx6` (`atividade_id`),
  KEY `FKq05qvwdy5xjhs7hkw2y4ysoq4` (`dadoCrm_id`),
  KEY `FKfobyw004eilsdjssjvnq1e3af` (`dado_id`),
  CONSTRAINT `FKfobyw004eilsdjssjvnq1e3af` FOREIGN KEY (`dado_id`) REFERENCES `DadoCRM` (`id`),
  CONSTRAINT `FKk1yke11dfycw4mf1yh3koghx6` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKq05qvwdy5xjhs7hkw2y4ysoq4` FOREIGN KEY (`dadoCrm_id`) REFERENCES `DadoCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DadoColetado_Atividade`
--

LOCK TABLES `DadoColetado_Atividade` WRITE;
/*!40000 ALTER TABLE `DadoColetado_Atividade` DISABLE KEYS */;
/*!40000 ALTER TABLE `DadoColetado_Atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DadoNaoColetado_Atividade`
--

DROP TABLE IF EXISTS `DadoNaoColetado_Atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DadoNaoColetado_Atividade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atividade_id` int(11) DEFAULT NULL,
  `dadoCRM_id` int(11) DEFAULT NULL,
  `dado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa1uetknhogmpw9bpy0lmk24ed` (`atividade_id`),
  KEY `FKikny5qw9kxvk02fr8rjkdu6ln` (`dadoCRM_id`),
  KEY `FKgl44rwhsmyjmg74rd04y0y8ou` (`dado_id`),
  CONSTRAINT `FKa1uetknhogmpw9bpy0lmk24ed` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKgl44rwhsmyjmg74rd04y0y8ou` FOREIGN KEY (`dado_id`) REFERENCES `DadoCRM` (`id`),
  CONSTRAINT `FKikny5qw9kxvk02fr8rjkdu6ln` FOREIGN KEY (`dadoCRM_id`) REFERENCES `AtividadeCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DadoNaoColetado_Atividade`
--

LOCK TABLES `DadoNaoColetado_Atividade` WRITE;
/*!40000 ALTER TABLE `DadoNaoColetado_Atividade` DISABLE KEYS */;
/*!40000 ALTER TABLE `DadoNaoColetado_Atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailCrm`
--

DROP TABLE IF EXISTS `EmailCrm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailCrm` (
  `tipoEmail` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `dataHoraArmazenamento` datetime(6) DEFAULT NULL,
  `dataHoraUltimaAlteracao` datetime(6) DEFAULT NULL,
  `emailDeMensagemOriginal` varchar(255) DEFAULT NULL,
  `emailsCCMensagemOriginal` varchar(255) DEFAULT NULL,
  `emailsCCOMensagemOriginal` varchar(255) DEFAULT NULL,
  `emailsParaMensagemOriginal` varchar(255) DEFAULT NULL,
  `texto` text,
  `datadisparo` datetime(6) DEFAULT NULL,
  `descricaoEnvio` varchar(255) DEFAULT NULL,
  `enviarCopiaColaboradores` bit(1) DEFAULT NULL,
  `enviarCopiaUsuarioEnviou` bit(1) DEFAULT NULL,
  `foiEnviado` bit(1) DEFAULT NULL,
  `codigoEmailServidor` varchar(255) DEFAULT NULL,
  `dataHoraEnvio` datetime(6) DEFAULT NULL,
  `dataHoraRecebimentoServerMail` datetime(6) DEFAULT NULL,
  `destinatario` varchar(255) DEFAULT NULL,
  `remetente` varchar(255) DEFAULT NULL,
  `subAtividadeAgendadaAposLeituraEmail` bit(1) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `usuarioCriou_id` int(11) DEFAULT NULL,
  `usuarioEditou_id` int(11) DEFAULT NULL,
  `modeloEmail_id` int(11) DEFAULT NULL,
  `statusEnvio_id` int(11) DEFAULT NULL,
  `contato_id` int(11) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1jaemx0exnevyeencx7cp5p5g` (`codigoEmailServidor`),
  KEY `FKhbo71cwhnmfw1yhir2uogubue` (`prospecto_id`),
  KEY `FKrjj3gihd0td038vjccheikmdi` (`usuarioCriou_id`),
  KEY `FK41gj4jqt6bhgf8fmd2nenhyt2` (`usuarioEditou_id`),
  KEY `FKe0ag86x2reu0l8x2f9kqfx9ed` (`modeloEmail_id`),
  KEY `FKlgebft33nrxn9l3eyg4s6nyre` (`statusEnvio_id`),
  KEY `FKhyfea3o4tfe2t4py5ybu1l7bl` (`contato_id`),
  KEY `FKm2yij7ykuytapl8o7iolglxse` (`atividade_id`),
  CONSTRAINT `FK41gj4jqt6bhgf8fmd2nenhyt2` FOREIGN KEY (`usuarioEditou_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKe0ag86x2reu0l8x2f9kqfx9ed` FOREIGN KEY (`modeloEmail_id`) REFERENCES `ModeloEmail` (`id`),
  CONSTRAINT `FKhbo71cwhnmfw1yhir2uogubue` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKhyfea3o4tfe2t4py5ybu1l7bl` FOREIGN KEY (`contato_id`) REFERENCES `ContatoProspecto` (`id`),
  CONSTRAINT `FKlgebft33nrxn9l3eyg4s6nyre` FOREIGN KEY (`statusEnvio_id`) REFERENCES `StatusEnvioEmail` (`id`),
  CONSTRAINT `FKm2yij7ykuytapl8o7iolglxse` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKrjj3gihd0td038vjccheikmdi` FOREIGN KEY (`usuarioCriou_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailCrm`
--

LOCK TABLES `EmailCrm` WRITE;
/*!40000 ALTER TABLE `EmailCrm` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailCrm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EnvioEmailRascunhoAutoSave`
--

DROP TABLE IF EXISTS `EnvioEmailRascunhoAutoSave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EnvioEmailRascunhoAutoSave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assunto` varchar(255) DEFAULT NULL,
  `dataHora` datetime(6) DEFAULT NULL,
  `texto` text,
  `emailVinculado_id` int(11) NOT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgtm3xare4m11bjgpe5vlnhqjo` (`emailVinculado_id`),
  KEY `FKbf1e0lg6npcoldpb8ujd7f4vu` (`prospecto_id`),
  KEY `FKhoyh4is658osiohhfg30uync5` (`usuario_id`),
  CONSTRAINT `FKbf1e0lg6npcoldpb8ujd7f4vu` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKgtm3xare4m11bjgpe5vlnhqjo` FOREIGN KEY (`emailVinculado_id`) REFERENCES `EmailCrm` (`id`),
  CONSTRAINT `FKhoyh4is658osiohhfg30uync5` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EnvioEmailRascunhoAutoSave`
--

LOCK TABLES `EnvioEmailRascunhoAutoSave` WRITE;
/*!40000 ALTER TABLE `EnvioEmailRascunhoAutoSave` DISABLE KEYS */;
/*!40000 ALTER TABLE `EnvioEmailRascunhoAutoSave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GrupoUsuarioSB`
--

DROP TABLE IF EXISTS `GrupoUsuarioSB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GrupoUsuarioSB` (
  `tipoGrupoUsuario` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) NOT NULL,
  `dataHoraAlteracao` datetime(6) DEFAULT NULL,
  `dataHoraInsersao` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `paginaInicial` varchar(255) DEFAULT NULL,
  `tipoGrupoNativo` bit(1) NOT NULL,
  `moduloPrincipal_id` int(11) DEFAULT NULL,
  `usuarioAlteracao_id` int(11) DEFAULT NULL,
  `usuarioInsercao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3wv40cn2xjarnckhmw50xibgh` (`nome`),
  KEY `FKrcx4qo1ruqe8koyfg2vb238jg` (`moduloPrincipal_id`),
  KEY `FKn20xy684qdisrx1r0wyeffosn` (`usuarioAlteracao_id`),
  KEY `FK7s5bl86yjv1r1rfn9i964cq7g` (`usuarioInsercao_id`),
  CONSTRAINT `FK7s5bl86yjv1r1rfn9i964cq7g` FOREIGN KEY (`usuarioInsercao_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKn20xy684qdisrx1r0wyeffosn` FOREIGN KEY (`usuarioAlteracao_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKrcx4qo1ruqe8koyfg2vb238jg` FOREIGN KEY (`moduloPrincipal_id`) REFERENCES `ModuloAcaoSistema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GrupoUsuarioSB`
--

LOCK TABLES `GrupoUsuarioSB` WRITE;
/*!40000 ALTER TABLE `GrupoUsuarioSB` DISABLE KEYS */;
INSERT INTO `GrupoUsuarioSB` VALUES ('GrupoUsuarioCRM',1,_binary '',NULL,NULL,NULL,'Gestão de Relacionamento com o Cliente','FabAcaoCRMAtendimento.MEUS_PROSPECTOS_MB_GERENCIAR',_binary '',1374834286,NULL,NULL),('GrupoUsuarioCRM',2,_binary '',NULL,NULL,NULL,'Administração de CRM','FabAcaoCrmAdmin.ADMINISTRATIVO_PAGINA_PRINCIPAL_MB',_binary '',-2109946963,NULL,NULL);
/*!40000 ALTER TABLE `GrupoUsuarioSB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistoricoRelacionamento`
--

DROP TABLE IF EXISTS `HistoricoRelacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HistoricoRelacionamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataHora` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `atividadeReferencia_id` int(11) DEFAULT NULL,
  `novoRelacionamento_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) NOT NULL,
  `relacionamentoAnterior_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnw5e1tprg9tqofjy9hwh4jaf9` (`atividadeReferencia_id`),
  KEY `FKram469rlqqwkui8fwfo4cs9jc` (`novoRelacionamento_id`),
  KEY `FKpehr6hvn9815r07tlv0ljfc4s` (`prospecto_id`),
  KEY `FKn9mn5vdpyjlwn1gbfwqbrc0co` (`relacionamentoAnterior_id`),
  KEY `FK3piq8us8mss9ydffma89ssns3` (`usuario_id`),
  CONSTRAINT `FK3piq8us8mss9ydffma89ssns3` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKn9mn5vdpyjlwn1gbfwqbrc0co` FOREIGN KEY (`relacionamentoAnterior_id`) REFERENCES `TipoRelacionamento` (`id`),
  CONSTRAINT `FKnw5e1tprg9tqofjy9hwh4jaf9` FOREIGN KEY (`atividadeReferencia_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKpehr6hvn9815r07tlv0ljfc4s` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKram469rlqqwkui8fwfo4cs9jc` FOREIGN KEY (`novoRelacionamento_id`) REFERENCES `TipoRelacionamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoricoRelacionamento`
--

LOCK TABLES `HistoricoRelacionamento` WRITE;
/*!40000 ALTER TABLE `HistoricoRelacionamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `HistoricoRelacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HorarioDisponivelAgenda`
--

DROP TABLE IF EXISTS `HorarioDisponivelAgenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HorarioDisponivelAgenda` (
  `id` int(11) NOT NULL,
  `domingo` bit(1) NOT NULL,
  `fim` datetime(6) DEFAULT NULL,
  `horaFinal` time DEFAULT NULL,
  `horaInicial` time DEFAULT NULL,
  `inicio` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `quarta` bit(1) NOT NULL,
  `quinta` bit(1) NOT NULL,
  `sabado` bit(1) NOT NULL,
  `segunda` bit(1) NOT NULL,
  `sexta` bit(1) NOT NULL,
  `terca` bit(1) NOT NULL,
  `agenda_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaea81xf5lyo5s7aqj03nlv6pr` (`agenda_id`),
  CONSTRAINT `FKaea81xf5lyo5s7aqj03nlv6pr` FOREIGN KEY (`agenda_id`) REFERENCES `AgendaDisponivel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HorarioDisponivelAgenda`
--

LOCK TABLES `HorarioDisponivelAgenda` WRITE;
/*!40000 ALTER TABLE `HorarioDisponivelAgenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `HorarioDisponivelAgenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ips`
--

DROP TABLE IF EXISTS `Ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ips` (
  `id` int(11) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `dataAlteracao` date DEFAULT NULL,
  `dns` varchar(255) DEFAULT NULL,
  `finalFaixa` varchar(15) NOT NULL,
  `inicialFaixa` varchar(15) NOT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `usuarioAlteracao_id` int(11) DEFAULT NULL,
  `usuarioInsercao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg91qw90kdtcwkq94o48c8sfah` (`tipo_id`),
  KEY `FK332ut8y08mn06rtgbpyqei73p` (`usuarioAlteracao_id`),
  KEY `FK92k8tn1tlblje3ees74kebihi` (`usuarioInsercao_id`),
  CONSTRAINT `FK332ut8y08mn06rtgbpyqei73p` FOREIGN KEY (`usuarioAlteracao_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FK92k8tn1tlblje3ees74kebihi` FOREIGN KEY (`usuarioInsercao_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKg91qw90kdtcwkq94o48c8sfah` FOREIGN KEY (`tipo_id`) REFERENCES `TipoIp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ips`
--

LOCK TABLES `Ips` WRITE;
/*!40000 ALTER TABLE `Ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Localidade`
--

DROP TABLE IF EXISTS `Localidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Localidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) NOT NULL,
  `dataAlteracao` date DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Localidade`
--

LOCK TABLES `Localidade` WRITE;
/*!40000 ALTER TABLE `Localidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `Localidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Localizacao`
--

DROP TABLE IF EXISTS `Localizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Localizacao` (
  `tipoLocalizacao` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complemento` varchar(255) DEFAULT NULL,
  `latitude` bigint(20) NOT NULL,
  `longitude` bigint(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `bairro_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1x27cqle98ktlx448eo2lticm` (`bairro_id`),
  CONSTRAINT `FK1x27cqle98ktlx448eo2lticm` FOREIGN KEY (`bairro_id`) REFERENCES `Bairro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Localizacao`
--

LOCK TABLES `Localizacao` WRITE;
/*!40000 ALTER TABLE `Localizacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `Localizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MetaRelacionamento`
--

DROP TABLE IF EXISTS `MetaRelacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MetaRelacionamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cor` varchar(255) DEFAULT NULL,
  `descricaoEtapaVisaoCliente` varchar(255) DEFAULT NULL,
  `descricaoEtapaVisaoPrestador` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `peso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MetaRelacionamento`
--

LOCK TABLES `MetaRelacionamento` WRITE;
/*!40000 ALTER TABLE `MetaRelacionamento` DISABLE KEYS */;
INSERT INTO `MetaRelacionamento` VALUES (1,NULL,NULL,NULL,'Encontrado',0),(2,NULL,NULL,NULL,'Em negociação',0),(3,NULL,NULL,NULL,'Cliente',0);
/*!40000 ALTER TABLE `MetaRelacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModeloDocumentoCRM`
--

DROP TABLE IF EXISTS `ModeloDocumentoCRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModeloDocumentoCRM` (
  `tipoModelo` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `extencao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipoServico_id` int(11) DEFAULT NULL,
  `tipoAtividadeVinculada_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr4kpnlse8yw76qf7fm3spv8os` (`tipoServico_id`),
  KEY `FKgcxuh9abctg98jsnuv6fep3dl` (`tipoAtividadeVinculada_id`),
  CONSTRAINT `FKgcxuh9abctg98jsnuv6fep3dl` FOREIGN KEY (`tipoAtividadeVinculada_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  CONSTRAINT `FKr4kpnlse8yw76qf7fm3spv8os` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModeloDocumentoCRM`
--

LOCK TABLES `ModeloDocumentoCRM` WRITE;
/*!40000 ALTER TABLE `ModeloDocumentoCRM` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModeloDocumentoCRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModeloEmail`
--

DROP TABLE IF EXISTS `ModeloEmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModeloEmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assunto` varchar(255) DEFAULT NULL,
  `dataHoraCriou` datetime(6) DEFAULT NULL,
  `dataHoraEditou` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `textoModelo` text,
  `usuarioEditou_id` int(11) DEFAULT NULL,
  `usuariocriou_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs87etehqx2qm1gnxdpc1m59y9` (`usuarioEditou_id`),
  KEY `FKlcg6heqglul50raaf4ueh99w8` (`usuariocriou_id`),
  CONSTRAINT `FKlcg6heqglul50raaf4ueh99w8` FOREIGN KEY (`usuariocriou_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKs87etehqx2qm1gnxdpc1m59y9` FOREIGN KEY (`usuarioEditou_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModeloEmail`
--

LOCK TABLES `ModeloEmail` WRITE;
/*!40000 ALTER TABLE `ModeloEmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModeloEmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModuloAcaoSistema`
--

DROP TABLE IF EXISTS `ModuloAcaoSistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuloAcaoSistema` (
  `tipoModulo` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `dataHoraCriacao` date DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `iconeDaClasse` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `umModuloNativo` bit(1) NOT NULL,
  `moduloFab` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModuloAcaoSistema`
--

LOCK TABLES `ModuloAcaoSistema` WRITE;
/*!40000 ALTER TABLE `ModuloAcaoSistema` DISABLE KEYS */;
INSERT INTO `ModuloAcaoSistema` VALUES ('ModuloIntranetCasanova',-2109946963,'2019-12-27','','fa fa-puzzle-piece','Administração de CRM',_binary '\0',1),('ModuloIntranetCasanova',-385209051,'2019-12-27','','fa fa-puzzle-piece','Aplicação crm CRM',_binary '\0',4),('ModuloIntranetCasanova',-379834316,'2019-12-27','Produção de produtos e serviços','fa fa-puzzle-piece','Produção',_binary '\0',3),('ModuloIntranetCasanova',1374834286,'2019-12-27','Central de Relacionamento com o Cliente','fa fa-puzzle-piece','Central de Relacionamento',_binary '\0',0),('ModuloIntranetCasanova',1473914980,'2019-12-27','Central de relacionamento do cliente','fa fa-puzzle-piece','Contato',_binary '\0',2);
/*!40000 ALTER TABLE `ModuloAcaoSistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Negado_Grupos`
--

DROP TABLE IF EXISTS `Negado_Grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Negado_Grupos` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhd45weeoe1avo5qunwppgnfhm` (`acesso_id`),
  KEY `FK7m9qmg1btyx5cwglbveiugmbm` (`grupo_id`),
  CONSTRAINT `FK7m9qmg1btyx5cwglbveiugmbm` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`),
  CONSTRAINT `FKhd45weeoe1avo5qunwppgnfhm` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Negado_Grupos`
--

LOCK TABLES `Negado_Grupos` WRITE;
/*!40000 ALTER TABLE `Negado_Grupos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Negado_Grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Negado_Usuarios`
--

DROP TABLE IF EXISTS `Negado_Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Negado_Usuarios` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK39gufe3ixex80jpg9lshm4y1v` (`usuario_id`,`acesso_id`),
  KEY `FKgm8m18ifbnjd04dyl9drki4va` (`acesso_id`),
  CONSTRAINT `FK8wgk7y8p69ttbgf7if2k5n1pt` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKgm8m18ifbnjd04dyl9drki4va` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Negado_Usuarios`
--

LOCK TABLES `Negado_Usuarios` WRITE;
/*!40000 ALTER TABLE `Negado_Usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Negado_Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpcaoPersonalizada`
--

DROP TABLE IF EXISTS `OpcaoPersonalizada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpcaoPersonalizada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoGrupoOpcoes` varchar(255) DEFAULT NULL,
  `descricao` text,
  `nome` varchar(255) DEFAULT NULL,
  `tipoDado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjfrm6qio2eu64bi551a6v7qwp` (`tipoDado_id`),
  CONSTRAINT `FKjfrm6qio2eu64bi551a6v7qwp` FOREIGN KEY (`tipoDado_id`) REFERENCES `TipoDadoCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpcaoPersonalizada`
--

LOCK TABLES `OpcaoPersonalizada` WRITE;
/*!40000 ALTER TABLE `OpcaoPersonalizada` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpcaoPersonalizada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrigemProspecto`
--

DROP TABLE IF EXISTS `OrigemProspecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrigemProspecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `relacionamentoPadrao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_74ptuyry9afjhcjcjemnp3c9v` (`nome`),
  KEY `FKj6xkt4uas6xsmvw03wb92sghk` (`relacionamentoPadrao_id`),
  CONSTRAINT `FKj6xkt4uas6xsmvw03wb92sghk` FOREIGN KEY (`relacionamentoPadrao_id`) REFERENCES `TipoRelacionamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrigemProspecto`
--

LOCK TABLES `OrigemProspecto` WRITE;
/*!40000 ALTER TABLE `OrigemProspecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrigemProspecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PalavraChave`
--

DROP TABLE IF EXISTS `PalavraChave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PalavraChave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palavra` varchar(255) DEFAULT NULL,
  `significado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PalavraChave`
--

LOCK TABLES `PalavraChave` WRITE;
/*!40000 ALTER TABLE `PalavraChave` DISABLE KEYS */;
INSERT INTO `PalavraChave` VALUES (1,'Amor',NULL);
/*!40000 ALTER TABLE `PalavraChave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PalavraChave_PalavraChave`
--

DROP TABLE IF EXISTS `PalavraChave_PalavraChave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PalavraChave_PalavraChave` (
  `PalavraChave_id` int(11) NOT NULL,
  `palavrasRelacionadas_id` int(11) NOT NULL,
  UNIQUE KEY `UK_kurrmc1kihysmrybtib03c3b8` (`palavrasRelacionadas_id`),
  KEY `FKbkt9m920kmg7usyn7i4tjt5k1` (`PalavraChave_id`),
  CONSTRAINT `FK2ad1anblrkid1mo2tj1fs6rnw` FOREIGN KEY (`palavrasRelacionadas_id`) REFERENCES `PalavraChave` (`id`),
  CONSTRAINT `FKbkt9m920kmg7usyn7i4tjt5k1` FOREIGN KEY (`PalavraChave_id`) REFERENCES `PalavraChave` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PalavraChave_PalavraChave`
--

LOCK TABLES `PalavraChave_PalavraChave` WRITE;
/*!40000 ALTER TABLE `PalavraChave_PalavraChave` DISABLE KEYS */;
/*!40000 ALTER TABLE `PalavraChave_PalavraChave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ParametroComponente`
--

DROP TABLE IF EXISTS `ParametroComponente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ParametroComponente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeParametro` varchar(255) DEFAULT NULL,
  `valorPadrao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ParametroComponente`
--

LOCK TABLES `ParametroComponente` WRITE;
/*!40000 ALTER TABLE `ParametroComponente` DISABLE KEYS */;
/*!40000 ALTER TABLE `ParametroComponente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissaoSB`
--

DROP TABLE IF EXISTS `PermissaoSB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissaoSB` (
  `id` int(11) NOT NULL,
  `idAcaoGestao` int(11) NOT NULL,
  `idacaoDoSistema` int(11) NOT NULL,
  `nomeAcesso` varchar(255) DEFAULT NULL,
  `tipoAutenticacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissaoSB`
--

LOCK TABLES `PermissaoSB` WRITE;
/*!40000 ALTER TABLE `PermissaoSB` DISABLE KEYS */;
INSERT INTO `PermissaoSB` VALUES (-2126973122,-2126973122,-2126973122,'FabAcaoCRMAtendimento.DESCOBRIDOR_PROSPECTO_MB_GERENCIAR',NULL),(-1660841818,-1660841818,-1660841818,'FabAcaoCrmAdmin.GRUPO_MB_GERENCIAR',NULL),(-1292705878,-591280281,-1292705878,'FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_FRM_LISTAR',NULL),(-1157190924,-1157190924,-1157190924,'FabAcaoCrmAdmin.OPCAO_DADOS_CRM_MB_GERENCIAR',NULL),(-591280281,-591280281,-591280281,'FabAcaoCrmAdmin.TIPO_RELACIONAMENTO_MB_GERENCIAR',NULL),(-408271661,12080907,-408271661,'FabAcaoCRMAtendimento.PROSPECTO_FRM_SERVICOS',NULL),(-372870609,12080907,-372870609,'FabAcaoCRMAtendimento.PROSPECTO_CTR_REMOVER',NULL),(12080907,12080907,12080907,'FabAcaoCRMAtendimento.PROSPECTO_MB_GERENCIAR',NULL),(193715130,193715130,193715130,'FabAcaoCRMAtendimento.EXECUCAO_ATIVIDADE_MB',NULL),(223258683,223258683,223258683,'FabAcaoCrmAdmin.CADASTRO_USUARIO_MB_GERENCIAR',NULL),(287810846,287810846,287810846,'FabAcaoCrmAdmin.ADMINISTRATIVO_PAGINA_PRINCIPAL_MB',NULL),(540984173,12080907,540984173,'FabAcaoCRMAtendimento.PROSPECTO_FRM_EXCLUIR_EMPRESA',NULL),(587190021,587190021,587190021,'FabAcaoCrmAdmin.MODELOS_DOCUMENTOS_TIPO_ATIVIDADE_MB_GERENCIAR',NULL),(963669396,12080907,963669396,'FabAcaoCRMAtendimento.PROSPECTO_CTR_ALTERAR_RELACIONAMENTO',NULL),(1063282997,1063282997,1063282997,'FabAcaoCRMAtendimento.MEUS_PROSPECTOS_MB_GERENCIAR',NULL),(1184973423,1184973423,1184973423,'FabAcaoCrmAdmin.MAUTIC_MB_INTEGRACAO',NULL),(1251213972,12080907,1251213972,'FabAcaoCRMAtendimento.PROSPECTO_FRM_ALTERAR_RELACIONAMENTO',NULL),(1294786096,1294786096,1294786096,'FabAcaoCrmAdmin.SERVICO_DIPONIVEL_MB_GESTAO',NULL),(1386796776,12080907,1386796776,'FabAcaoCRMAtendimento.PROSPECTO_FRM_PRE_ANALISE',NULL),(1952702119,1952702119,1952702119,'FabAcaoCrmAdmin.TIPO_ATIVIDADE_MB_GERENCIAR',NULL);
/*!40000 ALTER TABLE `PermissaoSB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permitido_Grupos`
--

DROP TABLE IF EXISTS `Permitido_Grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permitido_Grupos` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `grupo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKonpllqmu9mxhrobrxvvdvqgw3` (`acesso_id`),
  KEY `FKqy7db3uujsot9o8hi9tr16ifw` (`grupo_id`),
  CONSTRAINT `FKonpllqmu9mxhrobrxvvdvqgw3` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`),
  CONSTRAINT `FKqy7db3uujsot9o8hi9tr16ifw` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permitido_Grupos`
--

LOCK TABLES `Permitido_Grupos` WRITE;
/*!40000 ALTER TABLE `Permitido_Grupos` DISABLE KEYS */;
INSERT INTO `Permitido_Grupos` VALUES (-1660841816,-1660841818,2),(-1292705876,-1292705878,2),(-1157190922,-1157190924,2),(-591280279,-591280281,2),(-408271659,-408271661,2),(-372870607,-372870609,2),(12080908,12080907,1),(12080909,12080907,2),(193715131,193715130,1),(193715132,193715130,2),(223258685,223258683,2),(287810848,287810846,2),(540984175,540984173,2),(587190023,587190021,2),(963669398,963669396,2),(1063282998,1063282997,1),(1063282999,1063282997,2),(1184973425,1184973423,2),(1251213974,1251213972,2),(1294786098,1294786096,2),(1386796778,1386796776,2),(1952702121,1952702119,2);
/*!40000 ALTER TABLE `Permitido_Grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permitido_Usuarios`
--

DROP TABLE IF EXISTS `Permitido_Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permitido_Usuarios` (
  `id` int(11) NOT NULL,
  `acesso_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9j92iu9201tx0dm010v5fq4wo` (`usuario_id`,`acesso_id`),
  KEY `FKeb1qf23eyq6brt5o1sbbka3oq` (`acesso_id`),
  CONSTRAINT `FKeb1qf23eyq6brt5o1sbbka3oq` FOREIGN KEY (`acesso_id`) REFERENCES `PermissaoSB` (`id`),
  CONSTRAINT `FKkk1bvscvwf4sxlf15t8pk4e10` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permitido_Usuarios`
--

LOCK TABLES `Permitido_Usuarios` WRITE;
/*!40000 ALTER TABLE `Permitido_Usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permitido_Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Porte`
--

DROP TABLE IF EXISTS `Porte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Porte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Porte`
--

LOCK TABLES `Porte` WRITE;
/*!40000 ALTER TABLE `Porte` DISABLE KEYS */;
INSERT INTO `Porte` VALUES (1,'Empresas pequenas (Alcance local)','pequena'),(2,'Empresas pequenas (Alcance local)','Média'),(3,'Empresas de Grande porte (Alcance Nacional)','grande');
/*!40000 ALTER TABLE `Porte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PreAnalise`
--

DROP TABLE IF EXISTS `PreAnalise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PreAnalise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fotoDesktop` varchar(255) DEFAULT NULL,
  `fotoMobile` varchar(255) DEFAULT NULL,
  `jsonDesktop` longtext,
  `jsonMobile` longtext,
  `nome` varchar(255) DEFAULT NULL,
  `notaDesktop` bigint(20) DEFAULT NULL,
  `notaMobile` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PreAnalise`
--

LOCK TABLES `PreAnalise` WRITE;
/*!40000 ALTER TABLE `PreAnalise` DISABLE KEYS */;
/*!40000 ALTER TABLE `PreAnalise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proposta`
--

DROP TABLE IF EXISTS `Proposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd9xim9ow59y512wqrpxtgbmux` (`atividade_id`),
  KEY `FKhxf04t18n0sb552d1krrbmxwe` (`prospecto_id`),
  CONSTRAINT `FKd9xim9ow59y512wqrpxtgbmux` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`),
  CONSTRAINT `FKhxf04t18n0sb552d1krrbmxwe` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proposta`
--

LOCK TABLES `Proposta` WRITE;
/*!40000 ALTER TABLE `Proposta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Proposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProspectoEmpresa`
--

DROP TABLE IF EXISTS `ProspectoEmpresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProspectoEmpresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CEP` varchar(255) DEFAULT NULL,
  `cadastrocompleto` bit(1) NOT NULL,
  `caminhoLocalImagem` varchar(255) DEFAULT NULL,
  `caminhoUrlImagem` varchar(255) DEFAULT NULL,
  `canalRocketChat` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `dataHoraAlterouProspecto` datetime(6) DEFAULT NULL,
  `dataHoraMudancaRelacionamento` datetime(6) DEFAULT NULL,
  `dataHoracriouProspecto` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `enderecoSecundario` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `observacao` varchar(8000) DEFAULT NULL,
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
  `relacionemantoAnterior_id` int(11) DEFAULT NULL,
  `tipoEmpresa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dgaye40xaiq79itv204rd0rxk` (`cnpj`),
  UNIQUE KEY `UK_g75h86ddpg0whtwbf7ar6hj0g` (`email`),
  UNIQUE KEY `UK_a4x6yd79walxvwwf4be9tj4nk` (`site`),
  UNIQUE KEY `UK_27qdperqlhmjkfb3o7a5cvcxo` (`telefonePrincipal`),
  KEY `FKgwkknsfrvrawytqgxud2utlrr` (`contatoPrincipal_id`),
  KEY `FKsy0g7pqwg2bbpqemmkqdwqxqd` (`localizacao_id`),
  KEY `FKkbpc05uwn92r91pxg6tqff009` (`origem_id`),
  KEY `FKxuim764ep6271yeskrx96hm6` (`porte_id`),
  KEY `FK1nspwf202dvdnff9ld973ktkj` (`preAnalise_id`),
  KEY `FKhtmgsbbjnmfa2fne5mphevnna` (`relacionamento_id`),
  KEY `FK909956wv27g2nx32eym1mhlr1` (`relacionemantoAnterior_id`),
  KEY `FKj00pyy61x89fpriamckk0sjyp` (`tipoEmpresa_id`),
  CONSTRAINT `FK1nspwf202dvdnff9ld973ktkj` FOREIGN KEY (`preAnalise_id`) REFERENCES `PreAnalise` (`id`),
  CONSTRAINT `FK909956wv27g2nx32eym1mhlr1` FOREIGN KEY (`relacionemantoAnterior_id`) REFERENCES `TipoRelacionamento` (`id`),
  CONSTRAINT `FKgwkknsfrvrawytqgxud2utlrr` FOREIGN KEY (`contatoPrincipal_id`) REFERENCES `ContatoProspecto` (`id`),
  CONSTRAINT `FKhtmgsbbjnmfa2fne5mphevnna` FOREIGN KEY (`relacionamento_id`) REFERENCES `TipoRelacionamento` (`id`),
  CONSTRAINT `FKj00pyy61x89fpriamckk0sjyp` FOREIGN KEY (`tipoEmpresa_id`) REFERENCES `TipoEmpresa` (`id`),
  CONSTRAINT `FKkbpc05uwn92r91pxg6tqff009` FOREIGN KEY (`origem_id`) REFERENCES `OrigemProspecto` (`id`),
  CONSTRAINT `FKsy0g7pqwg2bbpqemmkqdwqxqd` FOREIGN KEY (`localizacao_id`) REFERENCES `Localizacao` (`id`),
  CONSTRAINT `FKxuim764ep6271yeskrx96hm6` FOREIGN KEY (`porte_id`) REFERENCES `Porte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProspectoEmpresa`
--

LOCK TABLES `ProspectoEmpresa` WRITE;
/*!40000 ALTER TABLE `ProspectoEmpresa` DISABLE KEYS */;
INSERT INTO `ProspectoEmpresa` VALUES (1,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,'2019-12-27 16:20:31.667000',NULL,NULL,'salviof@gmail.com','Rua goias 171 ap 41',NULL,'Empresa X que vai fechar contrado nome da empresa',NULL,NULL,_binary '\0',NULL,'www.google.com.br','32240677',NULL,NULL,NULL,3,NULL,2,NULL,NULL),(2,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,'2019-12-27 16:20:31.223000',NULL,'2019-12-27 16:20:31.218000','prospecto2@teste.com',NULL,NULL,'prospecto teste 2',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,3,NULL,NULL),(3,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,'2019-12-27 16:20:31.245000',NULL,'2019-12-27 16:20:31.239000','prospecto3@teste.com',NULL,NULL,'prospecto teste 3',NULL,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL);
/*!40000 ALTER TABLE `ProspectoEmpresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProspectoEmpresa_PalavraChave`
--

DROP TABLE IF EXISTS `ProspectoEmpresa_PalavraChave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProspectoEmpresa_PalavraChave` (
  `prospectoEmpresa_id` int(11) NOT NULL,
  `palavraChave_id` int(11) NOT NULL,
  KEY `FKexiwj8jd46k0cjcqvoowydq0r` (`palavraChave_id`),
  KEY `FKpjyhf20gphkovbxjaxkwcocqa` (`prospectoEmpresa_id`),
  CONSTRAINT `FKexiwj8jd46k0cjcqvoowydq0r` FOREIGN KEY (`palavraChave_id`) REFERENCES `PalavraChave` (`id`),
  CONSTRAINT `FKpjyhf20gphkovbxjaxkwcocqa` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProspectoEmpresa_PalavraChave`
--

LOCK TABLES `ProspectoEmpresa_PalavraChave` WRITE;
/*!40000 ALTER TABLE `ProspectoEmpresa_PalavraChave` DISABLE KEYS */;
INSERT INTO `ProspectoEmpresa_PalavraChave` VALUES (1,1);
/*!40000 ALTER TABLE `ProspectoEmpresa_PalavraChave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProspectoEmpresa_ProspectoEmpresa`
--

DROP TABLE IF EXISTS `ProspectoEmpresa_ProspectoEmpresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProspectoEmpresa_ProspectoEmpresa` (
  `prospectoEmpresa_id` int(11) NOT NULL,
  `clienteRelacionado_id` int(11) NOT NULL,
  KEY `FK3e1dwaqq2ok3uwut0ubtjpt9e` (`clienteRelacionado_id`),
  KEY `FKpferhna4qq5x6ju0w8s94r130` (`prospectoEmpresa_id`),
  CONSTRAINT `FK3e1dwaqq2ok3uwut0ubtjpt9e` FOREIGN KEY (`clienteRelacionado_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKpferhna4qq5x6ju0w8s94r130` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProspectoEmpresa_ProspectoEmpresa`
--

LOCK TABLES `ProspectoEmpresa_ProspectoEmpresa` WRITE;
/*!40000 ALTER TABLE `ProspectoEmpresa_ProspectoEmpresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProspectoEmpresa_ProspectoEmpresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regiao`
--

DROP TABLE IF EXISTS `Regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alteradoEm` date DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `criadoEm` date DEFAULT NULL,
  `nomeRegiao` varchar(255) DEFAULT NULL,
  `quantidadeCidades` int(11) NOT NULL,
  `sigla` varchar(255) DEFAULT NULL,
  `unidadeFederativa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t9p2eh2v2opiqg2bwyyil729l` (`nomeRegiao`),
  KEY `FKm06bvv2g1ut1iewe64ugpny2` (`unidadeFederativa_id`),
  CONSTRAINT `FKm06bvv2g1ut1iewe64ugpny2` FOREIGN KEY (`unidadeFederativa_id`) REFERENCES `UnidadeFederativa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Regiao`
--

LOCK TABLES `Regiao` WRITE;
/*!40000 ALTER TABLE `Regiao` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regiao_Bairro`
--

DROP TABLE IF EXISTS `Regiao_Bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regiao_Bairro` (
  `Regiao_id` int(11) NOT NULL,
  `bairros_id` int(11) NOT NULL,
  KEY `FKew8f3d6bl78s7v7htp3thaj1d` (`bairros_id`),
  KEY `FKewbhodadapv1i3pyarhm5vpsa` (`Regiao_id`),
  CONSTRAINT `FKew8f3d6bl78s7v7htp3thaj1d` FOREIGN KEY (`bairros_id`) REFERENCES `Bairro` (`id`),
  CONSTRAINT `FKewbhodadapv1i3pyarhm5vpsa` FOREIGN KEY (`Regiao_id`) REFERENCES `Regiao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Regiao_Bairro`
--

LOCK TABLES `Regiao_Bairro` WRITE;
/*!40000 ALTER TABLE `Regiao_Bairro` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regiao_Bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResultadoTipoRelacionamento`
--

DROP TABLE IF EXISTS `ResultadoTipoRelacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResultadoTipoRelacionamento` (
  `id` int(11) NOT NULL,
  `classeResultado` varchar(255) DEFAULT NULL,
  `corResultado` varchar(255) DEFAULT NULL,
  `fabricaResultado` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResultadoTipoRelacionamento`
--

LOCK TABLES `ResultadoTipoRelacionamento` WRITE;
/*!40000 ALTER TABLE `ResultadoTipoRelacionamento` DISABLE KEYS */;
INSERT INTO `ResultadoTipoRelacionamento` VALUES (1,NULL,'#9CB071',0,'Negócio Fechado'),(2,NULL,'#C34A2C',1,'Negócio não concretizado'),(3,NULL,'#C34A2C',2,'Possível fechar negocio');
/*!40000 ALTER TABLE `ResultadoTipoRelacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServicoOferecido`
--

DROP TABLE IF EXISTS `ServicoOferecido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServicoOferecido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valorMensal` double NOT NULL,
  `valorSetup` double NOT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `tipoServico_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK10990ntj034fami5iatk7e2hp` (`prospecto_id`),
  KEY `FK91iy7hku5mc0n42e6b1r88vi1` (`tipoServico_id`),
  CONSTRAINT `FK10990ntj034fami5iatk7e2hp` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FK91iy7hku5mc0n42e6b1r88vi1` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServicoOferecido`
--

LOCK TABLES `ServicoOferecido` WRITE;
/*!40000 ALTER TABLE `ServicoOferecido` DISABLE KEYS */;
/*!40000 ALTER TABLE `ServicoOferecido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatusAtividade`
--

DROP TABLE IF EXISTS `StatusAtividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatusAtividade` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatusAtividade`
--

LOCK TABLES `StatusAtividade` WRITE;
/*!40000 ALTER TABLE `StatusAtividade` DISABLE KEYS */;
INSERT INTO `StatusAtividade` VALUES (1,NULL,'Em andamento'),(2,NULL,'Sucesso'),(3,NULL,'Agendado'),(4,NULL,'Cancelado');
/*!40000 ALTER TABLE `StatusAtividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatusEnvioEmail`
--

DROP TABLE IF EXISTS `StatusEnvioEmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatusEnvioEmail` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatusEnvioEmail`
--

LOCK TABLES `StatusEnvioEmail` WRITE;
/*!40000 ALTER TABLE `StatusEnvioEmail` DISABLE KEYS */;
INSERT INTO `StatusEnvioEmail` VALUES (1,'Rascunho'),(2,'Tentando enviar'),(3,'Enviado'),(4,'Entrega Confirmada');
/*!40000 ALTER TABLE `StatusEnvioEmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TagAtendimento`
--

DROP TABLE IF EXISTS `TagAtendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagAtendimento` (
  `id` int(11) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `criadoEm` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `editadoEm` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `criadoPor_id` int(11) DEFAULT NULL,
  `editadoPor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhjkqo9vrrbgm0upaxrrmjot1x` (`criadoPor_id`),
  KEY `FKpyrs0lgfiqqa5enynh4lf56t3` (`editadoPor_id`),
  CONSTRAINT `FKhjkqo9vrrbgm0upaxrrmjot1x` FOREIGN KEY (`criadoPor_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKpyrs0lgfiqqa5enynh4lf56t3` FOREIGN KEY (`editadoPor_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TagAtendimento`
--

LOCK TABLES `TagAtendimento` WRITE;
/*!40000 ALTER TABLE `TagAtendimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `TagAtendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoAtividadeCRM`
--

DROP TABLE IF EXISTS `TipoAtividadeCRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoAtividadeCRM` (
  `id` int(11) NOT NULL,
  `atividadePublica` bit(1) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `diasAgendamentoAposLeitura` int(11) NOT NULL,
  `diasAgendarNovaAtividade` int(11) NOT NULL,
  `execucaoDiretaSemRelatorio` bit(1) NOT NULL,
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
  `resultaEmRelacionamentoAnterior` bit(1) NOT NULL,
  `temDisparoDeEmail` bit(1) NOT NULL,
  `textoAjuda` varchar(255) DEFAULT NULL,
  `xhtmlAlternativo` varchar(255) DEFAULT NULL,
  `atividadeAgendada_id` int(11) DEFAULT NULL,
  `atividadeAgendadaAposLeituraEmail_id` int(11) DEFAULT NULL,
  `modeloEmail_id` int(11) DEFAULT NULL,
  `relacionamentoGerado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKersudm8u3ikghv1t8w7mtcotx` (`atividadeAgendada_id`),
  KEY `FKakn0ubkbe9et1y1lk09pxs672` (`atividadeAgendadaAposLeituraEmail_id`),
  KEY `FK140uj6nujnqd0t7mtih7ulgwo` (`modeloEmail_id`),
  KEY `FKtknmakbsrw6xk4cqw7igj2wp5` (`relacionamentoGerado_id`),
  CONSTRAINT `FK140uj6nujnqd0t7mtih7ulgwo` FOREIGN KEY (`modeloEmail_id`) REFERENCES `ModeloEmail` (`id`),
  CONSTRAINT `FKakn0ubkbe9et1y1lk09pxs672` FOREIGN KEY (`atividadeAgendadaAposLeituraEmail_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  CONSTRAINT `FKersudm8u3ikghv1t8w7mtcotx` FOREIGN KEY (`atividadeAgendada_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  CONSTRAINT `FKtknmakbsrw6xk4cqw7igj2wp5` FOREIGN KEY (`relacionamentoGerado_id`) REFERENCES `TipoRelacionamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoAtividadeCRM`
--

LOCK TABLES `TipoAtividadeCRM` WRITE;
/*!40000 ALTER TABLE `TipoAtividadeCRM` DISABLE KEYS */;
INSERT INTO `TipoAtividadeCRM` VALUES (1,_binary '\0','439fe0',0,0,_binary '\0','fa fa-phone','Atendimento Telefonico Passivo','Finalizar Atendimento','Atender Telefone',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(2,_binary '\0','439fe0',0,0,_binary '\0','fa fa-bullhorn','Atendimento Telefonico Ativo','Finalizar Ligação','Ligar Para Empresa',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(3,_binary '\0','439fe0',0,0,_binary '\0','fa fa-envelope','Contato Via E-mail','Enviar','Criar e-mail',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(4,_binary '\0','439fe0',0,0,_binary '\0','fa fa-bar-chart','Realização de Pré análize','Concluir Pré Análise','Cadastrar Pré Análise',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,4),(5,_binary '\0','439fe0',0,0,_binary '\0','fa fa-pencil-square-o ','Envio de Pré Análize','Enviar','Enviar Pré Análize',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,'/site/crm/atividadesPersonalizadas/enviarPreanalise.xhtml',NULL,NULL,NULL,NULL),(6,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Realização de  Brifing','Finalizar Brifing','Realizar Brifing',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,6),(7,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Criação de proposta','Finalizar Proposta','Montar Proposta',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',NULL,'/site/crm/proposta.xhtml',NULL,NULL,NULL,7),(8,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Consulta de dados','OK','ver Prospecto',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(9,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Definição de valores','Finalizar definição','Devinir Valores',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(10,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Impressão de Proposta','Imprimir','Imprimir Proposta',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(11,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Envio de proposta','Enviar','Enviar proposta',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(12,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Envio de propaganda','Enviar','Disparar e-mail Marketing',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(13,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Envio de boleto','Enviar','Enviar Boleto',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,'/site/crm/atividadesPersonalizadas/enviarEmail.xhtml',NULL,NULL,NULL,NULL),(14,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Assinatura de contrato','Arquivar','Arquivar assinatura de contrato',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,8),(15,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Ativação de campanhas','Ativar','Ativar Campanha',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(16,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Agenda de novo Contato','Agendar','Agendar Contato',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(17,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Desistir de Prospecto','Abandonar por 6 meses','Abandonar Prospecto',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(18,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Criação de prospecto','Cadastrar','Cadastrar Prospecto',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,3),(19,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Cancelar contrato','Cancelar','Cancelar Contrato',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,9),(20,_binary '\0','439fe0',0,0,_binary '\0','fa fa-beer','Criar nova Proposta','Salvar modificações','Modificar Proposta',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `TipoAtividadeCRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoCobranca`
--

DROP TABLE IF EXISTS `TipoCobranca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoCobranca` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoCobranca`
--

LOCK TABLES `TipoCobranca` WRITE;
/*!40000 ALTER TABLE `TipoCobranca` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoCobranca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoComponentVisual`
--

DROP TABLE IF EXISTS `TipoComponentVisual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoComponentVisual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoFonte` varchar(255) DEFAULT NULL,
  `css` varchar(255) DEFAULT NULL,
  `javaScript` varchar(255) DEFAULT NULL,
  `nomeComponente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoComponentVisual`
--

LOCK TABLES `TipoComponentVisual` WRITE;
/*!40000 ALTER TABLE `TipoComponentVisual` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoComponentVisual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoComponentVisual_ParametroComponente`
--

DROP TABLE IF EXISTS `TipoComponentVisual_ParametroComponente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoComponentVisual_ParametroComponente` (
  `TipoComponentVisual_id` int(11) NOT NULL,
  `parametros_id` int(11) NOT NULL,
  UNIQUE KEY `UK_2uub16a1ur79eur2r519347sh` (`parametros_id`),
  KEY `FKbgqyqx912petqa8pakrn50wte` (`TipoComponentVisual_id`),
  CONSTRAINT `FKbgqyqx912petqa8pakrn50wte` FOREIGN KEY (`TipoComponentVisual_id`) REFERENCES `TipoComponentVisual` (`id`),
  CONSTRAINT `FKtc5a9rthi35hgrcpx76yccsmm` FOREIGN KEY (`parametros_id`) REFERENCES `ParametroComponente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoComponentVisual_ParametroComponente`
--

LOCK TABLES `TipoComponentVisual_ParametroComponente` WRITE;
/*!40000 ALTER TABLE `TipoComponentVisual_ParametroComponente` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoComponentVisual_ParametroComponente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoDadoCRM`
--

DROP TABLE IF EXISTS `TipoDadoCRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoDadoCRM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tipoDado` tinyblob,
  `tipoDadoCRM` int(11) DEFAULT NULL,
  `umValorCampoUnico` bit(1) NOT NULL,
  `umalistagemDinamica` bit(1) NOT NULL,
  `unicaColeta` bit(1) NOT NULL,
  `validacaoRegex` varchar(255) DEFAULT NULL,
  `valorMaximo` int(11) NOT NULL,
  `valorMinimo` int(11) NOT NULL,
  `valorPadrao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoDadoCRM`
--

LOCK TABLES `TipoDadoCRM` WRITE;
/*!40000 ALTER TABLE `TipoDadoCRM` DISABLE KEYS */;
INSERT INTO `TipoDadoCRM` VALUES (1,NULL,NULL,NULL,41,NULL,NULL,NULL,'Nome Contato Principal',NULL,NULL,'Nome Contato Principal',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(2,NULL,NULL,NULL,33,NULL,NULL,NULL,'Telefone','*##(##)#####-####',NULL,'Telefone',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(3,NULL,NULL,NULL,33,NULL,NULL,NULL,'Telefone Principal','*##(##)#####-####',NULL,'Telefone Principal',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(4,NULL,NULL,NULL,45,NULL,NULL,NULL,'Site',NULL,NULL,'Site Atual',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '','^((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+[A-Za-z]{2,6}$',99999,0,NULL),(5,NULL,NULL,NULL,37,NULL,NULL,NULL,'Porte da Empresa',NULL,NULL,'Porte da Empresa','Porte',NULL,'TipoDadoCRM',0,'ProspectoEmpresa','Porte',_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(6,NULL,NULL,NULL,41,NULL,NULL,NULL,'Outros',NULL,NULL,'Outros',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(7,NULL,NULL,NULL,41,NULL,NULL,NULL,'Indicação',NULL,NULL,'Indicação',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(8,NULL,NULL,NULL,41,NULL,NULL,NULL,'Responsável',NULL,NULL,'Responsável',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(9,NULL,NULL,NULL,41,NULL,NULL,NULL,'Motivo Prospect',NULL,NULL,'Motivo Prospect',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(10,NULL,NULL,NULL,45,NULL,NULL,NULL,'Site',NULL,NULL,'Site concorrente 1',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '','^((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+[A-Za-z]{2,6}$',99999,0,NULL),(11,NULL,NULL,NULL,45,NULL,NULL,NULL,'Site',NULL,NULL,'Site concorrente 2',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '','^((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+[A-Za-z]{2,6}$',99999,0,NULL),(12,NULL,NULL,NULL,45,NULL,NULL,NULL,'Site',NULL,NULL,'Site concorrente 3',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '','^((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+[A-Za-z]{2,6}$',99999,0,NULL),(13,NULL,NULL,NULL,42,NULL,NULL,NULL,'é mobile?',NULL,NULL,'é mobile?',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(14,NULL,NULL,NULL,42,NULL,NULL,NULL,'é Otimizado?',NULL,NULL,'é Otimizado?',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(15,NULL,NULL,NULL,42,NULL,NULL,NULL,'Tem perfil e-comerce?',NULL,NULL,'Tem perfil e-comerce?',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(16,NULL,NULL,NULL,42,NULL,NULL,NULL,'Já inverstil em Marketing Digital?',NULL,NULL,'Já inverstil em Marketing Digital?',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(17,NULL,NULL,NULL,34,NULL,NULL,NULL,'Gastro anual com Publicidade',NULL,NULL,'Gastro anual com Publicidade',NULL,NULL,'TipoDadoCRM',2,'ProspectoEmpresa',NULL,_binary '\0',',','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(18,NULL,NULL,NULL,42,NULL,NULL,NULL,'Produto exclusivo ou personalizado?',NULL,NULL,'Produto exclusivo ou personalizado?',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(19,NULL,NULL,NULL,42,NULL,NULL,NULL,'Desejo do cliente?',NULL,NULL,'Desejo do cliente?',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(20,NULL,NULL,NULL,49,NULL,NULL,NULL,'CNPJ','##.###.###/####-##',NULL,'CNPJ',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,18,0,NULL),(21,NULL,NULL,NULL,61,NULL,NULL,NULL,'Arquivo',NULL,NULL,'Arquivo',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL),(22,NULL,NULL,NULL,41,NULL,NULL,NULL,'Ramo de atuação',NULL,NULL,'Ramo de atuação',NULL,NULL,'TipoDadoCRM',0,'ProspectoEmpresa',NULL,_binary '\0','\0','.',_binary '\0',NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',NULL,99999,0,NULL);
/*!40000 ALTER TABLE `TipoDadoCRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoDadoCRM_listaOpcoesTemplate`
--

DROP TABLE IF EXISTS `TipoDadoCRM_listaOpcoesTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoDadoCRM_listaOpcoesTemplate` (
  `TipoDadoCRM_id` int(11) NOT NULL,
  `listaOpcoesTemplate` varchar(255) DEFAULT NULL,
  `listaOpcoesTemplate_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`TipoDadoCRM_id`,`listaOpcoesTemplate_KEY`),
  CONSTRAINT `FKp3o2eb786n737dxrlvtjcm4f5` FOREIGN KEY (`TipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoDadoCRM_listaOpcoesTemplate`
--

LOCK TABLES `TipoDadoCRM_listaOpcoesTemplate` WRITE;
/*!40000 ALTER TABLE `TipoDadoCRM_listaOpcoesTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoDadoCRM_listaOpcoesTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoEmpresa`
--

DROP TABLE IF EXISTS `TipoEmpresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoEmpresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoEmpresa`
--

LOCK TABLES `TipoEmpresa` WRITE;
/*!40000 ALTER TABLE `TipoEmpresa` DISABLE KEYS */;
INSERT INTO `TipoEmpresa` VALUES (1,'Ramo de industrias','Industria'),(2,'Prestador de serviços','Serviços'),(3,'Lojistas','Comercio');
/*!40000 ALTER TABLE `TipoEmpresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoEstrategiaResponsavelRelacionamento`
--

DROP TABLE IF EXISTS `TipoEstrategiaResponsavelRelacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoEstrategiaResponsavelRelacionamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataHoraCriou` datetime(6) DEFAULT NULL,
  `dataHoraEditou` datetime(6) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `regexResultadoEsperado` varchar(255) DEFAULT NULL,
  `tipoEstrategia` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `usuarioCriou_id` int(11) DEFAULT NULL,
  `usuarioEditou_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeb9ad2jvb98u5kgl385406jiv` (`usuarioCriou_id`),
  KEY `FKksyw2m2w3u096e62ss5mptknr` (`usuarioEditou_id`),
  CONSTRAINT `FKeb9ad2jvb98u5kgl385406jiv` FOREIGN KEY (`usuarioCriou_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKksyw2m2w3u096e62ss5mptknr` FOREIGN KEY (`usuarioEditou_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoEstrategiaResponsavelRelacionamento`
--

LOCK TABLES `TipoEstrategiaResponsavelRelacionamento` WRITE;
/*!40000 ALTER TABLE `TipoEstrategiaResponsavelRelacionamento` DISABLE KEYS */;
INSERT INTO `TipoEstrategiaResponsavelRelacionamento` VALUES (1,NULL,NULL,NULL,'RODIZIO',NULL,'RODIZIO',NULL,NULL,NULL),(2,NULL,NULL,NULL,'TODOS',NULL,'TODOS',NULL,NULL,NULL),(3,NULL,NULL,NULL,'AGENDA_MAIS_LIVRE',NULL,'AGENDA_MAIS_LIVRE',NULL,NULL,NULL),(4,NULL,NULL,NULL,'ORIGEM_E_RESPONSAVEL',NULL,'ORIGEM_E_RESPONSAVEL',NULL,NULL,NULL),(5,NULL,NULL,NULL,'API_WEB_SERVICE_PERSONALIZADO',NULL,'API_WEB_SERVICE_PERSONALIZADO',NULL,NULL,NULL);
/*!40000 ALTER TABLE `TipoEstrategiaResponsavelRelacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoIp`
--

DROP TABLE IF EXISTS `TipoIp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoIp` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoIp`
--

LOCK TABLES `TipoIp` WRITE;
/*!40000 ALTER TABLE `TipoIp` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoIp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoRelacionamento`
--

DROP TABLE IF EXISTS `TipoRelacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoRelacionamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adicionarTodosResponsaveis` bit(1) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `descricao` varchar(2000) DEFAULT NULL,
  `dicas` varchar(2000) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nomeDoRelacionado` varchar(255) DEFAULT NULL,
  `peso` int(11) NOT NULL,
  `responsabilidadeexclusiva` bit(1) NOT NULL,
  `tempoAcaoInerciaRelacionamento` int(11) NOT NULL,
  `tempoAceitavelResolucao` int(11) NOT NULL,
  `totalAtividades` bigint(20) DEFAULT NULL,
  `metaRelacionamento_id` int(11) DEFAULT NULL,
  `relacionamentoPeranteInercia_id` int(11) DEFAULT NULL,
  `resultado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9aua6vv6yjuri3rm2si3f59bw` (`metaRelacionamento_id`),
  KEY `FK90qgwkhhom2uqsuyl77l0667w` (`relacionamentoPeranteInercia_id`),
  KEY `FKf2ehjsqd8lngylyxmm7jm0e0o` (`resultado_id`),
  CONSTRAINT `FK90qgwkhhom2uqsuyl77l0667w` FOREIGN KEY (`relacionamentoPeranteInercia_id`) REFERENCES `TipoRelacionamento` (`id`),
  CONSTRAINT `FK9aua6vv6yjuri3rm2si3f59bw` FOREIGN KEY (`metaRelacionamento_id`) REFERENCES `MetaRelacionamento` (`id`),
  CONSTRAINT `FKf2ehjsqd8lngylyxmm7jm0e0o` FOREIGN KEY (`resultado_id`) REFERENCES `ResultadoTipoRelacionamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoRelacionamento`
--

LOCK TABLES `TipoRelacionamento` WRITE;
/*!40000 ALTER TABLE `TipoRelacionamento` DISABLE KEYS */;
INSERT INTO `TipoRelacionamento` VALUES (1,_binary '\0','#C34A2C','Esta empresa não é indicável como possível cliente','','Não Indicado','Desprospectado',-1,_binary '\0',0,0,NULL,1,NULL,2),(2,_binary '\0',NULL,'Ouve a coleta dos dados iniciais','','Cadastrado','Coletado',0,_binary '\0',0,0,NULL,1,NULL,3),(3,_binary '\0',NULL,'','Um cadastro no estagio de prospecto deve ser pré-analizado, só assim poderemos partir para uma conversa sabendo quem é o cliente','Qualificado','Qualificado',2,_binary '\0',0,0,NULL,1,NULL,3),(4,_binary '\0',NULL,'','','Pre-Analize Entregue','Contato Estabelecido',4,_binary '\0',0,0,NULL,1,NULL,3),(5,_binary '\0',NULL,'','','Brifing Coletado','Brifing Coletado',6,_binary '\0',0,0,NULL,1,NULL,3),(6,_binary '\0',NULL,'','','Proposta Entregue','Prospecto em negociação',9,_binary '\0',0,0,NULL,2,NULL,3),(7,_binary '\0',NULL,'','','Negociação em andamento','Negociação em andamento',9,_binary '\0',0,0,NULL,2,NULL,3),(8,_binary '\0','#9CB071','','','Contrato Ativo','Cliente ',10,_binary '\0',0,0,NULL,3,NULL,1),(9,_binary '\0','#C34A2C','','','Inativo','Ex Cliente',-3,_binary '\0',0,0,NULL,1,NULL,2),(10,_binary '\0','#C34A2C','','','Negociação perdida','Quase Fechou',-2,_binary '\0',0,0,NULL,1,NULL,2);
/*!40000 ALTER TABLE `TipoRelacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoRelacionamento_TipoAtividadeCRM`
--

DROP TABLE IF EXISTS `TipoRelacionamento_TipoAtividadeCRM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoRelacionamento_TipoAtividadeCRM` (
  `TipoRelacionamento_id` int(11) NOT NULL,
  `tiposAtividadeDisponiveis_id` int(11) NOT NULL,
  KEY `FKqj6rjso4im824wbfhau57n7kl` (`tiposAtividadeDisponiveis_id`),
  KEY `FKafyqjeknq0c9r5fli3aumy2tf` (`TipoRelacionamento_id`),
  CONSTRAINT `FKafyqjeknq0c9r5fli3aumy2tf` FOREIGN KEY (`TipoRelacionamento_id`) REFERENCES `TipoRelacionamento` (`id`),
  CONSTRAINT `FKqj6rjso4im824wbfhau57n7kl` FOREIGN KEY (`tiposAtividadeDisponiveis_id`) REFERENCES `TipoAtividadeCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoRelacionamento_TipoAtividadeCRM`
--

LOCK TABLES `TipoRelacionamento_TipoAtividadeCRM` WRITE;
/*!40000 ALTER TABLE `TipoRelacionamento_TipoAtividadeCRM` DISABLE KEYS */;
INSERT INTO `TipoRelacionamento_TipoAtividadeCRM` VALUES (2,18),(2,19),(3,4),(3,5),(3,2),(3,1),(3,3),(4,6),(4,2),(4,1),(4,3),(5,7),(5,17),(5,2),(5,1),(5,3),(6,9),(6,2),(6,1),(6,3),(7,9),(7,14),(7,20),(7,2),(7,1),(7,3),(8,19),(8,13),(8,8),(8,2),(8,1),(8,3),(9,14);
/*!40000 ALTER TABLE `TipoRelacionamento_TipoAtividadeCRM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoServico`
--

DROP TABLE IF EXISTS `TipoServico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoServico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivoApresentacao` varchar(255) DEFAULT NULL,
  `descricao` text,
  `descricaoApresentacao` text,
  `nome` varchar(255) DEFAULT NULL,
  `urlDetalhes` varchar(255) DEFAULT NULL,
  `valorMensalMax` double NOT NULL,
  `valorMensalMin` double NOT NULL,
  `valorSetupMax` double NOT NULL,
  `valorSetupMin` double NOT NULL,
  `tipoServico_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKern5vj8fll5c0q0ef06hgpblb` (`tipoServico_id`),
  CONSTRAINT `FKern5vj8fll5c0q0ef06hgpblb` FOREIGN KEY (`tipoServico_id`) REFERENCES `ModeloDocumentoCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoServico`
--

LOCK TABLES `TipoServico` WRITE;
/*!40000 ALTER TABLE `TipoServico` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoServico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnidadeFederativa`
--

DROP TABLE IF EXISTS `UnidadeFederativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnidadeFederativa` (
  `id` int(11) NOT NULL,
  `UF` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnidadeFederativa`
--

LOCK TABLES `UnidadeFederativa` WRITE;
/*!40000 ALTER TABLE `UnidadeFederativa` DISABLE KEYS */;
/*!40000 ALTER TABLE `UnidadeFederativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioCRM_TagsAtendimento`
--

DROP TABLE IF EXISTS `UsuarioCRM_TagsAtendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsuarioCRM_TagsAtendimento` (
  `usuarioCRM_id` int(11) NOT NULL,
  `tagAtendimento_id` int(11) NOT NULL,
  KEY `FKrxj6sguqpqvnxlak3yyl60ahe` (`tagAtendimento_id`),
  KEY `FKeeev8k17dfdnrfnlr1ql851ws` (`usuarioCRM_id`),
  CONSTRAINT `FKeeev8k17dfdnrfnlr1ql851ws` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKrxj6sguqpqvnxlak3yyl60ahe` FOREIGN KEY (`tagAtendimento_id`) REFERENCES `TagAtendimento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioCRM_TagsAtendimento`
--

LOCK TABLES `UsuarioCRM_TagsAtendimento` WRITE;
/*!40000 ALTER TABLE `UsuarioCRM_TagsAtendimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsuarioCRM_TagsAtendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioRocketChat`
--

DROP TABLE IF EXISTS `UsuarioRocketChat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsuarioRocketChat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoRC` varchar(255) NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `usuarioSupervisor_id` int(11) DEFAULT NULL,
  `usuarioVinculado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6c1564njtrdr7kpavyry0obsx` (`usuarioSupervisor_id`),
  KEY `FKs1xavreyqndiwoi1e9t43cm1x` (`usuarioVinculado_id`),
  CONSTRAINT `FK6c1564njtrdr7kpavyry0obsx` FOREIGN KEY (`usuarioSupervisor_id`) REFERENCES `UsuarioRocketChat` (`id`),
  CONSTRAINT `FKs1xavreyqndiwoi1e9t43cm1x` FOREIGN KEY (`usuarioVinculado_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioRocketChat`
--

LOCK TABLES `UsuarioRocketChat` WRITE;
/*!40000 ALTER TABLE `UsuarioRocketChat` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsuarioRocketChat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioSB`
--

DROP TABLE IF EXISTS `UsuarioSB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsuarioSB` (
  `tipoUsuario` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apelido` varchar(255) DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `dataHoraAlteracao` datetime(6) DEFAULT NULL,
  `dataHoraInsersao` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(256) DEFAULT NULL,
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
  `usuarioInsercao_id` int(11) DEFAULT NULL,
  `areatrabalhoPadrao_id` int(11) DEFAULT NULL,
  `usuarioRC_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_d8hre5rs465kuoya4b9epuot7` (`apelido`),
  UNIQUE KEY `UK_m1rxw56li2lkr3guust77ltso` (`email`),
  KEY `FKpu9xpcabqjpw3jjdb6mu4w3a9` (`grupo_id`),
  KEY `FKddt81m657meu8v89qakv0792x` (`localizacao_id`),
  KEY `FKa0hk7be13ip4xg104xlxghvba` (`usuarioAlteracao_id`),
  KEY `FKg5805u50psplpao25esj3i4om` (`usuarioInsercao_id`),
  KEY `FK9sknlqobbk7j0j5omat4552q2` (`areatrabalhoPadrao_id`),
  KEY `FK9inwrnx517yk6xif25a3usela` (`usuarioRC_id`),
  CONSTRAINT `FK9inwrnx517yk6xif25a3usela` FOREIGN KEY (`usuarioRC_id`) REFERENCES `UsuarioRocketChat` (`id`),
  CONSTRAINT `FK9sknlqobbk7j0j5omat4552q2` FOREIGN KEY (`areatrabalhoPadrao_id`) REFERENCES `AreaTrabalho` (`id`),
  CONSTRAINT `FKa0hk7be13ip4xg104xlxghvba` FOREIGN KEY (`usuarioAlteracao_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKddt81m657meu8v89qakv0792x` FOREIGN KEY (`localizacao_id`) REFERENCES `Localizacao` (`id`),
  CONSTRAINT `FKg5805u50psplpao25esj3i4om` FOREIGN KEY (`usuarioInsercao_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKpu9xpcabqjpw3jjdb6mu4w3a9` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioSB`
--

LOCK TABLES `UsuarioSB` WRITE;
/*!40000 ALTER TABLE `UsuarioSB` DISABLE KEYS */;
INSERT INTO `UsuarioSB` VALUES ('UsuarioCRM',1,NULL,_binary '',NULL,'2019-12-27',NULL,'2019-12-27 16:20:29.905000','salviof@gmail.com','Sálvio Furbino','123',NULL,NULL,NULL,_binary '\0',0,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,2,NULL,NULL,NULL,NULL,NULL),('UsuarioCRM',2,NULL,_binary '',NULL,'2019-12-27',NULL,'2019-12-27 16:20:29.946000','atendimento@casanovadigital.com.br','Naidoca','123',NULL,NULL,NULL,_binary '\0',0,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,1,NULL,NULL,NULL,NULL,NULL),('UsuarioCRM',3,NULL,_binary '',NULL,'2019-12-27',NULL,'2019-12-27 16:20:29.973000','convidado@casanovadigital.com.br','Convidado','1116649323',NULL,NULL,NULL,_binary '\0',0,NULL,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `UsuarioSB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agenda_tipoAtividades`
--

DROP TABLE IF EXISTS `agenda_tipoAtividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda_tipoAtividades` (
  `horario_id` int(11) NOT NULL,
  `tipoAtividade_id` int(11) NOT NULL,
  KEY `FK4p141ey28gae4j6i3y09mrno2` (`tipoAtividade_id`),
  KEY `FKbylunt6wqie1iqjn9t3yufblt` (`horario_id`),
  CONSTRAINT `FK4p141ey28gae4j6i3y09mrno2` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  CONSTRAINT `FKbylunt6wqie1iqjn9t3yufblt` FOREIGN KEY (`horario_id`) REFERENCES `AgendaDisponivel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda_tipoAtividades`
--

LOCK TABLES `agenda_tipoAtividades` WRITE;
/*!40000 ALTER TABLE `agenda_tipoAtividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda_tipoAtividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividadePrincipal_UsuarioCrm`
--

DROP TABLE IF EXISTS `atividadePrincipal_UsuarioCrm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atividadePrincipal_UsuarioCrm` (
  `acesso_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  KEY `FKn6ojweag0vpt1sb8eml2i2qt2` (`usuario_id`),
  KEY `FKh0c1d2xi43h7rfwof5wcgd4uv` (`acesso_id`),
  CONSTRAINT `FKh0c1d2xi43h7rfwof5wcgd4uv` FOREIGN KEY (`acesso_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKn6ojweag0vpt1sb8eml2i2qt2` FOREIGN KEY (`usuario_id`) REFERENCES `TipoAtividadeCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividadePrincipal_UsuarioCrm`
--

LOCK TABLES `atividadePrincipal_UsuarioCrm` WRITE;
/*!40000 ALTER TABLE `atividadePrincipal_UsuarioCrm` DISABLE KEYS */;
/*!40000 ALTER TABLE `atividadePrincipal_UsuarioCrm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dadosDinamicosDoModelo`
--

DROP TABLE IF EXISTS `dadosDinamicosDoModelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dadosDinamicosDoModelo` (
  `modeloDoc_id` int(11) NOT NULL,
  `tipoDado_id` int(11) NOT NULL,
  KEY `FK520v0kx7nluypsvt1pen2tbo3` (`tipoDado_id`),
  KEY `FK4jjbuoq3uy8f6okgailvc5i3k` (`modeloDoc_id`),
  CONSTRAINT `FK4jjbuoq3uy8f6okgailvc5i3k` FOREIGN KEY (`modeloDoc_id`) REFERENCES `ModeloDocumentoCRM` (`id`),
  CONSTRAINT `FK520v0kx7nluypsvt1pen2tbo3` FOREIGN KEY (`tipoDado_id`) REFERENCES `TipoDadoCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dadosDinamicosDoModelo`
--

LOCK TABLES `dadosDinamicosDoModelo` WRITE;
/*!40000 ALTER TABLE `dadosDinamicosDoModelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dadosDinamicosDoModelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dadosObrigatorios_tipoRelacionamento`
--

DROP TABLE IF EXISTS `dadosObrigatorios_tipoRelacionamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dadosObrigatorios_tipoRelacionamento` (
  `tipoRelacionamento_id` int(11) NOT NULL,
  `tipoDadoCRM_id` int(11) NOT NULL,
  KEY `FK871wmf19edcgwqp8yfitl97v5` (`tipoDadoCRM_id`),
  KEY `FK92greadhkv0agdynqqs3dk6mv` (`tipoRelacionamento_id`),
  CONSTRAINT `FK871wmf19edcgwqp8yfitl97v5` FOREIGN KEY (`tipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`),
  CONSTRAINT `FK92greadhkv0agdynqqs3dk6mv` FOREIGN KEY (`tipoRelacionamento_id`) REFERENCES `TipoRelacionamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dadosObrigatorios_tipoRelacionamento`
--

LOCK TABLES `dadosObrigatorios_tipoRelacionamento` WRITE;
/*!40000 ALTER TABLE `dadosObrigatorios_tipoRelacionamento` DISABLE KEYS */;
INSERT INTO `dadosObrigatorios_tipoRelacionamento` VALUES (2,1),(2,2),(2,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,5),(4,8),(5,10),(5,11),(5,12),(5,13),(7,14),(8,15);
/*!40000 ALTER TABLE `dadosObrigatorios_tipoRelacionamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envioDocumento_contatos`
--

DROP TABLE IF EXISTS `envioDocumento_contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envioDocumento_contatos` (
  `envioDocumento_id` int(11) NOT NULL,
  `contatos_id` int(11) NOT NULL,
  KEY `FKmkwdios85c2gwhngy3way8put` (`contatos_id`),
  KEY `FKgacyu0svprp4rnx9oyug20v` (`envioDocumento_id`),
  CONSTRAINT `FKgacyu0svprp4rnx9oyug20v` FOREIGN KEY (`envioDocumento_id`) REFERENCES `EmailCrm` (`id`),
  CONSTRAINT `FKmkwdios85c2gwhngy3way8put` FOREIGN KEY (`contatos_id`) REFERENCES `ContatoProspecto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envioDocumento_contatos`
--

LOCK TABLES `envioDocumento_contatos` WRITE;
/*!40000 ALTER TABLE `envioDocumento_contatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `envioDocumento_contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envioEmail_arquivoAnexado`
--

DROP TABLE IF EXISTS `envioEmail_arquivoAnexado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envioEmail_arquivoAnexado` (
  `envioEmail_id` int(11) NOT NULL,
  `arquivoAnexado_id` int(11) NOT NULL,
  KEY `FK1fy6i0emvrtimcrt8j1pt4nl` (`arquivoAnexado_id`),
  KEY `FKlkp8kvgxqu1u6ebvyv9evqoau` (`envioEmail_id`),
  CONSTRAINT `FK1fy6i0emvrtimcrt8j1pt4nl` FOREIGN KEY (`arquivoAnexado_id`) REFERENCES `ArquivoAnexado` (`id`),
  CONSTRAINT `FKlkp8kvgxqu1u6ebvyv9evqoau` FOREIGN KEY (`envioEmail_id`) REFERENCES `EmailCrm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envioEmail_arquivoAnexado`
--

LOCK TABLES `envioEmail_arquivoAnexado` WRITE;
/*!40000 ALTER TABLE `envioEmail_arquivoAnexado` DISABLE KEYS */;
/*!40000 ALTER TABLE `envioEmail_arquivoAnexado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (21),(21),(21),(21),(21),(21),(21),(21),(21),(21);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_tipoAtividades`
--

DROP TABLE IF EXISTS `horario_tipoAtividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario_tipoAtividades` (
  `horario_id` int(11) NOT NULL,
  `tipoAtividade_id` int(11) NOT NULL,
  KEY `FKki2qsai46l8fkh8ad2esrh6ro` (`tipoAtividade_id`),
  KEY `FKskplf63m7o3rcwgn4vmgys6mc` (`horario_id`),
  CONSTRAINT `FKki2qsai46l8fkh8ad2esrh6ro` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `HorarioDisponivelAgenda` (`id`),
  CONSTRAINT `FKskplf63m7o3rcwgn4vmgys6mc` FOREIGN KEY (`horario_id`) REFERENCES `AgendaDisponivel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_tipoAtividades`
--

LOCK TABLES `horario_tipoAtividades` WRITE;
/*!40000 ALTER TABLE `horario_tipoAtividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario_tipoAtividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos_grupo`
--

DROP TABLE IF EXISTS `modulos_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos_grupo` (
  `grupo_id` int(11) NOT NULL,
  `modulo_id` int(11) NOT NULL,
  UNIQUE KEY `UKngph303pxo2b2mrtpfkoacmwq` (`grupo_id`,`modulo_id`),
  KEY `FK1616eg4vq1ubds5aof20ci82b` (`modulo_id`),
  CONSTRAINT `FK1616eg4vq1ubds5aof20ci82b` FOREIGN KEY (`modulo_id`) REFERENCES `ModuloAcaoSistema` (`id`),
  CONSTRAINT `FKf5g7yb014obr43smkvslw1hmu` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos_grupo`
--

LOCK TABLES `modulos_grupo` WRITE;
/*!40000 ALTER TABLE `modulos_grupo` DISABLE KEYS */;
INSERT INTO `modulos_grupo` VALUES (2,-2109946963),(1,1374834286);
/*!40000 ALTER TABLE `modulos_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospectos_usuarios_responsaveis`
--

DROP TABLE IF EXISTS `prospectos_usuarios_responsaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospectos_usuarios_responsaveis` (
  `prospecto_id` int(11) NOT NULL,
  `usuarioCRM_id` int(11) NOT NULL,
  KEY `FK4luhhg333vxa9seqr820ic6fq` (`usuarioCRM_id`),
  KEY `FKa5k80esbqvtgrolg366xs2fyl` (`prospecto_id`),
  CONSTRAINT `FK4luhhg333vxa9seqr820ic6fq` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKa5k80esbqvtgrolg366xs2fyl` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospectos_usuarios_responsaveis`
--

LOCK TABLES `prospectos_usuarios_responsaveis` WRITE;
/*!40000 ALTER TABLE `prospectos_usuarios_responsaveis` DISABLE KEYS */;
INSERT INTO `prospectos_usuarios_responsaveis` VALUES (2,2),(3,2);
/*!40000 ALTER TABLE `prospectos_usuarios_responsaveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiao_cidades`
--

DROP TABLE IF EXISTS `regiao_cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regiao_cidades` (
  `regiao_id` int(11) NOT NULL,
  `cidade_id` int(11) NOT NULL,
  KEY `FKl4njys9fksqduv028a4j3mera` (`cidade_id`),
  KEY `FKgcjw6nyiocwydbhjayj1q0qe2` (`regiao_id`),
  CONSTRAINT `FKgcjw6nyiocwydbhjayj1q0qe2` FOREIGN KEY (`regiao_id`) REFERENCES `Regiao` (`id`),
  CONSTRAINT `FKl4njys9fksqduv028a4j3mera` FOREIGN KEY (`cidade_id`) REFERENCES `Cidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiao_cidades`
--

LOCK TABLES `regiao_cidades` WRITE;
/*!40000 ALTER TABLE `regiao_cidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `regiao_cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relacionamento_usuarios_responsaveis`
--

DROP TABLE IF EXISTS `relacionamento_usuarios_responsaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relacionamento_usuarios_responsaveis` (
  `relacionamento_id` int(11) NOT NULL,
  `usuarioCRM_id` int(11) NOT NULL,
  KEY `FKhl4rls5qnncp1x8r4c27ng40x` (`usuarioCRM_id`),
  KEY `FKim1wkxuh4y3uk8nr8sq33ept3` (`relacionamento_id`),
  CONSTRAINT `FKhl4rls5qnncp1x8r4c27ng40x` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKim1wkxuh4y3uk8nr8sq33ept3` FOREIGN KEY (`relacionamento_id`) REFERENCES `TipoRelacionamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacionamento_usuarios_responsaveis`
--

LOCK TABLES `relacionamento_usuarios_responsaveis` WRITE;
/*!40000 ALTER TABLE `relacionamento_usuarios_responsaveis` DISABLE KEYS */;
/*!40000 ALTER TABLE `relacionamento_usuarios_responsaveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagAtendimento_prospecto`
--

DROP TABLE IF EXISTS `tagAtendimento_prospecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagAtendimento_prospecto` (
  `prospecto_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `FKfmhpehm05s9f5jyujmly6gmpb` (`tag_id`),
  KEY `FKkvfiajn0esgss48b7tut9nn0g` (`prospecto_id`),
  CONSTRAINT `FKfmhpehm05s9f5jyujmly6gmpb` FOREIGN KEY (`tag_id`) REFERENCES `TagAtendimento` (`id`),
  CONSTRAINT `FKkvfiajn0esgss48b7tut9nn0g` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagAtendimento_prospecto`
--

LOCK TABLES `tagAtendimento_prospecto` WRITE;
/*!40000 ALTER TABLE `tagAtendimento_prospecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagAtendimento_prospecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagAtendimento_tipoAtividade_adicionar`
--

DROP TABLE IF EXISTS `tagAtendimento_tipoAtividade_adicionar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagAtendimento_tipoAtividade_adicionar` (
  `tipoAtividade_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `FK7w8asifh0o7406v1qfb3xn0c1` (`tag_id`),
  KEY `FKexlp4dyp888g1ew7bfw17t3st` (`tipoAtividade_id`),
  CONSTRAINT `FK7w8asifh0o7406v1qfb3xn0c1` FOREIGN KEY (`tag_id`) REFERENCES `TagAtendimento` (`id`),
  CONSTRAINT `FKexlp4dyp888g1ew7bfw17t3st` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagAtendimento_tipoAtividade_adicionar`
--

LOCK TABLES `tagAtendimento_tipoAtividade_adicionar` WRITE;
/*!40000 ALTER TABLE `tagAtendimento_tipoAtividade_adicionar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagAtendimento_tipoAtividade_adicionar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagAtendimento_tipoAtividade_remover`
--

DROP TABLE IF EXISTS `tagAtendimento_tipoAtividade_remover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagAtendimento_tipoAtividade_remover` (
  `tipoAtividade_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `FKdl3rm0p5gmbki66mtl2cl9ig1` (`tag_id`),
  KEY `FK44e5m1ngxytfiwxig7gug4x4v` (`tipoAtividade_id`),
  CONSTRAINT `FK44e5m1ngxytfiwxig7gug4x4v` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  CONSTRAINT `FKdl3rm0p5gmbki66mtl2cl9ig1` FOREIGN KEY (`tag_id`) REFERENCES `TagAtendimento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagAtendimento_tipoAtividade_remover`
--

LOCK TABLES `tagAtendimento_tipoAtividade_remover` WRITE;
/*!40000 ALTER TABLE `tagAtendimento_tipoAtividade_remover` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagAtendimento_tipoAtividade_remover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoAtividade_autorizados`
--

DROP TABLE IF EXISTS `tipoAtividade_autorizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoAtividade_autorizados` (
  `tipoAtividade_id` int(11) NOT NULL,
  `usuarioCRM_id` int(11) NOT NULL,
  KEY `FKaedrysp0niebhccvm15bfp694` (`usuarioCRM_id`),
  KEY `FK6bhhtqhxewo3xl11mdc9lgvji` (`tipoAtividade_id`),
  CONSTRAINT `FK6bhhtqhxewo3xl11mdc9lgvji` FOREIGN KEY (`tipoAtividade_id`) REFERENCES `TipoAtividadeCRM` (`id`),
  CONSTRAINT `FKaedrysp0niebhccvm15bfp694` FOREIGN KEY (`usuarioCRM_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoAtividade_autorizados`
--

LOCK TABLES `tipoAtividade_autorizados` WRITE;
/*!40000 ALTER TABLE `tipoAtividade_autorizados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoAtividade_autorizados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoSevico_documentoApresentacao`
--

DROP TABLE IF EXISTS `tipoSevico_documentoApresentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoSevico_documentoApresentacao` (
  `tipoServico_id` int(11) NOT NULL,
  `documentoApresentacao_id` int(11) NOT NULL,
  KEY `FKg6jxg8wv17wnds8h1k0bhn3vg` (`documentoApresentacao_id`),
  KEY `FKl5e8k425oa5bfup5dbsj6qe44` (`tipoServico_id`),
  CONSTRAINT `FKg6jxg8wv17wnds8h1k0bhn3vg` FOREIGN KEY (`documentoApresentacao_id`) REFERENCES `ArquivoAnexado` (`id`),
  CONSTRAINT `FKl5e8k425oa5bfup5dbsj6qe44` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoSevico_documentoApresentacao`
--

LOCK TABLES `tipoSevico_documentoApresentacao` WRITE;
/*!40000 ALTER TABLE `tipoSevico_documentoApresentacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoSevico_documentoApresentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_grupo`
--

DROP TABLE IF EXISTS `usuario_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_grupo` (
  `grupo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  UNIQUE KEY `usuarioDuplicado` (`usuario_id`,`grupo_id`),
  KEY `FKeq1sxhjeq2ml8suqspdgh1esk` (`grupo_id`),
  CONSTRAINT `FKeq1sxhjeq2ml8suqspdgh1esk` FOREIGN KEY (`grupo_id`) REFERENCES `GrupoUsuarioSB` (`id`),
  CONSTRAINT `FKr399r2larmugqgxwl0rbtywfi` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_grupo`
--

LOCK TABLES `usuario_grupo` WRITE;
/*!40000 ALTER TABLE `usuario_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_grupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-27 15:20:33
