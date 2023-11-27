
--edunova

select * from grupe;

select * from smjerovi where sifra=1;

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




