SQL_UP = u"""
DROP TABLE `atividadePrincipal_UsuarioCrm`;
DROP TABLE `EnvioEmailRascunhoAutoSave`;
ALTER TABLE `UsuarioSB` CHANGE `grupo_id` `grupo_id` int(11) DEFAULT NULL;
ALTER TABLE `UsuarioSB` DROP `dataHoraLembrarMaisTardeAtividadesInacabadas`;
ALTER TABLE `EnvioEmail` DROP CONSTRAINT `FKpvv25gb360hb6dj3neeh4myj1`;
ALTER TABLE `tipoSevico_documentoApresentacao` DROP CONSTRAINT `FKl5e8k425oa5bfup5dbsj6qe44`;
ALTER TABLE `tipoSevico_documentoApresentacao` DROP CONSTRAINT `FKg6jxg8wv17wnds8h1k0bhn3vg`;
ALTER TABLE `envioEmail_arquivoAnexado` DROP CONSTRAINT `FKsjwgpcng1ix77hic53owvsmi7`;
ALTER TABLE `envioEmail_arquivoAnexado` DROP CONSTRAINT `FK1fy6i0emvrtimcrt8j1pt4nl`;
ALTER TABLE `ServicoOferecido` DROP CONSTRAINT `FK91iy7hku5mc0n42e6b1r88vi1`;
ALTER TABLE `ServicoOferecido` DROP CONSTRAINT `FK10990ntj034fami5iatk7e2hp`;
ALTER TABLE `EnvioEmail` DROP CONSTRAINT `FKs3fp28u6mrv9xtjnv4nnxn3yf`;
ALTER TABLE `CodigoConvite` DROP CONSTRAINT `FK2xrw2lbcfbaf6uslwk32p75u3`;
ALTER TABLE `CodigoConvite` DROP CONSTRAINT `FKal2ednxa7f7pvopwv04xn5g8u`;
ALTER TABLE `EnvioEmail` DROP CONSTRAINT `FKexxfyuf4kr1j2dvd81jryuo87`;
ALTER TABLE `EnvioEmail` DROP CONSTRAINT `FK7jwv2ja7w2etj2jtwg55frmg4`;
ALTER TABLE `DadoNaoColetado_Atividade` DROP CONSTRAINT `FKikny5qw9kxvk02fr8rjkdu6ln`;
ALTER TABLE `DadoNaoColetado_Atividade` DROP CONSTRAINT `FKgl44rwhsmyjmg74rd04y0y8ou`;
ALTER TABLE `DadoNaoColetado_Atividade` DROP CONSTRAINT `FKa1uetknhogmpw9bpy0lmk24ed`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FKpdadk5re3ildla3go5rmdvfiv`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FKlb3c9ym0ikn03ypuer39kub10`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FK8jd8er0t1f11vpaik90jva61s`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FK7rwlhlx5hovjcempgp12r0dc8`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FK5v12jqoh0l77v3f7fvg2i8fpk`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FK1l2oe0ibgsdp6ntxtxa3ow40k`;
ALTER TABLE `EnvioEmail` DROP CONSTRAINT `FKfxdn0p6ekmxpikyarwe4gah8d`;
"""
SQL_DOWN = u"""
CREATE TABLE `atividadePrincipal_UsuarioCrm` (
  `acesso_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  KEY `FKn6ojweag0vpt1sb8eml2i2qt2` (`usuario_id`),
  KEY `FKh0c1d2xi43h7rfwof5wcgd4uv` (`acesso_id`),
  CONSTRAINT `FKh0c1d2xi43h7rfwof5wcgd4uv` FOREIGN KEY (`acesso_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKn6ojweag0vpt1sb8eml2i2qt2` FOREIGN KEY (`usuario_id`) REFERENCES `TipoAtividadeCRM` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `EnvioEmailRascunhoAutoSave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assunto` varchar(255) DEFAULT NULL,
  `dataHora` datetime(6) DEFAULT NULL,
  `texto` text,
  `emailVinculado_id` int(11) NOT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbaqx2nnbja9ilhcofjdf96062` (`emailVinculado_id`),
  KEY `FKbf1e0lg6npcoldpb8ujd7f4vu` (`prospecto_id`),
  KEY `FKhoyh4is658osiohhfg30uync5` (`usuario_id`),
  CONSTRAINT `FKbaqx2nnbja9ilhcofjdf96062` FOREIGN KEY (`emailVinculado_id`) REFERENCES `EnvioEmail` (`id`),
  CONSTRAINT `FKbf1e0lg6npcoldpb8ujd7f4vu` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKhoyh4is658osiohhfg30uync5` FOREIGN KEY (`usuario_id`) REFERENCES `UsuarioSB` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `UsuarioSB` CHANGE `grupo_id` `grupo_id` int(11) NOT NULL;
ALTER TABLE `UsuarioSB` ADD `dataHoraLembrarMaisTardeAtividadesInacabadas` datetime(6) DEFAULT NULL;
ALTER TABLE `EnvioEmail` ADD CONSTRAINT `FKpvv25gb360hb6dj3neeh4myj1` FOREIGN KEY (`statusEnvio_id`) REFERENCES `StatusEnvioEmail` (`id`);
ALTER TABLE `tipoSevico_documentoApresentacao` ADD CONSTRAINT `FKl5e8k425oa5bfup5dbsj6qe44` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`);
ALTER TABLE `tipoSevico_documentoApresentacao` ADD CONSTRAINT `FKg6jxg8wv17wnds8h1k0bhn3vg` FOREIGN KEY (`documentoApresentacao_id`) REFERENCES `ArquivoAnexado` (`id`);
ALTER TABLE `envioEmail_arquivoAnexado` ADD CONSTRAINT `FKsjwgpcng1ix77hic53owvsmi7` FOREIGN KEY (`envioEmail_id`) REFERENCES `EnvioEmail` (`id`);
ALTER TABLE `envioEmail_arquivoAnexado` ADD CONSTRAINT `FK1fy6i0emvrtimcrt8j1pt4nl` FOREIGN KEY (`arquivoAnexado_id`) REFERENCES `ArquivoAnexado` (`id`);
ALTER TABLE `ServicoOferecido` ADD CONSTRAINT `FK91iy7hku5mc0n42e6b1r88vi1` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`);
ALTER TABLE `ServicoOferecido` ADD CONSTRAINT `FK10990ntj034fami5iatk7e2hp` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`);
ALTER TABLE `EnvioEmail` ADD CONSTRAINT `FKs3fp28u6mrv9xtjnv4nnxn3yf` FOREIGN KEY (`modeloEmail_id`) REFERENCES `ModeloEmail` (`id`);
ALTER TABLE `CodigoConvite` ADD CONSTRAINT `FK2xrw2lbcfbaf6uslwk32p75u3` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`);
ALTER TABLE `CodigoConvite` ADD CONSTRAINT `FKal2ednxa7f7pvopwv04xn5g8u` FOREIGN KEY (`contato_id`) REFERENCES `ContatoProspecto` (`id`);
ALTER TABLE `EnvioEmail` ADD CONSTRAINT `FKexxfyuf4kr1j2dvd81jryuo87` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`);
ALTER TABLE `EnvioEmail` ADD CONSTRAINT `FK7jwv2ja7w2etj2jtwg55frmg4` FOREIGN KEY (`usuarioResponsavel_id`) REFERENCES `UsuarioSB` (`id`);
ALTER TABLE `DadoNaoColetado_Atividade` ADD CONSTRAINT `FKikny5qw9kxvk02fr8rjkdu6ln` FOREIGN KEY (`dadoCRM_id`) REFERENCES `AtividadeCRM` (`id`);
ALTER TABLE `DadoNaoColetado_Atividade` ADD CONSTRAINT `FKgl44rwhsmyjmg74rd04y0y8ou` FOREIGN KEY (`dado_id`) REFERENCES `DadoCRM` (`id`);
ALTER TABLE `DadoNaoColetado_Atividade` ADD CONSTRAINT `FKa1uetknhogmpw9bpy0lmk24ed` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FKpdadk5re3ildla3go5rmdvfiv` FOREIGN KEY (`tipoRelacionamentoVinculado_id`) REFERENCES `TipoRelacionamento` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FKlb3c9ym0ikn03ypuer39kub10` FOREIGN KEY (`usuarioCadastrou_id`) REFERENCES `UsuarioSB` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FK8jd8er0t1f11vpaik90jva61s` FOREIGN KEY (`atividadeCRM_id`) REFERENCES `AtividadeCRM` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FK7rwlhlx5hovjcempgp12r0dc8` FOREIGN KEY (`prospectoEmpresa_id`) REFERENCES `ProspectoEmpresa` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FK5v12jqoh0l77v3f7fvg2i8fpk` FOREIGN KEY (`usuarioEditou_id`) REFERENCES `UsuarioSB` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FK1l2oe0ibgsdp6ntxtxa3ow40k` FOREIGN KEY (`tipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`);
ALTER TABLE `EnvioEmail` ADD CONSTRAINT `FKfxdn0p6ekmxpikyarwe4gah8d` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`);
"""
