create database modeloFisico_1e;

create table aeronave (
id_aeronave int primary key auto_increment not null,
nome varchar(100) not null,
comunicador varchar(100) not null,
destino varchar(100) not null);

create table passageiro (
id_passageiro int primary key auto_increment not null,
nome varchar(100) not null,
telefone varchar(100) not null,
endereço varchar(100) not null,
id_aeronave int,
foreign key (id_aeronave) references aeronave (id_aeronave) );

insert into aeronave (nome, comunicador, destino)
values ("azul","gustavo","frança"), ("azul","lucas","italia"), ("azul","isabella","roma"), ("azul","giovanna","belgica"), ("azul","lucas","havai");

insert into passageiro (nome, telefone, endereço)
values ("gustavo", "15-9999-7777", "R.eduerdo"), ("isabella", "15-1234-7899", "R.francisco"), ("maria clara", "15-9745-7125", "R.mata rato"), ("lucae", "15-2299-1234", "R.junior"), ("giovanna", "15-9792-7173", "R.acanjo");

select * from aeronave; 
select * from passageiro;

update passageiro 
set nome = "luiz"
where id_passageiro = 1;

update aeronave
set nome = "amarelo"
where id_aeronave = 3;

delete from passageiro
where id_passageiro = 5;

create view vw_passageiro_voa as
select 
passageiro.nome as nome,
aeronave.destino as destino,
aeronave.nome as nome_aeronave
from
passageiro
inner join 
aeronave on passageiro.id_passageiro = aeronave.id_aeronave;




