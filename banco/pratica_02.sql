create database pratica_02;

use pratica_02;

create table  clientes(
idCliente int primary key auto_increment,
 nomeCliente varchar(45) not null,
 cpfCliente char(11) not null,
 emailCliente varchar(100), 
 telefoneCliente char(9) not null
 );
create table funcionarios(
idFuncionario int primary key auto_increment,
nomeFuncionario varchar(45) not null
);

 create table solicitacoes(
idSolicitacao int primary key auto_increment,
descricao text not null, 
urgencia enum('baixa','média','alta')not null,
status enum('pendente','em andamento','finalizada')not null, 
dataAbertura date not null,
clienteID int, 
funcionarioID int,
foreign key(clienteID) references clientes(idCliente),
foreign key(funcionarioID) references funcionarios(idFuncionario)
);


 