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


insert into smjerovi (naziv,brojsati,cijena,upisnina,verificiran)
values ('Web programiranje',225,1325.85,null,1);


insert into smjerovi (naziv) values

('Java programiranje'),('Serviser');

select * from smjerovi;

insert into predavaci (ime,prezime,email) values

('Tomislav','Jakopec','tjakopec@gmail.com'),
('Shaquille', 'O''Neal','shaki@gmail.com');

select * from predavaci;

insert into polaznici (prezime,ime,email) values
('Božić','Petra','bozic.petra35@gmail.com'),
('Farkaš','Dominik','sinisartf13@gmail.com'),
('Glavaš','Natalija','natalija-glavas@hotmail.com'),
('Janić','Miroslav','miroslav.janic@gmail.com'),
('Janješić','Filip','filip.janjesic@gmail.com'),
('Jović','Nataša','natasajovic238@gmail.com'),
('Barić','Luka','lukabaric15@gmail.com'),
('Kelava','Antonio','kelava.antonio392@gmail.com'),
('Kešinović','Marijan','kesinovic957@gmail.com'),
('Leninger','Ivan','ileninger@live.com'),
('Macanga','Antonio','macanga.antonio@gmail.com'),
('Miloloža','Antonio','milolozaantonio@yahoo.com'),
('Pavkovi?','Matija','matijapavkovic74@gmail.com'),
('Peterfać','Karlo','karlo.peterfaj@gmail.com'),
('Plećaš','Adriana','adriana.plecas@gmail.com'),
('Senčić','Ivan','ivan.sencic2000@gmail.com'),
('Šuler','Zvonimir','zvonimir.suler@gmail.com'),
('Turček','Mario','mario.turcek@gmail.com'),
('Veseli','Domagoj','dveseli555@gmail.com'),
('Vuković','Kristijan','alanford700@gmail.com'),
('Vukušić','Ivan','ivukusic27@gmail.com'),
('Žarić','Roman','roman.zaric@gmail.com'),
('Pavlović','Ivan','ipavlovic6437@gmail.com'),
('Županić','Andrea','andrea.zupanic10@gmail.com'),
('Županić','Tomislav','tomislav.zupanic333@gmail.com'),
('Petak','Martina','petak.martina@gmail.com'),
('Perak','Marko','markoperak469@gmail.com'),
('Mokriš','Bartol','bartol567@gmail.com'),
('Jularić','Ljubomir','ljubojularic93@gmail.com'),
('Ćelić','Ivor','ivorcelic@gmail.com');

select* from polaznici;

insert into grupe (naziv,smjer,datumpocetka) values
('WP1',1,'2023-04-24 17:00:00'),
('WP2',1,'2023-10-30 17:00:00'),
('JP28',2,'2023-04-24 19:00:00');

select* from grupe;

insert into clanovi (grupa,polaznik) values
(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),
(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),
(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),
(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),
(2,29),(2,30);


select * from clanovi;



update polaznici set prezime='Kartik' where sifra=17;

update polaznici set prezime='Šuler',
oib='96868832693', brojugovora='25/20023'
where sifra=17;


select * from polaznici where sifra=17;

select * from smjerovi ;
update smjerovi set cijena=1000 where sifra in(2,3);


update smjerovi set cijena=cijena*1.2;

select * from smjerovi;

update smjerovi set upisnina=cijena*0.8;
select * from smjerovi;

update smjerovi set upisnina=cijena-15;
select * from smjerovi;

update smjerovi set cijena=1489.52 where sifra=2;

update smjerovi set upisnina=cijena*0.1;

update smjerovi set cijena=1489.52 where sifra=2;

select* from smjerovi;


insert smjerovi (naziv)
values ('python programiranje');
delete from  smjerovi where sifra=4;


--delete from clanovi where polaznik=20;
select * from polaznici;

