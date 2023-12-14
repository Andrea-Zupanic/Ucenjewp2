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

update mjesta set postanskiBroj=31431 where sifra=1945;


-- mijenjao sam samo jednu kolonu (prezime)
update polaznici set prezime='Kartik' 
where sifra=17;

-- mjenjam tri kolone (prezime, oib, brojugovora)
update polaznici set prezime='�uler',
oib='80352353849' , brojugovora='25/20023'
where sifra=17;


                                                            --INSERT



insert smjerovi (naziv)
values ('python programiranje');

                                                --SELECT COUNT, DISTINCT

select count(*) from kupci;

-- izvucite sve kupce koji se zovu kao i Vi.

-- izvucite jedinstvena imena i prezimena kupaca
-- koji se zovu kao i Vi

select distinct ime, prezime
from kupci where ime='Tomislav';


                                                              --DELETE

delete from  smjerovi where sifra=4;

--delete from clanovi where polaznik=20;



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





                                                     --COUNT 
select count(*) from kupci;

select distinct ime, prezime from
kupci where ime='andrea';

select count(*) 
from artikli 
where cijena between 1000 and 1100;

select b.*
from opcine a inner join mjesta b
on a.sifra=b.opcina
where a.naziv = 'Čepin';



select b.ime, b.prezime
from mjesta a inner join kupci b
on b.mjesto= a.sifra
where a.naziv='Livana';

select b.ime, b.prezime
from mjesta a inner join kupci b
on b.mjesto= a.sifra
where a.naziv='Livana';



select count(*) from primke where datum between '2017-01-01' and '2017-12-31';

                                                                      
																	  --TOP 1


select top 1* from primke where datum
between '2017-01-01' and '2017-12-31';


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

                                                         --DODAJ DOBAVLJACE NA VEC NAPRAVLJENU TABLICU


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

  
select count(*) from artikli
where cijena between 1000 and 1100;

-- Izlistati sva mjesta u općini Čepin
select b.*
from opcine a inner join mjesta b
on a.sifra = b.opcina
where a.naziv='Čepin';







-- postavite Beketincima poštanski broj 31431
update mjesta set postanskiBroj='31431' where sifra=1945;

-- Izlistajte imena i prezimena svih kupaca iz mjesta Livana
select b.ime, b.prezime
from mjesta a inner join kupci b
on b.mjesto = a.sifra
where a.naziv='Osijek';

-- koliko je bilo primki u 2016
select top 1 * from primke where 
datum between '2017-01-01' and '2017-12-31';

-- Što smo sve zaprimili na primci 14778/2017
select c.kratkinaziv, b.kolicina, b.cijena,
b.kolicina * b.cijena as iznos
from primke a 
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl = c.sifra
where a.rednibroj='14778/2017'
order by 4 desc;


-- ovo je istovjetno gornjem upitu
select artikli.kratkinaziv, artiklinaprimci.kolicina, artiklinaprimci.cijena,
artiklinaprimci.kolicina * artiklinaprimci.cijena as iznos
from primke 
inner join artiklinaprimci on primke.sifra=artiklinaprimci.primka
inner join artikli on artiklinaprimci.artikl = artikli.sifra
where primke.rednibroj='14778/2017'
order by 4 desc;


-- zanima me ukupni iznos na toj primci

select sum(b.kolicina * b.cijena) as ukupniIznos
from primke a 
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl = c.sifra
where a.rednibroj='14778/2017';

-- koliki su iznosi na svim primkama u sijećnju 2017. godine
select a.rednibroj, sum(b.kolicina * b.cijena) as ukupniIznos
from primke a 
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl = c.sifra
where a.datum between '2017-01-01' and '2017-01-31'
group by a.rednibroj
order by 2 desc;


-- dovucite naziv dobavljača u upit

select a.rednibroj, d.naziv,
sum(b.kolicina * b.cijena) as ukupniIznos,
avg(b.kolicina * b.cijena) as prosjek,
min(b.kolicina * b.cijena) as minimalno,
max(b.kolicina * b.cijena) as maksimalno
from primke a 
inner join artiklinaprimci b on a.sifra=b.primka
inner join artikli c on b.artikl = c.sifra
inner join dobavljaci d on a.dobavljac=d.sifra
where a.datum between '2017-01-01' and '2017-12-31'
group by a.rednibroj, d.naziv
having sum(b.kolicina * b.cijena)>7000000
order by 3 desc;

-- traženje igle u plastu sijena
-- Obrisa<ti sve artikle koji nisu nikada nabavljeni
select count(*) from artikli;
select distinct artikl from artiklinaprimci;
-- podupit
select * from artikli where sifra
not in (select distinct artikl from artiklinaprimci);

