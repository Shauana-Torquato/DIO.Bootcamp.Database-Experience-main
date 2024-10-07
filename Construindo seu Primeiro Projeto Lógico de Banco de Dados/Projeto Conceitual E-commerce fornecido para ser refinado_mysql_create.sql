CREATE TABLE `E-Commerce` (

);

CREATE TABLE `Estoque` (
	`idEstoque` INT NOT NULL AUTO_INCREMENT,
	`Local` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idEstoque`)
);

CREATE TABLE `Terceiro Vendedor` (
	`idTerceiro-vendedor` INT NOT NULL AUTO_INCREMENT,
	`Razão Social` varchar(45) NOT NULL AUTO_INCREMENT,
	`Local` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idTerceiro-vendedor`)
);

CREATE TABLE `Disponibilizando um Produto` (
	`Fornecedor_idFornecedor (FK)` INT NOT NULL,
	`Produto_idProduto (FK)` INT NOT NULL,
	PRIMARY KEY (`Fornecedor_idFornecedor (FK)`,`Produto_idProduto (FK)`)
);

CREATE TABLE `Produto` (
	`idProduto` INT NOT NULL AUTO_INCREMENT,
	`Categoria` varchar(45) NOT NULL AUTO_INCREMENT,
	`Descrição` varchar(45) NOT NULL AUTO_INCREMENT,
	`Valor` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idProduto`)
);

CREATE TABLE `Fornecedor` (
	`idFornecedor` INT NOT NULL,
	`Razão Social` varchar(45) NOT NULL AUTO_INCREMENT,
	`CNPJ` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idFornecedor`)
);

CREATE TABLE `Pedido` (
	`Status do Pedido` varchar(45) NOT NULL AUTO_INCREMENT,
	`Descrição` varchar(45) NOT NULL AUTO_INCREMENT,
	`Cliente_idCliente (FK)` INT NOT NULL AUTO_INCREMENT,
	`Frete` FLOAT NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT NOT NULL,
	`Pagamento_idPagamento` FLOAT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Pagamento_idPagamento`)
);

CREATE TABLE `Relação de Produto/pedido` (
	`Produto_idProduto (FK)` INT NOT NULL AUTO_INCREMENT,
	`Pedido_idPedido (FK)` INT NOT NULL AUTO_INCREMENT,
	`Quantidade` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Produto_idProduto (FK)`,`Pedido_idPedido (FK)`)
);

CREATE TABLE `Produto_has_Estoque` (
	`Produto_idProduto (FK)` INT NOT NULL,
	`Estoque_idEstoque (FK)` INT NOT NULL,
	`Quantidade` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Produto_idProduto (FK)`,`Estoque_idEstoque (FK)`)
);

CREATE TABLE `Produtos por Vendedor (Terceiro)` (
	`Terceiro-Vendedor-idTerceiro-Vendedor (FK)` INT NOT NULL AUTO_INCREMENT,
	`Produto_idProduto (FK)` INT NOT NULL AUTO_INCREMENT,
	`Local` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Terceiro-Vendedor-idTerceiro-Vendedor (FK)`,`Produto_idProduto (FK)`)
);

CREATE TABLE `Cliente` (
	`idCliente` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`Identificação (CPF ou CnPJ)` varchar(45) NOT NULL AUTO_INCREMENT,
	`Endereço` varchar(45) NOT NULL AUTO_INCREMENT,
	`Status de Pagamento Item` varchar(45) NOT NULL,
	`Frete_idFrete (FK)` varchar(255) NOT NULL,
	PRIMARY KEY (`idCliente`,`Frete_idFrete (FK)`)
);

CREATE TABLE `Pagamento` (
	`idPagamento` INT NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT NOT NULL AUTO_INCREMENT,
	`Status de Pagamento` varchar(45) NOT NULL AUTO_INCREMENT,
	`Formas de Pagamento` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idPagamento`)
);

CREATE TABLE `Formas de Pagamento` (
	`idFormaspag` INT NOT NULL,
	`Descrição` varchar(255) NOT NULL,
	`Pagamento_idPagamento (FK)` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idFormaspag`,`Pagamento_idPagamento (FK)`)
);

CREATE TABLE `Boleto` (
	`idBoleto` BINARY NOT NULL AUTO_INCREMENT,
	`Código Boleto` varchar(255) NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT NOT NULL AUTO_INCREMENT,
	`Formaspag (FK)` FLOAT NOT NULL,
	PRIMARY KEY (`idBoleto`)
);

