insert into osoba(ime,prezime) values ('Marija','Zimska');

select * from osoba;

select * from predavac;

insert into predavac(osoba) VALUES (20);

select * from grupa;

update grupa set predavac=4 where sifra=1; 
select a.naziv as grupa, b.naziv as smjer,
concat(d.ime,' ', d.prezime) as predavac,
concat(g.ime,' ', g.prezime) as polaznik from grupa a 

inner join smjer b on a.smjer=b.sifra

inner join predavac c on a.predavac=c.sifra 

inner join osoba d on d.sifra=c.osoba

inner join clan e on a.sifra=e.grupa

inner join polaznik f on e.polaznik=f.sifra

inner join osoba g on f.osoba=g.sifra;

select a.ime, a.prezime from osoba a 
inner join polaznik b on a.sifra=b.osoba
inner join clan c on b.sifra=c.polaznik
inner join grupa d on c.grupa=d.sifra 
inner join smjer e on d.smjer=e.sifra
where d.naziv='PP24';