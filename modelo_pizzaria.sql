create database pizzaria

create table cliente  (
idcli int not null auto_increment primary key,
clinome varchar (50),
clitel int
);


  
create table bairro (
idbai integer primary key not null auto_increment,
bainome varchar(50),
baitempo varchar(50)
)


create table endereco (
idend int not null auto_increment primary key,
endrua varchar (50),
endcep int,
endnumero int,
cliente_id int,
bairro_id int,
constraint bairro_fk foreign key (bairro_id)  references bairro(idbai),
constraint cliente_fk foreign key(cliente_id) references cliente(idcli)
);


create table pizza (
idpizza int not null auto_increment primary key,
pinome varchar (50),
pipreco double,
pitamanho varchar (50),
piqt int
);

create table ingrediente (
iding int not null auto_increment primary key,
nomeing varchar (50),
pizza_id int,
constraint ingredientepiz_fk foreign key (pizza_id)  references pizza (idpizza)
);



create table cardapio (
idcard int not null auto_increment primary key,
nomecard varchar (50),
pizza_id int,
constraint cardapio_fk foreign key(pizzacarp_id) references pizza(idpizza)
);

create table funcionario  (
idfunc int not null auto_increment primary key,
funcnome varchar (50),
funccargo int
);

create table pedido  (
idped int not null auto_increment primary key,
pednumero int,
peddtemissao date,
clienteped_id int,
enderecoped_id int,
pizzaped_id int,
funcionarioped_id int,
constraint pizzas_fk foreign key(pizzaped_id) references pizza(idpizza),
constraint clientes_fk foreign key(clienteped_id) references cliente(idcli),
constraint enderecos_fk foreign key(enderecoped_id) references endereco(idend),
constraint funcionario_fk foreign key(funcionarioped_id) references funcionario(idfunc)
);


CREATE TABLE item_pedido (
itempedid int(11) PRIMARY key AUTO_INCREMENT not null,
qtd double, 
preco double,
pizzait_id int,
pedidoit_id int,
FOREIGN KEY(pedidoit_id) REFERENCES pedido  (idped),
FOREIGN KEY(pizzait_id) REFERENCES pizza  (idpizza)
);