CREATE TABLE `Crédito` (
	`idCredito` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`N. Cartão` INT NOT NULL AUTO_INCREMENT,
	`Validade` DATETIME NOT NULL AUTO_INCREMENT,
	`valor` FLOAT NOT NULL AUTO_INCREMENT,
	`Formaspag (FK)` FLOAT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idCredito`)
);

CREATE TABLE `Pix` (
	`idPix` INT NOT NULL AUTO_INCREMENT,
	`Chave Pix` varchar(100) NOT NULL AUTO_INCREMENT,
	`Valor` FLOAT NOT NULL AUTO_INCREMENT,
	`Formaspag (FK)` FLOAT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idPix`)
);

CREATE TABLE `Débito` (
	`idDébito` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`N. Cartão` INT NOT NULL AUTO_INCREMENT,
	`Validade` DATETIME NOT NULL AUTO_INCREMENT,
	`valor` FLOAT NOT NULL AUTO_INCREMENT,
	`Formaspag (FK)` FLOAT NOT NULL,
	PRIMARY KEY (`idDébito`)
);

CREATE TABLE `vínculo pagamento` (
	`Pedido_idPedido (FK)` INT NOT NULL AUTO_INCREMENT,
	`Status` varchar(45) NOT NULL AUTO_INCREMENT,
	`Pagamento_idPagamento (FK)` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Pedido_idPedido (FK)`,`Pagamento_idPagamento (FK)`)
);

CREATE TABLE `Cadastro CPF ou CNPJ` (
	`idIdentificação` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`e-mail` varchar(45) NOT NULL,
	`Identificação` varchar(45) NOT NULL,
	PRIMARY KEY (`idIdentificação`)
);

CREATE TABLE `CPF` (
	`idCPF` INT NOT NULL AUTO_INCREMENT,
	`CPF` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idCPF`)
);

CREATE TABLE `CNPJ` (
	`idCNPJ` INT NOT NULL,
	`CNPJ` varchar(45) NOT NULL
);

