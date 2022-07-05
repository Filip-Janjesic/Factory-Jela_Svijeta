drop database if exists Jela_svijeta;
create database Jela_svijeta default character set utf8mb4;
use Jela_svijeta;


create table jelo(

	sifra int not null primary key auto_increment,
	nazivJelo varchar (50) not null,
	NazivJelo_en varchar(50) not null,
	opis varchar(50),
	cijena int,
	tag int not null,
	status varchar(15) not null default 'created',
	vrijeme_kreiranja int not null,
	kategorija int null

);


create table sastojak(

	sifra int not null primary key auto_increment,
	nazivSastojak varchar(50) not null,
	NazivSastojak_en varchar(50) not null,
	slug varchar(50) not null

);


create table jelo_sastojak(

	jelo int not null,
	sastojak int not null
	
);


create table kategorija(

	sifra int not null primary key auto_increment,
	nazivKategorija varchar(50) not null,
	nazivKategorija_en varchar(50) not null,
	slug varchar(50) not null

);


create table tag(

	sifra int not null primary key auto_increment,
	nazivTag varchar(50) not null,
	nazivTag_en varchar(50) not null,
	slug varchar(50) not null

);