--  Obrišite ta dva artikla
delete from artikli where sifra
not in (select distinct artikl from artiklinaprimci);

-- * sve kolone
select * from smjerovi;

-- nazivi kolona
select naziv, cijena from smjerovi;

-- konstanta
select naziv, 'Osijek', 8, 9.8 from smjerovi;

-- kolonama se mo�e dati zamjensko ime
select naziv as smjer, 'Osijek' as grad from smjerovi;

-- izraz
select naziv, len(naziv) as duzina, 
getdate() as datum from smjerovi;

-- najkompliciranji primjer
select sifra as s, naziv as n, 'Edunova' as skola,
len(naziv) as duzina, * from smjerovi;

-- filtriranje redova - where dio

select * from smjerovi where sifra=1;

-- operatori
-- uspore�ivanje = > >= < <= !=
select * from polaznici where sifra!=7;

select * from polaznici where ime='Ivan';

select * from grupe where datumpocetka>'2023-09-01';

-- logi�ke operatori: and, or
select * from polaznici where
not (ime='Ivan' or ime='Ivor');

-- ostali operatori: like
select * from polaznici where ime not like '%a%';

-- koji su polaznici s po�etnim slovom prezimena B
select * from polaznici where prezime like 'B%�i�';

-- kaladont
select * from polaznici where prezime like '%nt';

select * from polaznici where 
sifra=2 or sifra=4 or sifra=7;

-- jednostavnija sintaksa
select * from polaznici where sifra in (2,4,7);

select * from polaznici where
sifra>=6 and sifra<=10;

-- jednostavnija sintaksa
select * from polaznici where
 sifra between 6 and 10;

select * from grupe where
datumpocetka between '2023-01-01' and '2023-12-31';

-- na null vrijednosti u tavlicama ne mo�e se primjenjivati niti jedan prethodno opisan operator
select * from smjerovi where brojsati=NULL;

-- koristi se: is null, is not null
select * from smjerovi where brojsati is not null;

select isnull(brojsati,30) as bs from smjerovi;


-- slaganje podataka

select * from polaznici order by prezime desc, 2 desc;

-- limitiranje podataka

select top 10 * from polaznici;

select top 10 percent * from polaznici;


select ime as djever, brojugovora as racun 
into nova
from polaznici; 


--KOD ZA VISE TABLICA CONCAT/UPDATE


update aseta.ime=concat(a.ime, 'W')
from polaznik a
inner join clan b on a.sifra=b.polaznik
inner join grupa c on b.grupa=c.sifra
inner join smjer d on c.smjer= d.sifra
where d.naziv = 'Web programiranje';


                                 --ZA VISE TABLICA BRISANJE 

delete c
from smjer a
inner join grupa b on a.sifra=b.smjer
inner join clan c on b.sifra=c.grupa
where a.naziv='Web programiranje';


                                --FUNKCIJE

select getdate();

select dateadd(day,45, getdate());

select dateadd(day,-45, getdate());

select upper (ime) from polaznici;

select concat(ime,' ', prezime) as polaznik from polaznici
order by;

select from smjerovi;

update smjerovi set cijena= ran()*1000;

select rand ();

                          --DODATI NOVU KOLONU S PODATCIM ALTER TABLE

alter table smjer add iznos decimal (19,2);

update smjerovi set iznos =1;

                                       ---CREATE FUNCTION


CREATE FUNCTION email(
	@ime varchar(50), @prezime varchar(50)
	)
RETURNS varchar(150) AS
BEGIN
    return concat(left(lower(@ime),1), lower(
			replace(
			replace(
			replace(
			replace(
			replace(replace(upper(@prezime),' ',''),'Č','C')
			,'Š','S')
			,'Đ','D')
			,'Ć','C')
			,'Ž','Z')
			), '@edunova.hr');
END;

drop function email;


select dbo.email (ime,prezime) from polaznici;

                           --KOLIKO DANA SI STAR

select datediff(day, '1998-03-29',getdate());


                                      --OKIDACI

create table logiranje(
tko varchar(255),
sto varchar(255),
kada datetime default getdate()
);

select * from logiranje;
CREATE TRIGGER polaznik_unos
ON polaznici
AFTER INSERT
AS
BEGIN
	insert into logiranje (tko,sto) 
	select 'Unos nove osobe', concat(ime, ' ', prezime) from inserted;
END
insert into polaznici (ime,prezime,email) 
values ('Pero','Perić','email');