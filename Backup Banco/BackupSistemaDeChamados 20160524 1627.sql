-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema os
--

CREATE DATABASE IF NOT EXISTS os;
USE os;

--
-- Definition of table `chamados`
--

DROP TABLE IF EXISTS `chamados`;
CREATE TABLE `chamados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UsuarioCriador_id` int(10) unsigned NOT NULL,
  `UsuarioResponsavel_id` int(10) unsigned NOT NULL,
  `TipoChamado_id` int(10) unsigned NOT NULL,
  `PrioridadeChamado_id` int(10) unsigned NOT NULL,
  `SituacaoChamado_id` int(10) unsigned NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Descricao` text NOT NULL,
  `Extras` text,
  `Data_Cadastro` datetime NOT NULL,
  `Data_Entrega` datetime DEFAULT NULL,
  `Data_Previsao` datetime DEFAULT NULL,
  `HorasGastas` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_UsuarioCriado` (`UsuarioCriador_id`),
  KEY `FK_UsuarioResponsavel` (`UsuarioResponsavel_id`),
  KEY `FK_TipoChamado` (`TipoChamado_id`),
  KEY `FK_PrioridadeChamado` (`PrioridadeChamado_id`),
  KEY `FK_SituacaoChamado` (`SituacaoChamado_id`),
  CONSTRAINT `FK_PrioridadeChamado` FOREIGN KEY (`PrioridadeChamado_id`) REFERENCES `prioridadechamados` (`id`),
  CONSTRAINT `FK_SituacaoChamado` FOREIGN KEY (`SituacaoChamado_id`) REFERENCES `situacaochamados` (`id`),
  CONSTRAINT `FK_TipoChamado` FOREIGN KEY (`TipoChamado_id`) REFERENCES `tipochamados` (`id`),
  CONSTRAINT `FK_UsuarioCriado` FOREIGN KEY (`UsuarioCriador_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK_UsuarioResponsavel` FOREIGN KEY (`UsuarioResponsavel_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chamados`
--

/*!40000 ALTER TABLE `chamados` DISABLE KEYS */;
INSERT INTO `chamados` (`id`,`UsuarioCriador_id`,`UsuarioResponsavel_id`,`TipoChamado_id`,`PrioridadeChamado_id`,`SituacaoChamado_id`,`Titulo`,`Descricao`,`Extras`,`Data_Cadastro`,`Data_Entrega`,`Data_Previsao`,`HorasGastas`) VALUES 
 (1,1,1,3,1,3,'INCLUSÃO DE ROTINA DE GERAÇÃO DE BOLETOS PARA SEGURO DE VIDA','Criar rotina completa de geração de boletos para seguro de vida baseado na rotina antiga.',NULL,'2015-11-11 20:56:19','2015-11-20 00:00:00',NULL,NULL),
 (2,1,1,8,3,3,'CRIAÇÃO DE RELATORIO EXTRA DE PARCELAS NO EXTRATO DE EMPRESTIMOS','Implementar um relatorio extra no extrato de emprestimos para listar as parcelas do emprestimo de cada pessoa selecionada.\r\n\r\nNesta tela precisa adicionar um RadioGroup com 4 opções:\r\no Todas;\r\no Somente pagas;\r\no Somente em aberto;\r\no Nenhuma;\r\n\r\nDeve vir selecionado Nenhuma como padrao e nesse caso, nao deve mostrar o demonstrativos de parcelas.\r\n\r\nSegue latout do relatório em anexo','- Utilizar a tabela EMPParcelas para fazer este relatório;\r\n- Utilizar o indexador atual que foi selecionado no relatorio de extrato;\r\n','2016-05-24 16:19:30',NULL,'2016-05-27 00:00:00',NULL);
/*!40000 ALTER TABLE `chamados` ENABLE KEYS */;


--
-- Definition of table `prioridadechamados`
--

DROP TABLE IF EXISTS `prioridadechamados`;
CREATE TABLE `prioridadechamados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Prioridade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prioridadechamados`
--

/*!40000 ALTER TABLE `prioridadechamados` DISABLE KEYS */;
INSERT INTO `prioridadechamados` (`id`,`Prioridade`) VALUES 
 (1,'BAIXA'),
 (2,'MÉDIA'),
 (3,'ALTA'),
 (4,'CRÍTICA');
/*!40000 ALTER TABLE `prioridadechamados` ENABLE KEYS */;


--
-- Definition of table `situacaochamados`
--

DROP TABLE IF EXISTS `situacaochamados`;
CREATE TABLE `situacaochamados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Situacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `situacaochamados`
--

/*!40000 ALTER TABLE `situacaochamados` DISABLE KEYS */;
INSERT INTO `situacaochamados` (`id`,`Situacao`) VALUES 
 (1,'Aberto'),
 (2,'Fechado'),
 (3,'Em andamento'),
 (4,'AGUARDANDO RETORNO'),
 (5,'Em teste');
/*!40000 ALTER TABLE `situacaochamados` ENABLE KEYS */;


--
-- Definition of table `tipochamados`
--

DROP TABLE IF EXISTS `tipochamados`;
CREATE TABLE `tipochamados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoChamado` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipochamados`
--

/*!40000 ALTER TABLE `tipochamados` DISABLE KEYS */;
INSERT INTO `tipochamados` (`id`,`TipoChamado`) VALUES 
 (1,'SGA - Correção de erro'),
 (2,'SGA - Novo relatório'),
 (3,'SGA - Nova tela'),
 (4,'Manutenção de rede'),
 (5,'Manutenção de computador'),
 (6,'Manutenção de impressoras'),
 (7,'Helpdesk'),
 (8,'SGA - ALTERAÇÃO DE RELATÓRIO'),
 (9,'SGA - NOVO CADASTRO');
/*!40000 ALTER TABLE `tipochamados` ENABLE KEYS */;


--
-- Definition of table `tipousuarios`
--

DROP TABLE IF EXISTS `tipousuarios`;
CREATE TABLE `tipousuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoUsuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipousuarios`
--

/*!40000 ALTER TABLE `tipousuarios` DISABLE KEYS */;
INSERT INTO `tipousuarios` (`id`,`TipoUsuario`) VALUES 
 (1,'Analista de Sistemas'),
 (2,'PROGRAMADOR'),
 (3,'Gerente de TI'),
 (4,'Funcionario'),
 (5,'Analista de Suporte');
/*!40000 ALTER TABLE `tipousuarios` ENABLE KEYS */;


--
-- Definition of table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TipoUsuario_id` int(10) unsigned NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Senha` varchar(20) NOT NULL,
  `Endereco` varchar(250) DEFAULT NULL,
  `Cidade` varchar(150) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Celular` varchar(20) DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `NivelAcesso` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_Usuarios_TipoUsuarios` (`TipoUsuario_id`),
  CONSTRAINT `FK_Usuarios_TipoUsuarios` FOREIGN KEY (`TipoUsuario_id`) REFERENCES `tipousuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`,`TipoUsuario_id`,`Nome`,`Usuario`,`Senha`,`Endereco`,`Cidade`,`UF`,`Telefone`,`Celular`,`Email`,`NivelAcesso`) VALUES 
 (1,1,'RODRIGO SEBBEN','RODRIGO','991103','AV JUSCELINO K DE OLIVERA 340','PORTO ALEGRE','RS','51-30142114','51-91964473','INFORMATICA@IELB.ORG.BR',0),
 (2,5,'EVERTON SOARES XAVIER','everton','everton',NULL,'PORTO ALEGRE','RS',NULL,NULL,'EVERTON@IELB.ORG.BR',1),
 (4,1,'MOACIR GUENTER','moacir','moacir',NULL,'PORTO ALEGRE','RS',NULL,NULL,'moacir@guenterimoveis.com.br',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
