SQL_UP = u"""
CREATE TABLE `EnvioEmail` (
  `tipoEmail` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `datadisparo` datetime(6) DEFAULT NULL,
  `descricaoEnvio` varchar(255) DEFAULT NULL,
  `foiEnviado` bit(1) NOT NULL,
  `texto` text,
  `modeloEmail_id` int(11) DEFAULT NULL,
  `prospecto_id` int(11) DEFAULT NULL,
  `statusEnvio_id` int(11) DEFAULT NULL,
  `usuarioResponsavel_id` int(11) DEFAULT NULL,
  `atividade_id` int(11) DEFAULT NULL,
  `subAtividadeAgendadaAposLeituraEmail` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs3fp28u6mrv9xtjnv4nnxn3yf` (`modeloEmail_id`),
  KEY `FKexxfyuf4kr1j2dvd81jryuo87` (`prospecto_id`),
  KEY `FKpvv25gb360hb6dj3neeh4myj1` (`statusEnvio_id`),
  KEY `FK7jwv2ja7w2etj2jtwg55frmg4` (`usuarioResponsavel_id`),
  KEY `FKfxdn0p6ekmxpikyarwe4gah8d` (`atividade_id`),
  CONSTRAINT `FK7jwv2ja7w2etj2jtwg55frmg4` FOREIGN KEY (`usuarioResponsavel_id`) REFERENCES `UsuarioSB` (`id`),
  CONSTRAINT `FKexxfyuf4kr1j2dvd81jryuo87` FOREIGN KEY (`prospecto_id`) REFERENCES `ProspectoEmpresa` (`id`),
  CONSTRAINT `FKpvv25gb360hb6dj3neeh4myj1` FOREIGN KEY (`statusEnvio_id`) REFERENCES `StatusEnvioEmail` (`id`),
  CONSTRAINT `FKs3fp28u6mrv9xtjnv4nnxn3yf` FOREIGN KEY (`modeloEmail_id`) REFERENCES `ModeloEmail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `AtividadeCRM` ADD CONSTRAINT `FKr66xwgcb87pcdiyhbdf26jkbe` FOREIGN KEY (`emailVinculado_id`) REFERENCES `EnvioEmail` (`id`);
ALTER TABLE `envioDocumento_contatos` ADD CONSTRAINT `FKhqfstpvuys5ltyh94ta7prjqy` FOREIGN KEY (`envioDocumento_id`) REFERENCES `EnvioEmail` (`id`);
ALTER TABLE `envioEmail_arquivoAnexado` ADD CONSTRAINT `FKsjwgpcng1ix77hic53owvsmi7` FOREIGN KEY (`envioEmail_id`) REFERENCES `EnvioEmail` (`id`);
ALTER TABLE `AtividadeCRM` DROP CONSTRAINT `FKi03w2gawtnflt443600akhiss`;
ALTER TABLE `CodigoConvite` DROP CONSTRAINT `FK2xrw2lbcfbaf6uslwk32p75u3`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FK1l2oe0ibgsdp6ntxtxa3ow40k`;
ALTER TABLE `DadoCRM` DROP CONSTRAINT `FK8jd8er0t1f11vpaik90jva61s`;
ALTER TABLE `DadoNaoColetado_Atividade` DROP CONSTRAINT `FKa1uetknhogmpw9bpy0lmk24ed`;
ALTER TABLE `DadoNaoColetado_Atividade` DROP CONSTRAINT `FKgl44rwhsmyjmg74rd04y0y8ou`;
ALTER TABLE `ServicoOferecido` DROP CONSTRAINT `FK91iy7hku5mc0n42e6b1r88vi1`;
ALTER TABLE `envioDocumento_contatos` DROP CONSTRAINT `FKgacyu0svprp4rnx9oyug20v`;
ALTER TABLE `envioEmail_arquivoAnexado` DROP CONSTRAINT `FK1fy6i0emvrtimcrt8j1pt4nl`;
ALTER TABLE `envioEmail_arquivoAnexado` DROP CONSTRAINT `FKlkp8kvgxqu1u6ebvyv9evqoau`;
ALTER TABLE `tipoSevico_documentoApresentacao` DROP CONSTRAINT `FKg6jxg8wv17wnds8h1k0bhn3vg`;
"""
SQL_DOWN = u"""
DROP TABLE `EnvioEmail`;
ALTER TABLE `AtividadeCRM` DROP CONSTRAINT `FKr66xwgcb87pcdiyhbdf26jkbe`;
ALTER TABLE `envioDocumento_contatos` DROP CONSTRAINT `FKhqfstpvuys5ltyh94ta7prjqy`;
ALTER TABLE `envioEmail_arquivoAnexado` DROP CONSTRAINT `FKsjwgpcng1ix77hic53owvsmi7`;
ALTER TABLE `AtividadeCRM` ADD CONSTRAINT `FKi03w2gawtnflt443600akhiss` FOREIGN KEY (`emailVinculado_id`) REFERENCES `EmailCrm` (`id`);
ALTER TABLE `CodigoConvite` ADD CONSTRAINT `FK2xrw2lbcfbaf6uslwk32p75u3` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FK1l2oe0ibgsdp6ntxtxa3ow40k` FOREIGN KEY (`tipoDadoCRM_id`) REFERENCES `TipoDadoCRM` (`id`);
ALTER TABLE `DadoCRM` ADD CONSTRAINT `FK8jd8er0t1f11vpaik90jva61s` FOREIGN KEY (`atividadeCRM_id`) REFERENCES `AtividadeCRM` (`id`);
ALTER TABLE `DadoNaoColetado_Atividade` ADD CONSTRAINT `FKa1uetknhogmpw9bpy0lmk24ed` FOREIGN KEY (`atividade_id`) REFERENCES `AtividadeCRM` (`id`);
ALTER TABLE `DadoNaoColetado_Atividade` ADD CONSTRAINT `FKgl44rwhsmyjmg74rd04y0y8ou` FOREIGN KEY (`dado_id`) REFERENCES `DadoCRM` (`id`);
ALTER TABLE `ServicoOferecido` ADD CONSTRAINT `FK91iy7hku5mc0n42e6b1r88vi1` FOREIGN KEY (`tipoServico_id`) REFERENCES `TipoServico` (`id`);
ALTER TABLE `envioDocumento_contatos` ADD CONSTRAINT `FKgacyu0svprp4rnx9oyug20v` FOREIGN KEY (`envioDocumento_id`) REFERENCES `EmailCrm` (`id`);
ALTER TABLE `envioEmail_arquivoAnexado` ADD CONSTRAINT `FK1fy6i0emvrtimcrt8j1pt4nl` FOREIGN KEY (`arquivoAnexado_id`) REFERENCES `ArquivoAnexado` (`id`);
ALTER TABLE `envioEmail_arquivoAnexado` ADD CONSTRAINT `FKlkp8kvgxqu1u6ebvyv9evqoau` FOREIGN KEY (`envioEmail_id`) REFERENCES `EmailCrm` (`id`);
ALTER TABLE `tipoSevico_documentoApresentacao` ADD CONSTRAINT `FKg6jxg8wv17wnds8h1k0bhn3vg` FOREIGN KEY (`documentoApresentacao_id`) REFERENCES `ArquivoAnexado` (`id`);
"""
