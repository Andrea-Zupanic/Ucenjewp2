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

--UPDATE




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



--INSERT



insert smjerovi (naziv)
values ('python programiranje');
delete from  smjerovi where sifra=4;




--DELETE


--delete from clanovi where polaznik=20;
select * from polaznici;

--edunova
select * from grupe;

select * from smjerovi where sifra=1;


--INNER JOIN  




select a.sifra,a.naziv, b.naziv as smjer
from grupe a inner join smjerovi b
on b.sifra = a.smjer;



select a.sifra,a.naziv, b.naziv as smjer,
a.datumpocetka, c.ime, c.prezime,
concat(e.ime, ' ' , e.prezime) as polaznik
from grupe a inner join smjerovi b
on b.sifra = a.smjer
left join predavaci c
on c.sifra=a.predavac
inner join clanovi d on a.sifra=d.grupa
inner join polaznici e on d.polaznik=e.sifra;
;
--knjiznica


use knjiznica;

select * from katalog;

select a.naslov, b.ime, b.prezime,c.naziv,
d.naziv
from katalog a left join autor b
on a.autor=b.sifra
inner join izdavac c on a.izdavac=c.sifra
inner join mjesto d on a.mjesto=d.sifra
where a.naslov like '%ljubav%'
;

--svastara
use svastara;

select count(*) from kupci;

select distinct ime, prezime from
kupci where ime='andrea';




--COUNT 


select count(*) 
from artikli 
where cijena between 1000 and 1100;

select b.*
from opcine a inner join mjesta b
on a.sifra=b.opcina
where a.naziv = 'Čepin';


update mjesta set postanskiBroj=31431 where sifra=1945;


select b.ime, b.prezime
from mjesta a inner join kupci b
on b.mjesto= a.sifra
where a.naziv='Livana';


--COUNT


select b.ime, b.prezime
from mjesta a inner join kupci b
on b.mjesto= a.sifra
where a.naziv='Livana';


select count(*) from primke where datum between '2017-01-01' and '2017-12-31';


select top 1* from primke where datum between '2017-01-01' and '2017-12-31';



--CIJENA NA PRIMCI , ZBRAJANJE, order by



select c.kratkinaziv, b.kolicina, b.cijena, b.kolicina * b.cijena as iznos
from primke a 
inner join artiklinaprimci b on a.sifra= b.primka
inner join artikli c on b.artikl = c.sifra
where a.rednibroj = '14778/2017'
ORDER BY 4 desc;


--UKUPNI IZNOS SUM


select sum (b.kolicina * b.cijena) as ukupniiznos
from primke a 
inner join artiklinaprimci b on a.sifra= b.primka
inner join artikli c on b.artikl = c.sifra
where a.rednibroj = '14778/2017';



--IZNOSI NA SVEMU , poredaj 

select a.rednibroj,  sum (b.kolicina * b.cijena) as ukupniiznos
from primke a 
inner join artiklinaprimci b on a.sifra= b.primka
inner join artikli c on b.artikl = c.sifra
where a.datum between '2017-01-01' and '2017-01-31'
group by a.rednibroj
order by 2 desc;

--DODAJ DOBAVLJACE NA TO


select a.rednibroj, d.naziv,
sum (b.kolicina * b.cijena) as ukupniiznos
from primke a 
inner join artiklinaprimci b on a.sifra= b.primka
inner join artikli c on b.artikl = c.sifra
inner join dobavljaci d on a.dobavljac=d.sifra
where a.datum between '2017-01-01' and '2017-01-31'
group by a.rednibroj, d.naziv
order by 3 desc;


--KADA PODATAK NIJE ZAPISAN U TABLICI A HOCES GA FILTRIRATI---having sum

select a.rednibroj, d.naziv,
sum (b.kolicina * b.cijena) as ukupniiznos
from primke a 
inner join artiklinaprimci b on a.sifra= b.primka
inner join artikli c on b.artikl = c.sifra
inner join dobavljaci d on a.dobavljac=d.sifra
where a.datum between '2017-01-01' and '2017-01-31'
group by a.rednibroj, d.naziv
having sum (b.kolicina * b.cijena) > 7000000;


--AVERAGE, MINIMAL, MAXIMAL


select a.rednibroj, d.naziv,
sum (b.kolicina * b.cijena) as ukupniiznos,
avg(b.kolicina * b.cijena) as prosijek,
MIN(b.kolicina * b.cijena) as minimalno,
MAX(b.kolicina * b.cijena) as maksimalno
from primke a 
inner join artiklinaprimci b on a.sifra= b.primka
inner join artikli c on b.artikl = c.sifra
inner join dobavljaci d on a.dobavljac=d.sifra
where a.datum between '2017-01-01' and '2017-01-31'
group by a.rednibroj, d.naziv
having sum (b.kolicina * b.cijena) > 7000000;


--SELECT COUNT

select count(*) from artikli;

select distinct artikl from artiklinaprimci;


--OBRISATI I NACI NEKORISTENE ARTIKLE

select * from artikli where sifra
not in (select distinct artikl from artiklinaprimci);


delete from artikli where sifra
not in (select distinct artikl from artiklinaprimci);

