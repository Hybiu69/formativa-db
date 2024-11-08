create database formativa_1e;

create table univer (
id_univer int primary key auto_increment not null,
nome varchar (100) not null,
telefone varchar (100) not null,
cidade varchar (100),
rua varchar (100) not null,
bairro varchar (1000) not null,
cep varbinary (100),
numero int not null );

create table estudante (
id_estudante int primary key auto_increment not null,
nome varchar (100) not null,
telefone varchar (100) not null,
cidade varchar (100) not null,
rua varchar (100) not null,
bairro varchar (1000) not null,
cep varbinary (100),
numero int not null,
id_univer int,
foreign key (id_univer) references univer (id_univer) );

insert into univer (nome, telefone, cidade, rua, bairro, cep, numero)
values ("usp", "15-1234-3377", "itapetininga", "R. benedito souza", "B. da luz", "1238-555",25),
       ("ufscar", "15-3333-7898", "sorocaba", "R. léo marinho", "B. da cruz", "478-6571",551),
       ("unip", "15-8116-4648", "campinas", "R. boa balma", "B. das palmas", "4494-94189",156),
       ("ufsp", "15-1568-1651", "sao paulo", "R. francisco ", "B. sao bento", "468-9641",74),
       ("unicamp", "15-4484-4847", "jundiai", "R. noite de prata", "B. mira sol", "1681-844",01);
       
insert into estudante (nome, telefone, cidade, rua, bairro, cep, numero)
values ("gustavo", "15-99851-4548", "itapetininga", "R. elias", "B. 8 de desembro", "148-951",15),
       ("isabella", "15-9985-6774", "itapetininga", "R. gomes da silva", "B. mata rato", "489-9746",706),
       ("maria clara", "15-99459-1949", "itapetininga", "R. araujo", "B. pito apagado", "759-5288",56),
       ("giovanna", "15-9788-3377", "itapetininga", "R. delegado mortes", "B. de paz", "4568-551",322),
       ("lucas", "15-9974-2327", "itapetininga", "R. goes de melo", "B. das raizes", "7848-941",75);
       
select * from estudante;
select * from univer;

create view vw_informações_voa as
select 
estudante.nome as nome,
univer.nome as nome_unniver
from
estudante
inner join 
univer on estudante.id_estudante = univer.id_univer;
       
       