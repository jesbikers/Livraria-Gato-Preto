Create Database bdlivraria;

use bdlivraria;

Create Table cliente
(
codCliente int auto_increment not null primary key,
nome varchar(60) not null,
telefone varchar(10) not null,
email varchar(30),
cep char(9) not null,
cidade varchar(30) not null,
bairro varchar(30) not null,
rua varchar(30) not null,
numero varchar(4) not null,
cpf char(11) not  null
);

Create Table livro
(
codLivro int auto_increment not null primary key,
nome varchar(50) not null,
autor varchar(60) not null,
editora varchar(60) not null,
genero varchar(30) not null,
valor varchar(7) not null,
estoque varchar(10) not null
);

Create Table venda
(
codVenda int auto_increment not null primary key,
codCliente int not null,
constraint FKcliente foreign key (codCliente) References cliente (codcliente),
codLivro int not null,
constraint FKlivro foreign key (codLivro) References livro (codlivro),
dtVenda date not null,
valor int not null,
quantidade int not null
);

