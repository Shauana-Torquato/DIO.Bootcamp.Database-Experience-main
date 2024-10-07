CREATE TABLE `OS` (
	`idOS` int NOT NULL AUTO_INCREMENT,
	`Data Emissão` DATETIME NOT NULL AUTO_INCREMENT,
	`Data Conclusão` DATETIME NOT NULL AUTO_INCREMENT,
	`Id.Cliente` varchar(45) NOT NULL AUTO_INCREMENT,
	`Veiculo_idVeículo` int NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT NOT NULL AUTO_INCREMENT,
	`Status` varchar(45) NOT NULL AUTO_INCREMENT,
	`Equipe_idEquipe (FK)` int NOT NULL AUTO_INCREMENT,
	`Execução-de-Serviços_idExecução (FK)` int NOT NULL AUTO_INCREMENT,
	`Uso-Peças_idUso-peças` int NOT NULL,
	PRIMARY KEY (`idOS`,`Veiculo_idVeículo`,`Equipe_idEquipe (FK)`,`Execução-de-Serviços_idExecução (FK)`)
);

CREATE TABLE `Equipe` (
	`idEquipe` int NOT NULL AUTO_INCREMENT,
	`Descrição` varchar(100) NOT NULL AUTO_INCREMENT,
	`Mecânicos_idMecânicos (FK)` int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idEquipe`,`Mecânicos_idMecânicos (FK)`)
);

CREATE TABLE `Mecânicos` (
	`idMecânicos` int NOT NULL AUTO_INCREMENT,
	`Nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`Endereço` varchar(45) NOT NULL AUTO_INCREMENT,
	`e-mail` varchar(45) NOT NULL AUTO_INCREMENT,
	`telefone` varchar(45) NOT NULL AUTO_INCREMENT,
	`especialidade` varchar(45) NOT NULL AUTO_INCREMENT,
	`disponibilidade` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idMecânicos`)
);

CREATE TABLE `Execução de Serviços` (
	`IdExecução` int NOT NULL AUTO_INCREMENT,
	`OS_idOS (FK)` int NOT NULL AUTO_INCREMENT,
	`Serviço_idServiço (FK)` int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IdExecução`,`OS_idOS (FK)`,`Serviço_idServiço (FK)`)
);

CREATE TABLE `Serviço` (
	`idServiço` int NOT NULL AUTO_INCREMENT,
	`Descrição - rev/con` varchar(100) NOT NULL AUTO_INCREMENT,
	`Status` varchar(45) NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT NOT NULL AUTO_INCREMENT,
	`valor total` FLOAT NOT NULL AUTO_INCREMENT,
	`peças requeridas` varchar(255) NOT NULL,
	PRIMARY KEY (`idServiço`)
);

CREATE TABLE `Veículo` (
	`IdVeículo` int NOT NULL AUTO_INCREMENT,
	`Modelo` varchar(45) NOT NULL AUTO_INCREMENT,
	`Placa` varchar(45) NOT NULL AUTO_INCREMENT,
	`Cor` varchar(45) NOT NULL AUTO_INCREMENT,
	`Ano` int NOT NULL AUTO_INCREMENT,
	`Cliente_idCliente` int(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IdVeículo`)
);

CREATE TABLE `Cliente` (
	`IdCliente` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`endereço` varchar(45) NOT NULL AUTO_INCREMENT,
	`e-mail` varchar(45) NOT NULL AUTO_INCREMENT,
	`telefone` int NOT NULL AUTO_INCREMENT,
	`cpf` int(45) NOT NULL AUTO_INCREMENT,
	`Veículo_idVeículo` int NOT NULL,
	PRIMARY KEY (`IdCliente`)
);

CREATE TABLE `Peças` (
	`IdPeças` int NOT NULL AUTO_INCREMENT,
	`Nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`Descrição/utilidade` varchar(45) NOT NULL AUTO_INCREMENT,
	`Marca` varchar(45) NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT NOT NULL AUTO_INCREMENT,
	`Garantia` DATETIME NOT NULL AUTO_INCREMENT,
	`Quantidade` int NOT NULL,
	PRIMARY KEY (`IdPeças`)
);

CREATE TABLE `Uso de peças` (
	`idUso-peças` int NOT NULL AUTO_INCREMENT,
	`Peças-Requeridas_idDispPeças` int(255) NOT NULL,
	PRIMARY KEY (`idUso-peças`)
);

CREATE TABLE `peças requeridas` (
	`idDispPeças` int NOT NULL AUTO_INCREMENT,
	`peças_idPeças (FK)` int NOT NULL AUTO_INCREMENT,
	`Peças Requeridas (FK)` varchar(255) NOT NULL,
	PRIMARY KEY (`idDispPeças`)
);

ALTER TABLE `OS` ADD CONSTRAINT `OS_fk0` FOREIGN KEY (`Veiculo_idVeículo`) REFERENCES `Veículo`(`IdVeículo`);

ALTER TABLE `OS` ADD CONSTRAINT `OS_fk1` FOREIGN KEY (`Equipe_idEquipe (FK)`) REFERENCES `Equipe`(`idEquipe`);

ALTER TABLE `OS` ADD CONSTRAINT `OS_fk2` FOREIGN KEY (`Execução-de-Serviços_idExecução (FK)`) REFERENCES `Execução de Serviços`(`IdExecução`);

ALTER TABLE `OS` ADD CONSTRAINT `OS_fk3` FOREIGN KEY (`Uso-Peças_idUso-peças`) REFERENCES `Uso de peças`(`idUso-peças`);

ALTER TABLE `Equipe` ADD CONSTRAINT `Equipe_fk0` FOREIGN KEY (`Mecânicos_idMecânicos (FK)`) REFERENCES `Mecânicos`(`idMecânicos`);

ALTER TABLE `Execução de Serviços` ADD CONSTRAINT `Execução de Serviços_fk0` FOREIGN KEY (`OS_idOS (FK)`) REFERENCES `OS`(`idOS`);

ALTER TABLE `Execução de Serviços` ADD CONSTRAINT `Execução de Serviços_fk1` FOREIGN KEY (`Serviço_idServiço (FK)`) REFERENCES `Serviço`(`idServiço`);

ALTER TABLE `Veículo` ADD CONSTRAINT `Veículo_fk0` FOREIGN KEY (`IdVeículo`) REFERENCES `Cliente`(`Veículo_idVeículo`);

ALTER TABLE `Uso de peças` ADD CONSTRAINT `Uso de peças_fk0` FOREIGN KEY (`Peças-Requeridas_idDispPeças`) REFERENCES `peças requeridas`(`idDispPeças`);

ALTER TABLE `peças requeridas` ADD CONSTRAINT `peças requeridas_fk0` FOREIGN KEY (`peças_idPeças (FK)`) REFERENCES `Peças`(`IdPeças`);

ALTER TABLE `peças requeridas` ADD CONSTRAINT `peças requeridas_fk1` FOREIGN KEY (`Peças Requeridas (FK)`) REFERENCES `Serviço`(`peças requeridas`);











