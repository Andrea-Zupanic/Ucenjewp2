use master;
go

drop database if exists frizerskisalon;
go

create database frizerskisalon;
go
use frizerskisalon;


create table djelatnici(
sifra int not null primary key identity (1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
);

create table korisnici(
sifra int not null primary key identity (1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
brojtelefona int,
opiskose varchar(100)
);

create table posjeta(
sifra int not null primary key identity (1,1),
datum datetime not null,
djelatnici int,
korisnici int, 
usluga int,
);

create table usluge(
sifra int not null primary key identity (1,1),
cijena decimal (6,2),
naziv varchar(50),
);



alter table posjeta add foreign key (djelatnici) references djelatnici( sifra);
alter table posjeta add foreign key (korisnici) references korisnici (sifra);
alter table posjeta add foreign key (usluga) references usluge (sifra);


insert into korisnici(ime,prezime, brojtelefona,opiskose) values
('Ana', 'Maric', '0954713654','duga kosa'),
('Iva', 'Balaban', '0915447814', 'kratka kosa'),
('Maja', 'Mihalj', '0913468584', 'duga kosa'),
('Mira', 'Kučak', '0987873245', 'kratka kosa'),
('Ivan', 'Lovrić', '0914516565', 'kratka kosa'),
('Luka', 'Pavić', '0918495116', 'kratka kosa'),
('Daria', 'Matić', '0951412589', 'duga kosa'),
('Paulina', 'Babić', '0951317893', 'duga kosa');

select * from korisnici;

insert into djelatnici (ime, prezime, oib) values
('Marija', 'Mikičić', '41562193453');
select * from djelatnici;

insert into usluge (cijena, naziv) values
(10.00, 'Šišanje duge kose'),
(7.00, 'Šišanje kratke kose'),
(30.00, 'Farbanje kratke kose'),
(50.00, 'Farbanje duge kose'),
(40.00,' Pramenovi'),
(10.00, 'Pranje i feniranje kose');


select * from usluge;

insert into posjeta ( datum, djelatnici, korisnici, usluga) values
('2023-12-04 15:00:00', 1, 1, 1),
('2023-12-04 17:00:00', 1, 2, 3),
('2023-12-04 19:00:00', 1, 3, 1),
('2023-12-05 13:00:00', 1, 4, 3),
('2023-12-05 15:00:00', 1, 5, 2),
('2023-12-05 16:00:00', 1, 6, 1),
('2023-12-06 13:00:00', 1, 7, 4),
('2023-12-07 13:00:00', 1, 8, 5);

select * from posjeta;

