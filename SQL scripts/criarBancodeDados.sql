-- O comando 'create schema' é usado para criar um banco de dados no MySQL, 
-- nesse caso cria o banco de dados chamado 'banco_alimentos_registro'
create schema if not exists banco_alimentos_registro;
use banco_alimentos_registro;
-- Criando a primeira tabela 'tipo_de_produto'
CREATE TABLE if not exists Tipo_de_produto (
	ID INT auto_increment PRIMARY KEY, -- chave primária, ID do tipo inteiro (número: 1,2,3), autoincremento
    DS_TIPO_PRODUTO varchar(50) 
);
-- Criando a tabela 'categoria'
CREATE TABLE IF NOT EXISTS categoria (
	ID INT auto_increment PRIMARY KEY, 
    ID_TIPO_PRODUTO INT, 
    DS_CATEGORIA_PRODUTO varchar(250), 
    foreign key(ID_TIPO_PRODUTO) references tipo_de_produto(ID) -- chave estrangeira para tabela 'tipo_de_produto'. Campo ID_TIPO_PRODUTO
);
-- Criando a tabela 'produto'
CREATE TABLE IF NOT EXISTS produto (
	ID INT auto_increment PRIMARY KEY,
    ID_CATEGORIA INT,
    NO_PRODUTO varchar(600),
    foreign key(ID_CATEGORIA) references categoria(ID)
);
-- Criando a tabela 'empresa'
CREATE TABLE IF NOT EXISTS empresa (
	ID INT auto_increment PRIMARY KEY,
    CNPJ varchar(50),
    RAZAO_SOCIAL varchar(300)
);
-- Criando a tabela 'produto'
CREATE TABLE IF NOT EXISTS registro (
	ID INT auto_increment PRIMARY KEY,
    ID_PRODUTO INT,
    ID_EMPRESA INT,
    NU_REGISTRO varchar(150),
    NU_PROCESSO varchar(150),
    DT_FINALIZACAO varchar(20),
    DT_VENCIMENTO varchar(20),
    STATUS varchar(50),
    foreign key(ID_PRODUTO) references produto(ID),
    foreign key(ID_EMPRESA) references empresa(ID)
);