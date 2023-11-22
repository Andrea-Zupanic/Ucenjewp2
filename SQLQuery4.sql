select from
select top 10 ime, prezime from autor;
select count(*) from autor;

select * from autor where datumrodenja between '1998-01-01' and '1998-12-01';

insert into autor values ('Andrea', 'Župani?', '1998-03-29');

select * from autor;

select * from katalog where (naslov like '%bol%' or naslov like '%ljubav%') and sifra not in (2541,2596,2680);

--select * from izdavac where datumrodenja>'2023-09-01';( obvo na kuzim


select * from izdavac
where naziv like '%d%o%o%';

--na varchar ide like 
select * from mjesto where postanskibroj like '%31%';

--izlistati sve autorice

select *from autor where ime like '%a%';
--* znaci sve , moze ici bez ali onda nije sve
--jedinstveno ime

select distinct ime from autor where ime like '%a';

select getdate();