CREATE TABLE `CPF ou CNPJ somente` (
	`idRelIndet` INT NOT NULL AUTO_INCREMENT,
	`CPF_idCPF` BOOLEAN NOT NULL AUTO_INCREMENT,
	`CNPJ_idCNPJ` BOOLEAN NOT NULL AUTO_INCREMENT,
	`V. Informado` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idRelIndet`,`CPF_idCPF`,`CNPJ_idCNPJ`)
);

CREATE TABLE `Frete` (
	`idFrete` INT NOT NULL AUTO_INCREMENT,
	`Endereço` varchar(45) NOT NULL AUTO_INCREMENT,
	`pedido` varchar(45) NOT NULL,
	`Linha temporal` varchar(45) NOT NULL,
	`Status` varchar(45) NOT NULL,
	`Valor total` varchar(45) NOT NULL,
	PRIMARY KEY (`idFrete`)
);

ALTER TABLE `Disponibilizando um Produto` ADD CONSTRAINT `Disponibilizando um Produto_fk0` FOREIGN KEY (`Fornecedor_idFornecedor (FK)`) REFERENCES `Fornecedor`(`idFornecedor`);

ALTER TABLE `Disponibilizando um Produto` ADD CONSTRAINT `Disponibilizando um Produto_fk1` FOREIGN KEY (`Produto_idProduto (FK)`) REFERENCES `Produto`(`idProduto`);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk0` FOREIGN KEY (`Cliente_idCliente (FK)`) REFERENCES `Cliente`(`idCliente`);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk1` FOREIGN KEY (`Pagamento_idPagamento`) REFERENCES `Pagamento`(`idPagamento`);

ALTER TABLE `Relação de Produto/pedido` ADD CONSTRAINT `Relação de Produto/pedido_fk0` FOREIGN KEY (`Produto_idProduto (FK)`) REFERENCES `Produto`(`idProduto`);

ALTER TABLE `Relação de Produto/pedido` ADD CONSTRAINT `Relação de Produto/pedido_fk1` FOREIGN KEY (`Pedido_idPedido (FK)`) REFERENCES `Pedido`(`idPedido`);

ALTER TABLE `Produto_has_Estoque` ADD CONSTRAINT `Produto_has_Estoque_fk0` FOREIGN KEY (`Produto_idProduto (FK)`) REFERENCES `Produto`(`idProduto`);

ALTER TABLE `Produto_has_Estoque` ADD CONSTRAINT `Produto_has_Estoque_fk1` FOREIGN KEY (`Estoque_idEstoque (FK)`) REFERENCES `Estoque`(`idEstoque`);

ALTER TABLE `Produtos por Vendedor (Terceiro)` ADD CONSTRAINT `Produtos por Vendedor (Terceiro)_fk0` FOREIGN KEY (`Terceiro-Vendedor-idTerceiro-Vendedor (FK)`) REFERENCES `Terceiro Vendedor`(`idTerceiro-vendedor`);

ALTER TABLE `Produtos por Vendedor (Terceiro)` ADD CONSTRAINT `Produtos por Vendedor (Terceiro)_fk1` FOREIGN KEY (`Produto_idProduto (FK)`) REFERENCES `Produto`(`idProduto`);

ALTER TABLE `Cliente` ADD CONSTRAINT `Cliente_fk0` FOREIGN KEY (`Status de Pagamento Item`) REFERENCES `vínculo pagamento`(`Status`);

ALTER TABLE `Cliente` ADD CONSTRAINT `Cliente_fk1` FOREIGN KEY (`Frete_idFrete (FK)`) REFERENCES `Frete`(`idFrete`);

ALTER TABLE `Formas de Pagamento` ADD CONSTRAINT `Formas de Pagamento_fk0` FOREIGN KEY (`Pagamento_idPagamento (FK)`) REFERENCES `Pagamento`(`idPagamento`);

ALTER TABLE `Boleto` ADD CONSTRAINT `Boleto_fk0` FOREIGN KEY (`Formaspag (FK)`) REFERENCES `Formas de Pagamento`(`Descrição`);

ALTER TABLE `Crédito` ADD CONSTRAINT `Crédito_fk0` FOREIGN KEY (`Formaspag (FK)`) REFERENCES `Formas de Pagamento`(`Descrição`);

ALTER TABLE `Pix` ADD CONSTRAINT `Pix_fk0` FOREIGN KEY (`Formaspag (FK)`) REFERENCES `Formas de Pagamento`(`Descrição`);

ALTER TABLE `Débito` ADD CONSTRAINT `Débito_fk0` FOREIGN KEY (`Formaspag (FK)`) REFERENCES `Formas de Pagamento`(`Descrição`);

ALTER TABLE `vínculo pagamento` ADD CONSTRAINT `vínculo pagamento_fk0` FOREIGN KEY (`Pedido_idPedido (FK)`) REFERENCES `Pedido`(`idPedido`);

ALTER TABLE `vínculo pagamento` ADD CONSTRAINT `vínculo pagamento_fk1` FOREIGN KEY (`Pagamento_idPagamento (FK)`) REFERENCES `Pagamento`(`idPagamento`);

ALTER TABLE `Cadastro CPF ou CNPJ` ADD CONSTRAINT `Cadastro CPF ou CNPJ_fk0` FOREIGN KEY (`idIdentificação`) REFERENCES `Cliente`(`idCliente`);

ALTER TABLE `Cadastro CPF ou CNPJ` ADD CONSTRAINT `Cadastro CPF ou CNPJ_fk1` FOREIGN KEY (`Identificação`) REFERENCES `CPF ou CNPJ somente`(`V. Informado`);

ALTER TABLE `CPF ou CNPJ somente` ADD CONSTRAINT `CPF ou CNPJ somente_fk0` FOREIGN KEY (`idRelIndet`) REFERENCES `Cadastro CPF ou CNPJ`(`idIdentificação`);

ALTER TABLE `CPF ou CNPJ somente` ADD CONSTRAINT `CPF ou CNPJ somente_fk1` FOREIGN KEY (`CPF_idCPF`) REFERENCES `CPF`(`idCPF`);

ALTER TABLE `CPF ou CNPJ somente` ADD CONSTRAINT `CPF ou CNPJ somente_fk2` FOREIGN KEY (`CNPJ_idCNPJ`) REFERENCES `CNPJ`(`idCNPJ`);

ALTER TABLE `Frete` ADD CONSTRAINT `Frete_fk0` FOREIGN KEY (`Endereço`) REFERENCES `Cliente`(`Endereço`);

ALTER TABLE `Frete` ADD CONSTRAINT `Frete_fk1` FOREIGN KEY (`pedido`) REFERENCES `Pedido`(`idPedido`);
























