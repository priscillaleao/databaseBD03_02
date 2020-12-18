create database clinica

create table medico  (
idmed int not null auto_increment primary key,
mednome varchar (50),
CRM int,
medsalario double,
tipomed varchar (30)
);

create table paciente  (
paccpf int not null auto_increment primary key,
pacnome varchar (50),
pacrg int,
pactel int,
pacdtnasc date
);


create table endereco (
idend int not null auto_increment primary key,
endcep int,
endnumero int,
pac_id int,
constraint bairro_fk foreign key (pac_id)  references paciente (paccpf)
);


create table quarto (
idquarto int not null auto_increment primary key,
qnumero int,
qandar int,
qstatus varchar(30),
pacqua_id int,
constraint quarto_fk foreign key (pacqua_id)  references paciente (paccpf)
);

create table especialidade (
idesp int not null auto_increment primary key,
espnome varchar(30),
espmed_id int,
constraint especialidade_fk foreign key (espmed_id)  references medico (idmed)
);

create table atende (
idatende int not null auto_increment primary key,
hora datetime,
atmed_id int,
atpac_id int,
constraint atendem_fk foreign key (atmed_id)  references medico (idmed),
constraint atendep_fk foreign key (atpac_id)  references paciente (paccpf)
);


