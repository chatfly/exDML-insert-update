create database automoveis

use automoveis

create table carros (
	id int primary key,
	marca varchar(15) not null,
	cor varchar(30) not null,
	km int not null,
	modelo varchar(15) not null,
	ano int not null,
	precoInicial float not null
)

insert into carros
(id,marca,cor,km,modelo,ano,precoInicial)
values (1,'Ford','Vermelho',50000,'Mustang',2018,375000)

insert into carros
(id,marca,cor,km,modelo,ano,precoInicial)
values (2,'Chevrolet','Amarelo',100000,'Camaro',2023,425000)

insert into carros
(id,marca,cor,km,modelo,ano,precoInicial)
values (3,'Toyota','Branco',30000,'Corolla',2023,150000)

insert into carros
(id,marca,cor,km,modelo,ano,precoInicial)
values (4,'Volkswagen','Azul',300000,'Fusca',1980,15000)

insert into carros
(id,marca,cor,km,modelo,ano,precoInicial)
values (5,'Honda','Verde',50000,'Civic',2022,176000)

select * from carros

update carros set precoInicial=precoInicial*1.05
where ano=2018

update carros set precoInicial=precoInicial*0.9
where marca='Toyota'

update carros set ano=2022
where marca='Honda'

update carros set cor='Azul'
where precoInicial>500000

update carros set modelo='Accord'
where modelo='Civic'

delete from carros
where ano<2015

delete from carros
where marca='Ford'

delete from carros
where precoInicial>10000 and precoInicial<20000

update carros set precoInicial = precoInicial*1.07
where modelo='Corolla' and ano=2020

update carros set km=0
where marca='Chevrolet'

delete from carros
where km>100000

delete from carros
where cor='Verde'

update carros set precoInicial=precoInicial*1.15
where modelo='Mustang' and cor='Vermelho'
