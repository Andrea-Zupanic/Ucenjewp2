
use master;
go
drop database if exists edunovawp2;
go

create database edunovawp2;
go
alter database edunovawp2 collate Croatian_CI_AS;
go
use edunovawp2;

create table smjerovi(
sifra int not null primary key identity(1,1),
naziv varchar(60) not null,
brojsati int,
cijena decimal(18,2),
upisnina decimal(18,2),
verificiran bit
);


create table grupe(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
predavac int,
smjer int not null,
maksimalnopolaznika int,
datumpocetka datetime
);


create table predavaci(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
email varchar(100) not null,
iban varchar(50)
);


create table polaznici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
email varchar(100) not null,
brojugovora varchar(20)
);

create table clanovi(
grupa int not null,
polaznik int not null
);


alter table grupe add foreign key (smjer) references smjerovi(sifra);
alter table grupe add foreign key (predavac) references predavaci(sifra);
alter table clanovi add foreign key (grupa) references grupe(sifra);
alter table clanovi add foreign key (polaznik) references polaznici(sifra);



insert into smjerovi (naziv,brojsati,cijena,upisnina,verificiran) values 
('Web programiranje',225,1325.85,null,1),
('Java programiranje',225,1325.85,null, 1),
('Serviser', 225,1325.85,null,1);

select * from smjerovi;

insert into predavaci (ime,prezime,email) values
('Tomislav','Jakopec','tjakopec@gmail.com'),
('Shaquille', 'O''Neal','shaki@gmail.com');

select * from predavaci;

insert into polaznici (prezime,ime,email) values
('Županiæ','Tomislav','tomislav.zupanic333@gmail.com'),
('Županiæ','Andrea','andrea.zupanic10@gmail.com');

select * from polaznici;

insert into grupe (naziv,smjer,datumpocetka) values

('WP1',1,'2023-04-24 17:00:00'),
('WP2',1,'2023-10-30 17:00:00'),
('JP28',2,'2023-04-24 19:00:00');

select * from grupe;

insert into clanovi (grupa,polaznik) values
(2,1),(2,2);

select * from clanovi;