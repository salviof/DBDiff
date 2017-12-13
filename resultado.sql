SQL_UP = u"""
ALTER TABLE `OpcaoPersonalizada` CHANGE `descricao` `descricao` varchar(5000) DEFAULT NULL;
ALTER TABLE `EnvioEmail` CHANGE `id` `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `ConfigDisparoEmail` DROP `nome`;
ALTER TABLE `TipoAtividadeCRM` DROP `precisaTerImagem`;
"""
SQL_DOWN = u"""
ALTER TABLE `OpcaoPersonalizada` CHANGE `descricao` `descricao` varchar(255) DEFAULT NULL;
ALTER TABLE `EnvioEmail` CHANGE `id` `id` int(11) NOT NULL;
ALTER TABLE `ConfigDisparoEmail` ADD `nome` varchar(255) DEFAULT NULL;
ALTER TABLE `TipoAtividadeCRM` ADD `precisaTerImagem` bit(1) NOT NULL;
"""
