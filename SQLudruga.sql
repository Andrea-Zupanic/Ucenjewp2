use master;
go
drop database if exists udruga;
go
create database udruga;
go
use udruga;

EXEC sp_changedbowner 'sa'

create table osoblje(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100),
sticenik int not null,
oib char(11) not null
);

create table sticenik(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
brojcipa char(10) not null,
prostor int);

create table prostor(
sifra int not null primary key identity (1,1),
naziv varchar(50)
);

alter table osoblje add foreign key (sticenik) references sticenik (sifra);
alter table sticenik add foreign key (prostor) references prostor(sifra);

insert into prostor (naziv) values
(1), (2),(3), (4), (5),(6),(7),(8), (9);

select * from prostor;

insert into sticenik(ime, brojcipa, prostor) values 
('Piki', '1245678957', 1),
('Miki', '3145977568', 2),
('Luna', '1349527846', 3),
('Azra', '3465587441', 4),
('Fleki','4876645367', 5),
('Pepsi','4476323215', 6),
('Rexi', '1124565128', 7),
('Max', '4855123548', 8),
('Bleki','1459885879', 9)
;

select * from  sticenik;

insert into osoblje(ime, prezime, email, sticenik,oib) values
('Maja', 'Biliæ', 'mbilic3@gmail.com', 1, '36660575061'),
('Maja', 'Biliæ', 'mbilic3@gmail.com', 2, '36660575061'),
('Maja', 'Biliæ', 'mbilic3@gmail.com', 3, '36660575061'),
('Ines', 'Vera', 'inesvera@gmail.com', 4, '76660413061'),
('Ines', 'Vera', 'inesvera@gmail.com', 5, '76660413061'),
('Ines', 'Vera', 'inesvera@gmail.com', 6, '76660413061'),
('Ines', 'Vera', 'inesvera@gmail.com', 7, '76660413061'),
('Ana', 'Mariæ', 'maricka@gmail.com', 8, '11660577881'),
('Ana',  'Mariæ', 'maricka@gmail.com', 9, '11660577881')
;


select * from osoblje;


