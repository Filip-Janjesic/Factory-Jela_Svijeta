drop database if exists Jela_svijeta;
create database Jela_svijeta default character set utf8;
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



alter table jelo add foreign key (tag) references tag(sifra);
alter table jelo_sastojak add foreign key (jelo) references jelo(sifra);
alter table jelo_sastojak add foreign key (sastojak) references sastojak(sifra);
alter table jelo add foreign key (kategorija) references kategorija(sifra);



insert into sastojak(nazivSastojak,nazivSastojak_en,slug) values
	('rajčica','tomato','slug-rajc'),
	('sir','cheese','slug-sir'),
	('gljive','mushrooms','slug-gljive'),
	('sunka','ham','slug-sunka'),
	('kobasica','sausage','slug-kobasica'),
	('grah','beans','slug-grah'),
	('kukuruz','corn','slug-kukuruz'),
	('feferoni','pepperoni','slug-feferoni'),
	('pršut','ham','slug-pršut'),
	('masline','olives','slug-masline'),
	('suhi vrat','suhi vrat','slug-suhivrat'),
	('jaje','egg','slug-jaje'),
	('kethup','kethup','slug-kethup'),
	('slanina','bacon','slug-slanina'),
	('luk','onion','slug-luk'),
	('mozzarela','mozzarela','slug-mozzarela'),
	('bosiljak','basil','slug-bosiljak');


insert into kategorija(nazivKategorija,nazivKategorija_en,slug) values
	('pizza','pizza','slug-pizza'),
	('grill','grill','slug-grill'),
	('sendviči','sandwiches','slug-sendvici'),
	('salate','salad','slug-salate'),
	('riba','fish','slug-riba'),
	('juha','soup','slug-juha'),
	('vege','vege','slug-vege'),
	('doručak','breakfast','slug-dorucak'),
	('deserti','desserts','slug-deserti');

insert into tag(nazivTag,nazivTag_en,slug) values
	('naslov taga 1','tag name 1','slug-tag1'),
	('naslov taga 2','tag name 2','slug-tag2'),
	('naslov taga 3','tag name 3','slug-tag3'),
	('naslov taga 4','tag name 4','slug-tag4'),
	('naslov taga 5','tag name 5','slug-tag5'),
	('naslov taga 6','tag name 6','slug-tag6'),
	('naslov taga 7','tag name 7','slug-tag7'),
	('naslov taga 8','tag name 8','slug-tag8'),
	('naslov taga 9','tag name 9','slug-tag9');

insert into jelo(nazivJelo,nazivJelo_en,opis,cijena,tag,status,vrijeme_kreiranja,kategorija) values
	('Margarita','Margarita','null',null,'1','created',UNIX_TIMESTAMP(now()),'1'),
	('Vesuvio','Vesuvio','null',null,'2','created',UNIX_TIMESTAMP(now()),'1'),
	('Slavonska','Slavonska','null',null,'3','created',UNIX_TIMESTAMP(now()),'1'),
	('Biftek na žaru','Grilled steak','null',null,'1','created',UNIX_TIMESTAMP(now()),'2'),
	('Biftek s gljivama','Steak with mushrooms','null',null,'1','created',UNIX_TIMESTAMP(now()),'2'),
	('Kulen sendvič','Kulen sandwich','null',null,'1','created',UNIX_TIMESTAMP(now()),'3');


insert into jelo_sastojak(jelo,sastojak) values
	(1,1),
	(1,2),
	(1,3),
	(2,1),
	(2,4),
	(2,5),
	(2,6),
	(3,1),
	(3,5),
	(3,6),
	(3,7),
	(3,8),
	(4,1),
	(4,4),
	(4,5),
	(5,1),
	(5,2),
	(5,4),
	(6,3);